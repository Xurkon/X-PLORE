-----------------------------------------------------------------------
-- X-Plore: Guide.lua
-- Guide, Step, and Goal data model.
-- Provides the data structures for guide content.
-- Supports two registration modes:
--   1) Table-based: XP:RegisterGuide({ id=..., steps={...} })
--   2) XP-format: XP:RegisterGuide("Path\\Title", {header}, [[data]])
--
-- Parsing of raw guide text is delegated to Parser.lua.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Goal Prototype
-- A single objective within a step (e.g., "Kill 8 Defias Thugs")
-----------------------------------------------------------------------
local Goal = {}
Goal.__index = Goal

-- DEBUG: ENTER Goal:New()
-- DEBUG: PARAM data = [data]
function Goal:New(data)
    local obj = setmetatable({}, Goal)
    obj.action          = data.action or data.type or "text"
    obj.text            = data.text or data.title or ""
    obj.description     = data.description or ""
    obj.questID         = data.questID
    obj.questObjective  = data.questObjective
    obj.npcID           = data.npcID
    obj.itemID          = data.itemID
    obj.objectID        = data.objectID
    obj.spellID         = data.spellID
    obj.achieveID       = data.achieveID
    obj.count           = data.count or 1
    obj.current         = 0
    obj.complete        = data.complete or false
    obj.coords          = data.coords       -- { x=, y= }
    obj.x               = data.x
    obj.y               = data.y
    obj.zone            = data.zone or data.zoneId
    obj.mapName         = data.mapName
    obj.mapID           = data.mapID
    obj.floor           = data.floor
    obj.dist            = data.dist
    obj.tips            = data.tips or {}
    obj.condition       = data.condition
    obj.isOr            = data.isOr
    obj.noComplete      = data.noComplete
    obj.forceComplete   = data.forceComplete
    obj.requiresClick   = data.requiresClick
    obj.daily           = data.daily
    obj.repeatable      = data.repeatable
    obj.gossipIndex     = data.gossipIndex
    obj.loadguidePath   = data.loadguidePath
    obj.modifiers       = data.modifiers or {}
    return obj
-- DEBUG: EXIT Goal:New()
end

-----------------------------------------------------------------------
-- Goal Completion Logic
-- Returns: isComplete, isPossible, numDone, numNeeded
-----------------------------------------------------------------------
-- DEBUG: ENTER Goal:IsComplete()
function Goal:IsComplete()
    if self.forceComplete then return true, true, 1, 1 end

    local action = (self.action or ""):lower()

    -- Check quest-based completion first
    if self.questID then
        local isComplete, possible = self:CheckQuestCompletion()
        if isComplete ~= nil then
            return isComplete, possible, isComplete and 1 or 0, 1
        end
    end

    -- Check achievement completion
    if self.achieveID then
        local isComplete = self:CheckAchievementCompletion()
        return isComplete, true, isComplete and 1 or 0, 1
    end

    -- Action-specific completion checks
    if action == "accept" then
        -- Accept is complete if quest was already accepted
        if self.questID then
            return self:CheckQuestAccepted(), true, 0, 1
        end
        return false, true, 0, 1

    elseif action == "turnin" then
        -- Turnin is complete if quest was turned in
        if self.questID then
            return self:CheckQuestTurnin(), true, 0, 1
        end
        return false, true, 0, 1

    elseif action == "kill" or action == "kill_mob" or action == "grind" then
        -- Kill is complete when kill count is met
        return (self.current or 0) >= (self.count or 1), true, self.current or 0, self.count or 1

    elseif action == "collect" or action == "get" or action == "farm" then
        -- Collect is complete when item count is met
        return (self.current or 0) >= (self.count or 1), true, self.current or 0, self.count or 1

    elseif action == "use" or action == "equip" or action == "equipped" then
        -- Use/equip is complete when item is equipped/used
        return self.current == 1, true, self.current or 0, 1

    elseif action == "talk" or action == "interact" or action == "clicknpc" then
        -- Talk/interact is complete when gossip option selected
        return self.current == 1, true, self.current or 0, 1

    elseif action == "buy" then
        -- Buy is complete when item purchased
        return self.current == 1, true, self.current or 0, 1

    elseif action == "skill" or action == "reachskill" then
        -- Skill is complete when skill level reached
        return (self.current or 0) >= (self.count or 1), true, self.current or 0, self.count or 1

    elseif action == "rep" then
        -- Reputation is complete when standing reached
        return self.current == 1, true, self.current or 0, 1

    elseif action == "achieve" then
        return self.current == 1, true, self.current or 0, 1

    elseif action == "learn" or action == "learnspell" or action == "learnmount" or action == "learnpet" then
        -- Learn is complete when spell/mount/pet learned
        return self.current == 1, true, self.current or 0, 1

    elseif action == "cast" then
        return self.current == 1, true, self.current or 0, 1

    elseif action == "home" or action == "hearth" then
        return self.current == 1, true, self.current or 0, 1

    elseif action == "fly" or action == "fpath" or action == "travel" or action == "goto" then
        -- Travel goals auto-complete when player is in range
        return self.current == 1, true, self.current or 0, 1

    elseif action == "explore" or action == "discover" then
        return self.current == 1, true, self.current or 0, 1

    elseif action == "confirm" or action == "click" then
        -- Manual action required
        return self.current == 1, true, self.current or 0, 1

    elseif action == "level" or action == "ding" then
        return (self.current or 0) >= (self.count or 1), true, self.current or 0, self.count or 1
    end

    -- Default: use explicit complete flag
    if self.complete then return true, true, 1, 1 end

    return false, true, 0, 1
-- DEBUG: EXIT Goal:IsComplete()
end

-----------------------------------------------------------------------
-- Quest Completion Helpers (WoW version compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER Goal:CheckQuestAccepted()
function Goal:CheckQuestAccepted()
    if not self.questID then return false end

    -- Check if quest is currently in the player's quest log (accepted).
    -- Method 1: Retail/WotLK+ — C_QuestLog.GetQuest returns quest data if in log
    if C_QuestLog and C_QuestLog.GetQuest then
        local quest = C_QuestLog.GetQuest(self.questID)
        return quest ~= nil
    end

    -- Method 2: Vanilla/TBC — scan GetQuestLogTitle
    if GetNumQuestLogEntries then
        for i = 1, GetNumQuestLogEntries() do
            local _, _, _, _, _, _, _, questID = GetQuestLogTitle(i)
            if questID == self.questID then return true end
        end
    end

    return false
-- DEBUG: EXIT Goal:CheckQuestAccepted()
end

-- DEBUG: ENTER Goal:CheckQuestTurnin()
function Goal:CheckQuestTurnin()
    if not self.questID then return false end

    -- Method 1: Retail+ (MoP Remix, Dragonflight, etc.)
    -- C_QuestLog.IsQuestFlaggedCompleted returns true for completed quests
    if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
        return C_QuestLog.IsQuestFlaggedCompleted(self.questID)
    end

    -- Method 2: WotLK+ (has IsQuestComplete)
    -- IsQuestComplete is safe on WotLK/TBC/Vanilla
    if IsQuestComplete then
        return IsQuestComplete(self.questID) == true
    end

    return false
-- DEBUG: EXIT Goal:CheckQuestTurnin()
end

-- Checks if a quest is currently in the player's quest log (any state).
-- Returns: questLogEntry (table) or nil
-- DEBUG: ENTER Goal:IsQuestInLog()
function Goal:IsQuestInLog()
    if not self.questID then return nil end

    if C_QuestLog and C_QuestLog.GetQuest then
        -- Retail/WotLK+
        return C_QuestLog.GetQuest(self.questID)
    end

    -- Vanilla/TBC fallback — scan GetQuestLogTitle
    if GetNumQuestLogEntries then
        for i = 1, GetNumQuestLogEntries() do
            local qTitle, _, _, _, _, _, _, questID = GetQuestLogTitle(i)
            if questID == self.questID then
                return true
            end
        end
    end

    return nil
-- DEBUG: EXIT Goal:IsQuestInLog()
end

-- DEBUG: ENTER Goal:CheckQuestCompletion()
function Goal:CheckQuestCompletion()
    if not self.questID then return nil end

    -- Method 1: Retail+ — C_QuestLog.IsQuestFlaggedCompleted is reliable for all expansions
    if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
        return C_QuestLog.IsQuestFlaggedCompleted(self.questID)
    end

    -- Method 2: WotLK/TBC/Vanilla — IsQuestComplete
    if IsQuestComplete then
        return IsQuestComplete(self.questID) == true
    end

    return nil
-- DEBUG: EXIT Goal:CheckQuestCompletion()
end

-- DEBUG: ENTER Goal:CheckAchievementCompletion()
function Goal:CheckAchievementCompletion()
    if not self.achieveID then return false end
    if XP.IsVanilla then
        return false -- Achievements not in Vanilla
    elseif XP.IsTBC or XP.IsWotLK then
        return GetAchievementNumCriteria(self.achieveID) > 0 and true or false
    else
        if C_AchievementInfo then
            return C_AchievementInfo.IsAchievementComplete(self.achieveID)
        end
    end
    return false
-- DEBUG: EXIT Goal:CheckAchievementCompletion()
end

-----------------------------------------------------------------------
-- Update goal count from external source (called by GoalTracker)
-----------------------------------------------------------------------
-- DEBUG: ENTER Goal:SetCount()
-- DEBUG: PARAM count = [count]
function Goal:SetCount(count)
    self.current = count
-- DEBUG: EXIT Goal:SetCount()
end

-- DEBUG: ENTER Goal:GetDisplayText()
function Goal:GetDisplayText()
    local prefix = ""
    local action = (self.action or "text"):upper()

    -- XP-style action names
    if action == "ACCEPT" or action == "ACCEPT_QUEST" then
        prefix = "Accept: "
    elseif action == "TURNIN" or action == "TURNIN_QUEST" then
        prefix = "Turn in: "
    elseif action == "KILL" or action == "KILL_MOB" then
        prefix = "Kill: "
    elseif action == "COLLECT" or action == "GET" or action == "FARM" then
        prefix = "Collect: "
    elseif action == "TRAVEL" or action == "GOTO" then
        prefix = "Go to: "
    elseif action == "TALK" or action == "INTERACT" or action == "CLICKNPC" then
        prefix = "Talk to: "
    elseif action == "CLICK" then
        prefix = "Click: "
    elseif action == "FLY" or action == "FPATH" then
        prefix = "Fly to: "
    elseif action == "BUY" then
        prefix = "Buy: "
    elseif action == "EQUIP" or action == "EQUIPPED" then
        prefix = "Equip: "
    elseif action == "USE" then
        prefix = "Use: "
    elseif action == "CREATE" or action == "CRAFT" then
        prefix = "Craft: "
    elseif action == "LEARN" or action == "LEARNSPELL" then
        prefix = "Learn: "
    elseif action == "HOME" or action == "HEARTH" then
        prefix = "Set hearth: "
    elseif action == "REP" then
        prefix = "Reputation: "
    elseif action == "SKILL" or action == "REACHSKILL" then
        prefix = "Skill: "
    elseif action == "CAST" then
        prefix = "Cast: "
    elseif action == "ABANDON" then
        prefix = "Abandon: "
    elseif action == "LEVEL" or action == "DING" then
        prefix = "Level: "
    elseif action == "DISCOVER" then
        prefix = "Discover: "
    elseif action == "CONFIRM" then
        prefix = ""
    end
    return prefix .. (self.text or "")
-- DEBUG: EXIT Goal:GetDisplayText()
end

-- DEBUG: ENTER Goal:GetProgressText()
function Goal:GetProgressText()
    if self.count and self.count > 1 then
        return (self.current or 0) .. "/" .. self.count
    end
    return self.complete and "Done" or ""
-- DEBUG: EXIT Goal:GetProgressText()
end

-- DEBUG: ENTER Goal:GetActionIcon()
function Goal:GetActionIcon()
    local iconMap = {
        -- XP-style names
        accept        = "accept_quest",
        turnin        = "turnin_quest",
        kill          = "kill",
        collect       = "collect",
        get           = "collect",
        farm          = "collect",
        buy           = "gold",
        use           = "use",
        talk          = "interact",
        click         = "interact",
        clicknpc      = "interact",
        ["goto"]      = "travel",
        fly           = "travel",
        fpath         = "travel",
        home          = "home",
        hearth        = "home",
        create        = "craft",
        craft         = "craft",
        learn         = "learn",
        learnspell    = "learn",
        learnmount    = "mount",
        learnpet      = "pet",
        equipped      = "equip",
        equip         = "equip",
        rep           = "reputation",
        skill         = "skill",
        reachskill    = "skill",
        level         = "level",
        ding          = "level",
        grind         = "kill",
        confirm       = "confirm",
        gossip        = "interact",
        cast          = "cast",
        abandon       = "abandon",
        discover      = "explore",
        achieve       = "achieve",
        info          = "note",
        text          = "note",
        goal          = "note",
        -- Legacy names
        ACCEPT_QUEST  = "accept_quest",
        TURNIN_QUEST  = "turnin_quest",
        KILL          = "kill",
        KILL_MOB      = "kill",
        COLLECT       = "collect",
        TRAVEL        = "travel",
        GOTO          = "travel",
        TALK          = "interact",
        INTERACT      = "interact",
        FLY           = "travel",
        BUY           = "gold",
        EQUIP         = "collect",
        EXPLORE       = "explore",
        TEXT          = "note",
    }
    return iconMap[self.action] or iconMap[(self.action or ""):upper()] or "default"
-- DEBUG: EXIT Goal:GetActionIcon()
end

-- DEBUG: ENTER Goal:GetTips()
function Goal:GetTips()
    return self.tips or {}
-- DEBUG: EXIT Goal:GetTips()
end

XP.Goal = Goal

-----------------------------------------------------------------------
-- Step Prototype
-- A step contains one or more goals. All goals complete = step complete.
-----------------------------------------------------------------------
local Step = {}
Step.__index = Step

-- DEBUG: ENTER Step:New()
-- DEBUG: PARAM data = [data]
-- DEBUG: PARAM index = [index]
function Step:New(data, index)
    local obj = setmetatable({}, Step)
    obj.index       = index or 1
    obj.goals       = {}
    obj.complete    = false
    obj.label       = data.label
    obj.sticky      = data.sticky or false
    obj.stickyName  = data.stickyName
    obj.condition   = data.condition
    obj.tips        = data.tips or {}

    -- Build goals from parsed data
    if data.goals then
        for _, gData in ipairs(data.goals) do
            -- gData can be a raw table from parser or a Goal-like table
            local goal
            if getmetatable(gData) == Goal then
                goal = gData  -- Already a Goal object
            else
                goal = Goal:New(gData)
            end
            obj.goals[#obj.goals + 1] = goal
        end
    end

    -- Legacy: if step data has a single goal embedded (simple format)
    if (data.type or data.action) and #obj.goals == 0 then
        local goal = Goal:New(data)
        obj.goals[#obj.goals + 1] = goal
    end

    return obj
-- DEBUG: EXIT Step:New()
end

-----------------------------------------------------------------------
-- Step Completion
-- Returns: isComplete, state ("complete"|"active"|"upcoming"|"skipped")
-- Uses event-driven goal completion (WoW API), not position.
-----------------------------------------------------------------------
-- DEBUG: ENTER Step:IsComplete()
function Step:IsComplete()
    for _, goal in ipairs(self.goals) do
        if not goal:IsComplete() then return false end
    end
    return #self.goals > 0
-- DEBUG: EXIT Step:IsComplete()
end

-- Returns completion state for this step.
-- activeStepNum: the step index of the first non-complete step (determines "active" marker).
-- Uses event-driven completion, not position.
-- DEBUG: ENTER Step:GetCompletionState()
-- DEBUG: PARAM activeStepNum = [activeStepNum]
function Step:GetCompletionState(activeStepNum)
    if self:IsComplete() then
        return "complete"
    end

    -- "active" = this is the first non-complete step
    if activeStepNum and self.index == activeStepNum then
        return "active"
    end

    -- All steps before the active step that aren't complete = skipped
    if activeStepNum and self.index < activeStepNum then
        return "skipped"
    end

    return "upcoming"
-- DEBUG: EXIT Step:GetCompletionState()
end

-- DEBUG: ENTER Step:GetTitle()
function Step:GetTitle()
    if self.label then return self.label end
    if self.goals[1] then return self.goals[1]:GetDisplayText() end
    return "Step " .. self.index
-- DEBUG: EXIT Step:GetTitle()
end

-- DEBUG: ENTER Step:GetDescription()
function Step:GetDescription()
    -- Combine tips from all goals
    local tips = {}
    for _, goal in ipairs(self.goals) do
        if goal.tips then
            for _, tip in ipairs(goal.tips) do
                tips[#tips + 1] = tip
            end
        end
    end
    if #tips > 0 then return table.concat(tips, "\n") end
    if self.goals[1] then return self.goals[1].description or "" end
    return ""
-- DEBUG: EXIT Step:GetDescription()
end

-- DEBUG: ENTER Step:GetPrimaryCoords()
function Step:GetPrimaryCoords()
    for _, goal in ipairs(self.goals) do
        if goal.coords then return goal.coords end
    end
    return nil
-- DEBUG: EXIT Step:GetPrimaryCoords()
end

-- DEBUG: ENTER Step:GetPrimaryMapName()
function Step:GetPrimaryMapName()
    for _, goal in ipairs(self.goals) do
        if goal.mapName then return goal.mapName end
    end
    return nil
-- DEBUG: EXIT Step:GetPrimaryMapName()
end

-- DEBUG: ENTER Step:GetPrimaryAction()
function Step:GetPrimaryAction()
    if self.goals[1] then return self.goals[1].action end
    return "text"
-- DEBUG: EXIT Step:GetPrimaryAction()
end

-- DEBUG: ENTER Step:GetPrimaryIcon()
function Step:GetPrimaryIcon()
    if self.goals[1] then return self.goals[1]:GetActionIcon() end
    return "default"
-- DEBUG: EXIT Step:GetPrimaryIcon()
end

-- DEBUG: ENTER Step:GetGoalCount()
function Step:GetGoalCount()
    return #self.goals
-- DEBUG: EXIT Step:GetGoalCount()
end

XP.Step = Step

-----------------------------------------------------------------------
-- Guide Prototype
-- A guide is a named, categorized collection of steps.
-- Can be created from structured data or from raw XP-format text.
-----------------------------------------------------------------------
local Guide = {}
Guide.__index = Guide

-- DEBUG: ENTER Guide:New()
-- DEBUG: PARAM data = [data]
function Guide:New(data)
    local obj = setmetatable({}, Guide)
    obj.id              = data.id
    obj.title           = data.name or data.title or "Untitled Guide"
    obj.titlePath       = data.titlePath        -- Original backslash-delimited path
    obj.titleShort      = data.titleShort or obj.title
    obj.category        = data.category or "LEVELING"
    obj.faction         = data.faction           -- "ALLIANCE", "HORDE", "NEUTRAL"
    obj.expansion       = data.expansion         -- "CLASSIC", "TBC", "WOTLK", ...
    obj.description     = data.description or ""
    obj.author          = data.author or ""
    obj.patch           = data.patch
    obj.image           = data.image
    obj.class           = data.class
    obj.spec            = data.spec
    obj.startLevel      = data.startLevel
    obj.endLevel        = data.endLevel
    obj.nextGuide       = data.nextGuide or data.next
    obj.steps           = {}
    obj.numSteps        = 0
    obj.parsed          = false

    -- Raw data for deferred parsing
    obj.rawData         = data.rawData           -- String (XP format)
    obj.rawHeader       = data.rawHeader         -- Header table

    -- Condition functions (from header)
    obj.conditionSuggestedFn = data.conditionSuggestedFn
    obj.conditionEndFn       = data.conditionEndFn
    obj.conditionValidFn     = data.conditionValidFn

    -- If pre-built steps are provided, use them directly
    if data.steps then
        for i, stepData in ipairs(data.steps) do
            local step
            if getmetatable(stepData) == Step then
                step = stepData
                step.index = i
            else
                step = Step:New(stepData, i)
            end
            obj.steps[#obj.steps + 1] = step
        end
        obj.numSteps = #obj.steps
        obj.parsed = true
    end

    return obj
-- DEBUG: EXIT Guide:New()
end

-----------------------------------------------------------------------
-- Guide:Parse() — deferred parsing of raw guide text
-- Call this when the guide is first loaded/viewed.
-- Uses XP.Parser:ParseEntry() to convert raw text to steps.
-----------------------------------------------------------------------
-- DEBUG: ENTER Guide:Parse()
function Guide:Parse()
    if self.parsed then return end
    if not self.rawData then
        self.parsed = true
        return
    end

    local Parser = XP.Parser
    if not Parser then
        -- Parser not loaded yet — can't parse
        return
    end

    -- Parse header metadata
    if self.rawHeader then
        local meta = Parser:ParseHeader(self.rawHeader)
        self.description     = meta.description or self.description
        self.author          = meta.author or self.author
        self.patch           = meta.patch or self.patch
        self.image           = meta.image or self.image
        self.startLevel      = meta.startLevel or self.startLevel
        self.endLevel        = meta.endLevel or self.endLevel
        self.class           = meta.class or self.class
        self.spec            = meta.spec or self.spec
        self.nextGuide       = meta.next or self.nextGuide
        self.conditionSuggestedFn = meta.conditionSuggestedFn
        self.conditionEndFn       = meta.conditionEndFn
        self.conditionValidFn     = meta.conditionValidFn
    end

    -- Parse raw guide text into step tables
    local parsedSteps = Parser:ParseEntry(self.rawData, self)

    -- Convert parsed step tables into Step/Goal objects
    self.steps = {}
    for i, stepData in ipairs(parsedSteps) do
        local step = Step:New(stepData, i)
        self.steps[#self.steps + 1] = step
    end
    self.numSteps = #self.steps
    self.parsed = true

    -- Free raw data to save memory
    self.rawData = nil
    self.rawHeader = nil
-- DEBUG: EXIT Guide:Parse()
end

-- DEBUG: ENTER Guide:GetProgress()
-- DEBUG: PARAM currentStep = [currentStep]
function Guide:GetProgress(currentStep)
    self:Parse() -- Ensure parsed
    currentStep = currentStep or 1
    return currentStep, self.numSteps
-- DEBUG: EXIT Guide:GetProgress()
end

-- Returns how many steps have ALL goals complete (event-driven completion).
-- DEBUG: ENTER Guide:GetCompletedSteps()
function Guide:GetCompletedSteps()
    self:Parse()
    local count = 0
    for i = 1, self.numSteps do
        local step = self.steps[i]
        if step and step:IsComplete() then
            count = count + 1
        end
    end
    return count
-- DEBUG: EXIT Guide:GetCompletedSteps()
end

-- DEBUG: ENTER Guide:GetProgressPercent()
-- DEBUG: PARAM currentStep = [currentStep]
function Guide:GetProgressPercent(currentStep)
    self:Parse()
    if self.numSteps == 0 then return 0 end
    -- Use event-driven completed step count for progress, fall back to position
    local completed = self:GetCompletedSteps()
    -- Cap at 100% once current step is reached
    local pct = math.floor((completed / self.numSteps) * 100)
    return math.min(pct, 100)
-- DEBUG: EXIT Guide:GetProgressPercent()
end

-- DEBUG: ENTER Guide:GetStep()
-- DEBUG: PARAM index = [index]
function Guide:GetStep(index)
    self:Parse()
    return self.steps[index]
-- DEBUG: EXIT Guide:GetStep()
end

-- DEBUG: ENTER Guide:GetNumSteps()
function Guide:GetNumSteps()
    self:Parse()
    return self.numSteps
-- DEBUG: EXIT Guide:GetNumSteps()
end

-- DEBUG: ENTER Guide:IsSuggested()
function Guide:IsSuggested()
    if self.conditionSuggestedFn then
        return self.conditionSuggestedFn()
    end
    return true
-- DEBUG: EXIT Guide:IsSuggested()
end

-- DEBUG: ENTER Guide:IsValid()
function Guide:IsValid()
    if self.conditionValidFn then
        return self.conditionValidFn()
    end
    return true
-- DEBUG: EXIT Guide:IsValid()
end

-- DEBUG: ENTER Guide:IsEnded()
function Guide:IsEnded()
    if self.conditionEndFn then
        return self.conditionEndFn()
    end
    return false
-- DEBUG: EXIT Guide:IsEnded()
end

-- DEBUG: ENTER Guide:ToggleFavourite()
function Guide:ToggleFavourite()
    if not XP.db then return end
    local favs = XP.db.char.favourites or {}
    if favs[self.title] then
        favs[self.title] = nil
    else
        favs[self.title] = true
    end
    XP.db.char.favourites = favs
-- DEBUG: EXIT Guide:ToggleFavourite()
end

-- DEBUG: ENTER Guide:IsFavourite()
function Guide:IsFavourite()
    if not XP.db then return false end
    local favs = XP.db.char.favourites or {}
    return favs[self.title] == true
-- DEBUG: EXIT Guide:IsFavourite()
end

XP.Guide = Guide

-----------------------------------------------------------------------
-- Guide Registration APIs
-----------------------------------------------------------------------

-- Initialize category tracking
XP.GuidesByCategory = XP.GuidesByCategory or {}

-----------------------------------------------------------------------
-- RegisterGuide: Supports two calling conventions:
--
-- 1) Table-based (legacy/simple):
--    XP:RegisterGuide({ id="myguide", title="My Guide", steps={...} })
--
-- 2) XP-format (title, header, data):
--    XP:RegisterGuide("Leveling\\Alliance\\1-10", { description="..." }, [[step\naccept Quest##123]])
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:RegisterGuide()
-- DEBUG: PARAM titleOrData = [titleOrData]
-- DEBUG: PARAM header = [header]
-- DEBUG: PARAM data = [data]
function XP:RegisterGuide(titleOrData, header, data)
    -- Detect calling convention
    if type(titleOrData) == "table" then
        -- Mode 1: table-based
        return self:_RegisterGuideFromTable(titleOrData)
    elseif type(titleOrData) == "string" then
        -- Mode 2: XP-format (title, header, data)
        return self:_RegisterGuideFromZygor(titleOrData, header, data)
    else
        if self.Print then
            self:Print("|cffff0000Error:|r RegisterGuide called with invalid arguments")
        end
        return nil
    end
-- DEBUG: EXIT XP:RegisterGuide()
end

-----------------------------------------------------------------------
-- _RegisterGuideFromTable: original table-based registration
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:_RegisterGuideFromTable()
-- DEBUG: PARAM tbl = [tbl]
function XP:_RegisterGuideFromTable(tbl)
    if not tbl or not tbl.id then
        if self.Print then
            self:Print("|cffff0000Error:|r RegisterGuide table missing 'id'")
        end
        return nil
    end

    local guide = Guide:New(tbl)
    self.Guides[guide.id] = guide

    local cat = guide.category or "LEVELING"
    if not self.GuidesByCategory[cat] then self.GuidesByCategory[cat] = {} end
    self.GuidesByCategory[cat][#self.GuidesByCategory[cat] + 1] = guide

    return guide
-- DEBUG: EXIT XP:_RegisterGuideFromTable()
end

-----------------------------------------------------------------------
-- _RegisterGuideFromXP: XP-format registration
-- title: backslash-delimited path "Leveling\\Alliance\\1-10"
-- header: metadata table { description, condition_suggested, ... }
-- data: raw multi-line guide text string
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:_RegisterGuideFromXP()
-- DEBUG: PARAM title = [title]
-- DEBUG: PARAM header = [header]
-- DEBUG: PARAM data = [data]
function XP:_RegisterGuideFromZygor(title, header, data)
    if not title then
        if self.Print then
            self:Print("|cffff0000Error:|r RegisterGuide called without title")
        end
        return nil
    end

    local Parser = self.Parser

    -- Parse the path to derive metadata
    local pathParts, leafName = Parser:ParseGuidePath(title)
    local category = Parser:DeriveCategory(pathParts)
    local faction = Parser:DeriveFaction(pathParts)
    local expansion = Parser:DeriveExpansion(pathParts)

    -- Use the full path as ID (normalized)
    local id = title

    -- Build guide data table (deferred parsing)
    local guideData = {
        id          = id,
        title       = leafName,
        titlePath   = title,
        titleShort  = leafName,
        category    = category,
        faction     = faction,
        expansion   = expansion,
        rawData     = data,      -- Will be parsed on first access
        rawHeader   = header,
    }

    -- Pull easy fields from header immediately
    if header then
        guideData.description = header.description
        guideData.author      = header.author
        guideData.patch       = header.patch
        guideData.image       = header.image
        guideData.startLevel  = header.startlevel
        guideData.endLevel    = header.endlevel
        guideData.nextGuide   = header.next
        guideData.class       = header.class
        guideData.spec        = header.spec
    end

    local guide = Guide:New(guideData)
    self.Guides[guide.id] = guide

    -- Auto-assign to category
    if not self.GuidesByCategory[category] then self.GuidesByCategory[category] = {} end
    self.GuidesByCategory[category][#self.GuidesByCategory[category] + 1] = guide

    return guide
-- DEBUG: EXIT XP:_RegisterGuideFromXP()
end

-----------------------------------------------------------------------
-- RegisterInclude: store a reusable guide text snippet
-- Delegates to Parser.
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:RegisterInclude()
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM text = [text]
function XP:RegisterInclude(name, text)
    if self.Parser then
        self.Parser:RegisterInclude(name, text)
    end
-- DEBUG: EXIT XP:RegisterInclude()
end

-----------------------------------------------------------------------
-- RegisterGuidePlaceholder: register a locked/placeholder guide
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:RegisterGuidePlaceholder()
-- DEBUG: PARAM title = [title]
-- DEBUG: PARAM header = [header]
function XP:RegisterGuidePlaceholder(title, header)
    if not title then return nil end

    local Parser = self.Parser
    local pathParts, leafName = Parser:ParseGuidePath(title)
    local category = Parser:DeriveCategory(pathParts)

    local guide = Guide:New({
        id          = title,
        title       = leafName,
        titlePath   = title,
        titleShort  = leafName,
        category    = category,
        faction     = Parser:DeriveFaction(pathParts),
        expansion   = Parser:DeriveExpansion(pathParts),
        description = header and header.description or "",
        placeholder = true,
    })
    guide.placeholder = true

    self.Guides[guide.id] = guide

    if not self.GuidesByCategory[category] then self.GuidesByCategory[category] = {} end
    self.GuidesByCategory[category][#self.GuidesByCategory[category] + 1] = guide

    return guide
-- DEBUG: EXIT XP:RegisterGuidePlaceholder()
end

-----------------------------------------------------------------------
-- Convenience accessors
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:GetAllGuides()
function XP:GetAllGuides()
    return self.Guides
-- DEBUG: EXIT XP:GetAllGuides()
end

-- DEBUG: ENTER XP:GetGuide()
-- DEBUG: PARAM id = [id]
function XP:GetGuide(id)
    return self.Guides[id]
-- DEBUG: EXIT XP:GetGuide()
end

-- DEBUG: ENTER XP:GetGuideCount()
function XP:GetGuideCount()
    local n = 0
    for _ in pairs(self.Guides) do n = n + 1 end
    return n
-- DEBUG: EXIT XP:GetGuideCount()
end

-- DEBUG: ENTER XP:GetGuidesByCategory()
-- DEBUG: PARAM category = [category]
function XP:GetGuidesByCategory(category)
    return self.GuidesByCategory[category] or {}
-- DEBUG: EXIT XP:GetGuidesByCategory()
end
