-----------------------------------------------------------------------
-- X-Plore: Announcements.lua
-- Optional chat output when the player advances guide steps.
--
-- Mirrors Zygor's Announcements.lua (4 symbols) but extended:
--   * Step-advance message to self (always, if enabled)
--   * Optional party/raid broadcast
--   * Zone-change message when entering a new zone relevant to the guide
--
-- All output goes through XP:Print() (respects AceConsole-3.0 prefix)
-- for self-messages, and SendChatMessage() for group announcements.
--
-- DB keys (profile):
--   announcements.enabled        — master on/off (default false)
--   announcements.shareParty     — broadcast step to group (default false)
--   announcements.showZoneHint   — show zone-progress hint in chat (default true)
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

local AN = {}
XP.Announcements = AN

-- ─────────────────────────────────────────────────────────────────────────────
-- Helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Return the effective settings table, falling back to safe defaults.
-- DEBUG: ENTER DB()
local function DB()
    if XP.db and XP.db.profile and XP.db.profile.announcements then
        return XP.db.profile.announcements
    end
    return { enabled = false, shareParty = false, showZoneHint = true }
-- DEBUG: EXIT DB()
end

-- Determine whether the player is currently in a group.
-- DEBUG: ENTER InGroup()
local function InGroup()
    if GetNumGroupMembers then
        return GetNumGroupMembers() > 0
    elseif GetNumRaidMembers then
        return GetNumRaidMembers() > 0 or GetNumPartyMembers() > 0
    end
    return false
-- DEBUG: EXIT InGroup()
end

-- Return the correct channel keyword for the current group type.
-- On WotLK: "PARTY" / "RAID". On Retail: same (still valid).
-- DEBUG: ENTER GetGroupChannel()
local function GetGroupChannel()
    if GetNumGroupMembers then
        local members = GetNumGroupMembers()
        if members > 5 then return "RAID" end
        if members > 0 then return "PARTY" end
    elseif GetNumRaidMembers and GetNumRaidMembers() > 0 then
        return "RAID"
    elseif GetNumPartyMembers and GetNumPartyMembers() > 0 then
        return "PARTY"
    end
    return "PARTY"  -- safe fallback
-- DEBUG: EXIT GetGroupChannel()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Step Advance Announcement
-- ─────────────────────────────────────────────────────────────────────────────

--- Called by Core.lua (or GoalTracker) whenever the player advances to a new step.
-- @param stepIndex  (number) the new step index
-- @param guide      (Guide)  the current guide object (optional; uses XP.CurrentGuide)
-- DEBUG: ENTER AN:OnStepAdvanced()
-- DEBUG: PARAM stepIndex = [stepIndex]
-- DEBUG: PARAM guide = [guide]
function AN:OnStepAdvanced(stepIndex, guide)
    local db = DB()
    if not db.enabled then return end

    guide = guide or XP.CurrentGuide
    if not guide then return end

    local step = guide:GetStep(stepIndex)
    if not step then return end

    local numSteps = guide:GetNumSteps()
    local title    = step:GetTitle()
    local guideTitle = guide.titleShort or guide.title or "Guide"

    -- Format: "[X-Plore] Step N/M: Step Title"
    local msg = string.format("[X-Plore] Step %d/%d: %s", stepIndex, numSteps, title)

    -- Self announcement (always shown if enabled)
    XP:Print(string.format("Step |cff00e5ff%d|r / %d: %s", stepIndex, numSteps, title))

    -- Group broadcast (optional)
    if db.shareParty and InGroup() then
        local channel = GetGroupChannel()
        -- Guard against errors on servers where SendChatMessage is restricted
        local ok, err = pcall(SendChatMessage, msg, channel)
        if not ok then
            -- Silently ignore; don't spam error to user
        end
    end
-- DEBUG: EXIT AN:OnStepAdvanced()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Zone Hint Announcement
-- ─────────────────────────────────────────────────────────────────────────────

-- Track last zone to avoid duplicate messages
local lastAnnouncedZone = nil

--- Called when the player enters a new zone. Checks whether the current guide
-- has upcoming steps in this zone and prints a brief reminder.
-- @param zoneName  (string|nil) the new zone name
-- DEBUG: ENTER AN:OnZoneChanged()
-- DEBUG: PARAM zoneName = [zoneName]
function AN:OnZoneChanged(zoneName)
    local db = DB()
    if not db.showZoneHint then return end

    zoneName = zoneName or GetRealZoneText() or GetZoneText() or ""
    if zoneName == "" then return end
    if zoneName == lastAnnouncedZone then return end

    local guide = XP.CurrentGuide
    if not guide then return end

    local currentStep = XP.CurrentStep or 1
    local numSteps    = guide:GetNumSteps()

    -- Scan forward (up to 10 steps) for a step whose first goal's zone matches.
    local matchStep = nil
    local matchZone = zoneName:lower()

    for si = currentStep, math.min(numSteps, currentStep + 10) do
        local step = guide:GetStep(si)
        if step then
            for _, goal in ipairs(step.goals or {}) do
                if goal.zone and goal.zone:lower() == matchZone then
                    matchStep = si
                    break
                end
            end
            if matchStep then break end
        end
    end

    if matchStep then
        lastAnnouncedZone = zoneName
        XP:Print(string.format(
            "Entered |cff00e5ff%s|r — guide picks up at step |cff00e5ff%d|r.",
            zoneName, matchStep))
    end
-- DEBUG: EXIT AN:OnZoneChanged()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Guide Loaded / Completed Announcements
-- ─────────────────────────────────────────────────────────────────────────────

--- Called when a guide is first loaded.
-- DEBUG: ENTER AN:OnGuideLoaded()
-- DEBUG: PARAM guide = [guide]
function AN:OnGuideLoaded(guide)
    local db = DB()
    if not db.enabled then return end
    guide = guide or XP.CurrentGuide
    if not guide then return end

    XP:Print(string.format(
        "Guide loaded: |cff00e5ff%s|r  (%d steps)",
        guide.title or guide.titleShort or "Unknown",
        guide:GetNumSteps()))
-- DEBUG: EXIT AN:OnGuideLoaded()
end

--- Called when the last step is completed.
-- DEBUG: ENTER AN:OnGuideCompleted()
-- DEBUG: PARAM guide = [guide]
function AN:OnGuideCompleted(guide)
    local db = DB()
    if not db.enabled then return end
    guide = guide or XP.CurrentGuide
    if not guide then return end

    XP:Print(string.format(
        "|cff4ADE80Guide complete:|r %s",
        guide.title or guide.titleShort or "Unknown"))

    if db.shareParty and InGroup() then
        local channel = GetGroupChannel()
        local msg = string.format(
            "[X-Plore] Guide complete: %s",
            guide.title or guide.titleShort or "Unknown")
        pcall(SendChatMessage, msg, channel)
    end
-- DEBUG: EXIT AN:OnGuideCompleted()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Init
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER AN:OnEnable()
function AN:OnEnable()
    -- Ensure DB keys exist
    if XP.db and XP.db.profile then
        if XP.db.profile.announcements == nil then
            XP.db.profile.announcements = {
                enabled      = false,
                shareParty   = false,
                showZoneHint = true,
            }
        end
    end

    -- Subscribe to step/guide messages if message bus is available
    if XP.RegisterMessage then
        XP:RegisterMessage("XP_STEP_CHANGED", function(event, stepIdx)
            AN:OnStepAdvanced(stepIdx)
        end)
        XP:RegisterMessage("XP_GUIDE_LOADED", function(event, guide)
            AN:OnGuideLoaded(guide)
        end)
        XP:RegisterMessage("XP_GUIDE_COMPLETED", function(event, guide)
            AN:OnGuideCompleted(guide)
        end)
    end

    -- Zone change event
    if XP.RegisterEvent then
  -- DEBUG: EVENT RegisterEvent("ZONE_CHANGED")
        XP:RegisterEvent("ZONE_CHANGED",          function() AN:OnZoneChanged() end)
  -- DEBUG: EVENT RegisterEvent("ZONE_CHANGED_NEW_AREA")
        XP:RegisterEvent("ZONE_CHANGED_NEW_AREA", function() AN:OnZoneChanged() end)
    end
-- DEBUG: EXIT AN:OnEnable()
end
