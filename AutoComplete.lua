-- AutoComplete.lua
-- X-PLORE: Auto-detection of already-completed content when loading a guide.
-- Scans guide steps on load and advances past quests the player already finished.
-- Also suggests guides based on player zone and level.
--
-- Universal: works on WotLK 3.3.5a AND Retail.

local AC = {}
XP.AutoComplete = AC

-- ─────────────────────────────────────────────────────────────────────────────
-- Quest completion helpers  (thin wrappers over Core.lua equivalents)
-- ─────────────────────────────────────────────────────────────────────────────

-- Returns true if questID is flagged completed in this character's history.
local function IsQuestDone(questID)
    if not questID or questID == 0 then return false end
    return XP:IsQuestCompleted(questID)
end

-- Returns true if questID is currently in the quest log (accepted but not done).
local function IsQuestInLog(questID)
    if not questID or questID == 0 then return false end
    return XP:IsQuestInLog(questID)
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Step classification
-- ─────────────────────────────────────────────────────────────────────────────

-- Returns true if every completable goal in the step is already satisfied.
-- A step is "skippable" when:
--   - It has at least one quest-type goal, AND
--   - All quest-type goals reference quests that are already completed or
--     are already in the log (for accept goals).
local function StepShouldSkip(step)
    if not step or not step.goals or #step.goals == 0 then
        return false
    end

    local hasCheckable = false
    for _, goal in ipairs(step.goals) do
        local action = (goal.action or ""):lower()

        -- Only evaluate quest-type goals for auto-skip
        if action == "accept" then
            hasCheckable = true
            -- If quest is NOT done and NOT already in log → cannot skip
            if goal.questID and goal.questID ~= 0 then
                if not IsQuestDone(goal.questID) and not IsQuestInLog(goal.questID) then
                    return false
                end
            end

        elseif action == "turnin" then
            hasCheckable = true
            if goal.questID and goal.questID ~= 0 then
                if not IsQuestDone(goal.questID) then
                    return false
                end
            end

        elseif action == "kill" or action == "collect" then
            hasCheckable = true
            -- If there's a questID we check quest completion as a proxy.
            -- If no questID, we can't determine state — assume not done.
            if goal.questID and goal.questID ~= 0 then
                if not IsQuestDone(goal.questID) then
                    return false
                end
            else
                return false
            end
        end
        -- Non-quest actions (goto, info, confirm, use, etc.) are ignored for skip logic.
    end

    return hasCheckable
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Main: auto-advance to first incomplete step
-- ─────────────────────────────────────────────────────────────────────────────

-- Called by XP:LoadGuide() after the guide is set.
-- Scans from step 1 (or from currentStep if skipFromCurrent=true) and
-- advances XP.CurrentStep to the first step that isn't already finished.
-- Returns the new step index.
function AC:AutoAdvanceToFirstIncomplete(guide, skipFromCurrent)
    if not guide then return 1 end

    -- Ensure steps are parsed
    local numSteps
    if guide.GetNumSteps then
        numSteps = guide:GetNumSteps()
    else
        numSteps = guide.numSteps or 0
    end
    if numSteps == 0 then return 1 end

    local startAt = skipFromCurrent and (XP.CurrentStep or 1) or 1

    for i = startAt, numSteps do
        local step = guide:GetStep(i)
        if step and not StepShouldSkip(step) then
            return i
        end
    end

    -- All steps done (or nothing found) — park at last step
    return numSteps
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Guide suggestion helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Cache for zone → guide ID suggestions, cleared on guide load.
AC._zoneSuggestions = {}
AC._levelSuggestions = {}

-- Rebuilds internal suggestion maps from all registered guides.
-- Called once on enable (after guides are loaded) and whenever a new
-- guide is registered.
function AC:BuildSuggestionMaps()
    self._zoneSuggestions  = {}
    self._levelSuggestions = {}

    for id, guide in pairs(XP.Guides or {}) do
        -- Zone-based index
        if guide.zone then
            local z = guide.zone:lower()
            if not self._zoneSuggestions[z] then
                self._zoneSuggestions[z] = {}
            end
            table.insert(self._zoneSuggestions[z], id)
        end

        -- Level-range index
        local minL = guide.minLevel or guide.minlevel
        local maxL = guide.maxLevel or guide.maxlevel
        if minL and maxL then
            table.insert(self._levelSuggestions, {
                id     = id,
                minLvl = minL,
                maxLvl = maxL,
            })
        end
    end
end

-- Returns a list of guide IDs relevant to the given zone name (string).
function AC:GetZoneSuggestions(zoneName)
    if not zoneName then return {} end
    local key = zoneName:lower()
    return self._zoneSuggestions[key] or {}
end

-- Returns a list of guide IDs whose level range contains playerLevel.
function AC:GetLevelSuggestions(playerLevel)
    if not playerLevel then return {} end
    local results = {}
    for _, entry in ipairs(self._levelSuggestions) do
        if playerLevel >= entry.minLvl and playerLevel <= entry.maxLvl then
            table.insert(results, entry.id)
        end
    end
    return results
end

-- Returns the single "best" guide ID for the player's current state.
-- Priority: zone + level match > level match only > zone match only
-- Returns nil if no suggestions found.
function AC:GetBestSuggestion()
    local zone  = GetRealZoneText and GetRealZoneText() or ""
    local level = UnitLevel and UnitLevel("player") or 1

    local byZone  = {}
    for _, id in ipairs(self:GetZoneSuggestions(zone)) do
        byZone[id] = true
    end

    local byLevel = {}
    for _, id in ipairs(self:GetLevelSuggestions(level)) do
        byLevel[id] = true
    end

    -- Prefer zone+level match
    for id in pairs(byZone) do
        if byLevel[id] then return id end
    end

    -- Fall back to level-only match
    for id in pairs(byLevel) do
        return id  -- first one
    end

    -- Fall back to zone-only match
    for id in pairs(byZone) do
        return id
    end

    return nil
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Suggestion toast (non-intrusive chat print)
-- ─────────────────────────────────────────────────────────────────────────────

-- Shows a one-time in-chat suggestion message.
-- Guards against showing the same guide multiple times per session.
AC._suggested = {}

function AC:ShowSuggestion(guideID)
    if not guideID then return end
    if self._suggested[guideID] then return end
    self._suggested[guideID] = true

    local guide = XP.Guides and XP.Guides[guideID]
    if not guide then return end

    local name = guide.title or guideID
    XP:Print(string.format(
        "Suggested guide for your zone/level: |cff00e5ff%s|r — type |cff00e5ff/xp|r to open.",
        name
    ))
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Integration hooks (called from Core.lua)
-- ─────────────────────────────────────────────────────────────────────────────

-- Called from XP:OnEnable() after guides are loaded.
-- Registers a one-time delayed check for zone/level suggestion.
function AC:OnEnable()
    self:BuildSuggestionMaps()

    -- Delay suggestion slightly so the player is fully in-world
    if C_Timer and C_Timer.After then
        C_Timer.After(3, function()
            if not XP.CurrentGuide then
                local suggested = self:GetBestSuggestion()
                if suggested then
                    self:ShowSuggestion(suggested)
                end
            end
        end)
    end
end

-- Called from XP:LoadGuide() after setting CurrentGuide / CurrentStep.
-- Returns the recommended starting step (auto-advances past done quests).
function AC:OnGuideLoaded(guide)
    if not guide then return 1 end

    -- Only auto-skip if the db option is enabled
    local autoSkip = XP.db and XP.db.profile and XP.db.profile.autoSkipCompleted
    if autoSkip == nil then autoSkip = true end  -- default ON

    if autoSkip then
        local newStep = self:AutoAdvanceToFirstIncomplete(guide, false)
        return newStep
    end

    return XP.CurrentStep or 1
end

-- Called from XP:OnZoneEvent() — re-check suggestion on zone change.
function AC:OnZoneChanged()
    if XP.CurrentGuide then return end  -- already have a guide, no suggestion needed

    local suggested = self:GetBestSuggestion()
    if suggested then
        self:ShowSuggestion(suggested)
    end
end
