-----------------------------------------------------------------------
-- X-Plore: Faction.lua
-- Reputation tracking for guide steps with "rep" goals.
-- Tracks progress toward a faction's required standing and shows a
-- progress bar in the Viewer footer when a rep goal is active.
-- Compatible with WotLK 3.3.5a and Retail.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Module
-----------------------------------------------------------------------
local Faction = {}
XP.Faction = Faction

-----------------------------------------------------------------------
-- Standard reputation standing thresholds (same on all versions)
-----------------------------------------------------------------------
local STANDINGS = {
    { name = "Hated",       from = -42000, r = 0.53, g = 0.00, b = 0.00 },
    { name = "Hostile",     from =  -6000, r = 1.00, g = 0.00, b = 0.00 },
    { name = "Unfriendly",  from =  -3000, r = 1.00, g = 0.53, b = 0.00 },
    { name = "Neutral",     from =      0, r = 1.00, g = 1.00, b = 0.00 },
    { name = "Friendly",    from =   3000, r = 0.00, g = 1.00, b = 0.00 },
    { name = "Honored",     from =   6000, r = 0.00, g = 1.00, b = 0.53 },
    { name = "Revered",     from =  12000, r = 0.00, g = 1.00, b = 1.00 },
    { name = "Exalted",     from =  21000, r = 0.80, g = 0.53, b = 1.00 },
}

-- Returns the standing index (1-8) for a given absolute standing value
-- DEBUG: ENTER GetStandingIndex()
-- DEBUG: PARAM standing = [standing]
local function GetStandingIndex(standing)
    local idx = 1
    for i, tier in ipairs(STANDINGS) do
        if standing >= tier.from then idx = i end
    end
    return idx
-- DEBUG: EXIT GetStandingIndex()
end

-----------------------------------------------------------------------
-- Compat: GetFactionInfoByID wrapper
-- WotLK: returns name, desc, reaction, minVal, maxVal, value, ...
-- Retail: C_Reputation.GetFactionDataByID returns a table
-----------------------------------------------------------------------
-- DEBUG: ENTER GetFactionData()
-- DEBUG: PARAM factionID = [factionID]
local function GetFactionData(factionID)
    if not factionID then return nil end

    -- Retail (10.0+): C_Reputation API
    if C_Reputation and C_Reputation.GetFactionDataByID then
        local d = C_Reputation.GetFactionDataByID(factionID)
        if d then
            return {
                name         = d.name,
                reaction     = d.reaction,
                currentMin   = d.currentReactionThreshold,
                currentMax   = d.nextReactionThreshold,
                currentValue = d.currentStanding,
                standingIndex = d.reaction,
            }
        end
        return nil
    end

    -- WotLK / Classic: GetFactionInfoByID
    if GetFactionInfoByID then
        local name, _, reaction, minVal, maxVal, value = GetFactionInfoByID(factionID)
        if name then
            return {
                name         = name,
                reaction     = reaction,
                currentMin   = minVal,
                currentMax   = maxVal,
                currentValue = value,
                standingIndex = reaction,
            }
        end
    end

    return nil
-- DEBUG: EXIT GetFactionData()
end

-----------------------------------------------------------------------
-- Get rep info as normalized {name, standingName, standingColor,
--   current, cap, pct, totalValue, barMin, barMax}
-----------------------------------------------------------------------
-- DEBUG: ENTER Faction:GetInfo()
-- DEBUG: PARAM factionID = [factionID]
function Faction:GetInfo(factionID)
    local d = GetFactionData(factionID)
    if not d then return nil end

    local sidx  = d.standingIndex or GetStandingIndex(d.currentValue or 0)
    local standing = STANDINGS[sidx] or STANDINGS[4]  -- fallback Neutral

    local barMin = d.currentMin  or 0
    local barMax = d.currentMax  or 36000
    local curVal = d.currentValue or 0

    -- Clamp relative progress within the current tier
    local relative = curVal - barMin
    local cap      = barMax - barMin
    if cap <= 0 then cap = 1 end
    local pct = math.max(0, math.min(1, relative / cap))

    return {
        factionID    = factionID,
        name         = d.name,
        standingName  = standing.name,
        standingColor = { standing.r, standing.g, standing.b },
        current      = relative,
        cap          = cap,
        pct          = pct,
        totalValue   = curVal,
        barMin       = barMin,
        barMax       = barMax,
    }
-- DEBUG: EXIT Faction:GetInfo()
end

-----------------------------------------------------------------------
-- Get a faction ID from a name string (scans the reputation panel data)
-----------------------------------------------------------------------
local nameToIDCache = {}

-- DEBUG: ENTER Faction:GetIDByName()
-- DEBUG: PARAM factionName = [factionName]
function Faction:GetIDByName(factionName)
    if not factionName then return nil end

    -- Check cache first
    if nameToIDCache[factionName] then
        return nameToIDCache[factionName]
    end

    -- Scan GetNumFactions / GetFactionInfo (works on all versions)
    if GetNumFactions then
        for i = 1, GetNumFactions() do
            local name, _, _, _, _, _, _, _, isHeader = GetFactionInfo(i)
            if not isHeader and name == factionName then
                -- The index in GetFactionInfo is not the factionID.
                -- We need to brute-force GetFactionInfoByID scan once.
                break
            end
        end
    end

    -- Brute-force scan IDs 1..5000 (cached after first use)
    if GetFactionInfoByID then
        for id = 1, 5000 do
            local name = GetFactionInfoByID(id)
            if name == factionName then
                nameToIDCache[factionName] = id
                return id
            end
        end
    elseif C_Reputation and C_Reputation.GetFactionDataByID then
        for id = 1, 5000 do
            local d = C_Reputation.GetFactionDataByID(id)
            if d and d.name == factionName then
                nameToIDCache[factionName] = id
                return id
            end
        end
    end

    return nil
-- DEBUG: EXIT Faction:GetIDByName()
end

-----------------------------------------------------------------------
-- Rep Bar in Viewer Footer
-- Shown when the current step has a "rep" goal.
-- The bar is created lazily and attached to XP.ViewerFrame.Footer.
-----------------------------------------------------------------------
local repBar    = nil
local repLabel  = nil
local repPct    = nil

-- DEBUG: ENTER EnsureRepBar()
local function EnsureRepBar()
    if repBar then return end
    local footer = XP.ViewerFrame and XP.ViewerFrame.Footer
    if not footer then return end

    -- Rep bar (below the existing progress bar)
    repBar = CreateFrame("StatusBar", nil, footer)
    repBar:SetHeight(4)
    repBar:SetPoint("BOTTOMLEFT",  footer, "BOTTOMLEFT",  8, 4)
    repBar:SetPoint("BOTTOMRIGHT", footer, "BOTTOMRIGHT", -60, 4)
    repBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    repBar:SetStatusBarColor(XP:ColorRGBA("purple"))
    repBar:SetMinMaxValues(0, 1)
    repBar:SetValue(0)

    local bg = repBar:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    XP.SetTexColor(bg, 0, 0, 0, 0.4)

    -- Standing label
    repLabel = footer:CreateFontString(nil, "OVERLAY")
    repLabel:SetPoint("BOTTOMLEFT", footer, "BOTTOMLEFT", 8, 10)
    XP:ApplyFont(repLabel, "tiny", "text_muted")

    -- Pct text on right side
    repPct = footer:CreateFontString(nil, "OVERLAY")
    repPct:SetPoint("BOTTOMRIGHT", footer, "BOTTOMRIGHT", -4, 10)
    XP:ApplyFont(repPct, "tiny", "cyan_dark")

    repBar:Hide()
    repLabel:Hide()
    repPct:Hide()
-- DEBUG: EXIT EnsureRepBar()
end

-- DEBUG: ENTER Faction:ShowRepBar()
-- DEBUG: PARAM factionID = [factionID]
-- DEBUG: PARAM targetStanding = [targetStanding]
function Faction:ShowRepBar(factionID, targetStanding)
    EnsureRepBar()
    if not repBar then return end

    local info = self:GetInfo(factionID)
    if not info then
        self:HideRepBar()
        return
    end

    local r, g, b = unpack(info.standingColor)
    repBar:SetStatusBarColor(r, g, b, 1)
    repBar:SetMinMaxValues(0, info.cap)
    repBar:SetValue(info.current)

    local labelText = info.name .. " — " .. info.standingName
    if targetStanding then
        labelText = labelText .. " → " .. targetStanding
    end
    repLabel:SetText(labelText)
    repPct:SetText(math.floor(info.pct * 100) .. "%")

    repBar:Show()
    repLabel:Show()
    repPct:Show()
-- DEBUG: EXIT Faction:ShowRepBar()
end

-- DEBUG: ENTER Faction:HideRepBar()
function Faction:HideRepBar()
    if repBar   then repBar:Hide()   end
    if repLabel then repLabel:Hide() end
    if repPct   then repPct:Hide()   end
-- DEBUG: EXIT Faction:HideRepBar()
end

-----------------------------------------------------------------------
-- UpdateForStep — call whenever the viewer advances to a new step
-----------------------------------------------------------------------
-- DEBUG: ENTER Faction:UpdateForStep()
-- DEBUG: PARAM step = [step]
function Faction:UpdateForStep(step)
    if not step then
        self:HideRepBar()
        return
    end

    -- Find first "rep" goal in the step
    local repGoal
    if step.goals then
        for _, goal in ipairs(step.goals) do
            if goal.type and goal.type:lower() == "rep" then
                repGoal = goal
                break
            end
        end
    end

    if not repGoal then
        self:HideRepBar()
        return
    end

    -- Resolve faction ID
    local factionID = repGoal.factionID
    if not factionID and repGoal.faction then
        factionID = self:GetIDByName(repGoal.faction)
    end

    if factionID then
        self:ShowRepBar(factionID, repGoal.standing)
    else
        self:HideRepBar()
    end
-- DEBUG: EXIT Faction:UpdateForStep()
end

-----------------------------------------------------------------------
-- Init — called from XP:OnEnable
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:InitFaction()
function XP:InitFaction()
    -- Listen for step changes to update rep bar
    XP:RegisterMessage("XP_STEP_CHANGED", function(_, step)
        Faction:UpdateForStep(step)
    end)

    -- Refresh on reputation updates
    local eventFrame = CreateFrame("Frame")
  -- DEBUG: EVENT RegisterEvent("UPDATE_FACTION")
    eventFrame:RegisterEvent("UPDATE_FACTION")
    eventFrame:SetScript("OnEvent", function()
        if XP.CurrentStep then
            Faction:UpdateForStep(XP.CurrentStep)
        end
    end)

    Faction.eventFrame = eventFrame
-- DEBUG: EXIT XP:InitFaction()
end
