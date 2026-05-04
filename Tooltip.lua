-----------------------------------------------------------------------
-- X-Plore: Tooltip.lua
-- Hooks GameTooltip to inject contextual guide hints when hovering
-- over NPCs, items, and quest entries mentioned in the current step.
--
-- Universal: works on WotLK 3.3.5a AND Retail.
-- WotLK: uses HookScript("OnTooltipSetUnit") / ("OnTooltipSetItem")
-- Retail: same hooks still work (TooltipDataProcessor is optional)
--
-- What we annotate:
--   * NPCs  — "Step N: Kill <MobName>" / "Step N: Turn in <QuestName>"
--   * Items — "Step N: Collect <Count>x <Item>" / "Step N: Use <Item>"
--   * Quests — "Step N: Accept <QuestName>" / "Step N: Turn in <QuestName>"
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

local TT = {}
XP.Tooltip = TT

-- ─────────────────────────────────────────────────────────────────────────────
-- Helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Append a cyan prefix line plus plain body line to any tooltip.
-- DEBUG: ENTER AppendHint()
-- DEBUG: PARAM tooltip = [tooltip]
-- DEBUG: PARAM prefix = [prefix]
-- DEBUG: PARAM body = [body]
local function AppendHint(tooltip, prefix, body)
    tooltip:AddLine("|cff00e5ff[X-Plore]|r " .. prefix, 1, 1, 1, true)
    if body and body ~= "" then
        tooltip:AddLine(body, 0.8, 0.9, 1.0, true)
    end
-- DEBUG: EXIT AppendHint()
end

-- Build a simple lookup of { [name_lower] = { stepIndex, actionVerb, extraText } }
-- for every goal in the current step (and ±1 for "next/prev").
-- Rebuilt each time the player navigates to a new step.
local stepNPCLookup   = {}   -- [lower(npcName)] = hint string
local stepItemLookup  = {}   -- [lower(itemName)] = hint string
local stepQuestLookup = {}   -- [lower(questName)] = hint string

-- DEBUG: ENTER NormalizeStepGoals()
local function NormalizeStepGoals()
    stepNPCLookup   = {}
    stepItemLookup  = {}
    stepQuestLookup = {}

    local guide = XP.CurrentGuide
    if not guide then return end

    local currentStep = XP.CurrentStep or 1
    local numSteps    = guide:GetNumSteps()

    -- Index the current step and ±2 neighbours for context
    local lo = math.max(1, currentStep - 1)
    local hi = math.min(numSteps, currentStep + 2)

    for si = lo, hi do
        local step = guide:GetStep(si)
        if step then
            local label = "Step " .. si
            if si == currentStep then
                label = "|cff4ADE80Active|r " .. label
            elseif si > currentStep then
                label = "|cff94B8D4Next:|r " .. label
            end

            for _, goal in ipairs(step.goals or {}) do
                local action = (goal.action or ""):lower()
                local name   = (goal.name or ""):lower()
                local hint   = label .. " — " .. (goal:GetDisplayText() or "")

                -- NPC lookups: kill, talk, click, gossip, vendor, trainer, etc.
                if action == "kill" or action == "kill_mob" or action == "talk"
                   or action == "clicknpc" or action == "gossip" or action == "vendor"
                   or action == "trainer" or action == "turnin" or action == "accept" then
                    if name ~= "" then
                        stepNPCLookup[name] = hint
                    end
                    -- Also store the NPC unit ID if present (goal.unitID)
                    if goal.unitID then
                        local id = tostring(goal.unitID)
                        stepNPCLookup["id:" .. id] = hint
                    end

                -- Item lookups: collect, use, buy, equip, create, loot
                elseif action == "collect" or action == "use" or action == "buy"
                       or action == "equip" or action == "create" or action == "loot" then
                    if name ~= "" then
                        stepItemLookup[name] = hint
                    end
                    if goal.itemID then
                        local id = tostring(goal.itemID)
                        stepItemLookup["id:" .. id] = hint
                    end

                -- Quest lookups: accept, turnin
                elseif action == "accept" or action == "turnin" then
                    if name ~= "" then
                        stepQuestLookup[name] = hint
                    end
                    if goal.questID then
                        local id = tostring(goal.questID)
                        stepQuestLookup["id:" .. id] = hint
                    end
                end
            end
        end
    end
-- DEBUG: EXIT NormalizeStepGoals()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Unit tooltip hook
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER OnTooltipSetUnit()
-- DEBUG: PARAM tooltip = [tooltip]
local function OnTooltipSetUnit(tooltip)
    if not XP.CurrentGuide then return end

    local _, unit = tooltip:GetUnit()
    if not unit then return end

    -- Try GUID-based NPC ID first (e.g. "Creature-0-000-0-0-1234-00")
    local guid = UnitGUID(unit)
    if guid then
        -- Extract NPC ID from GUID (format: "Creature-serverID-instanceID-zoneUID-spawnUID-npcID-UID")
        local npcID = guid:match("Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)")
        if npcID then
            local hint = stepNPCLookup["id:" .. npcID]
            if hint then
                AppendHint(tooltip, hint, "")
                tooltip:Show()
                return
            end
        end
    end

    -- Fallback: name match
    local name = UnitName(unit)
    if name then
        local hint = stepNPCLookup[name:lower()]
        if hint then
            AppendHint(tooltip, hint, "")
            tooltip:Show()
        end
    end
-- DEBUG: EXIT OnTooltipSetUnit()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Item tooltip hook
-- ─────────────────────────────────────────────────────────────────────────────

-- Extract the item name from a tooltip. GameTooltip:GetItem() returns (name, link)
-- on Retail; on WotLK we fall back to reading the tooltip text line 1.
-- DEBUG: ENTER GetTooltipItemName()
-- DEBUG: PARAM tooltip = [tooltip]
local function GetTooltipItemName(tooltip)
    if tooltip.GetItem then
        local name, link = tooltip:GetItem()
        if name then return name, link end
    end
    -- Fallback: first text line
    local region = tooltip:GetName() and _G[tooltip:GetName() .. "TextLeft1"]
    if region then
        return region:GetText(), nil
    end
    return nil, nil
-- DEBUG: EXIT GetTooltipItemName()
end

-- Extract the item ID from an item link (e.g. "|cffffff00|Hitem:12345:0:0:...|h[Item]|h|r")
-- DEBUG: ENTER GetItemIDFromLink()
-- DEBUG: PARAM link = [link]
local function GetItemIDFromLink(link)
    if link then
        local id = link:match("item:(%d+)")
        return id
    end
    return nil
-- DEBUG: EXIT GetItemIDFromLink()
end

-- DEBUG: ENTER OnTooltipSetItem()
-- DEBUG: PARAM tooltip = [tooltip]
local function OnTooltipSetItem(tooltip)
    if not XP.CurrentGuide then return end

    local name, link = GetTooltipItemName(tooltip)

    -- Try item ID from link first
    if link then
        local itemID = GetItemIDFromLink(link)
        if itemID then
            local hint = stepItemLookup["id:" .. itemID]
            if hint then
                AppendHint(tooltip, hint, "")
                tooltip:Show()
                return
            end
        end
    end

    -- Fallback: name match
    if name then
        local hint = stepItemLookup[name:lower()]
        if hint then
            AppendHint(tooltip, hint, "")
            tooltip:Show()
        end
    end
-- DEBUG: EXIT OnTooltipSetItem()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Quest log tooltip hook (appears on quest log entries)
-- ─────────────────────────────────────────────────────────────────────────────

-- On WotLK, quest log items don't have a standard tooltip hook.
-- We hook the QuestLogTitle buttons via OnEnter instead.
-- DEBUG: ENTER HookQuestLogTitles()
local function HookQuestLogTitles()
    -- Only try on WotLK where QuestLogTitle buttons exist
    if not _G.QuestLogTitle1 then return end

    for i = 1, 20 do
        local btn = _G["QuestLogTitle" .. i]
        if btn and not btn._xpTooltipHooked then
            btn._xpTooltipHooked = true
            btn:HookScript("OnEnter", function(self_btn)
                local questName = self_btn:GetText()
                if questName then
                    local hint = stepQuestLookup[questName:lower()]
                    if hint then
                        GameTooltip:AddLine("")
                        AppendHint(GameTooltip, hint, "")
                        GameTooltip:Show()
                    end
                end
            end)
        end
    end
-- DEBUG: EXIT HookQuestLogTitles()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Message listener: rebuild lookup tables when step changes
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER OnStepChanged()
local function OnStepChanged()
    NormalizeStepGoals()
-- DEBUG: EXIT OnStepChanged()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Init
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER TT:OnEnable()
function TT:OnEnable()
    -- Hook unit tooltip
    if GameTooltip.HookScript then
        GameTooltip:HookScript("OnTooltipSetUnit", OnTooltipSetUnit)
    end

    -- Hook item tooltip (both the main frame and shopping tooltips)
    local itemTooltips = { GameTooltip, ItemRefTooltip }
    -- ShoppingTooltip exists on Retail; guard with pcall or type check
    if ShoppingTooltip1 then
        table.insert(itemTooltips, ShoppingTooltip1)
    end
    if ShoppingTooltip2 then
        table.insert(itemTooltips, ShoppingTooltip2)
    end

    for _, tt in ipairs(itemTooltips) do
        if tt and tt.HookScript then
            tt:HookScript("OnTooltipSetItem", OnTooltipSetItem)
        end
    end

    -- Hook quest log (WotLK only; Retail uses different quest log UI)
    if not XP.isRetail then
        -- QuestLogTitle buttons may not exist yet; hook after QUEST_LOG_UPDATE
        local frame = CreateFrame("Frame")
  -- DEBUG: EVENT RegisterEvent("QUEST_LOG_UPDATE")
        frame:RegisterEvent("QUEST_LOG_UPDATE")
        frame:SetScript("OnEvent", function()
            HookQuestLogTitles()
        end)
        -- Also try immediately
        HookQuestLogTitles()
    end

    -- Listen for step/guide changes to rebuild lookup tables
    -- We use the message bus (AceEvent-3.0 style) if available,
    -- otherwise hook the relevant XP functions directly.
    if XP.RegisterMessage then
        XP:RegisterMessage("XP_GUIDE_LOADED",   OnStepChanged)
        XP:RegisterMessage("XP_STEP_CHANGED",   OnStepChanged)
        XP:RegisterMessage("XP_STEP_COMPLETED", OnStepChanged)
    else
        -- Fallback: monkey-patch GoToStep to call us after navigation
        local origGoToStep = XP.GoToStep
        if origGoToStep then
            -- DEBUG: ENTER GoToStep()
            -- DEBUG: PARAM self = [self]
            XP.GoToStep = function(self, ...)
                local result = origGoToStep(self, ...)
                OnStepChanged()
                return result
            -- DEBUG: EXIT GoToStep()
            end
        end
    end
-- DEBUG: EXIT TT:OnEnable()
end
