-----------------------------------------------------------------------
-- X-Plore: Waypoints.lua
-- Waypoint arrow system: shows a directional arrow pointing toward
-- the current step's coordinates.
-- Uses HereBeDragons-2.0 (from !X-Libs) for player position,
-- and optionally LibRover-1.0 for pathfinding.
--
-- Architecture:
--   XP:CreateWaypointArrow()  - builds the arrow frame
--   XP:SetWaypoint(m, x, y, data)  - set a target waypoint
--   XP:ClearWaypoint()            - remove the arrow target
--   XP:UpdateWaypoint()           - called from step changes / zone changes
--   OnUpdate handler              - rotates arrow and updates distance
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Library references (soft: might be nil if not yet available)
-----------------------------------------------------------------------
local HBD = LibStub and LibStub("HereBeDragons-2.0", true)
local LibRover = LibStub and LibStub("LibRover-1.0", true)

-----------------------------------------------------------------------
-- Local state
-----------------------------------------------------------------------
local Waypoint = XP.Waypoint    -- table from Init.lua
local PI2 = math.pi * 2
local ARROW_UPDATE_INTERVAL = 0.05  -- 20fps updates
local timeSinceLastUpdate = 0

-- Current waypoint target
Waypoint.target = nil   -- { mapID, x, y, title, icon, ... }
Waypoint.frame  = nil   -- the arrow frame

-----------------------------------------------------------------------
-- Arrow texture sheets (64-direction arrow sprite)
-- Each row is a 1/64th slice of a full 360-degree rotation.
-- If we don't have a sprite sheet, we use a simple rotation approach.
-----------------------------------------------------------------------
local NUM_DIRECTIONS = 64

-- Helper: normalize angle to [0, 2PI)
local function NormalizeAngle(angle)
    angle = angle % PI2
    if angle < 0 then angle = angle + PI2 end
    return angle
end

-- Helper: calculate distance between two world points (yards)
local function WorldDistance(x1, y1, x2, y2)
    if not x1 or not y1 or not x2 or not y2 then return 999999 end
    local dx = x2 - x1
    local dy = y2 - y1
    return math.sqrt(dx * dx + dy * dy)
end

-- Helper: format distance for display
local function FormatDistance(dist)
    if dist >= 1000 then
        return string.format("%.1fk yds", dist / 1000)
    else
        return string.format("%d yds", math.floor(dist + 0.5))
    end
end

-- Helper: format ETA
local function FormatETA(seconds)
    if not seconds or seconds <= 0 then return "" end
    if seconds < 60 then
        return string.format("%ds", seconds)
    elseif seconds < 3600 then
        return string.format("%dm %ds", math.floor(seconds / 60), seconds % 60)
    else
        return string.format("%dh %dm", math.floor(seconds / 3600), math.floor((seconds % 3600) / 60))
    end
end

-----------------------------------------------------------------------
-- Create the Waypoint Arrow Frame
-----------------------------------------------------------------------
function XP:CreateWaypointArrow()
    if Waypoint.frame then return end
    if not self.db.profile.arrow.enabled then return end

    local size = 56
    local scale = self.db.profile.arrow.scale or 1.0

    -- Main arrow frame
    local frame = XP.CreateBackdropFrame("Button", "XPlore_WaypointArrow", UIParent)
    frame:SetSize(size + 40, size + 60) -- extra space for text below
    frame:SetPoint("TOP", UIParent, "TOP", 0, -100)
    frame:SetMovable(true)
    frame:SetClampedToScreen(true)
    frame:SetFrameStrata("HIGH")
    frame:SetFrameLevel(100)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:SetScale(scale)
    frame:Hide() -- Hidden until a waypoint is set

    -- Apply a subtle dark background
    self:ApplyBackdrop(frame, "panel", "bg_deep", "border_dim")
    if frame.SetBackdropColor then
        frame:SetBackdropColor(0.04, 0.06, 0.10, 0.7)
    end

    -- Drag handlers
    frame:SetScript("OnDragStart", function()
        if not XP.db.profile.arrow.locked then
            frame:StartMoving()
        end
    end)
    frame:SetScript("OnDragStop", function()
        frame:StopMovingOrSizing()
    end)

    -- Arrow texture (the actual pointing arrow)
    local arrow = frame:CreateTexture(nil, "ARTWORK")
    arrow:SetSize(size, size)
    arrow:SetPoint("TOP", frame, "TOP", 0, -6)

    -- Try to load the custom arrow texture, fall back to colored triangle
    local arrowPath = XP.TEXTURE_PATH .. "waypoints\\XPArrow.tga"
    arrow:SetTexture(arrowPath)
    -- If texture doesn't load, SetTexture fails silently; we check later
    frame.Arrow = arrow

    -- Rotation requires a model or animation group approach on older clients.
    -- On all versions we can rotate textures using SetRotation if available,
    -- or use tex coords math. We'll use SetRotation where available.
    frame.arrowAngle = 0

    -- Title text (what the waypoint is pointing at)
    local title = frame:CreateFontString(nil, "OVERLAY")
    title:SetPoint("TOP", arrow, "BOTTOM", 0, -4)
    title:SetWidth(size + 36)
    title:SetJustifyH("CENTER")
    title:SetWordWrap(false)
    self:ApplyFont(title, "small", "text_bright")
    title:SetText("")
    frame.TitleText = title

    -- Distance text
    local dist = frame:CreateFontString(nil, "OVERLAY")
    dist:SetPoint("TOP", title, "BOTTOM", 0, -2)
    dist:SetWidth(size + 36)
    dist:SetJustifyH("CENTER")
    self:ApplyFont(dist, "small", "cyan")
    dist:SetText("")
    frame.DistanceText = dist

    -- ETA text
    local eta = frame:CreateFontString(nil, "OVERLAY")
    eta:SetPoint("TOP", dist, "BOTTOM", 0, -1)
    eta:SetWidth(size + 36)
    eta:SetJustifyH("CENTER")
    self:ApplyFont(eta, "small", "text_dim")
    eta:SetText("")
    frame.ETAText = eta

    -- OnUpdate: rotate the arrow to point at target
    frame.elapsed = 0
    frame.lastDist = nil
    frame.speedSamples = {}
    frame.speedIndex = 0
    frame.speedCount = 0

    frame:SetScript("OnUpdate", function(self_frame, elapsed)
        self_frame.elapsed = self_frame.elapsed + elapsed
        if self_frame.elapsed < ARROW_UPDATE_INTERVAL then return end
        self_frame.elapsed = 0

        local target = Waypoint.target
        if not target then
            self_frame:Hide()
            return
        end

        -- Get player position
        local playerX, playerY, playerMapID
        if HBD then
            playerX, playerY, playerMapID = HBD:GetPlayerZonePosition()
        end

        if not playerX or not playerY or not playerMapID then
            -- Can't determine position; hide arrow
            self_frame.DistanceText:SetText("?")
            self_frame.ETAText:SetText("")
            return
        end

        -- If player is on a different map than target, try world coordinates
        local tX, tY = target.x, target.y
        local tMap = target.mapID

        local dist
        if tMap and tMap == playerMapID and tX and tY then
            -- Same map: simple zone-coordinate distance
            -- Zone coords are 0-1, we need to convert to yards for display
            -- HBD can give world coords for distance calc
            local pwX, pwY = HBD:GetWorldCoordinatesFromZone(playerX, playerY, playerMapID)
            local twX, twY = HBD:GetWorldCoordinatesFromZone(tX, tY, tMap)
            if pwX and pwY and twX and twY then
                dist = WorldDistance(pwX, pwY, twX, twY)
            end
        elseif tMap and HBD then
            -- Different map: use world coordinates
            local pwX, pwY = HBD:GetWorldCoordinatesFromZone(playerX, playerY, playerMapID)
            local twX, twY = HBD:GetWorldCoordinatesFromZone(tX or 0.5, tY or 0.5, tMap)
            if pwX and pwY and twX and twY then
                dist = WorldDistance(pwX, pwY, twX, twY)
            end
        end

        -- Update distance text
        if dist then
            self_frame.DistanceText:SetText(FormatDistance(dist))

            -- Estimate speed and ETA
            local speed = XP:CalculateSpeed(self_frame, dist)
            if speed and speed > 0.5 then
                local eta = dist / speed
                self_frame.ETAText:SetText(FormatETA(math.floor(eta)))
            else
                self_frame.ETAText:SetText("")
            end
        else
            self_frame.DistanceText:SetText("---")
            self_frame.ETAText:SetText("")
        end

        -- Calculate arrow angle
        if tMap and tX and tY and playerMapID then
            local angle
            if tMap == playerMapID then
                -- Same map: angle from player position to target
                local dx = tX - playerX
                local dy = tY - playerY
                -- WoW coordinate system: y increases downward on zone coords
                -- Facing angle: 0 = north, increases counterclockwise
                local playerFacing = GetPlayerFacing and GetPlayerFacing() or 0
                local targetAngle = math.atan2(-dx, dy) -- angle from player to target in zone coords
                angle = NormalizeAngle(targetAngle - playerFacing)
            else
                -- Cross-map: use world coordinates
                local pwX, pwY = HBD:GetWorldCoordinatesFromZone(playerX, playerY, playerMapID)
                local twX, twY = HBD:GetWorldCoordinatesFromZone(tX, tY, tMap)
                if pwX and twX then
                    local dx = twX - pwX
                    local dy = twY - pwY
                    local playerFacing = GetPlayerFacing and GetPlayerFacing() or 0
                    local targetAngle = math.atan2(dx, dy)
                    angle = NormalizeAngle(targetAngle - playerFacing)
                end
            end

            if angle and self_frame.Arrow then
                -- Rotate the arrow texture
                if self_frame.Arrow.SetRotation then
                    self_frame.Arrow:SetRotation(angle)
                else
                    -- Fallback: use tex coord rotation for older clients
                    XP:SetArrowTexCoordsByAngle(self_frame.Arrow, angle)
                end
            end
        end

        -- Check arrival: if very close, flash or change color
        if dist and dist < 10 then
            self_frame.DistanceText:SetTextColor(XP:ColorRGBA("green"))
            self_frame.TitleText:SetTextColor(XP:ColorRGBA("green"))
        else
            self_frame.DistanceText:SetTextColor(XP:ColorRGBA("cyan"))
            self_frame.TitleText:SetTextColor(XP:ColorRGBA("text_bright"))
        end
    end)

    -- Click handler: cycle waypoint or dismiss
    frame:SetScript("OnClick", function(self_frame, button)
        if button == "RightButton" then
            XP:ClearWaypoint()
        end
    end)
    frame:RegisterForClicks("RightButtonUp")

    Waypoint.frame = frame
end

-----------------------------------------------------------------------
-- Speed calculation (rolling average over last N samples)
-----------------------------------------------------------------------
local SPEED_SAMPLES = 10

function XP:CalculateSpeed(frame, dist)
    if not frame.lastDist then
        frame.lastDist = dist
        return nil
    end

    local delta = frame.lastDist - dist -- positive = getting closer
    frame.lastDist = dist

    -- Convert to yards per second (update interval is ~0.05s)
    local speed = delta / ARROW_UPDATE_INTERVAL

    -- Rolling average
    frame.speedIndex = (frame.speedIndex % SPEED_SAMPLES) + 1
    frame.speedSamples[frame.speedIndex] = speed
    frame.speedCount = math.min(frame.speedCount + 1, SPEED_SAMPLES)

    local total = 0
    for i = 1, frame.speedCount do
        total = total + (frame.speedSamples[i] or 0)
    end

    return total / frame.speedCount
end

-----------------------------------------------------------------------
-- Tex coord rotation fallback (for clients without SetRotation)
-- Rotates a square texture using tex coord math.
-----------------------------------------------------------------------
function XP:SetArrowTexCoordsByAngle(tex, angle)
    -- Simple 4-point rotation of a unit square
    local cos, sin = math.cos(angle), math.sin(angle)
    local cx, cy = 0.5, 0.5

    local function Rotate(x, y)
        local rx = cx + (x - cx) * cos - (y - cy) * sin
        local ry = cy + (x - cx) * sin + (y - cy) * cos
        return rx, ry
    end

    local ULx, ULy = Rotate(0, 0)
    local LLx, LLy = Rotate(0, 1)
    local URx, URy = Rotate(1, 0)
    local LRx, LRy = Rotate(1, 1)

    tex:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy)
end

-----------------------------------------------------------------------
-- Set a waypoint target
-----------------------------------------------------------------------
function XP:SetWaypoint(mapID, x, y, data)
    data = data or {}

    Waypoint.target = {
        mapID = mapID,
        x     = x,
        y     = y,
        title = data.title or "Waypoint",
        icon  = data.icon or nil,
        goal  = data.goal or nil,
        step  = data.step or nil,
    }

    if Waypoint.frame then
        Waypoint.frame.TitleText:SetText(Waypoint.target.title)
        Waypoint.frame.DistanceText:SetText("...")
        Waypoint.frame.ETAText:SetText("")
        Waypoint.frame.lastDist = nil
        Waypoint.frame.speedSamples = {}
        Waypoint.frame.speedIndex = 0
        Waypoint.frame.speedCount = 0

        if self.db.profile.arrow.enabled then
            Waypoint.frame:Show()
        end
    end

    -- Optionally kick off pathfinding via LibRover
    if LibRover and self.db.profile.arrow.pathfinding then
        self:FindTravelPath(Waypoint.target)
    end
end

-----------------------------------------------------------------------
-- Clear the current waypoint
-----------------------------------------------------------------------
function XP:ClearWaypoint()
    Waypoint.target = nil
    if Waypoint.frame then
        Waypoint.frame:Hide()
    end

    -- Abort any active pathfinding
    if LibRover and LibRover.Abort then
        LibRover:Abort("waypoint cleared")
    end
end

-----------------------------------------------------------------------
-- Update waypoint from current guide step
-- Called by Viewer on step change or zone change.
-----------------------------------------------------------------------
function XP:UpdateWaypoint()
    if not self.CurrentGuide then
        self:ClearWaypoint()
        return
    end

    local step = self.CurrentGuide:GetStep(self.CurrentStep)
    if not step then
        self:ClearWaypoint()
        return
    end

    -- Use the Guide object model: Step:GetPrimaryCoords() returns the
    -- coords table from the first goal that has coordinates, or nil.
    local coords = step:GetPrimaryCoords()
    if not coords then
        self:ClearWaypoint()
        return
    end

    -- Coords may be a table { x, y } (array) or { x=.., y=.. } (hash).
    -- Goals also store mapID/zone separately on the goal object.
    local rawX = coords.x or coords[1]
    local rawY = coords.y or coords[2]
    if not rawX or not rawY then
        self:ClearWaypoint()
        return
    end

    -- Try to get mapID from the goal that owns these coords
    local mapID
    for _, goal in ipairs(step.goals) do
        if goal.coords then
            mapID = goal.mapID
            break
        end
    end

    -- Fallback: use HBD player zone
    if not mapID and HBD then
        mapID = HBD:GetPlayerZone()
    end

    if not mapID then
        self:ClearWaypoint()
        return
    end

    -- Convert x, y: guide coords are typically 0-100 percent, normalize to 0-1
    local x = (rawX > 1 and rawX / 100) or rawX
    local y = (rawY > 1 and rawY / 100) or rawY

    self:SetWaypoint(mapID, x, y, {
        title = step:GetTitle() or ("Step " .. (self.CurrentStep or "?")),
    })
end

-----------------------------------------------------------------------
-- FindTravelPath: use LibRover for A-to-B pathfinding
-- This is an advanced feature; basic implementation shown here.
-----------------------------------------------------------------------
function XP:FindTravelPath(waypoint)
    if not LibRover then return end
    if not HBD then return end
    if not waypoint then return end

    local px, py, pMap = HBD:GetPlayerZonePosition()
    if not px or not pMap then return end

    local tMap = waypoint.mapID
    local tX   = waypoint.x
    local tY   = waypoint.y
    if not tMap or not tX or not tY then return end

    -- Convert zone coords to world coords for LibRover
    local pwX, pwY = HBD:GetWorldCoordinatesFromZone(px, py, pMap)
    local twX, twY = HBD:GetWorldCoordinatesFromZone(tX, tY, tMap)
    if not pwX or not twX then return end

    -- LibRover:FindPath(startMap, startX, startY, destMap, destX, destY, handler, extra, force, quiet)
    LibRover:FindPath(pMap, px, py, tMap, tX, tY,
        function(state, path, ext, reason)
            if state == "found" and path then
                -- Path found! We could show route ants on the minimap here.
                -- For now, just let the arrow point directly.
                -- TODO: Implement route visualization (ant trail on map)
            elseif state == "failure" then
                -- No path found; arrow will still point direct
            end
        end,
        nil, -- extradata
        false, -- force_new
        true   -- quiet
    )
end

-----------------------------------------------------------------------
-- Toggle arrow visibility
-----------------------------------------------------------------------
function XP:ToggleArrow()
    if not Waypoint.frame then return end
    if Waypoint.frame:IsShown() then
        Waypoint.frame:Hide()
    else
        if Waypoint.target then
            Waypoint.frame:Show()
        end
    end
end

-----------------------------------------------------------------------
-- Update arrow settings
-----------------------------------------------------------------------
function XP:UpdateArrowSettings()
    if not Waypoint.frame then return end
    Waypoint.frame:SetScale(self.db.profile.arrow.scale or 1.0)

    if not self.db.profile.arrow.enabled then
        Waypoint.frame:Hide()
    elseif Waypoint.target then
        Waypoint.frame:Show()
    end
end
