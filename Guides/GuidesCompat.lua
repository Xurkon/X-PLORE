-- GuidesCompat.lua
-- X-PLORE: Compatibility shims for non-ZygorGuidesViewer guide formats.
--
-- Provides DugisGuideViewer and RXPGuides globals so their guide files load
-- without errors. Each shim translates the foreign registration + step format
-- into ZygorGuidesViewer:RegisterGuide() calls that X-PLORE understands.
--
-- Universal: Lua 5.0 – 5.4 / WoW Vanilla through Retail.
-- No goto, no table.unpack, no modern-only APIs.

-- ─────────────────────────────────────────────────────────────────────────────
-- Addon table: populate fields that RXP guide files read via `local _,addon=...`
--
-- RXP guide files begin with guards like:
--   if addon.gameVersion < 40000 then return end   (expansion filter)
--   if addon.player.faction == 'Horde' then return end
--   if addon.GetSeason() ~= 2 then return end      (SoD filter)
--
-- Every <Script> file loaded by the same TOC shares the same addonTable
-- as its second vararg.  Populating it here (first file to load) makes
-- all these fields available to every guide file that follows.
-- ─────────────────────────────────────────────────────────────────────────────
do
	local _, addonTable = ...
	if addonTable then
		-- Interface version number: 30300=WotLK, 40300=Cata, 50400=MoP, etc.
		local tocVersion = 30300
		if GetBuildInfo then
			local _1, _2, _3, v = GetBuildInfo()
			tocVersion = tonumber(v) or tocVersion
		end
		addonTable.gameVersion = tocVersion

		-- Player faction / race / class (available at load time in all WoW clients)
		local faction = (UnitFactionGroup and UnitFactionGroup("player")) or ""
		local engRace = ""
		if UnitRace then
			local _lr, r = UnitRace("player")
			engRace = r or ""
		end
		local engClass = ""
		if UnitClass then
			local _lc, c = UnitClass("player")
			engClass = c or ""
		end
		addonTable.player = { faction = faction, race = engRace, class = engClass }

		-- GetSeason: 0 = no active season; SoD guides guard with ~= 2 and skip.
		function addonTable.GetSeason() return 0 end
	end
end

-- ─────────────────────────────────────────────────────────────────────────────
-- DugiGuides global stubs
-- Legacy DugiGuides files (e.g. Legacy_MoP) reference globals that only exist
-- when the DugiGuides core addon is loaded.  Provide minimal stubs so those
-- files can be parsed without errors.
-- ─────────────────────────────────────────────────────────────────────────────
if not LuaUtils then
	LuaUtils = { DugiGuidesIsLoading = false }
end

if not DugisLocals then
	-- Returns the key itself as a fallback string for any unknown locale entry.
	DugisLocals = setmetatable({}, { __index = function(_, k) return tostring(k) end })
end

local ZGV = ZygorGuidesViewer
if not ZGV then return end

-- ─────────────────────────────────────────────────────────────────────────────
-- Shared helpers
-- ─────────────────────────────────────────────────────────────────────────────

local function Trim(s)
    if type(s) ~= "string" then return "" end
    return s:match("^%s*(.-)%s*$") or ""
end

local function StripColor(s)
    if type(s) ~= "string" then return "" end
    s = s:gsub("|c%x%x%x%x%x%x%x%x", "")
    s = s:gsub("|r", "")
    return Trim(s)
end

local function FactionAllowed(faction)
    if not faction or faction == "" then return true end
    local f = UnitFactionGroup and UnitFactionGroup("player") or ""
    if faction == "Alliance" and f ~= "Alliance" then return false end
    if faction == "Horde"    and f ~= "Horde"    then return false end
    return true
end

-- ─────────────────────────────────────────────────────────────────────────────
-- DugisGuideViewer shim
--
-- Two RegisterGuide API variants found in the wild:
--   New (BFA+): (categories_array, name, prev, next, faction, typeCode, nil, stepFn)
--   Old (Era) : (title_string,     prev, next, faction, nil, typeCode, nil, stepFn)
--
-- Step format: one command per line, pipe-delimited tags.
--   A = accept quest    T = turn in    C = complete objective
--   K = kill            R = run        B = buy    N = note (skipped)
--   h = set hearthstone
-- ─────────────────────────────────────────────────────────────────────────────

if not DugisGuideViewer then
    -- All shim data lives here; DugisGuideViewer is a proxy that reads from _dgv.
    local _dgv = {}
    -- Keys that infrastructure files (Modules.common.lua etc.) must never overwrite.
    local _locked = { RegisterGuide = true, RegisterModule = true }

    -- ── Auto-init module proxy ────────────────────────────────────────────────────
    -- DugiGuides guide files follow this pattern:
    --   local Guide = DugisGuideViewer:RegisterModule("Name")
    --   function Guide:Initialize()   -- assigned AFTER RegisterModule returns
    --     function Guide:Load() DugisGuideViewer:RegisterGuide(...) end
    --   end
    -- We intercept the Initialize assignment via __newindex and immediately call it,
    -- then call Load() so RegisterGuide is reached without needing the DugiGuides core.
    local function MakeModule()
        local data = {}
        return setmetatable({}, {
            __index = data,
            __newindex = function(t, k, v)
                data[k] = v
                if k == "Initialize" and type(v) == "function" then
                    local ok = pcall(v, t)
                    if ok and type(data.Load) == "function" then
                        pcall(data.Load, t)
                    end
                end
            end,
        })
    end

    -- ── Stubs used by DugiGuides infrastructure files ─────────────────────────────
    _dgv.NoOp    = function() end
    _dgv.Modules = {}

    -- Pool factory called inside Modules.common.lua's RegisterModule body.
    _dgv.GetCreateTable = function()
        local items = {}
        local obj = {}
        function obj:Insert(v) items[#items + 1] = v end
        function obj:Pool() local out = items; items = {}; return out end
        return obj
    end

    _dgv.RegisterModule = function(self, name, ...)
        return MakeModule()
    end

    -- ── Parsing helpers ───────────────────────────────────────────────────────────

    -- Extract |TAG|value| from a DugiGuides step line
    local function DTag(line, tag)
        return line:match("|" .. tag .. "|(.-)%s*|")
    end

    -- Extract {Zone Name} from a line
    local function DZone(line)
        return line:match("{(.-)}")
    end

    -- Extract (x, y) coords from a line
    local function DCoords(line)
        return line:match("%((%d+%.?%d*),%s*(%d+%.?%d*)%)")
    end

    -- Extract (npc:ID Name) or (npc:ID) from a line
    local function DNPC(line)
        local id, name = line:match("%(npc:(%d+)%s+(.-)%)")
        if not id then id = line:match("%(npc:(%d+)%)") end
        return id, name
    end

    -- Translate one DugiGuides command line to a ZGV action string.
    -- Returns nil to omit the line entirely.
    local function DTranslateLine(raw)
        local line = Trim(raw)
        if line == "" or line:sub(1, 2) == "--" then return nil end

        local prefix = line:sub(1, 1)
        local qid    = DTag(line, "QID")
        local note   = DTag(line, "N")
        local zone   = DZone(line)
        local cx, cy = DCoords(line)
        local npcId, npcName = DNPC(line)
        local objId  = DTag(line, "OBJ")
        local itemId = DTag(line, "ITEM")

        local npcRef = ""
        if npcName and npcId then
            npcRef = npcName .. "##" .. npcId
        elseif npcId then
            npcRef = "NPC##" .. npcId
        end

        local gotoTag = ""
        if zone and cx and cy then
            gotoTag = " |goto " .. zone .. " " .. cx .. "," .. cy
        end

        local qTag = qid and (" |q " .. qid) or ""

        if prefix == "A" then
            local qname = note or ("Quest " .. (qid or "?"))
            return "accept " .. qname .. "##" .. (qid or "0") .. qTag .. gotoTag

        elseif prefix == "T" then
            local qname = note or ("Quest " .. (qid or "?"))
            local npcSuffix = npcRef ~= "" and (" " .. npcRef) or ""
            return "turnin " .. qname .. "##" .. (qid or "0") .. qTag .. gotoTag .. npcSuffix

        elseif prefix == "C" then
            if objId then
                return "clicknpc Object##" .. objId .. qTag .. gotoTag
            elseif npcId then
                return "kill 1 " .. npcRef .. qTag .. gotoTag
            elseif itemId then
                return "collect Item##" .. itemId .. qTag .. gotoTag
            else
                return "complete " .. (note or "objective") .. qTag .. gotoTag
            end

        elseif prefix == "K" then
            local target = npcRef ~= "" and npcRef or "mob"
            return "kill 1 " .. target .. qTag .. gotoTag

        elseif prefix == "R" then
            return gotoTag ~= "" and ("run" .. gotoTag) or nil

        elseif prefix == "h" then
            return "complete Set Hearthstone" .. gotoTag

        end
        -- B (buy), N (note) and unknown prefixes are intentionally dropped
        return nil
    end

    -- Translate a full DugiGuides step block to ZGV step text
    local function DTranslateSteps(raw)
        if type(raw) ~= "string" then return "" end
        local out = {}
        for rawLine in raw:gmatch("[^\n]+") do
            local action = DTranslateLine(rawLine)
            if action then
                out[#out + 1] = "step"
                out[#out + 1] = action
            end
        end
        return table.concat(out, "\n")
    end

    -- ── RegisterGuide shim ────────────────────────────────────────────────────────
    -- Both API variants share the same handler; arg1 type disambiguates.
    _dgv.RegisterGuide = function(self, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
        if not ZGV then return end

        local path, faction, stepFn

        if type(arg1) == "table" then
            -- New API: (categories[], name, prev, next, faction, typeCode, nil, stepFn)
            local parts = {}
            for _, c in ipairs(arg1) do
                local cleaned = StripColor(c)
                if cleaned ~= "" then parts[#parts + 1] = cleaned end
            end
            parts[#parts + 1] = arg2 or "Guide"
            path    = "DugiGuides\\" .. table.concat(parts, "\\")
            faction = arg5
            stepFn  = arg8
        else
            -- Old API: (title, prev, next, faction, nil, typeCode, nil, stepFn)
            path    = "DugiGuides\\" .. StripColor(arg1)
            faction = arg4
            stepFn  = arg8
        end

        if not FactionAllowed(faction) then return end

        local stepText = ""
        if type(stepFn) == "function" then
            local ok, result = pcall(stepFn)
            if ok and type(result) == "string" then
                stepText = DTranslateSteps(result)
            end
        elseif type(stepFn) == "string" then
            stepText = DTranslateSteps(stepFn)
        end

        ZGV:RegisterGuide(path, stepText)
    end

    -- ── Protected proxy ───────────────────────────────────────────────────────────
    -- DugisGuideViewer is an empty proxy table. All reads go through __index → _dgv.
    -- Writes to _locked keys are silently ignored so infrastructure files (e.g.
    -- Modules.common.lua's PlaceUtilityStubs) cannot overwrite RegisterGuide or
    -- RegisterModule with no-ops.
    DugisGuideViewer = setmetatable({}, {
        __index = _dgv,
        __newindex = function(t, k, v)
            if _locked[k] then return end
            _dgv[k] = v
        end,
    })
end


-- ─────────────────────────────────────────────────────────────────────────────
-- RXPGuides shim
--
-- A single RegisterGuide call may contain one guide (most files) or multiple
-- guides separated by repeated #group/#subgroup directives (e.g. farmguides).
--
-- Registration directives: #group, #subgroup, << Alliance/Horde filter.
-- Step commands: .goto  .accept  .turnin  .kill  .collect  .use  .hs  .train
-- ─────────────────────────────────────────────────────────────────────────────

if not RXPGuides then
    RXPGuides = {}

    -- Translate a list of lines from one RXP step block to ZGV action strings
    local function RTranslateBlock(lines)
        local out = {}
        for _, raw in ipairs(lines) do
            local line = Trim(raw)
            if line == "" or line:sub(1, 2) == "--" then
                -- skip

            elseif line:sub(1, 1) == "+" or line:sub(1, 2) == ">>" then
                -- note / instruction text, skip

            elseif line:sub(1, 5) == ".goto" then
                -- .goto Zone,x,y[,radius[,dir]]
                local zone, x, y = line:match("%.goto%s+([^,]+),([%d%.]+),([%d%.]+)")
                if zone and x and y then
                    out[#out + 1] = "|goto " .. Trim(zone) .. " " .. x .. "," .. y
                end

            elseif line:sub(1, 7) == ".accept" then
                -- .accept questId >> Quest Name
                local id, name = line:match("%.accept%s+(%d+)%s*>>%s*(.+)")
                if id and name then
                    out[#out + 1] = "accept " .. Trim(name) .. "##" .. id .. " |q " .. id
                end

            elseif line:sub(1, 7) == ".turnin" then
                local id, name = line:match("%.turnin%s+(%d+)%s*>>%s*(.+)")
                if id and name then
                    out[#out + 1] = "turnin " .. Trim(name) .. "##" .. id .. " |q " .. id
                end

            elseif line:sub(1, 5) == ".kill" then
                local mob = line:match("%.kill%s+(.+)")
                if mob then out[#out + 1] = "kill 1 " .. Trim(mob) end

            elseif line:sub(1, 8) == ".collect" then
                local item = line:match("%.collect%s+(.+)")
                if item then
                    local display = item:match("^(.-)##") or item
                    local itemId  = item:match("##(%d+)")
                    if itemId then
                        out[#out + 1] = "collect " .. Trim(display) .. "##" .. itemId
                    else
                        out[#out + 1] = "collect " .. Trim(item)
                    end
                end

            elseif line:sub(1, 4) == ".use" then
                local item = line:match("%.use%s+(.+)")
                if item then
                    local display = item:match("^(.-)##") or item
                    local itemId  = item:match("##(%d+)")
                    if itemId then
                        out[#out + 1] = "use " .. Trim(display) .. "##" .. itemId
                    else
                        out[#out + 1] = "use " .. Trim(item)
                    end
                end

            elseif line:sub(1, 3) == ".hs" then
                out[#out + 1] = "complete Use Hearthstone"

            elseif line:sub(1, 6) == ".train" then
                local spellId = line:match("%.train%s+(%d+)")
                out[#out + 1] = "complete Train Abilities" .. (spellId and (" |q " .. spellId) or "")

            elseif line:sub(1, 7) == ".target" then
                local npc = line:match("%.target%s+(.+)")
                if npc then out[#out + 1] = "talk " .. Trim(npc) end

            end
            -- .zone, .waypoint, .loop, .xp, .skill, .money, .vendor, .zoneskip skipped
        end
        return out
    end

    -- Parse one segment of RXP text (between repeated #group markers) into
    -- a path + step text, and register it with ZGV.
    local function RRegisterSegment(group, subgroup, faction, lines)
        if not group or group == "" then return end

        -- Strip class filter notation from subgroup: "Name << Druid" → "Name"
        if subgroup then
            subgroup = subgroup:match("^(.-)%s*<<") or subgroup
            subgroup = Trim(subgroup)
        end

        local path
        if subgroup and subgroup ~= "" then
            path = "RXP\\" .. group .. "\\" .. subgroup
        else
            path = "RXP\\" .. group
        end

        if not FactionAllowed(faction) then return end

        -- Walk lines, split on "step" keyword, translate each block
        local allOut  = {}
        local block   = {}
        local inSteps = false

        for _, raw in ipairs(lines) do
            local line = Trim(raw)
            if line == "step" then
                if inSteps and #block > 0 then
                    local translated = RTranslateBlock(block)
                    if #translated > 0 then
                        allOut[#allOut + 1] = "step"
                        for _, a in ipairs(translated) do
                            allOut[#allOut + 1] = a
                        end
                    end
                end
                block   = {}
                inSteps = true
            elseif inSteps then
                block[#block + 1] = line
            end
        end
        -- Flush last block
        if #block > 0 then
            local translated = RTranslateBlock(block)
            if #translated > 0 then
                allOut[#allOut + 1] = "step"
                for _, a in ipairs(translated) do allOut[#allOut + 1] = a end
            end
        end

        ZGV:RegisterGuide(path, table.concat(allOut, "\n"))
    end

    function RXPGuides.RegisterGuide(str)
        if not ZGV then return end
        if type(str) ~= "string" then return end

        -- Split on #group to handle multi-guide files (each segment is one guide)
        -- We do a manual scan rather than a pattern split for Lua 5.0 compat.
        local segments = {}
        local currentGroup, currentSub, currentFaction = nil, nil, nil
        local currentLines = {}

        for raw in str:gmatch("[^\n]+") do
            local line = Trim(raw)

            -- Check for a new #group directive (signals start of a new guide)
            local newGroup = line:match("^#group%s+(.+)")
            if newGroup then
                -- Flush previous segment
                if currentGroup then
                    segments[#segments + 1] = {
                        group   = currentGroup,
                        sub     = currentSub,
                        faction = currentFaction,
                        lines   = currentLines,
                    }
                end
                currentLines   = {}
                currentGroup   = Trim(newGroup:match("^(.-)%s*<<") or newGroup)
                currentSub     = nil
                -- Faction from #group line
                if newGroup:match("<<%s*Alliance") then
                    currentFaction = "Alliance"
                elseif newGroup:match("<<%s*Horde") then
                    currentFaction = "Horde"
                else
                    currentFaction = nil
                end

            elseif line:match("^#subgroup%s+") then
                currentSub = Trim(line:match("^#subgroup%s+(.+)"))

            elseif not line:match("^#") then
                -- Content line (step data)
                currentLines[#currentLines + 1] = line
            end
        end

        -- Flush final segment
        if currentGroup then
            segments[#segments + 1] = {
                group   = currentGroup,
                sub     = currentSub,
                faction = currentFaction,
                lines   = currentLines,
            }
        end

        for _, seg in ipairs(segments) do
            RRegisterSegment(seg.group, seg.sub, seg.faction, seg.lines)
        end
    end
end
