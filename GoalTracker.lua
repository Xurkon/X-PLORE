-- GoalTracker.lua
-- X-PLORE: Event-driven goal completion tracking.
-- Listens for WoW game events and marks goals complete as the player acts.
--
-- Tracked goal types:
--   accept   — QUEST_ACCEPTED
--   turnin   — QUEST_TURNED_IN / QUEST_COMPLETE
--   kill     — COMBAT_LOG_EVENT_UNFILTERED (UNIT_DIED with questID proxy)
--   collect  — BAG_UPDATE_DELAYED (inventory scan)
--   use      — ITEM_COOLDOWN_DURATION_UPDATED / manual
--   gossip   — GOSSIP_SHOW hook
--   discover — ACHIEVEMENT_EARNED / AREA_POIS_UPDATED
--   achieve  — ACHIEVEMENT_EARNED
--   rep      — UPDATE_FACTION
--   skill    — SKILL_LINES_CHANGED / CHAT_MSG_SKILL
--   learn    — LEARNED_SPELL_IN_TAB / UNIT_SPELLCAST_SUCCEEDED (trainer)
--   level    — PLAYER_LEVEL_UP
--   fly      — TAXIMAP_OPENED / CHAT_MSG_SYSTEM (flight path taken)
--
-- Universal: WotLK 3.3.5a AND Retail.

local GT = {}
XP.GoalTracker = GT

-- ─────────────────────────────────────────────────────────────────────────────
-- Internal state
-- ─────────────────────────────────────────────────────────────────────────────

GT._watchedGoals = {}  -- flat list of active goals being tracked
GT._frame        = nil -- event listener frame

-- ─────────────────────────────────────────────────────────────────────────────
-- Registration helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Register all goals in the current step for event tracking.
-- DEBUG: ENTER GT:RegisterStep()
-- DEBUG: PARAM step = [step]
function GT:RegisterStep(step)
    if not step or not step.goals then return end
    for _, goal in ipairs(step.goals) do
        self:RegisterGoal(goal)
    end
-- DEBUG: EXIT GT:RegisterStep()
end

-- Register a single goal for event tracking.
-- DEBUG: ENTER GT:RegisterGoal()
-- DEBUG: PARAM goal = [goal]
function GT:RegisterGoal(goal)
    if not goal then return end
    table.insert(self._watchedGoals, goal)
-- DEBUG: EXIT GT:RegisterGoal()
end

-- Clear all tracked goals (called when guide is unloaded or step changes).
-- DEBUG: ENTER GT:ClearGoals()
function GT:ClearGoals()
    self._watchedGoals = {}
-- DEBUG: EXIT GT:ClearGoals()
end

-- Returns a list of goals matching the given action type (lowercase).
-- DEBUG: ENTER GT:GetGoalsByAction()
-- DEBUG: PARAM action = [action]
function GT:GetGoalsByAction(action)
    local result = {}
    for _, g in ipairs(self._watchedGoals) do
        if (g.action or ""):lower() == action then
            table.insert(result, g)
        end
    end
    return result
-- DEBUG: EXIT GT:GetGoalsByAction()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Goal completion helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Marks a goal complete and triggers auto-advance check.
-- DEBUG: ENTER CompleteGoal()
-- DEBUG: PARAM goal = [goal]
local function CompleteGoal(goal)
    if goal.complete then return end
    goal.complete = true
    goal.current  = goal.count or 1
    XP:SendMessage("XP_GOAL_COMPLETED", goal)

    -- Check if current step is now fully complete
    if XP.CurrentGuide and XP.CurrentStep then
        local step = XP.CurrentGuide:GetStep(XP.CurrentStep)
        if step and step:IsComplete() then
            XP:SendMessage("XP_STEP_COMPLETED", step)
            -- Auto-advance if enabled
            if XP.db and XP.db.profile and XP.db.profile.autoAdvance then
                XP:NextStep()
            end
        else
            XP:UpdateViewer()
        end
    end
-- DEBUG: EXIT CompleteGoal()
end

-- Increment a counted goal (kill / collect).
-- DEBUG: ENTER IncrementGoal()
-- DEBUG: PARAM goal = [goal]
-- DEBUG: PARAM amount = [amount]
local function IncrementGoal(goal, amount)
    if goal.complete then return end
    amount = amount or 1
    goal.current = (goal.current or 0) + amount
    if goal.current >= (goal.count or 1) then
        goal.current = goal.count or 1
        CompleteGoal(goal)
    else
        XP:UpdateViewer()
    end
-- DEBUG: EXIT IncrementGoal()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Quest event handlers
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:OnQuestAccepted()
-- DEBUG: PARAM questID = [questID]
function GT:OnQuestAccepted(questID)
    for _, goal in ipairs(self:GetGoalsByAction("accept")) do
        if goal.questID == questID then
            CompleteGoal(goal)
        end
    end
-- DEBUG: EXIT GT:OnQuestAccepted()
end

-- DEBUG: ENTER GT:OnQuestTurnedIn()
-- DEBUG: PARAM questID = [questID]
function GT:OnQuestTurnedIn(questID)
    for _, goal in ipairs(self:GetGoalsByAction("turnin")) do
        if goal.questID == questID then
            CompleteGoal(goal)
        end
    end
-- DEBUG: EXIT GT:OnQuestTurnedIn()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Kill tracking via COMBAT_LOG_EVENT_UNFILTERED
-- We detect PARTY_KILL / UNIT_DIED sub-events.
-- To connect kills to goals we use the NPC name + npcID heuristic.
-- ─────────────────────────────────────────────────────────────────────────────

-- Cache of npcID → goal mappings for O(1) kill lookups.
GT._killGoalsByNPCID = {}
GT._killGoalsByName  = {}

-- DEBUG: ENTER GT:RebuildKillCache()
function GT:RebuildKillCache()
    self._killGoalsByNPCID = {}
    self._killGoalsByName  = {}

    for _, goal in ipairs(self._watchedGoals) do
        local action = (goal.action or ""):lower()
        if action == "kill" then
            if goal.npcID then
                if not self._killGoalsByNPCID[goal.npcID] then
                    self._killGoalsByNPCID[goal.npcID] = {}
                end
                table.insert(self._killGoalsByNPCID[goal.npcID], goal)
            end
            if goal.text and goal.text ~= "" then
                local key = goal.text:lower()
                if not self._killGoalsByName[key] then
                    self._killGoalsByName[key] = {}
                end
                table.insert(self._killGoalsByName[key], goal)
            end
        end
    end
-- DEBUG: EXIT GT:RebuildKillCache()
end

-- Extracts the NPC GUID creature ID from a full GUID string.
-- GUID format: "Creature-0-XXXXX-XXXXX-XXXXX-NNNNN-..."
-- DEBUG: ENTER GUIDToNPCID()
-- DEBUG: PARAM guid = [guid]
local function GUIDToNPCID(guid)
    if not guid then return nil end
    -- Guard: guid may arrive as a number (GUID type field) instead of string
    -- in some WotLK combat log dispatches. Coerce to string for pattern match.
    if type(guid) == "number" then return nil end
    local npcID = tonumber(tostring(guid):match("Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)"))
    return npcID
-- DEBUG: EXIT GUIDToNPCID()
end

-- DEBUG: ENTER GT:OnUnitDied()
-- DEBUG: PARAM destGUID = [destGUID]
-- DEBUG: PARAM destName = [destName]
function GT:OnUnitDied(destGUID, destName)
    -- Try npcID match first (reliable)
    local npcID = GUIDToNPCID(destGUID)
    if npcID and self._killGoalsByNPCID[npcID] then
        for _, goal in ipairs(self._killGoalsByNPCID[npcID]) do
            IncrementGoal(goal)
        end
        return
    end

    -- Fall back to name match (less reliable but works when npcID unknown)
    if destName then
        local key = destName:lower()
        if self._killGoalsByName[key] then
            for _, goal in ipairs(self._killGoalsByName[key]) do
                IncrementGoal(goal)
            end
        end
    end
-- DEBUG: EXIT GT:OnUnitDied()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Collect tracking via BAG_UPDATE_DELAYED
-- ─────────────────────────────────────────────────────────────────────────────

-- Cache of itemID → goal for collect tracking.
GT._collectGoalsByItemID = {}
GT._collectGoalsByName   = {}

-- DEBUG: ENTER GT:RebuildCollectCache()
function GT:RebuildCollectCache()
    self._collectGoalsByItemID = {}
    self._collectGoalsByName   = {}

    for _, goal in ipairs(self._watchedGoals) do
        local action = (goal.action or ""):lower()
        if action == "collect" then
            if goal.itemID then
                if not self._collectGoalsByItemID[goal.itemID] then
                    self._collectGoalsByItemID[goal.itemID] = {}
                end
                table.insert(self._collectGoalsByItemID[goal.itemID], goal)
            end
            if goal.text and goal.text ~= "" then
                local key = goal.text:lower()
                if not self._collectGoalsByName[key] then
                    self._collectGoalsByName[key] = {}
                end
                table.insert(self._collectGoalsByName[key], goal)
            end
        end
    end
-- DEBUG: EXIT GT:RebuildCollectCache()
end

-- Counts how many of itemID the player currently has in their bags.
-- DEBUG: ENTER CountItemInBags()
-- DEBUG: PARAM itemID = [itemID]
local function CountItemInBags(itemID)
    local total = 0
    for bag = 0, NUM_BAG_SLOTS or 4 do
        local slots = GetContainerNumSlots(bag)
        if slots then
            for slot = 1, slots do
                local _, count, _, _, _, _, _, _, _, id = GetContainerItemInfo(bag, slot)
                if id == itemID then
                    total = total + (count or 0)
                end
            end
        end
    end
    return total
-- DEBUG: EXIT CountItemInBags()
end

-- DEBUG: ENTER GT:OnBagUpdate()
function GT:OnBagUpdate()
    for itemID, goals in pairs(self._collectGoalsByItemID) do
        local have = CountItemInBags(itemID)
        for _, goal in ipairs(goals) do
            if not goal.complete then
                local need = goal.count or 1
                if have >= need then
                    goal.current = need
                    CompleteGoal(goal)
                else
                    local prev = goal.current or 0
                    if have ~= prev then
                        goal.current = have
                        XP:UpdateViewer()
                    end
                end
            end
        end
    end
-- DEBUG: EXIT GT:OnBagUpdate()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Achievement tracking
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:OnAchievementEarned()
-- DEBUG: PARAM achievementID = [achievementID]
function GT:OnAchievementEarned(achievementID)
    for _, goal in ipairs(self:GetGoalsByAction("achieve")) do
        if goal.achievementID == achievementID then
            CompleteGoal(goal)
        end
    end
    -- Also covers "discover" goals that are achievement-gated
    for _, goal in ipairs(self:GetGoalsByAction("discover")) do
        if goal.achievementID == achievementID then
            CompleteGoal(goal)
        end
    end
-- DEBUG: EXIT GT:OnAchievementEarned()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Reputation tracking
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:OnFactionUpdate()
function GT:OnFactionUpdate()
    for _, goal in ipairs(self:GetGoalsByAction("rep")) do
        if not goal.complete and goal.factionID and goal.standing then
            -- GetFactionInfoByID available on Retail; WotLK uses GetFactionInfo(index)
            local name, _, standingID
            if GetFactionInfoByID then
                name, _, standingID = GetFactionInfoByID(goal.factionID)
            else
                -- WotLK: scan faction list for matching ID
                for i = 1, GetNumFactions() do
                    local fn, _, fs, _, _, _, _, fid = GetFactionInfo(i)
                    if fid == goal.factionID then
                        name, standingID = fn, fs
                        break
                    end
                end
            end

            if standingID and standingID >= (goal.standing or 0) then
                CompleteGoal(goal)
            end
        end
    end
-- DEBUG: EXIT GT:OnFactionUpdate()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Skill / Spell learning tracking
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:OnSkillUpdate()
function GT:OnSkillUpdate()
    for _, goal in ipairs(self:GetGoalsByAction("skill")) do
        if not goal.complete and goal.skillName then
            local key = goal.skillName:lower()
            for i = 1, GetNumSkillLines() do
                local skillName, _, _, skillRank = GetSkillLineInfo(i)
                if skillName and skillName:lower() == key then
                    local need = goal.skillLevel or 1
                    if skillRank and skillRank >= need then
                        CompleteGoal(goal)
                    else
                        goal.current = skillRank or 0
                        XP:UpdateViewer()
                    end
                    break
                end
            end
        end
    end
-- DEBUG: EXIT GT:OnSkillUpdate()
end

-- DEBUG: ENTER GT:OnSpellLearned()
-- DEBUG: PARAM spellID = [spellID]
function GT:OnSpellLearned(spellID)
    for _, goal in ipairs(self:GetGoalsByAction("learn")) do
        if not goal.complete then
            if goal.spellID and goal.spellID == spellID then
                CompleteGoal(goal)
            elseif goal.text and goal.text ~= "" then
                local name = GetSpellInfo and GetSpellInfo(spellID)
                if name and name:lower() == goal.text:lower() then
                    CompleteGoal(goal)
                end
            end
        end
    end
    for _, goal in ipairs(self:GetGoalsByAction("learnmount")) do
        if not goal.complete and goal.spellID and goal.spellID == spellID then
            CompleteGoal(goal)
        end
    end
-- DEBUG: EXIT GT:OnSpellLearned()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Level goal
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:OnPlayerLevelUp()
-- DEBUG: PARAM newLevel = [newLevel]
function GT:OnPlayerLevelUp(newLevel)
    for _, goal in ipairs(self:GetGoalsByAction("level")) do
        if not goal.complete then
            local need = tonumber(goal.text) or 0
            if newLevel and newLevel >= need then
                CompleteGoal(goal)
            end
        end
    end
-- DEBUG: EXIT GT:OnPlayerLevelUp()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Event frame and dispatch
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:CreateEventFrame()
function GT:CreateEventFrame()
    if self._frame then return end

    local f = CreateFrame("Frame", "XPlore_GoalTrackerFrame")
    f:SetScript("OnEvent", function(_, event, ...)
        GT:OnEvent(event, ...)
    end)

    -- Quest events
  -- DEBUG: EVENT RegisterEvent("QUEST_ACCEPTED")
    f:RegisterEvent("QUEST_ACCEPTED")
  -- DEBUG: EVENT RegisterEvent("QUEST_LOG_UPDATE")
    f:RegisterEvent("QUEST_LOG_UPDATE")
    if XP.isRetail then
  -- DEBUG: EVENT RegisterEvent("QUEST_TURNED_IN")
        f:RegisterEvent("QUEST_TURNED_IN")
    else
  -- DEBUG: EVENT RegisterEvent("QUEST_COMPLETE")
        f:RegisterEvent("QUEST_COMPLETE")
    end

    -- Combat log (kill tracking)
  -- DEBUG: EVENT RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
    f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

    -- Inventory (collect tracking)
  -- DEBUG: EVENT RegisterEvent("BAG_UPDATE_DELAYED")
    f:RegisterEvent("BAG_UPDATE_DELAYED")

    -- Achievement
  -- DEBUG: EVENT RegisterEvent("ACHIEVEMENT_EARNED")
    f:RegisterEvent("ACHIEVEMENT_EARNED")

    -- Reputation
  -- DEBUG: EVENT RegisterEvent("UPDATE_FACTION")
    f:RegisterEvent("UPDATE_FACTION")

    -- Skills / spell learning
  -- DEBUG: EVENT RegisterEvent("SKILL_LINES_CHANGED")
    f:RegisterEvent("SKILL_LINES_CHANGED")
  -- DEBUG: EVENT RegisterEvent("LEARNED_SPELL_IN_TAB")
    f:RegisterEvent("LEARNED_SPELL_IN_TAB")
    if XP.isRetail then
  -- DEBUG: EVENT RegisterEvent("SPELLS_CHANGED")
        f:RegisterEvent("SPELLS_CHANGED")
    end

    -- Level
  -- DEBUG: EVENT RegisterEvent("PLAYER_LEVEL_UP")
    f:RegisterEvent("PLAYER_LEVEL_UP")

    self._frame = f
-- DEBUG: EXIT GT:CreateEventFrame()
end

-- DEBUG: ENTER GT:OnEvent()
-- DEBUG: PARAM event = [event]
function GT:OnEvent(event, ...)
    if event == "QUEST_ACCEPTED" then
        local _, questID = ...
        self:OnQuestAccepted(questID or (...))

    elseif event == "QUEST_TURNED_IN" then
        local questID = ...
        self:OnQuestTurnedIn(questID)

    elseif event == "QUEST_COMPLETE" then
        -- WotLK: grab ID from quest log scan (no direct questID arg)
        -- Best we can do is scan for quests that just completed
        -- and match against watched goals.
        for _, goal in ipairs(self:GetGoalsByAction("turnin")) do
            if goal.questID and not goal.complete then
                if XP:IsQuestCompleted(goal.questID) then
                    CompleteGoal(goal)
                end
            end
        end

    elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then
        -- CombatLogGetCurrentEventInfo() is the Retail API.
        -- On WotLK the args are passed directly to the script.
        local args = { ... }
        local subEvent, _, destGUID, destName
        if CombatLogGetCurrentEventInfo then
            local all = { CombatLogGetCurrentEventInfo() }
            subEvent = all[2]
            destGUID = all[8]
            destName = all[9]
        else
            subEvent = args[2]
            destGUID = args[8]
            destName = args[9]
        end

        if subEvent == "UNIT_DIED" or subEvent == "PARTY_KILL" then
            self:OnUnitDied(destGUID, destName)
        end

    elseif event == "BAG_UPDATE_DELAYED" then
        self:OnBagUpdate()

    elseif event == "ACHIEVEMENT_EARNED" then
        local achievementID = ...
        self:OnAchievementEarned(achievementID)

    elseif event == "UPDATE_FACTION" then
        self:OnFactionUpdate()

    elseif event == "SKILL_LINES_CHANGED" then
        self:OnSkillUpdate()

    elseif event == "LEARNED_SPELL_IN_TAB" or event == "SPELLS_CHANGED" then
        -- Scan for newly learned spells relevant to goals.
        -- No reliable spellID argument on all versions; scan spell book.
        for _, goal in ipairs(self:GetGoalsByAction("learn")) do
            if not goal.complete and goal.text and goal.text ~= "" then
                local spellName = goal.text:lower()
                local bookType  = BOOKTYPE_SPELL or "spell"
                local numSpells = GetNumSpellTabs and GetNumSpellTabs() or 0
                for tabIndex = 1, numSpells do
                    local _, _, offset, count = GetSpellTabInfo(tabIndex)
                    for i = offset + 1, offset + count do
                        local name = GetSpellBookItemName(i, bookType)
                        if name and name:lower() == spellName then
                            CompleteGoal(goal)
                        end
                    end
                end
            end
        end

    elseif event == "PLAYER_LEVEL_UP" then
        local newLevel = ...
        self:OnPlayerLevelUp(newLevel)
    end
-- DEBUG: EXIT GT:OnEvent()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Step change handler (called from Core.lua after step navigation)
-- ─────────────────────────────────────────────────────────────────────────────

-- Called when the current step changes. Re-registers watched goals.
-- DEBUG: ENTER GT:OnStepChanged()
-- DEBUG: PARAM guide = [guide]
-- DEBUG: PARAM stepIndex = [stepIndex]
function GT:OnStepChanged(guide, stepIndex)
    self:ClearGoals()

    if not guide or not stepIndex then return end

    local step = guide:GetStep(stepIndex)
    if not step then return end

    self:RegisterStep(step)
    self:RebuildKillCache()
    self:RebuildCollectCache()

    -- Immediately re-check bag state for collect goals (items might already be in bag)
    self:OnBagUpdate()

    -- Immediately re-check quest state for accept/turnin goals
    for _, goal in ipairs(self:GetGoalsByAction("accept")) do
        if goal.questID and (XP:IsQuestCompleted(goal.questID) or XP:IsQuestInLog(goal.questID)) then
            goal.complete = true
            goal.current  = 1
        end
    end
    for _, goal in ipairs(self:GetGoalsByAction("turnin")) do
        if goal.questID and XP:IsQuestCompleted(goal.questID) then
            goal.complete = true
            goal.current  = 1
        end
    end
-- DEBUG: EXIT GT:OnStepChanged()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Init (called from Core.lua OnEnable)
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER GT:OnEnable()
function GT:OnEnable()
    self:CreateEventFrame()
-- DEBUG: EXIT GT:OnEnable()
end
