-----------------------------------------------------------------------
-- X-Plore: ActionBar.lua
-- Action bar slot highlighting for current guide step goals.
-- When a step has a "use", "cast", "learn", or "buy" goal, the
-- relevant spell or item is highlighted on the player's action bar.
-- Compatible with WotLK 3.3.5a and Retail.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- State
-----------------------------------------------------------------------
local ActionBar = {}
XP.ActionBar = ActionBar

local highlightedSlots = {}     -- list of currently glowing slot frames
local GLOW_COLOR = { 0, 0.9, 1, 0.7 }  -- cyan glow RGBA

-----------------------------------------------------------------------
-- Compat wrappers
-----------------------------------------------------------------------
-- GetSpellInfo returns different tables on Retail vs WotLK.
local function GetSpellName(spellID)
    if not spellID then return nil end
    if C_Spell and C_Spell.GetSpellInfo then
        local info = C_Spell.GetSpellInfo(spellID)
        return info and info.name
    end
    local name = GetSpellInfo(spellID)  -- Lua multiple return on WotLK
    return name
end

-- Returns the action bar button frame for a given bar slot (1-120).
-- WotLK: ActionButton1..12, MultiBarBottomLeft/Right, MultiBarLeft/Right.
-- Retail: uses the same global naming convention.
local function GetActionSlotFrame(slot)
    if slot <= 12 then
        return _G["ActionButton" .. slot]
    elseif slot <= 24 then
        return _G["MultiBarBottomLeftButton" .. (slot - 12)]
    elseif slot <= 36 then
        return _G["MultiBarBottomRightButton" .. (slot - 24)]
    elseif slot <= 48 then
        return _G["MultiBarRightButton" .. (slot - 36)]
    elseif slot <= 60 then
        return _G["MultiBarLeftButton" .. (slot - 48)]
    end
    return nil
end

-----------------------------------------------------------------------
-- Glow helper
-----------------------------------------------------------------------
local function CreateGlowTexture(btn)
    local glow = btn:CreateTexture(nil, "OVERLAY")
    glow:SetBlendMode("ADD")
    glow:SetAllPoints(btn)
    glow:SetTexture("Interface\\SpellActivationOverlay\\IconAlert")
    glow:SetVertexColor(GLOW_COLOR[1], GLOW_COLOR[2], GLOW_COLOR[3], GLOW_COLOR[4])
    return glow
end

-----------------------------------------------------------------------
-- Clear all current highlights
-----------------------------------------------------------------------
function ActionBar:ClearHighlights()
    for _, info in ipairs(highlightedSlots) do
        if info.glow and info.glow:IsObjectType("Texture") then
            info.glow:Hide()
            -- We purposely do NOT destroy it — just hide for pool reuse
        end
    end
    highlightedSlots = {}
end

-----------------------------------------------------------------------
-- Highlight a single action bar slot
-----------------------------------------------------------------------
function ActionBar:HighlightSlot(slot)
    local btn = GetActionSlotFrame(slot)
    if not btn then return end

    -- Reuse existing glow if already stored on the frame
    if not btn._xpGlow then
        btn._xpGlow = CreateGlowTexture(btn)
    end
    btn._xpGlow:Show()

    table.insert(highlightedSlots, { slot = slot, btn = btn, glow = btn._xpGlow })
end

-----------------------------------------------------------------------
-- Find all action bar slots that contain a given spell ID or item ID
-----------------------------------------------------------------------
local function FindSlotsForSpell(spellID)
    local slots = {}
    for i = 1, 120 do
        if HasAction(i) then
            local atype, aid = GetActionInfo(i)
            if atype == "spell" and aid == spellID then
                table.insert(slots, i)
            end
        end
    end
    return slots
end

local function FindSlotsForItem(itemID)
    local slots = {}
    for i = 1, 120 do
        if HasAction(i) then
            local atype, aid = GetActionInfo(i)
            if atype == "item" and aid == itemID then
                table.insert(slots, i)
            end
        end
    end
    return slots
end

-----------------------------------------------------------------------
-- Resolve a goal to a spell/item ID and highlight matching slots
-----------------------------------------------------------------------
local function HighlightGoal(goal)
    if not goal then return end

    local gtype = goal.type
    if not gtype then return end

    gtype = gtype:lower()

    if gtype == "cast" or gtype == "use" or gtype == "learn" then
        -- Try to find a spellID from goal.spellID or by name lookup
        local spellID = goal.spellID
        if not spellID and goal.spellName then
            local name = goal.spellName
            -- Walk action bar looking for spell matching by name
            for i = 1, 120 do
                if HasAction(i) then
                    local atype, aid = GetActionInfo(i)
                    if atype == "spell" then
                        local sname = GetSpellName(aid)
                        if sname and sname == name then
                            ActionBar:HighlightSlot(i)
                        end
                    end
                end
            end
            return
        end
        if spellID then
            for _, slot in ipairs(FindSlotsForSpell(spellID)) do
                ActionBar:HighlightSlot(slot)
            end
        end

    elseif gtype == "buy" or gtype == "getitem" or gtype == "equip" then
        local itemID = goal.itemID
        if itemID then
            for _, slot in ipairs(FindSlotsForItem(itemID)) do
                ActionBar:HighlightSlot(slot)
            end
        end
    end
end

-----------------------------------------------------------------------
-- Update highlights for the current step
-----------------------------------------------------------------------
function ActionBar:UpdateForStep(step)
    self:ClearHighlights()

    if not step then return end
    if not XP.db or not XP.db.profile.actionBar or
       not XP.db.profile.actionBar.enabled then return end

    -- Highlight all goals in the current step
    if step.goals then
        for _, goal in ipairs(step.goals) do
            HighlightGoal(goal)
        end
    end
end

-----------------------------------------------------------------------
-- Pulse animation (optional cosmetic — dims/brightens the glow)
-----------------------------------------------------------------------
local pulseAlpha  = 0.4
local pulseDelta  = 0.6   -- range 0.4–1.0
local pulseDir    = 1
local pulseTicker = nil

local function PulseTick()
    pulseAlpha = pulseAlpha + pulseDir * 0.05
    if pulseAlpha >= 1.0 then pulseAlpha = 1.0; pulseDir = -1 end
    if pulseAlpha <= 0.4 then pulseAlpha = 0.4; pulseDir =  1 end

    for _, info in ipairs(highlightedSlots) do
        if info.glow and info.glow:IsShown() then
            info.glow:SetAlpha(pulseAlpha)
        end
    end
end

local function StartPulse()
    if pulseTicker then return end
    if C_Timer and C_Timer.NewTicker then
        pulseTicker = C_Timer.NewTicker(0.05, PulseTick)
    else
        -- WotLK fallback: use OnUpdate on a hidden frame
        if not ActionBar._pulseFrame then
            ActionBar._pulseFrame = CreateFrame("Frame")
            local accum = 0
            ActionBar._pulseFrame:SetScript("OnUpdate", function(_, elapsed)
                accum = accum + elapsed
                if accum >= 0.05 then
                    accum = accum - 0.05
                    PulseTick()
                end
            end)
        end
        ActionBar._pulseFrame:Show()
    end
end

local function StopPulse()
    if pulseTicker then
        pulseTicker:Cancel()
        pulseTicker = nil
    end
    if ActionBar._pulseFrame then
        ActionBar._pulseFrame:Hide()
    end
end

-----------------------------------------------------------------------
-- Init — called from XP:OnEnable
-----------------------------------------------------------------------
function XP:InitActionBar()
    -- DB defaults (merged into XP.db.profile in Core.lua)
    if XP.db and XP.db.profile.actionBar == nil then
        XP.db.profile.actionBar = {
            enabled   = true,
            pulse     = true,
        }
    end

    -- Listen for step changes to update highlights
    XP:RegisterMessage("XP_STEP_CHANGED", function(_, step)
        ActionBar:UpdateForStep(step)
        if step and next(highlightedSlots) then
            if XP.db.profile.actionBar and XP.db.profile.actionBar.pulse then
                StartPulse()
            end
        else
            StopPulse()
        end
    end)

    -- Also refresh when spells/bag changes
    local refreshFrame = CreateFrame("Frame")
    refreshFrame:RegisterEvent("ACTIONBAR_SLOT_CHANGED")
    refreshFrame:RegisterEvent("BAG_UPDATE_DELAYED")
    refreshFrame:RegisterEvent("SPELLS_CHANGED")
    refreshFrame:SetScript("OnEvent", function()
        if XP.CurrentStep then
            ActionBar:UpdateForStep(XP.CurrentStep)
        end
    end)

    ActionBar.refreshFrame = refreshFrame
end
