-----------------------------------------------------------------------
-- X-Plore: Waypoints.lua
-- Waypoint arrow system: shows a directional arrow pointing toward
-- the current step's coordinates.
-- Uses HereBeDragons-2.0 (from !X-Libs) for player position,
-- and HereBeDragons-Pins-2.0 for minimap pins.
--
-- Architecture:
--   XP:CreateWaypointArrow()  - builds the arrow frame
--   XP:SetWaypoint(m, x, y, data)  - set a target waypoint
--   XP:ClearWaypoint()            - remove the arrow target
--   XP:UpdateWaypoint()           - called from step changes / zone changes
--   XP:CycleWaypoint(delta)       - cycle through waypoints
--   XP:AddMinimapDot()           - add minimap pin
--   XP:RemoveMinimapDots()      - remove all minimap pins
--   OnUpdate handler              - rotates arrow and updates distance
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Library references
-----------------------------------------------------------------------
local HBD = LibStub and LibStub("HereBeDragons-2.0", true)
local HBDPins = LibStub and LibStub("HereBeDragons-Pins-2.0", true)
local LibRover = LibStub and LibStub("LibRover-1.0", true)

-----------------------------------------------------------------------
-- Local state
-----------------------------------------------------------------------
local Waypoint = XP.Waypoint    -- table from Init.lua
local PI2 = math.pi * 2
local ARROW_UPDATE_INTERVAL = 0.05  -- 20fps updates
local ARRIVAL_RADIUS = 8           -- yards, same as Zygor's WAYPOINT_RADIUS_GUIDE_GROUND
local SMOOTH_FACTOR = 20            -- angle lerp speed (higher = snappier)

-- Current waypoints (multi-waypoint support)
Waypoint.waypoints = {}     -- { { mapID, x, y, title, icon, goal, step, type }, ... }
Waypoint.currentIndex = 1    -- current waypoint index
Waypoint.frame = nil        -- the arrow frame
Waypoint.minimapDots = {}   -- minimap pin frames

-- Ant trail dots
Waypoint.antDots = {}       -- ant trail dot frames
Waypoint.antSpacing = 40    -- yards between ant dots

-- Ant trail straight-line texture (single WorldLineSprite)
Waypoint.antLine = nil

---------------------------------------------------------------------------------------------------------------------------------------
-- Audio cue state (Zygor parity)
---------------------------------------------------------------------------------------------------------------------------------------
local lastplayerangle
local lastturntime = 0
local laststoptime = 0
local lastmovetime = 0
local lastbeeptime = 0
local cuedinged = false
local lastbeepingdist = -1  -- track distance at last beep to avoid rapid re-beeps

---------------------------------------------------------------------------------------------------------------------------------------
-- ETA calculation state (Zygor parity)
---------------------------------------------------------------------------------------------------------------------------------------
local etacalc_elapsed = 0
local last_eta = 0
local ETA_CALC_INTERVAL = 0.9  -- only recalculate every ~0.9s

-----------------------------------------------------------------------
-- Arrow texture (64-direction sprite approach)
-----------------------------------------------------------------------
local NUM_DIRECTIONS = 64

-----------------------------------------------------------------------
-- Helper: normalize angle to [0, 2PI)
-----------------------------------------------------------------------
local function NormalizeAngle(angle)
    angle = angle % PI2
    if angle < 0 then angle = angle + PI2 end
    return angle
end

-----------------------------------------------------------------------
-- Helper: calculate distance between two world points (yards)
-----------------------------------------------------------------------
local function WorldDistance(x1, y1, x2, y2)
    if not x1 or not y1 or not x2 or not y2 then return 999999 end
    local dx = x2 - x1
    local dy = y2 - y1
    return math.sqrt(dx * dx + dy * dy)
end

-----------------------------------------------------------------------
-- Helper: format distance for display
-----------------------------------------------------------------------
local function FormatDistance(dist)
    if not dist or dist >= 999999 then
        return "---"
    elseif dist >= 1000 then
        return string.format("%.1fk yds", dist / 1000)
    else
        return string.format("%d yds", math.floor(dist + 0.5))
    end
end

-----------------------------------------------------------------------
-- Helper: format ETA
-----------------------------------------------------------------------
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
    if not (self.db and self.db.profile and self.db.profile.arrow and self.db.profile.arrow.enabled) then return end

    local size = 56
    local scale = (self.db.profile.arrow and self.db.profile.arrow.scale) or 1.0

    -- Main arrow frame
    local frame = XP.CreateBackdropFrame("Button", "XPlore_WaypointArrow", UIParent)
    frame:SetSize(size + 40, size + 60)
    frame:SetPoint("TOP", UIParent, "TOP", 0, -100)
    frame:SetMovable(true)
    frame:SetClampedToScreen(true)
    frame:SetFrameStrata("HIGH")
    frame:SetFrameLevel(100)
    frame:EnableMouse(true)
    frame:RegisterForDrag("LeftButton")
    frame:RegisterForMouseWheel(true)
    frame:SetScale(scale)
    frame:Hide()

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

    -- Mousewheel zoom (same as Zygor: Ctrl+scroll to adjust arrow scale)
    frame:SetScript("OnMouseWheel", function(self_frame, delta)
        if IsControlKeyDown() then
            local newScale = (XP.db.profile.arrow.scale or 1.0) + (delta > 0 and 0.05 or -0.05)
            newScale = max(0.5, min(2.0, newScale))
            XP.db.profile.arrow.scale = newScale
            self_frame:SetScale(newScale)
        end
    end)

    -- Arrow texture
    local arrow = frame:CreateTexture(nil, "ARTWORK")
    arrow:SetSize(size, size)
    arrow:SetPoint("TOP", frame, "TOP", 0, -6)
    local arrowPath = XP.TEXTURE_PATH .. "XPArrow.tga"
    arrow:SetTexture(arrowPath)
    frame.Arrow = arrow

    frame.arrowAngle = 0
    frame.smoothAngle = 0

    -- Title text
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

    -- Waypoint count text (e.g., "2/5")
    local count = frame:CreateFontString(nil, "OVERLAY")
    count:SetPoint("TOP", eta, "BOTTOM", 0, -1)
    count:SetWidth(size + 36)
    count:SetJustifyH("CENTER")
    self:ApplyFont(count, "small", "text_dim")
    count:SetText("")
    frame.WaypointCount = count

    -- Speed tracking
    frame.elapsed = 0
    frame.lastDist = nil
    frame.speedSamples = {}
    frame.speedIndex = 0
    frame.speedCount = 0

    -- Click handler: cycle waypoint or dismiss
    frame:SetScript("OnClick", function(self_frame, button)
        if button == "LeftButton" then
            -- Cycle to next waypoint
            XP:CycleWaypoint(1)
        elseif button == "RightButton" then
            XP:ClearWaypoint()
        end
    end)
    frame:RegisterForClicks("LeftButtonUp", "RightButtonUp")

    -- OnUpdate
    frame:SetScript("OnUpdate", function(self_frame, elapsed)
        -- Accumulate real elapsed time for ETA calculation
        self_frame._accumElapsed = (self_frame._accumElapsed or 0) + elapsed
        self_frame.elapsed = self_frame._accumElapsed  -- use real elapsed for throttle
        if self_frame.elapsed < ARROW_UPDATE_INTERVAL then return end
        self_frame._accumElapsed = 0

        local wp = Waypoint.waypoints[Waypoint.currentIndex]
        if not wp then
            self_frame:Hide()
            return
        end

        -- Combat lockdown: hide arrow during combat if secure
        local inCombat = InCombatLockdown()
        if inCombat then
            self_frame:Hide()
            return
        end

        local playerX, playerY, playerMapID
        if HBD then
            playerX, playerY, playerMapID = HBD:GetPlayerZonePosition()
        end

        if not playerX or not playerY or not playerMapID then
            self_frame.DistanceText:SetText("?")
            self_frame.ETAText:SetText("")
            self_frame:Show()
            return
        end

        -- Get target position
        local tX, tY = wp.x, wp.y
        local tMap = wp.mapID

        local dist
        if tMap and tX and tY then
            if tMap == playerMapID then
                -- Same map: use zone coordinates
                local dx = tX - playerX
                local dy = tY - playerY
                dist = math.sqrt(dx * dx + dy * dy) * 100  -- rough yard conversion
            elseif HBD then
                -- Cross-map: use world coordinates
                local pwX, pwY = HBD:GetWorldCoordinatesFromZone(playerX, playerY, playerMapID)
                local twX, twY = HBD:GetWorldCoordinatesFromZone(tX, tY, tMap)
                if pwX and twX then
                    dist = WorldDistance(pwX, pwY, twX, twY)
                end
            end
        end

        if dist then
            self_frame.DistanceText:SetText(FormatDistance(dist))

            local speed = XP:CalculateSpeed(self_frame, dist)
            if speed and speed > 0.5 then
                local eta = XP:CalculateETA(speed, dist)
                if eta > 0 then
                    self_frame.ETAText:SetText(FormatETA(math.floor(eta)))
                else
                    self_frame.ETAText:SetText("")
                end
            else
                self_frame.ETAText:SetText("")
            end

            -- Audio cues (Zygor parity: flying + beelining + wrong direction)
            if self_frame.arrow:IsVisible() and IsFlying and IsFlying() then
                local playerangle
                if playerMapID == tMap then
                    local dx = tX - playerX
                    local dy = tY - playerY
                    playerangle = math.atan2(-dx, dy)
                else
                    playerangle = nil
                end
                if playerangle then
                    XP:DoAudioCues(self_frame, playerangle, dist)
                end
            end
        else
            self_frame.DistanceText:SetText("---")
            self_frame.ETAText:SetText("")
        end

        -- Calculate arrow angle
        local targetangle
        if tMap and tX and tY and playerMapID then
            if tMap == playerMapID then
                -- Same map: use zone coordinates
                -- atan2(-dx, dy) gives angle where 0=North, increases CW (WoW compass convention)
                local dx = tX - playerX
                local dy = tY - playerY
                local playerFacing = GetPlayerFacing and GetPlayerFacing() or 0
                targetangle = NormalizeAngle(math.atan2(-dx, dy) - playerFacing)
            elseif HBD then
                -- Cross-map: convert both points to world coordinates then compute angle
                local pwX, pwY = HBD:GetWorldCoordinatesFromZone(playerX, playerY, playerMapID)
                local twX, twY = HBD:GetWorldCoordinatesFromZone(tX, tY, tMap)
                if pwX and twX then
                    local dx = twX - pwX
                    local dy = twY - pwY
                    local playerFacing = GetPlayerFacing and GetPlayerFacing() or 0
                    targetangle = NormalizeAngle(math.atan2(-dx, dy) - playerFacing)
                end
            end

            if targetangle then
                -- Smooth angle lerp (same approach as Zygor)
                local diff = targetangle - self_frame.smoothAngle
                while diff > 3.14159 do diff = diff - 6.28319 end
                while diff < -3.14159 do diff = diff + 6.28319 end
                self_frame.smoothAngle = self_frame.smoothAngle + diff / (1 + self_frame.elapsed * SMOOTH_FACTOR)
                self_frame.smoothAngle = NormalizeAngle(self_frame.smoothAngle)
                self_frame.arrowAngle = self_frame.smoothAngle

                if self_frame.Arrow then
                    if self_frame.Arrow.SetRotation then
                        self_frame.Arrow:SetRotation(self_frame.arrowAngle)
                    else
                        XP:SetArrowTexCoordsByAngle(self_frame.Arrow, self_frame.arrowAngle)
                    end
                end
            end
        end

        -- Update waypoint count
        local count = #Waypoint.waypoints
        if count > 1 then
            self_frame.WaypointCount:SetText(Waypoint.currentIndex .. "/" .. count)
        else
            self_frame.WaypointCount:SetText("")
        end

        -- Arrival detection — advance to next waypoint (uses real accumulated elapsed)
        if dist and dist < ARRIVAL_RADIUS then
            self_frame.DistanceText:SetTextColor(XP:ColorRGBA("green"))
            self_frame.TitleText:SetTextColor(XP:ColorRGBA("green"))

            -- Auto-advance to next waypoint after a short delay
            if not self_frame.arrivedTimer then
                self_frame.arrivedTimer = 0
            end
            self_frame.arrivedTimer = self_frame.arrivedTimer + self_frame.elapsed

            if self_frame.arrivedTimer > 1.0 and #Waypoint.waypoints > 1 then
                -- Advance to next waypoint
                self_frame.arrivedTimer = nil
                XP:CycleWaypoint(1)
            end
        else
            self_frame.arrivedTimer = nil
            self_frame.DistanceText:SetTextColor(XP:ColorRGBA("cyan"))
            self_frame.TitleText:SetTextColor(XP:ColorRGBA("text_bright"))
        end

        -- Warning timer decay: reset arrow color after flash
        if self_frame._warningActive then
            self_frame._warningTimer = (self_frame._warningTimer or 0) - self_frame.elapsed
            if self_frame._warningTimer <= 0 then
                self_frame._warningActive = false
                self_frame._warningTimer = nil
                if self_frame.Arrow then
                    self_frame.Arrow:SetVertexColor(1, 1, 1)  -- restore normal color
                end
            end
        end

        -- Ant trail: update straight-line ant texture
        XP:UpdateAntLine(playerX, playerY, playerMapID, tX, tY, tMap)

        self_frame:Show()
    end)

    Waypoint.frame = frame
end

---------------------------------------------------------------------------------------------------------------------------------------
-- Speed calculation (rolling average) — Zygor parity
-- Uses real accumulated elapsed time, not the fixed throttle interval.
-- Guards against negative speed (e.g. rounding back up on a path) and
-- falling back to BASE_MOVEMENT_SPEED when stationary.
---------------------------------------------------------------------------------------------------------------------------------------
local SPEED_SAMPLES = 10
local BASE_MOVEMENT_SPEED = BASE_MOVEMENT_SPEED or 7.0  -- ~7 yds/sec for normal ground walk

function XP:CalculateSpeed(frame, dist)
    if not frame.lastDist then
        frame.lastDist = dist
        return nil
    end

    local delta = frame.lastDist - dist
    frame.lastDist = dist

    -- Guard: negative or zero delta with zero elapsed = stationary
    local elapsed = frame.elapsed
    if elapsed <= 0 then return nil end

    local speed = delta / elapsed

    -- If delta is negative (player got closer somehow due to rounding or teleport),
    -- do not feed it into the average; use a fallback.
    if speed < 0 then
        -- Use last known positive speed or a small fallback
        if frame.lastPositiveSpeed then
            speed = frame.lastPositiveSpeed
        else
            local unitSpeed = GetUnitSpeed and GetUnitSpeed("player") or 0
            speed = (unitSpeed > 0) and unitSpeed or BASE_MOVEMENT_SPEED
        end
    else
        frame.lastPositiveSpeed = speed
    end

    frame.speedIndex = (frame.speedIndex % SPEED_SAMPLES) + 1
    frame.speedSamples[frame.speedIndex] = speed
    frame.speedCount = math.min(frame.speedCount + 1, SPEED_SAMPLES)

    local total = 0
    for i = 1, frame.speedCount do
        total = total + (frame.speedSamples[i] or 0)
    end

    return total / frame.speedCount
end

---------------------------------------------------------------------------------------------------------------------------------------
-- ETA calculation (Zygor parity)
-- Uses rolling average of speed samples and recalculates every ~0.9s.
-- Returns 0 if ETA cannot be meaningfully estimated.
---------------------------------------------------------------------------------------------------------------------------------------
function XP:CalculateETA(speed, dist)
    etacalc_elapsed = etacalc_elapsed + (Waypoint.frame and Waypoint.frame.elapsed or 0)
    if etacalc_elapsed < ETA_CALC_INTERVAL then
        return last_eta
    end

    local avg = speed or 0
    -- Rolling average of recent speed samples from the frame
    if Waypoint.frame and Waypoint.frame.speedCount and Waypoint.frame.speedCount > 0 then
        local total = 0
        for i = 1, Waypoint.frame.speedCount do
            total = total + (Waypoint.frame.speedSamples[i] or 0)
        end
        avg = total / Waypoint.frame.speedCount
    end

    if avg <= 0 then
        last_eta = 0
        etacalc_elapsed = 0
        return 0
    end

    last_eta = dist / avg
    etacalc_elapsed = 0
    return last_eta
end

---------------------------------------------------------------------------------------------------------------------------------------
-- Audio cues (Zygor parity)
-- Conditions:
--   - Player is flying (IsFlying)
--   - Player is beelining: started moving <1s ago, stopped >3s ago, turned >5s ago
--   - Dist <= 100 yards → ding once
--   - Heading off-course (targetangle far from forward): warning beep every 2s
---------------------------------------------------------------------------------------------------------------------------------------
function XP:DoAudioCues(frame, playerangle, dist)
    local t = GetTime()
    if lastplayerangle ~= playerangle then lastturntime = t end
    if GetUnitSpeed and GetUnitSpeed("player") == 0 then laststoptime = t else lastmovetime = t end

    -- Flying + beelining check (started moving within 1s, been stopped >3s, haven't turned >5s)
    if t - lastmovetime <= 1 and t - laststoptime > 3 and t - lastturntime > 5 then
        -- Ding at arrival radius
        if dist <= 100 and not cuedinged then
            PlaySoundFile("Sound\\Doodad\\BoatDockedWarning.wav", "Master")
            cuedinged = true
        end

        -- Warning beeps when facing wrong direction
        if frame.arrow:IsVisible() then
            -- targetangle is the normalized angle we calculated earlier
            local targetangle = frame.arrowAngle or 0
            -- Normalize diff between target and current heading
            local diff = targetangle - playerangle
            while diff > math.pi  do diff = diff - 2 * math.pi end
            while diff < -math.pi do diff = diff + 2 * math.pi end
            local perc = math.abs(diff) / math.pi  -- 0 = aligned, 1 = opposite

            if perc <= 0.9 and t - lastbeeptime > 2 and dist > 100 then
                -- Only beep if we haven't just beeped at nearly the same distance
                if dist < lastbeepingdist - 20 or lastbeepingdist < 0 then
                    PlaySoundFile("Sound\\Interface\\RaidWarning.ogg", "Master")
                    if frame.ShowWarning then frame:ShowWarning() end
                    lastbeeptime = t
                    lastbeepingdist = dist
                end
            end
        end
    end

    -- Reset ding flag when moving toward the waypoint (distance increased or changed significantly)
    if cuedinged and dist > 110 then
        cuedinged = false
    end

    lastplayerangle = playerangle
end

---------------------------------------------------------------------------------------------------------------------------------------
-- ShowWarning: flash the arrow red briefly (Zygor parity)
-- Called when player is flying but heading is significantly off-course.
---------------------------------------------------------------------------------------------------------------------------------------
function XP:ShowWarning()
    local frame = Waypoint and Waypoint.frame
    if not frame then return end

    local arrow = frame.Arrow
    if not arrow then return end

    -- Flash red by tinting the arrow texture
    arrow:SetVertexColor(1.0, 0.3, 0.3)
    frame._warningTimer = 0.5  -- seconds to show red
    frame._warningActive = true
end

-----------------------------------------------------------------------
-- Tex coord rotation fallback
-----------------------------------------------------------------------
function XP:SetArrowTexCoordsByAngle(tex, angle)
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
-- Add a waypoint to the queue
-----------------------------------------------------------------------
function XP:AddWaypoint(mapID, x, y, data)
    data = data or {}
    
    local wp = {
        mapID = mapID,
        x = x,
        y = y,
        title = data.title or "Waypoint",
        icon = data.icon or nil,
        goal = data.goal or nil,
        step = data.step or nil,
        type = data.type or "normal",  -- "normal", "corpse", "taxi", "manual"
    }

    table.insert(Waypoint.waypoints, wp)

    -- If this is the first waypoint, show arrow
    if #Waypoint.waypoints == 1 then
        Waypoint.currentIndex = 1
        self:RefreshWaypointArrow()
        self:RefreshMinimapDots()
    end

    return wp
end

-----------------------------------------------------------------------
-- Clear all waypoints
-----------------------------------------------------------------------
function XP:ClearWaypoints()
    Waypoint.waypoints = {}
    Waypoint.currentIndex = 1

    if Waypoint.frame then
        Waypoint.frame:Hide()
    end

    self:RemoveMinimapDots()
    self:RemoveAntDots()
    self:HideAntLine()
end

-----------------------------------------------------------------------
-- Alias for backward compatibility
-----------------------------------------------------------------------
function XP:ClearWaypoint()
    self:ClearWaypoints()
end

-----------------------------------------------------------------------
-- Cycle through waypoints
-----------------------------------------------------------------------
function XP:CycleWaypoint(delta)
    if #Waypoint.waypoints <= 1 then return end
    
    delta = delta or 1
    Waypoint.currentIndex = Waypoint.currentIndex + delta
    
    -- Wrap around
    if Waypoint.currentIndex > #Waypoint.waypoints then
        Waypoint.currentIndex = 1
    elseif Waypoint.currentIndex < 1 then
        Waypoint.currentIndex = #Waypoint.waypoints
    end
    
    self:RefreshWaypointArrow()
    self:RefreshMinimapDots()
end

-----------------------------------------------------------------------
-- Refresh arrow display for current waypoint
-----------------------------------------------------------------------
function XP:RefreshWaypointArrow()
    local wp = Waypoint.waypoints[Waypoint.currentIndex]
    if not wp then
        if Waypoint.frame then
            Waypoint.frame:Hide()
        end
        return
    end

    if not Waypoint.frame then
        self:CreateWaypointArrow()
    end

    if Waypoint.frame then
        Waypoint.frame.TitleText:SetText(wp.title or "Waypoint")
        Waypoint.frame.DistanceText:SetText("...")
        Waypoint.frame.ETAText:SetText("")
        Waypoint.frame.lastDist = nil
        Waypoint.frame.speedSamples = {}
        Waypoint.frame.speedIndex = 0
        Waypoint.frame.speedCount = 0

        if self.db and self.db.profile and self.db.profile.arrow and self.db.profile.arrow.enabled then
            Waypoint.frame:Show()
        end
    end
end

-----------------------------------------------------------------------
-- Set waypoint (single, clears existing)
-----------------------------------------------------------------------
function XP:SetWaypoint(mapID, x, y, data)
    self:ClearWaypoints()
    return self:AddWaypoint(mapID, x, y, data)
end

-----------------------------------------------------------------------
-- Update waypoint from current guide step
-----------------------------------------------------------------------
function XP:UpdateWaypoint()
    if not self.CurrentGuide then
        self:ClearWaypoints()
        return
    end

    local step = self.CurrentGuide:GetStep(self.CurrentStep)
    if not step then
        self:ClearWaypoints()
        return
    end

    -- Get all goals with coordinates from current step
    local goalsWithCoords = {}
    if step.goals then
        for _, goal in ipairs(step.goals) do
            if goal.coords and (goal.x or goal.coords[1]) and (goal.y or goal.coords[2]) then
                table.insert(goalsWithCoords, goal)
            end
        end
    end

    if #goalsWithCoords == 0 then
        self:ClearWaypoints()
        return
    end

    -- Clear existing and add all waypoints from this step
    self:ClearWaypoints()

    local mapID
    for i, goal in ipairs(goalsWithCoords) do
        -- Try to get mapID from goal
        mapID = goal.mapID or goal.mapName
        
        -- Fallback to player zone
        if not mapID and HBD then
            mapID = HBD:GetPlayerZone()
        end

        local rawX = goal.coords.x or goal.coords[1]
        local rawY = goal.coords.y or goal.coords[2]
        
        -- Normalize coordinates
        local x = (rawX > 1 and rawX / 100) or rawX
        local y = (rawY > 1 and rawY / 100) or rawY

        if mapID and x and y then
            self:AddWaypoint(mapID, x, y, {
                title = goal.text or ("Goal " .. i),
                goal = goal,
                step = step,
            })
        end
    end

    -- Show arrow for first waypoint
    if #Waypoint.waypoints > 0 then
        Waypoint.currentIndex = 1
        self:RefreshWaypointArrow()
        self:RefreshMinimapDots()
    end
end

-----------------------------------------------------------------------
-- Minimap dot management
-----------------------------------------------------------------------
function XP:AddMinimapDot(mapID, x, y, data)
    if not HBDPins then return end
    
    data = data or {}
    
    -- Create the dot frame
    local dot = CreateFrame("Frame", nil, Minimap)
    dot:SetSize(12, 12)
    
    local tex = dot:CreateTexture(nil, "OVERLAY")
    tex:SetAllPoints()
    tex:SetTexture(XP.TEXTURE_PATH .. "minimap_dot.tga")
    if not tex:GetTexture() then
        -- Fallback to a simple colored circle
        tex:SetTexture(0, 1, 0, 1)  -- green dot
    end
    dot.Texture = tex

    -- Convert to world coordinates for HBDPins
    if mapID and x and y then
        local wX, wY, instanceID = HBD:GetWorldCoordinatesFromZone(x, y, mapID)
        if wX then
            HBDPins:AddMinimapIconWorld(Waypoint, dot, instanceID, wX, wY, true)
        end
    end

    dot.mapID = mapID
    dot.x = x
    dot.y = y
    
    table.insert(Waypoint.minimapDots, dot)
    
    return dot
end

function XP:RemoveMinimapDots()
    if not HBDPins then return end
    
    for _, dot in ipairs(Waypoint.minimapDots) do
        HBDPins:RemoveMinimapIcon(Waypoint, dot)
        dot:Hide()
        dot:SetParent(nil)
    end
    
    Waypoint.minimapDots = {}
end

function XP:RefreshMinimapDots()
    self:RemoveMinimapDots()
    
    -- Add dots for all waypoints
    for i, wp in ipairs(Waypoint.waypoints) do
        -- Highlight current waypoint differently
        local dot = self:AddMinimapDot(wp.mapID, wp.x, wp.y, {
            isCurrent = (i == Waypoint.currentIndex),
        })
        
        if dot and i == Waypoint.currentIndex then
            -- Make current waypoint larger/different color
            dot:SetSize(16, 16)
        end
    end
end

---------------------------------------------------------------------------------------------------------------------------------------
-- Ant trail straight-line texture (single WorldLineSprite, WoW 3.3.5+ compatible)
-- Replaces the dot-based ant trail with a single textured line drawn from
-- player to waypoint. Uses AnimHead救护 or SetTexCoord for direction.
---------------------------------------------------------------------------------------------------------------------------------------

-- Texture used for the ant line; 1px wide yellow-orange gradient stripe
local ANT_LINE_TEXTURE_PATH = "Interface\\AddOns\\!X-Libs\\media\\antline"

function XP:UpdateAntLine(fromX, fromY, fromMap, toX, toY, toMap)
    -- Guard: need HBD for coordinate conversion and HBDPins for world line sprite
    if not HBD or not HBDPins then return end

    -- Hide if no active waypoint or no position
    if not fromX or not toX or not Waypoint.waypoints[Waypoint.currentIndex] then
        XP:HideAntLine()
        return
    end

    -- Convert to world coordinates
    local pwX, pwY = HBD:GetWorldCoordinatesFromZone(fromX, fromY, fromMap)
    local twX, twY = HBD:GetWorldCoordinatesFromZone(toX, toY, toMap)
    if not pwX or not twX then
        XP:HideAntLine()
        return
    end

    -- Calculate line length and angle
    local dx = twX - pwX
    local dy = twY - pwY
    local length = math.sqrt(dx * dx + dy * dy)
    local angle = math.atan2(-dx, dy)  -- 0=North, increases CW

    -- Hide if waypoint is too close or too far
    if length < 5 or length > 50000 then
        XP:HideAntLine()
        return
    end

    -- Create or reuse the single ant line frame
    if not Waypoint.antLine then
        local line = CreateFrame("Frame", nil, Minimap)
        line:SetSize(1, 1)
        line:SetFrameLevel(5)

        local tex = line:CreateTexture(nil, "OVERLAY")
        tex:SetAllPoints()
        -- Use a repeating yellow-orange gradient stripe as the ant texture
        tex:SetTexture(0.4, 0.8, 0.1, 0.7)  -- bright yellow-green
        tex:SetVertexColor(1.0, 0.85, 0.1, 0.8)
        line.Texture = tex

        Waypoint.antLine = line
    end

    local line = Waypoint.antLine

    -- Use WorldLineSprite if available (modern WoW), otherwise hide (dot fallback)
    if line.SetWorldLine then
        line:SetWorldLine(length, angle, pwX, pwY, 0)
        line:Show()
    else
        -- Fallback: hide the line; individual ant dots remain functional
        line:Hide()
    end
end

function XP:HideAntLine()
    if Waypoint.antLine then
        Waypoint.antLine:Hide()
    end
end

---------------------------------------------------------------------------------------------------------------------------------------
-- Ant trail dots (original dot-based approach, kept as fallback)
---------------------------------------------------------------------------------------------------------------------------------------
function XP:AddAntDots(fromX, fromY, fromMap, toX, toY, toMap)
    if not HBD then return end

    self:RemoveAntDots()
    self:HideAntLine()  -- hide straight-line, show dots

    -- Convert to world coordinates
    local pwX, pwY = HBD:GetWorldCoordinatesFromZone(fromX, fromY, fromMap)
    local twX, twY = HBD:GetWorldCoordinatesFromZone(toX, toY, toMap)

    if not pwX or not twX then return end

    -- Calculate distance and number of dots
    local dist = WorldDistance(pwX, pwY, twX, twY)
    local spacing = Waypoint.antSpacing or 40
    local numDots = math.floor(dist / spacing)

    if numDots > 50 then numDots = 50 end

    for i = 1, numDots do
        local t = i / (numDots + 1)
        local ax = pwX + (twX - pwX) * t
        local ay = pwY + (twY - pwY) * t

        -- Create ant dot
        local ant = CreateFrame("Frame", nil, Minimap)
        ant:SetSize(4, 4)

        local tex = ant:CreateTexture(nil, "OVERLAY")
        tex:SetAllPoints()
        tex:SetTexture(1, 1, 0, 0.7)  -- yellow ant
        ant.Texture = tex

        HBDPins:AddMinimapIconWorld(Waypoint, ant, pwX > 0 and 0 or 946, ax, ay, true)

        table.insert(Waypoint.antDots, ant)
    end
end

function XP:RemoveAntDots()
    if not HBDPins then return end

    for _, ant in ipairs(Waypoint.antDots) do
        HBDPins:RemoveMinimapIcon(Waypoint, ant)
        ant:Hide()
        ant:SetParent(nil)
    end

    Waypoint.antDots = {}
end

-----------------------------------------------------------------------
-- Corpse arrow support
-----------------------------------------------------------------------
function XP:ShowCorpseArrow()
    local corpseX, corpseY = GetCorpsePosition()
    if not corpseX or not corpseY then return end
    
    local mapID = HBD and HBD:GetPlayerZone() or 0
    
    self:AddWaypoint(mapID, corpseX, corpseY, {
        title = "Corpse",
        type = "corpse",
    })
end

-----------------------------------------------------------------------
-- Toggle arrow visibility
-----------------------------------------------------------------------
function XP:ToggleArrow()
    if not Waypoint.frame then return end
    if Waypoint.frame:IsShown() then
        Waypoint.frame:Hide()
    else
        if #Waypoint.waypoints > 0 then
            Waypoint.frame:Show()
        end
    end
end

-----------------------------------------------------------------------
-- Update arrow settings
-----------------------------------------------------------------------
function XP:UpdateArrowSettings()
    if not Waypoint.frame then return end
    local frame = Waypoint.frame
    local p = self.db.profile
    local arrow = p.arrow or {}

    -- Apply scale
    frame:SetScale(arrow.scale or 1.0)

    -- Apply fontScale to distance and ETA text if fontScale is defined
    if arrow.fontScale then
        if frame.DistanceText then
            local fontPath, _, flags = frame.DistanceText:GetFont()
            if fontPath then
                local baseSize = 12
                frame.DistanceText:SetFont(fontPath, baseSize * arrow.fontScale, flags)
            end
        end
        if frame.ETAText then
            local fontPath, _, flags = frame.ETAText:GetFont()
            if fontPath then
                local baseSize = 10
                frame.ETAText:SetFont(fontPath, baseSize * arrow.fontScale, flags)
            end
        end
    end

    -- Apply text display settings
    if frame.TitleText then
        if arrow.showZone ~= nil then
            -- TitleText visibility is controlled by zone display; hide if not showing zone
        end
    end

    -- Store options on the waypoint for OnUpdate to reference
    Waypoint.options = Waypoint.options or {}
    Waypoint.options.showDistance = arrow.showDistance
    Waypoint.options.showETA = arrow.showETA
    Waypoint.options.showIcon = arrow.showIcon
    Waypoint.options.blinkNear = arrow.blinkNear
    Waypoint.options.soundOnArrival = arrow.soundOnArrival
    Waypoint.options.soundTurn = arrow.soundTurn
    Waypoint.options.showAntTrail = arrow.showAntTrail
    Waypoint.options.solidTrail = arrow.solidTrail
    Waypoint.options.colorDist = arrow.colorDist
    Waypoint.options.metricUnits = arrow.metricUnits
    Waypoint.options.fontScale = arrow.fontScale
    Waypoint.options.clickToSet = arrow.clickToSet

    -- Apply clickToSet (set click script on arrow frame)
    if arrow.clickToSet then
        frame:SetScript("OnClick", function(self_frame, button)
            if button == "LeftButton" then
                -- Cycle to next waypoint
                XP:CycleWaypoint(1)
            elseif button == "RightButton" then
                XP:ClearWaypoint()
            end
        end)
    end

    -- Apply enabled/disabled
    if not arrow.enabled then
        frame:Hide()
    elseif #Waypoint.waypoints > 0 then
        frame:Show()
    end
end

----------------------------------------------------------------------

-----------------------------------------------------------------------
-- Get current waypoint count
-----------------------------------------------------------------------
function XP:GetWaypointCount()
    return #Waypoint.waypoints
end

-----------------------------------------------------------------------
-- Get current waypoint index
-----------------------------------------------------------------------
function XP:GetCurrentWaypointIndex()
    return Waypoint.currentIndex
end
