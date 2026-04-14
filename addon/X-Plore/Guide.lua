-----------------------------------------------------------------------
-- X-Plore: Guide.lua
-- Guide, Step, and Goal data model.
-- Provides the data structures for guide content.
-- Supports two registration modes:
--   1) Table-based: XP:RegisterGuide({ id=..., steps={...} })
--   2) Zygor-format: XP:RegisterGuide("Path\\Title", {header}, [[data]])
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
end

function Goal:IsComplete()
    if self.forceComplete then return true end
    return self.complete
end

function Goal:GetDisplayText()
    local prefix = ""
    local action = (self.action or "text"):upper()

    -- Zygor-style action names
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
end

function Goal:GetProgressText()
    if self.count and self.count > 1 then
        return (self.current or 0) .. "/" .. self.count
    end
    return self.complete and "Done" or ""
end

function Goal:GetActionIcon()
    local iconMap = {
        -- Zygor-style names
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
end

function Goal:GetTips()
    return self.tips or {}
end

XP.Goal = Goal

-----------------------------------------------------------------------
-- Step Prototype
-- A step contains one or more goals. All goals complete = step complete.
-----------------------------------------------------------------------
local Step = {}
Step.__index = Step

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
end

function Step:IsComplete()
    for _, goal in ipairs(self.goals) do
        if not goal:IsComplete() then return false end
    end
    return #self.goals > 0
end

function Step:GetTitle()
    if self.label then return self.label end
    if self.goals[1] then return self.goals[1]:GetDisplayText() end
    return "Step " .. self.index
end

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
end

function Step:GetPrimaryCoords()
    for _, goal in ipairs(self.goals) do
        if goal.coords then return goal.coords end
    end
    return nil
end

function Step:GetPrimaryMapName()
    for _, goal in ipairs(self.goals) do
        if goal.mapName then return goal.mapName end
    end
    return nil
end

function Step:GetPrimaryAction()
    if self.goals[1] then return self.goals[1].action end
    return "text"
end

function Step:GetPrimaryIcon()
    if self.goals[1] then return self.goals[1]:GetActionIcon() end
    return "default"
end

function Step:GetGoalCount()
    return #self.goals
end

XP.Step = Step

-----------------------------------------------------------------------
-- Guide Prototype
-- A guide is a named, categorized collection of steps.
-- Can be created from structured data or from raw Zygor-format text.
-----------------------------------------------------------------------
local Guide = {}
Guide.__index = Guide

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
    obj.rawData         = data.rawData           -- String (Zygor format)
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
end

-----------------------------------------------------------------------
-- Guide:Parse() — deferred parsing of raw guide text
-- Call this when the guide is first loaded/viewed.
-- Uses XP.Parser:ParseEntry() to convert raw text to steps.
-----------------------------------------------------------------------
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
end

function Guide:GetProgress(currentStep)
    self:Parse() -- Ensure parsed
    currentStep = currentStep or 1
    return currentStep, self.numSteps
end

function Guide:GetProgressPercent(currentStep)
    self:Parse()
    if self.numSteps == 0 then return 0 end
    currentStep = currentStep or 1
    return math.floor((currentStep / self.numSteps) * 100)
end

function Guide:GetStep(index)
    self:Parse()
    return self.steps[index]
end

function Guide:GetNumSteps()
    self:Parse()
    return self.numSteps
end

function Guide:IsSuggested()
    if self.conditionSuggestedFn then
        return self.conditionSuggestedFn()
    end
    return true
end

function Guide:IsValid()
    if self.conditionValidFn then
        return self.conditionValidFn()
    end
    return true
end

function Guide:IsEnded()
    if self.conditionEndFn then
        return self.conditionEndFn()
    end
    return false
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
-- 2) Zygor-format (title, header, data):
--    XP:RegisterGuide("Leveling\\Alliance\\1-10", { description="..." }, [[step\naccept Quest##123]])
-----------------------------------------------------------------------
function XP:RegisterGuide(titleOrData, header, data)
    -- Detect calling convention
    if type(titleOrData) == "table" then
        -- Mode 1: table-based
        return self:_RegisterGuideFromTable(titleOrData)
    elseif type(titleOrData) == "string" then
        -- Mode 2: Zygor-format (title, header, data)
        return self:_RegisterGuideFromZygor(titleOrData, header, data)
    else
        if self.Print then
            self:Print("|cffff0000Error:|r RegisterGuide called with invalid arguments")
        end
        return nil
    end
end

-----------------------------------------------------------------------
-- _RegisterGuideFromTable: original table-based registration
-----------------------------------------------------------------------
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
end

-----------------------------------------------------------------------
-- _RegisterGuideFromZygor: Zygor-format registration
-- title: backslash-delimited path "Leveling\\Alliance\\1-10"
-- header: metadata table { description, condition_suggested, ... }
-- data: raw multi-line guide text string
-----------------------------------------------------------------------
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
end

-----------------------------------------------------------------------
-- RegisterInclude: store a reusable guide text snippet
-- Delegates to Parser.
-----------------------------------------------------------------------
function XP:RegisterInclude(name, text)
    if self.Parser then
        self.Parser:RegisterInclude(name, text)
    end
end

-----------------------------------------------------------------------
-- RegisterGuidePlaceholder: register a locked/placeholder guide
-----------------------------------------------------------------------
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
end

-----------------------------------------------------------------------
-- Convenience accessors
-----------------------------------------------------------------------
function XP:GetAllGuides()
    return self.Guides
end

function XP:GetGuide(id)
    return self.Guides[id]
end

function XP:GetGuideCount()
    local n = 0
    for _ in pairs(self.Guides) do n = n + 1 end
    return n
end

function XP:GetGuidesByCategory(category)
    return self.GuidesByCategory[category] or {}
end
