-----------------------------------------------------------------------
-- X-Plore: Parser.lua
-- Parses Zygor-format guide text into Step/Goal objects.
-- Handles the pipe-delimited DSL: step keywords, goal types,
-- coordinates, quest IDs, modifiers, includes, conditions.
--
-- Based on analysis of ZygorGuidesViewer's Parser.lua architecture.
-- Compatible with Lua 5.0+ (no Lua 5.1+ features).
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Parser namespace
-----------------------------------------------------------------------
XP.Parser = XP.Parser or {}
local Parser = XP.Parser

-- Include registry: name -> raw text
Parser.Includes = {}

-- Condition environment (for |only if, condition_suggested, etc.)
Parser.ConditionEnv = {}

-----------------------------------------------------------------------
-- Utility: trim whitespace
-----------------------------------------------------------------------
-- DEBUG: ENTER strtrim()
-- DEBUG: PARAM s = [s]
local function strtrim(s)
    if not s then return "" end
    return s:match("^%s*(.-)%s*$") or s
-- DEBUG: EXIT strtrim()
end

-----------------------------------------------------------------------
-- Utility: split string by delimiter
-----------------------------------------------------------------------
-- DEBUG: ENTER strsplit()
-- DEBUG: PARAM sep = [sep]
-- DEBUG: PARAM str = [str]
local function strsplit(sep, str)
    local parts = {}
    local pattern = "([^" .. sep .. "]*)" .. sep .. "?"
    str:gsub(pattern, function(c)
        if c ~= "" or #parts == 0 then
            parts[#parts + 1] = c
        end
    end)
    -- Remove trailing empty from gsub overshoot
    if #parts > 0 and parts[#parts] == "" then
        parts[#parts] = nil
    end
    return parts
-- DEBUG: EXIT strsplit()
end

-----------------------------------------------------------------------
-- ParseID: parse "Name##12345" or "Name##12345/obj" patterns
-- Returns: name, id, suffix
-- Example: "Defias Thug##123" -> "Defias Thug", 123, nil
-- Example: "Some Item##456/obj" -> "Some Item", 456, "obj"
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseID()
-- DEBUG: PARAM str = [str]
function Parser:ParseID(str)
    if not str then return nil, nil, nil end
    local name, idStr, suffix = str:match("^(.-)##(%d+)/?(.*)$")
    if name then
        return strtrim(name), tonumber(idStr), (suffix ~= "" and suffix or nil)
    end
    -- No ## found, return whole string as name
    return strtrim(str), nil, nil
-- DEBUG: EXIT Parser:ParseID()
end

-----------------------------------------------------------------------
-- ParseMapXYDist: parse coordinate strings
-- Formats:
--   "MapName/Floor X.XX,Y.YY"
--   "MapName/Floor X.XX,Y.YY < Distance"
--   "MapName##MapID/Floor X.XX,Y.YY"
--   "X.XX,Y.YY" (coords only, no map)
-- Returns: mapName, mapID, floor, x, y, dist
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseMapXYDist()
-- DEBUG: PARAM str = [str]
function Parser:ParseMapXYDist(str)
    if not str then return nil end
    str = strtrim(str)

    local mapName, mapID, floor, x, y, dist

    -- Try: "MapName##MapID/Floor X,Y" or "MapName/Floor X,Y"
    local mapPart, coordPart = str:match("^(.-)%s+(%d[%d%.]*,%d[%d%.]*.*)")
    if not mapPart then
        -- Maybe just coordinates: "X,Y"
        coordPart = str:match("^(%d[%d%.]*,%d[%d%.]*.*)")
    end

    -- Parse the map part
    if mapPart then
        mapPart = strtrim(mapPart)
        -- Check for ##MapID
        local mName, mID, mFloor = mapPart:match("^(.-)##(%d+)/(%d+)$")
        if mName then
            mapName = mName
            mapID = tonumber(mID)
            floor = tonumber(mFloor)
        else
            -- Check MapName/Floor (no ##)
            mName, mFloor = mapPart:match("^(.-)/(%d+)$")
            if mName then
                mapName = mName
                floor = tonumber(mFloor)
            else
                mapName = mapPart
            end
        end
    end

    -- Parse coordinates
    if coordPart then
        -- "X,Y < Dist" or "X,Y,Dist" or just "X,Y"
        local xStr, yStr, dStr = coordPart:match("^([%d%.]+),([%d%.]+)%s*<%s*([%d%.]+)$")
        if not xStr then
            xStr, yStr, dStr = coordPart:match("^([%d%.]+),([%d%.]+),([%d%.]+)$")
        end
        if not xStr then
            xStr, yStr = coordPart:match("^([%d%.]+),([%d%.]+)")
        end
        if xStr then
            x = tonumber(xStr)
            y = tonumber(yStr)
            dist = dStr and tonumber(dStr) or nil
        end
    end

    return mapName, mapID, floor, x, y, dist
-- DEBUG: EXIT Parser:ParseMapXYDist()
end

-----------------------------------------------------------------------
-- ParseRanges: parse "3-5" or "3+" or "3" range strings
-- Returns: min, max
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseRanges()
-- DEBUG: PARAM str = [str]
function Parser:ParseRanges(str)
    if not str then return nil, nil end
    str = strtrim(str)
    local a, b = str:match("^(%d+)%-(%d+)$")
    if a then return tonumber(a), tonumber(b) end
    a = str:match("^(%d+)%+$")
    if a then return tonumber(a), nil end
    a = str:match("^(%d+)$")
    if a then return tonumber(a), tonumber(a) end
    return nil, nil
-- DEBUG: EXIT Parser:ParseRanges()
end

-----------------------------------------------------------------------
-- ParseCount: parse "Kill #6# Worgen" -> count, cleaned text
-- Also handles "Verb Count Noun" e.g. "Kill 8 Defias"
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseCount()
-- DEBUG: PARAM text = [text]
function Parser:ParseCount(text)
    if not text then return 1, text end

    -- "#6#" format
    local count, rest = text:match("#(%d+)#%s*(.*)")
    if count then return tonumber(count), strtrim(rest) end

    -- "Count" at start after action verb
    -- We'll handle this case in goal parsing instead
    return 1, text
-- DEBUG: EXIT Parser:ParseCount()
end

-----------------------------------------------------------------------
-- MakeCondition: compile a condition string into a function
-- For safety, we use a restricted environment.
-- Returns: function or nil
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:MakeCondition()
-- DEBUG: PARAM condStr = [condStr]
function Parser:MakeCondition(condStr)
    if not condStr or condStr == "" then return nil end

    -- Build a safe evaluation environment
    local env = self:GetConditionEnv()

    local code = "return (" .. condStr .. ")"
    local fn, err
    -- Lua 5.1+: loadstring
    if loadstring then
        fn, err = loadstring(code)
    end
    if fn then
        -- Lua 5.1: setfenv
        if setfenv then
            setfenv(fn, env)
        end
        -- Wrap in pcall for safety
        return function()
            local ok, result = pcall(fn)
            if ok then return result end
            return false
        end
    end
    return nil
-- DEBUG: EXIT Parser:MakeCondition()
end

-----------------------------------------------------------------------
-- GetConditionEnv: build the sandbox environment for conditions
-- Provides player-state query functions
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:GetConditionEnv()
function Parser:GetConditionEnv()
    if self._condEnv then return self._condEnv end

    local env = {}
    -- Math
    env.math = math
    env.tonumber = tonumber
    env.tostring = tostring
    env.pairs = pairs
    env.ipairs = ipairs
    env.type = type

    -- Player state
    env.level = UnitLevel and UnitLevel("player") or 1

    -- Quest helpers
    -- DEBUG: ENTER completedq()
    -- DEBUG: PARAM questID = [questID]
    env.completedq = function(questID)
        if XP.IsQuestCompleted then return XP:IsQuestCompleted(questID) end
        if C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted then
            return C_QuestLog.IsQuestFlaggedCompleted(questID)
        end
        return false
    -- DEBUG: EXIT completedq()
    end

    -- DEBUG: ENTER haveq()
    -- DEBUG: PARAM questID = [questID]
    env.haveq = function(questID)
        if XP.IsQuestInLog then return XP:IsQuestInLog(questID) end
        return false
    -- DEBUG: EXIT haveq()
    end

    -- Skill helpers
    -- DEBUG: ENTER skill()
    -- DEBUG: PARAM skillName = [skillName]
    -- DEBUG: PARAM level = [level]
    env.skill = function(skillName, level)
        -- TODO: implement skill level check
        return false
    -- DEBUG: EXIT skill()
    end

    -- Rep helpers
    -- DEBUG: ENTER rep()
    -- DEBUG: PARAM factionName = [factionName]
    -- DEBUG: PARAM standing = [standing]
    env.rep = function(factionName, standing)
        -- TODO: implement reputation check
        return false
    -- DEBUG: EXIT rep()
    end

    -- Profession helpers
    -- DEBUG: ENTER hasprof()
    -- DEBUG: PARAM profName = [profName]
    env.hasprof = function(profName)
        -- TODO: implement profession check
        return false
    -- DEBUG: EXIT hasprof()
    end

    -- Race/class checks
    env.Alliance = (UnitFactionGroup and UnitFactionGroup("player") == "Alliance") or false
    env.Horde = (UnitFactionGroup and UnitFactionGroup("player") == "Horde") or false

    -- Class checks (set up dynamically)
    if UnitClass then
        local _, playerClass = UnitClass("player")
        if playerClass then
            env[playerClass] = true
            -- Also lowercase
            env[playerClass:lower()] = true
        end
    end

    -- Version detection
    env.XP_IsRetail = XP_IsRetail or false
    env.XP_IsWOTLK = XP_IsWOTLK or false
    env.XP_IsVanilla = XP_IsVanilla or false

    -- Chromie Time
    -- DEBUG: ENTER chromietime()
    env.chromietime = function()
        return 0 -- TODO: detect Chromie Time expansion
    -- DEBUG: EXIT chromietime()
    end

    self._condEnv = env
    return env
-- DEBUG: EXIT Parser:GetConditionEnv()
end

-----------------------------------------------------------------------
-- GOAL TYPES
-- Maps command keywords to their handler metadata.
-- Each entry: { parse = function(goal, params), ... }
-- The parser sets goal.action to the key name.
-----------------------------------------------------------------------
local GOALTYPES = {}

-- Accept quest: "accept QuestName##QuestID"
GOALTYPES["accept"] = {
    action = "accept",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.questID = id
        goal.action = "accept"
    end,
}

-- Turn in quest: "turnin QuestName##QuestID"
GOALTYPES["turnin"] = {
    action = "turnin",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.questID = id
        goal.action = "turnin"
    end,
}

-- Abandon quest
GOALTYPES["abandon"] = {
    action = "abandon",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.questID = id
        goal.action = "abandon"
    end,
}

-- Kill mobs: "kill MobName##MobID+" or "kill Count MobName##MobID"
GOALTYPES["kill"] = {
    action = "kill",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        -- Handle comma-separated multiple targets: "kill Mob1##ID+, Mob2##ID+"
        -- For now, take first target
        local first = params:match("^([^,]+)")
        if first then
            -- Check for trailing + (plural/repeating)
            local cleaned = strtrim(first):gsub("%+$", "")
            local name, id = Parser:ParseID(cleaned)
            goal.text = name or cleaned
            goal.npcID = id
        end
        goal.action = "kill"
    end,
}

-- Collect items: "collect Count ItemName##ItemID"
GOALTYPES["collect"] = {
    action = "collect",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        -- Try "Count ItemName##ItemID"
        local countStr, rest = params:match("^(%d+)%s+(.*)")
        if countStr then
            goal.count = tonumber(countStr)
            local name, id = Parser:ParseID(rest)
            goal.text = name or rest
            goal.itemID = id
        else
            local name, id = Parser:ParseID(params)
            goal.text = name or params
            goal.itemID = id
        end
        goal.action = "collect"
    end,
}

-- Get/farm items (alias for collect)
GOALTYPES["get"] = GOALTYPES["collect"]
GOALTYPES["farm"] = GOALTYPES["collect"]

-- Buy item
GOALTYPES["buy"] = {
    action = "buy",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local countStr, rest = params:match("^(%d+)%s+(.*)")
        if countStr then
            goal.count = tonumber(countStr)
            local name, id = Parser:ParseID(rest)
            goal.text = name or rest
            goal.itemID = id
        else
            local name, id = Parser:ParseID(params)
            goal.text = name or params
            goal.itemID = id
        end
        goal.action = "buy"
    end,
}

-- Use item
GOALTYPES["use"] = {
    action = "use",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.itemID = id
        goal.action = "use"
        -- Look up spellID from itemID so UNIT_SPELLCAST_SUCCEEDED can fire
        -- We defer this to runtime since GetItemInfo is not always sync-ready
    end,
}

-- Talk to NPC
GOALTYPES["talk"] = {
    action = "talk",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.npcID = id
        goal.action = "talk"
    end,
}

-- Click object
GOALTYPES["click"] = {
    action = "click",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.objectID = id
        goal.action = "click"
    end,
}

-- Click NPC
GOALTYPES["clicknpc"] = {
    action = "clicknpc",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.npcID = id
        goal.action = "clicknpc"
    end,
}

-- Goto: "goto MapName/Floor X.XX,Y.YY"
GOALTYPES["goto"] = {
    action = "goto",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local mapName, mapID, floor, x, y, dist = Parser:ParseMapXYDist(params)
        goal.mapName = mapName
        goal.mapID = mapID
        goal.floor = floor
        if x and y then
            goal.coords = { x = x, y = y }
            goal.x = x
            goal.y = y
        end
        goal.dist = dist
        goal.action = "goto"
        if mapName then
            goal.text = mapName
        else
            goal.text = params
        end
    end,
}
GOALTYPES["at"] = GOALTYPES["goto"]

-- Home: set hearthstone
GOALTYPES["home"] = {
    action = "home",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Set Hearthstone"
        goal.action = "home"
    end,
}
GOALTYPES["hearth"] = GOALTYPES["home"]

-- Confirm: manual confirmation step
GOALTYPES["confirm"] = {
    action = "confirm",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Click to confirm"
        goal.action = "confirm"
        goal.requiresClick = true
    end,
}

-- Skill check
GOALTYPES["skill"] = {
    action = "skill",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        -- "SkillName,Level"
        local skillName, level = params:match("^(.+),(%d+)")
        if skillName then
            goal.text = strtrim(skillName) .. " " .. level
            goal.skillName = strtrim(skillName)
            goal.skillLevel = tonumber(level)
        else
            goal.text = params
        end
        goal.action = "skill"
    end,
}
GOALTYPES["reachskill"] = GOALTYPES["skill"]

-- Learn spell/ability
GOALTYPES["learn"] = {
    action = "learn",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.spellID = id
        goal.action = "learn"
    end,
}
GOALTYPES["learnspell"] = GOALTYPES["learn"]

-- Learn mount
GOALTYPES["learnmount"] = {
    action = "learnmount",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params or "Learn mount"
        goal.spellID = id
        goal.action = "learnmount"
    end,
}

-- Learn pet
GOALTYPES["learnpet"] = {
    action = "learnpet",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params or "Learn pet"
        goal.spellID = id
        goal.action = "learnpet"
    end,
}

-- Equipped check
GOALTYPES["equipped"] = {
    action = "equipped",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.itemID = id
        goal.action = "equipped"
    end,
}
GOALTYPES["equip"] = GOALTYPES["equipped"]

-- Reputation check
GOALTYPES["rep"] = {
    action = "rep",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        -- "FactionName,Standing"
        local factionName, standing = params:match("^(.+),(.+)$")
        if factionName then
            goal.text = strtrim(factionName) .. " - " .. strtrim(standing)
            goal.factionName = strtrim(factionName)
            goal.standing = strtrim(standing)
        else
            goal.text = params
        end
        goal.action = "rep"
    end,
}

-- Create/craft item
GOALTYPES["create"] = {
    action = "create",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        -- "RecipeName##SpellID,SkillName,TargetLevel"
        local recipe, rest = params:match("^([^,]+),?(.*)")
        if recipe then
            local name, id = Parser:ParseID(strtrim(recipe))
            goal.text = name or recipe
            goal.spellID = id
            if rest and rest ~= "" then
                local skill, level = rest:match("^([^,]+),?(%d*)")
                goal.craftSkill = skill and strtrim(skill) or nil
                goal.craftLevel = level and tonumber(level) or nil
            end
        else
            goal.text = params
        end
        goal.action = "create"
    end,
}
GOALTYPES["craft"] = GOALTYPES["create"]

-- Gossip selection
GOALTYPES["gossip"] = {
    action = "gossip",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.gossipIndex = tonumber(params)
        goal.text = "Select gossip option"
        goal.action = "gossip"
    end,
}

-- Vendor
GOALTYPES["vendor"] = {
    action = "vendor",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Visit vendor"
        goal.action = "vendor"
    end,
}

-- Trainer
GOALTYPES["trainer"] = {
    action = "trainer",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Visit trainer"
        goal.action = "trainer"
    end,
}

-- Level check
GOALTYPES["ding"] = {
    action = "level",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.level = tonumber(params)
        goal.text = "Reach level " .. (params or "?")
        goal.action = "level"
    end,
}
GOALTYPES["level"] = GOALTYPES["ding"]

-- Grind
GOALTYPES["grind"] = {
    action = "grind",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Grind until complete"
        goal.action = "grind"
    end,
}

-- Flight path
GOALTYPES["fpath"] = {
    action = "fpath",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Get flight path"
        goal.action = "fpath"
    end,
}
GOALTYPES["fly"] = {
    action = "fly",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Fly"
        goal.action = "fly"
    end,
}
GOALTYPES["ferry"] = GOALTYPES["fpath"]

-- Achievement
GOALTYPES["achieve"] = {
    action = "achieve",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.achieveID = id
        goal.action = "achieve"
    end,
}

-- Image display (informational)
GOALTYPES["image"] = {
    action = "image",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.imagePath = params
        goal.text = ""
        goal.action = "image"
    end,
}

-- Info text (non-actionable)
GOALTYPES["info"] = {
    action = "info",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or ""
        goal.action = "info"
    end,
}

-- Cast spell
GOALTYPES["cast"] = {
    action = "cast",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        local name, id = Parser:ParseID(params)
        goal.text = name or params
        goal.spellID = id
        goal.action = "cast"
    end,
}

-- Goal (generic objective)
GOALTYPES["goal"] = {
    action = "goal",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or ""
        goal.action = "goal"
    end,
}

-- Discover area
GOALTYPES["discover"] = {
    action = "discover",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = params or "Discover area"
        goal.action = "discover"
    end,
}

-- Load another guide
GOALTYPES["loadguide"] = {
    action = "loadguide",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        -- Strip quotes
        local path = params:match('^"(.-)"') or params
        goal.guidePath = path
        goal.text = "Load guide: " .. path
        goal.action = "loadguide"
    end,
}

-- Next tab
GOALTYPES["nexttab"] = {
    action = "nexttab",
    -- DEBUG: ENTER parse()
    -- DEBUG: PARAM goal = [goal]
    -- DEBUG: PARAM params = [params]
    parse = function(goal, params)
        goal.text = "Continue to next guide"
        goal.action = "nexttab"
    end,
}

-- Catch-all for unrecognized types: store as info
-- DEBUG: ENTER genericParse()
-- DEBUG: PARAM goal = [goal]
-- DEBUG: PARAM params = [params]
-- DEBUG: PARAM cmd = [cmd]
local function genericParse(goal, params, cmd)
    goal.text = params or ""
    goal.action = cmd or "unknown"
-- DEBUG: EXIT genericParse()
end

Parser.GOALTYPES = GOALTYPES

-----------------------------------------------------------------------
-- RegisterInclude: store a reusable guide text snippet
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:RegisterInclude()
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM text = [text]
function Parser:RegisterInclude(name, text)
    if not name then return end
    self.Includes[name] = text
-- DEBUG: EXIT Parser:RegisterInclude()
end

-----------------------------------------------------------------------
-- ExpandIncludes: replace #include directives with include text
-- Supports parameter substitution: #include "name" param1=val1
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ExpandIncludes()
-- DEBUG: PARAM text = [text]
function Parser:ExpandIncludes(text)
    if not text then return text end

    -- Limit iterations to prevent infinite recursion
    local iterations = 0
    local maxIterations = 50

    while iterations < maxIterations do
        iterations = iterations + 1

        local found = false
        local result = {}

        for line in text:gmatch("[^\n]+") do
            local incName, incParams = line:match('^%s*#include%s+"([^"]+)"(.*)')
            if incName and self.Includes[incName] then
                found = true
                local incText = self.Includes[incName]

                -- Parameter substitution: param=value
                if incParams and incParams ~= "" then
                    for paramName, paramVal in incParams:gmatch("(%w+)=(%S+)") do
                        incText = incText:gsub("%%" .. paramName .. "%%", paramVal)
                    end
                end

                result[#result + 1] = incText
            else
                result[#result + 1] = line
            end
        end

        text = table.concat(result, "\n")
        if not found then break end
    end

    return text
-- DEBUG: EXIT Parser:ExpandIncludes()
end

-----------------------------------------------------------------------
-- StripComments: remove -- and // comments, handle || continuation
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:StripComments()
-- DEBUG: PARAM text = [text]
function Parser:StripComments(text)
    if not text then return text end
    local lines = {}
    local continuation = false
    local prevLine = ""

    for line in text:gmatch("[^\n]+") do
        -- Strip Lua comments
        line = line:gsub("%-%-.*$", "")
        -- Strip C-style comments
        line = line:gsub("//.*$", "")
        -- Trim
        line = strtrim(line)

        -- Handle || line continuation
        if continuation then
            line = prevLine .. " " .. line
            continuation = false
        end

        if line:match("%|%|$") then
            continuation = true
            prevLine = line:gsub("%|%|$", "")
        else
            if line ~= "" then
                lines[#lines + 1] = line
            end
        end
    end

    return lines
-- DEBUG: EXIT Parser:StripComments()
end

-----------------------------------------------------------------------
-- ParseModifier: parse a pipe-delimited modifier chunk
-- Returns modifier type and value
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseModifier()
-- DEBUG: PARAM chunk = [chunk]
function Parser:ParseModifier(chunk)
    chunk = strtrim(chunk)
    if chunk == "" then return nil, nil end

    -- |tip Text
    local tip = chunk:match("^tip%s+(.*)")
    if tip then return "tip", tip end

    -- |q QuestID/ObjNum
    local questRef = chunk:match("^q%s+(.*)")
    if questRef then
        local qid, objNum = questRef:match("^(%d+)/(%d+)")
        if qid then
            return "quest_obj", { questID = tonumber(qid), objective = tonumber(objNum) }
        end
        return "quest_ref", tonumber(questRef)
    end

    -- |goto Map/Floor X,Y
    local gotoStr = chunk:match("^goto%s+(.*)")
    if gotoStr then
        local mapName, mapID, floor, x, y, dist = Parser:ParseMapXYDist(gotoStr)
        return "goto", { mapName = mapName, mapID = mapID, floor = floor, x = x, y = y, dist = dist }
    end

    -- |or
    if chunk == "or" then return "or", true end

    -- |future
    if chunk == "future" then return "future", true end

    -- |n (no-complete)
    if chunk == "n" then return "nocomplete", true end

    -- |c (force complete)
    if chunk == "c" then return "complete", true end

    -- |confirm
    if chunk == "confirm" then return "confirm", true end

    -- |daily / |repeatable
    if chunk == "daily" then return "daily", true end
    if chunk == "repeatable" then return "repeatable", true end

    -- |only if Condition
    local onlyIf = chunk:match("^only%s+if%s+(.*)")
    if onlyIf then return "condition", onlyIf end

    -- |only Condition (shorthand)
    local onlyShort = chunk:match("^only%s+(.*)")
    if onlyShort then return "condition", onlyShort end

    -- |loadguide "Path"
    local lgPath = chunk:match('^loadguide%s+"([^"]+)"')
    if lgPath then return "loadguide", lgPath end

    -- |usebank
    if chunk == "usebank" then return "usebank", true end

    -- |notinsticky
    if chunk == "notinsticky" then return "notinsticky", true end

    -- |onlyinsticky
    if chunk == "onlyinsticky" then return "onlyinsticky", true end

    -- |gossip ID
    local gossipID = chunk:match("^gossip%s+(%d+)")
    if gossipID then return "gossip", tonumber(gossipID) end

    -- |count Num
    local countNum = chunk:match("^count%s+(%d+)")
    if countNum then return "count", tonumber(countNum) end

    return "unknown", chunk
-- DEBUG: EXIT Parser:ParseModifier()
end

-----------------------------------------------------------------------
-- FormatText: strip markup from display text
-- Removes {color}...{}, _gold_, #count# etc.
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:FormatText()
-- DEBUG: PARAM text = [text]
function Parser:FormatText(text)
    if not text then return "" end

    -- {color}text{} -> text
    text = text:gsub("{%w-}(.-){}", "%1")

    -- _gold_text_ -> text (Zygor gold highlighting uses underscores)
    -- Be careful not to strip legitimate underscores
    -- Only convert _word_ patterns
    text = text:gsub("_([^_]+)_", "%1")

    -- #count# -> count
    text = text:gsub("#(%d+)#", "%1")

    -- $NAME -> Player name
    if UnitName then
        text = text:gsub("%$NAME", UnitName("player") or "Player")
    end

    return strtrim(text)
-- DEBUG: EXIT Parser:FormatText()
end

-----------------------------------------------------------------------
-- ParseEntry: MAIN PARSER
-- Converts raw guide text into arrays of Step/Goal objects.
-- This is the heart of the parser.
--
-- Input: raw text string (multi-line)
-- Output: array of step tables, each containing goals array
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseEntry()
-- DEBUG: PARAM text = [text]
-- DEBUG: PARAM guideObj = [guideObj]
function Parser:ParseEntry(text, guideObj)
    if not text or text == "" then return {} end

    -- Phase 1: Expand includes
    text = self:ExpandIncludes(text)

    -- Phase 2: Strip comments and split into clean lines
    local lines = self:StripComments(text)

    -- Phase 3: Parse lines into steps and goals
    local steps = {}
    local currentStep = nil
    local stickySteps = {}     -- name -> step (for stickystart/label)
    local stickyStack = {}     -- ordered active stickies

    for _, line in ipairs(lines) do
        -- Trim
        line = strtrim(line)

        -- === STEP KEYWORD ===
        if line == "step" or line:match("^step%s") then
            -- Finalize previous step
            if currentStep and #currentStep.goals > 0 then
                steps[#steps + 1] = currentStep
            end

            -- Start new step
            currentStep = {
                goals = {},
                tips = {},
                sticky = false,
                label = nil,
                condition = nil,
            }

            -- Check for step modifiers: "step |cond|..."
            local stepMods = line:match("^step%s+(.*)")
            if stepMods then
                -- Could be "|only if ..." on the step line
                for chunk in stepMods:gmatch("[^|]+") do
                    chunk = strtrim(chunk)
                    if chunk ~= "" then
                        local modType, modVal = self:ParseModifier(chunk)
                        if modType == "condition" then
                            currentStep.condition = modVal
                        end
                    end
                end
            end

        -- === STICKYSTART ===
        elseif line:match("^stickystart%s") then
            local stickyName = line:match('^stickystart%s+"([^"]+)"') or line:match("^stickystart%s+(%S+)")
            if currentStep and #currentStep.goals > 0 then
                steps[#steps + 1] = currentStep
            end
            currentStep = {
                goals = {},
                tips = {},
                sticky = true,
                stickyName = stickyName,
                label = nil,
                condition = nil,
            }

        -- === LABEL ===
        elseif line:match("^label%s") then
            local labelName = line:match('^label%s+"([^"]+)"') or line:match("^label%s+(%S+)")
            -- Labels mark the end of sticky regions
            -- The current step continues normally
            if currentStep then
                currentStep.label = labelName
            end

        -- === STICKY (standalone keyword on step) ===
        elseif line == "sticky" then
            if currentStep then
                currentStep.sticky = true
            end

        -- === GOAL LINE ===
        elseif currentStep then
            -- Split by pipes: first chunk is the main goal, rest are modifiers
            local chunks = {}
            -- Split on | but not || (continuation) and not ## (ID separator)
            local pos = 1
            local len = line:len()
            while pos <= len do
                local pipePos = line:find("|", pos, true)
                if pipePos then
                    -- Check for || (skip)
                    if pipePos < len and line:sub(pipePos + 1, pipePos + 1) == "|" then
                        pos = pipePos + 2
                    else
                        local chunk = line:sub(pos, pipePos - 1)
                        chunks[#chunks + 1] = strtrim(chunk)
                        pos = pipePos + 1
                    end
                else
                    chunks[#chunks + 1] = strtrim(line:sub(pos))
                    break
                end
            end

            if #chunks == 0 then
                -- Skip empty
            else
                local mainChunk = chunks[1]
                local goal = {
                    action = "text",
                    text = "",
                    tips = {},
                    modifiers = {},
                    coords = nil,
                    questID = nil,
                    npcID = nil,
                    itemID = nil,
                    count = 1,
                    current = 0,
                    complete = false,
                }

                -- Parse the main chunk: first word is the command
                local cmd, params = mainChunk:match("^(%w+)%s*(.*)")

                if cmd then
                    cmd = cmd:lower()

                    -- Special case: "Kill #6# Worgen Runts |q 56775/1"
                    -- The main text can contain count markers
                    local goalType = GOALTYPES[cmd]
                    if goalType then
                        goalType.parse(goal, params)
                    else
                        -- Unknown command — treat the whole line as display text
                        goal.action = "text"
                        goal.text = self:FormatText(mainChunk)
                    end
                else
                    -- No command word — raw text goal
                    goal.action = "text"
                    goal.text = self:FormatText(mainChunk)
                end

                -- Parse modifier chunks (|tip, |q, |goto, |or, etc.)
                for i = 2, #chunks do
                    local modType, modVal = self:ParseModifier(chunks[i])
                    if modType == "tip" then
                        goal.tips[#goal.tips + 1] = self:FormatText(modVal)
                    elseif modType == "quest_obj" then
                        goal.questID = modVal.questID
                        goal.questObjective = modVal.objective
                    elseif modType == "quest_ref" then
                        if not goal.questID then goal.questID = modVal end
                    elseif modType == "goto" then
                        if modVal.x and modVal.y then
                            goal.coords = { x = modVal.x, y = modVal.y }
                            goal.x = modVal.x
                            goal.y = modVal.y
                        end
                        goal.mapName = modVal.mapName or goal.mapName
                        goal.mapID = modVal.mapID or goal.mapID
                        goal.floor = modVal.floor or goal.floor
                    elseif modType == "or" then
                        goal.isOr = true
                    elseif modType == "condition" then
                        goal.condition = modVal
                    elseif modType == "confirm" then
                        goal.requiresClick = true
                    elseif modType == "nocomplete" then
                        goal.noComplete = true
                    elseif modType == "complete" then
                        goal.forceComplete = true
                    elseif modType == "daily" then
                        goal.daily = true
                    elseif modType == "repeatable" then
                        goal.repeatable = true
                    elseif modType == "count" then
                        goal.count = modVal
                    elseif modType == "gossip" then
                        goal.gossipIndex = modVal
                    elseif modType == "loadguide" then
                        goal.loadguidePath = modVal
                    else
                        goal.modifiers[modType] = modVal
                    end
                end

                -- Format the display text
                goal.text = self:FormatText(goal.text)

                -- Add goal to current step
                currentStep.goals[#currentStep.goals + 1] = goal
            end
        end
    end

    -- Don't forget the last step
    if currentStep and #currentStep.goals > 0 then
        steps[#steps + 1] = currentStep
    end

    return steps
-- DEBUG: EXIT Parser:ParseEntry()
end

-----------------------------------------------------------------------
-- ParseHeader: process the guide header metadata table
-- Input: raw header table (from RegisterGuide second argument)
-- Output: structured metadata table
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseHeader()
-- DEBUG: PARAM header = [header]
function Parser:ParseHeader(header)
    if not header then return {} end

    local meta = {}

    meta.description        = header.description
    meta.author             = header.author
    meta.patch              = header.patch
    meta.image              = header.image
    meta.startLevel         = header.startlevel
    meta.endLevel           = header.endlevel
    meta.next               = header.next          -- Next guide path
    meta.class              = header.class
    meta.spec               = header.spec

    -- Condition functions
    if header.condition_suggested then
        meta.condition_suggested = header.condition_suggested
        meta.conditionSuggestedFn = self:MakeCondition(header.condition_suggested)
    end
    if header.condition_end then
        meta.condition_end = header.condition_end
        meta.conditionEndFn = self:MakeCondition(header.condition_end)
    end
    if header.condition_valid then
        meta.condition_valid = header.condition_valid
        meta.conditionValidFn = self:MakeCondition(header.condition_valid)
    end

    return meta
-- DEBUG: EXIT Parser:ParseHeader()
end

-----------------------------------------------------------------------
-- ParseGuidePath: split "Leveling Guides\\Alliance\\1-10" into
-- category parts. Zygor uses backslash-delimited paths.
-- Returns: array of path segments, leaf name
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:ParseGuidePath()
-- DEBUG: PARAM path = [path]
function Parser:ParseGuidePath(path)
    if not path then return {}, "" end

    local parts = {}
    for seg in path:gmatch("[^\\]+") do
        parts[#parts + 1] = strtrim(seg)
    end

    local leaf = parts[#parts] or ""
    return parts, leaf
-- DEBUG: EXIT Parser:ParseGuidePath()
end

-----------------------------------------------------------------------
-- DeriveCategory: try to map a guide path to our category system
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:DeriveCategory()
-- DEBUG: PARAM pathParts = [pathParts]
function Parser:DeriveCategory(pathParts)
    if not pathParts or #pathParts == 0 then return "LEVELING" end

    local top = pathParts[1]:lower()

    if top:find("level") then return "LEVELING" end
    if top:find("dungeon") then return "DUNGEONS" end
    if top:find("raid") then return "RAIDS" end
    if top:find("profession") or top:find("prof") then return "PROFESSIONS" end
    if top:find("reputation") or top:find("rep") then return "REPUTATIONS" end
    if top:find("achieve") then return "ACHIEVEMENTS" end
    if top:find("pet") or top:find("mount") then return "PETS_MOUNTS" end
    if top:find("daily") or top:find("dailies") then return "DAILIES" end
    if top:find("event") or top:find("holiday") then return "EVENTS" end
    if top:find("pvp") then return "PVP" end
    if top:find("gold") then return "GOLD" end
    if top:find("title") then return "TITLES" end
    if top:find("poi") then return "EXPLORATION" end

    return "LEVELING"
-- DEBUG: EXIT Parser:DeriveCategory()
end

-----------------------------------------------------------------------
-- DeriveFaction: try to determine faction from guide path
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:DeriveFaction()
-- DEBUG: PARAM pathParts = [pathParts]
function Parser:DeriveFaction(pathParts)
    if not pathParts then return nil end
    for _, part in ipairs(pathParts) do
        local lower = part:lower()
        if lower == "alliance" then return "ALLIANCE" end
        if lower == "horde" then return "HORDE" end
        if lower == "neutral" or lower == "common" then return "NEUTRAL" end
    end
    return nil
-- DEBUG: EXIT Parser:DeriveFaction()
end

-----------------------------------------------------------------------
-- DeriveExpansion: try to determine expansion from guide path
-- Returns numeric expansion index (0=Classic, 1=TBC, 2=WotLK, etc.)
-----------------------------------------------------------------------
-- DEBUG: ENTER Parser:DeriveExpansion()
-- DEBUG: PARAM pathParts = [pathParts]
function Parser:DeriveExpansion(pathParts)
    if not pathParts then return nil end
    for _, part in ipairs(pathParts) do
        local lower = part:lower()
        if lower == "classic" or lower == "vanilla" then return 0 end
        if lower == "tbc" or lower:find("burning") then return 1 end
        if lower == "wotlk" or lower:find("wrath") or lower:find("lich") then return 2 end
        if lower == "cata" or lower:find("cataclysm") then return 3 end
        if lower == "mop" or lower:find("pandaria") then return 4 end
        if lower == "wod" or lower:find("draenor") then return 5 end
        if lower == "legion" then return 6 end
        if lower == "bfa" or lower:find("azeroth") then return 7 end
        if lower == "shadow" or lower:find("shadowlands") then return 8 end
        if lower == "dragon" or lower:find("dragonflight") then return 9 end
        if lower == "tww" or lower:find("within") then return 10 end
    end
    return nil
-- DEBUG: EXIT Parser:DeriveExpansion()
end

-----------------------------------------------------------------------
-- Export
-----------------------------------------------------------------------
XP.Parser = Parser

-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]
-- DEBUG: EXIT parse() [EOF]