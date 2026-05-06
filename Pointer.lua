-----------------------------------------------------------------------
-- X-Plore: Pointer.lua
-- Unified waypoint coordinator that integrates arrow navigation with
-- TomTom and provides a common interface for all waypoint operations.
-- Works with or without TomTom installed.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- TomTom integration
-----------------------------------------------------------------------
local TomTom = nil
local function InitTomTom()
    -- TomTom is an optional dependency
    TomTom = LibStub and LibStub("TomTom", true)
    return TomTom ~= nil
end

-----------------------------------------------------------------------
-- Pointer state
-----------------------------------------------------------------------
local Pointer = {}
XP.Pointer = Pointer

Pointer.activeProfile = nil      -- "tomtom" or "arrow"
Pointer.tomtomEnabled = false    -- TomTom is installed and user wants to use it
Pointer.arrowEnabled = true     -- Always use arrow as fallback

-----------------------------------------------------------------------
-- Profile management
-----------------------------------------------------------------------

-- DEBUG: ENTER Pointer:SetProfile()
-- DEBUG: PARAM profile = [profile]
function Pointer:SetProfile(profile)
    self.activeProfile = profile
    if profile == "tomtom" and TomTom then
        self.tomtomEnabled = true
        -- Hide arrow when using TomTom
        if XP.Waypoint and XP.Waypoint.frame then
            XP.Waypoint.frame:Hide()
        end
    else
        self.tomtomEnabled = false
        -- Show arrow when not using TomTom
        self:RefreshArrow()
    end
-- DEBUG: EXIT Pointer:SetProfile()
end

-- DEBUG: ENTER Pointer:GetProfile()
function Pointer:GetProfile()
    return self.activeProfile or "arrow"
-- DEBUG: EXIT Pointer:GetProfile()
end

-----------------------------------------------------------------------
-- Unified waypoint operations
-----------------------------------------------------------------------

-- DEBUG: ENTER Pointer:SetWaypoint()
-- DEBUG: PARAM mapID = [mapID]
-- DEBUG: PARAM x = [x]
-- DEBUG: PARAM y = [y]
-- DEBUG: PARAM options = [options]
function Pointer:SetWaypoint(mapID, x, y, options)
    options = options or {}
    local title = options.title or "Waypoint"

    if self.tomtomEnabled and TomTom then
        -- Use TomTom for navigation
        TomTom:ClearWaypoints()
        TomTom:SetWaypoint(mapID, x, y, {
            title = title,
            persistent = false,
            minimap = true,
        })
    end

    -- Always maintain arrow as fallback
    if XP.SetWaypoint then
        XP:SetWaypoint(mapID, x, y, options)
    end
-- DEBUG: EXIT Pointer:SetWaypoint()
end

-- DEBUG: ENTER Pointer:AddWaypoint()
-- DEBUG: PARAM mapID = [mapID]
-- DEBUG: PARAM x = [x]
-- DEBUG: PARAM y = [y]
-- DEBUG: PARAM options = [options]
function Pointer:AddWaypoint(mapID, x, y, options)
    options = options or {}
    local title = options.title or ("Waypoint %d")

    if self.tomtomEnabled and TomTom then
        -- Use TomTom for multi-waypoint support
        TomTom:AddWaypoint(mapID, x, y, {
            title = title,
            persistent = false,
            minimap = true,
        })
    end

    -- Also add to arrow system
    if XP.AddWaypoint then
        XP:AddWaypoint(mapID, x, y, options)
    end
-- DEBUG: EXIT Pointer:AddWaypoint()
end

-- DEBUG: ENTER Pointer:ClearWaypoints()
function Pointer:ClearWaypoints()
    if self.tomtomEnabled and TomTom then
        TomTom:ClearWaypoints()
    end

    if XP.ClearWaypoints then
        XP:ClearWaypoints()
    end
-- DEBUG: EXIT Pointer:ClearWaypoints()
end

-- Alias for backward compatibility
-- DEBUG: ENTER Pointer:ClearWaypoint()
function Pointer:ClearWaypoint()
    self:ClearWaypoints()
-- DEBUG: EXIT Pointer:ClearWaypoint()
end

-----------------------------------------------------------------------
-- Arrow refresh (when switching profiles)
-----------------------------------------------------------------------

-- DEBUG: ENTER Pointer:RefreshArrow()
function Pointer:RefreshArrow()
    if not self.tomtomEnabled and XP.RefreshWaypointArrow then
        XP:RefreshWaypointArrow()
    end
-- DEBUG: EXIT Pointer:RefreshArrow()
end

-----------------------------------------------------------------------
-- Initialization
-----------------------------------------------------------------------

-- DEBUG: ENTER XP:InitPointer()
function XP:InitPointer()
    -- Try to initialize TomTom
    local hasTomTom = InitTomTom()

    -- Set default profile based on availability and user preference
    if hasTomTom and XP.db and XP.db.profile and XP.db.profile.pointer then
        if XP.db.profile.pointer.useTomTom then
            Pointer:SetProfile("tomtom")
            return
        end
    end

    -- Default to arrow
    Pointer:SetProfile("arrow")
-- DEBUG: EXIT XP:InitPointer()
end
