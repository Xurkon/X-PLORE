-----------------------------------------------------------------------
-- X-Plore: GuideLoader.lua
-- Handles loading guide data files from various sources.
-- Provides the bridge between external guide formats and X-PLORE.
--
-- Loading strategies:
--   1. Native X-PLORE format: files call XP:RegisterGuide() directly
--   2. XP/Zygor adapter: intercepts ZygorGuidesViewer:RegisterGuide()
--   3. Manual registration: other addons call the API at runtime
--
-- Guide data files are loaded via Guides/Autoload.xml in the TOC.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- GuideLoader namespace
-----------------------------------------------------------------------
XP.GuideLoader = XP.GuideLoader or {}
local Loader = XP.GuideLoader

-- Tracking
Loader.loadedFiles  = 0
Loader.loadedGuides = 0
Loader.errors       = {}

-----------------------------------------------------------------------
-- XP/Zygor Compatibility Shim
-- Many guide data files are written for the legacy compatibility API and call:
--   ZygorGuidesViewer:RegisterGuide(title, header, data)
--   ZygorGuidesViewer:RegisterInclude(name, text)
--   ZygorGuidesViewer:RegisterGuidePlaceholder(title, header)
--   XPViewer:RegisterGuide(title, header, data)
--
-- We create compatibility globals for ZygorGuidesViewer (legacy) and
-- XPViewer/XPV (XP aliases) that redirect to XP.
-- This allows loading unmodified legacy guide data files.
-----------------------------------------------------------------------
-- DEBUG: ENTER Loader:InstallZygorShim()
function Loader:InstallZygorShim()
    -- Only install if ZygorGuidesViewer doesn't already exist
    -- (i.e., the real Zygor addon isn't loaded)
    if _G.ZygorGuidesViewer then return end

    local shim = {}
    local _mutexes = {}

    -- DEBUG: ENTER RegisterGuide()
    -- DEBUG: PARAM self_or_title = [self_or_title]
    -- DEBUG: PARAM titleOrHeader = [titleOrHeader]
    -- DEBUG: PARAM headerOrData = [headerOrData]
    -- DEBUG: PARAM dataOrNil = [dataOrNil]
    shim.RegisterGuide = function(self_or_title, titleOrHeader, headerOrData, dataOrNil)
        -- Handle both ZygorGuidesViewer/XPViewer:RegisterGuide(t,h,d) and
        -- ZygorGuidesViewer/XPViewer.RegisterGuide(self,t,h,d) calling conventions
        local title, header, data

        if type(self_or_title) == "string" then
            -- Called as ZGV/XPV:RegisterGuide(title, header, data) — self was consumed
            title = self_or_title
            header = titleOrHeader
            data = headerOrData
        elseif type(self_or_title) == "table" then
            -- Called with explicit self: ZGV/XPV.RegisterGuide(self, title, header, data)
            title = titleOrHeader
            header = headerOrData
            data = dataOrNil
        end

        if title then
            local guide = XP:RegisterGuide(title, header, data)
            if guide then
                Loader.loadedGuides = Loader.loadedGuides + 1
            end
            return guide
        end
    -- DEBUG: EXIT RegisterGuide()
    end

    -- DEBUG: ENTER RegisterInclude()
    -- DEBUG: PARAM self_or_name = [self_or_name]
    -- DEBUG: PARAM nameOrText = [nameOrText]
    -- DEBUG: PARAM textOrNil = [textOrNil]
    shim.RegisterInclude = function(self_or_name, nameOrText, textOrNil)
        local name, text
        if type(self_or_name) == "string" then
            name = self_or_name
            text = nameOrText
        elseif type(self_or_name) == "table" then
            name = nameOrText
            text = textOrNil
        end
        if name then
            XP:RegisterInclude(name, text)
        end
    -- DEBUG: EXIT RegisterInclude()
    end

    -- DEBUG: ENTER RegisterGuidePlaceholder()
    -- DEBUG: PARAM self_or_title = [self_or_title]
    -- DEBUG: PARAM titleOrHeader = [titleOrHeader]
    -- DEBUG: PARAM headerOrNil = [headerOrNil]
    shim.RegisterGuidePlaceholder = function(self_or_title, titleOrHeader, headerOrNil)
        local title, header
        if type(self_or_title) == "string" then
            title = self_or_title
            header = titleOrHeader
        elseif type(self_or_title) == "table" then
            title = titleOrHeader
            header = headerOrNil
        end
        if title then
            return XP:RegisterGuidePlaceholder(title, header)
        end
    -- DEBUG: EXIT RegisterGuidePlaceholder()
    end

    shim.DoMutex = function(self_or_key, keyOrNil)
        local key = type(self_or_key) == "string" and self_or_key or keyOrNil
        if not key then return false end
        if _mutexes[key] then return true end
        _mutexes[key] = true
        return false
    end

    shim.RegisterGuideSorting = function(self_or_order, orderOrNil)
        local order = orderOrNil
        if type(self_or_order) == "table" and orderOrNil == nil then
            order = self_or_order
        end
        if type(order) ~= "table" then return end
        shim.GuideSorting = order
        if XP.RegisterGuideSorting then
            XP:RegisterGuideSorting(order)
        end
    end

    shim.FocusStep = function() end
    shim.FocusStepQuiet = function() end
    shim.GetReputation = function() return 0 end
    shim.DoEmote = function() end
    shim.SetGuide = function() end
    shim.Print = function() end

    shim.AllianceInstalled = true
    shim.HordeInstalled = true
    shim.AllianceDailiesInstalled = true
    shim.HordeDailiesInstalled = true
    shim.CommonGear = true
    shim.CommonPets = true
    shim.guide_images_installed = true
    shim.guidesets = {}
    shim.questsbyid = {}
    shim.completedQuests = {}
    shim.completioninterval = 1
    shim.ItemScore = {}

    _G.ZygorGuidesViewer = shim

    -- Also alias common short names
    _G.ZGV = shim
    _G.XPViewer = shim
    _G.XPV = shim
-- DEBUG: EXIT Loader:InstallZygorShim()
end

-----------------------------------------------------------------------
-- Guide Data Statistics
-----------------------------------------------------------------------
-- DEBUG: ENTER Loader:GetStats()
function Loader:GetStats()
    return {
        files   = self.loadedFiles,
        guides  = self.loadedGuides,
        errors  = #self.errors,
    }
-- DEBUG: EXIT Loader:GetStats()
end

-- DEBUG: ENTER Loader:PrintStats()
function Loader:PrintStats()
    local stats = self:GetStats()
    if XP.Print then
        XP:Print(string.format(
            "Loaded |cff00e5ff%d|r guides from |cff00e5ff%d|r files. %s",
            stats.guides,
            stats.files,
            stats.errors > 0 and ("|cffff0000" .. stats.errors .. " errors|r") or ""
        ))
    end
-- DEBUG: EXIT Loader:PrintStats()
end

-----------------------------------------------------------------------
-- Initialize: call during addon load
-----------------------------------------------------------------------
-- DEBUG: ENTER Loader:Init()
function Loader:Init()
    -- Install the XP/Zygor compatibility shim FIRST, before any guide
    -- data files execute. This is called from Init.lua or very early
    -- in the load order.
    self:InstallZygorShim()
-- DEBUG: EXIT Loader:Init()
end

-- Auto-initialize when this file loads
Loader:Init()
