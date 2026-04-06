-- X-Plore Waypoint Arrow System
-- High-fidelity navigation with Modern/Classic/Minimal themes

local folder = "Interface\\AddOns\\X-Plore\\textures\\"

XPlore_Waypoints = CreateFrame("Frame", "XPlore_ArrowFrame", UIParent)
local frame = XPlore_Waypoints
frame:SetSize(64, 64)
frame:SetClampedToScreen(true)
frame:SetMovable(true)
frame:EnableMouse(false)
frame:Hide()

-- Layers
local ring = frame:CreateTexture(nil, "BACKGROUND")
ring:SetSize(80, 80)
ring:SetPoint("CENTER")
ring:SetTexture(folder .. "waypoint_ring.tga")
frame.Ring = ring

local arrow = frame:CreateTexture(nil, "OVERLAY")
arrow:SetSize(48, 48)
arrow:SetPoint("CENTER")
arrow:SetTexture(folder .. "waypoint_arrow.tga")
frame.Arrow = arrow

local text = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
text:SetPoint("TOP", frame, "BOTTOM", 0, -5)
text:SetText("0m")
frame.Text = text

frame.Target = { x = 0, y = 0, title = "" }

-- Update functions
function frame:ApplySettings()
    local config = XPlore_Settings.waypointArrow
    if not config then return end
    
    self:ClearAllPoints()
    self:SetPoint(config.point or "TOP", config.x or 0, config.y or -100)
    self:SetScale(config.scale or 1.0)
    self:SetAlpha((config.opacity or 100) / 100)
    
    if config.locked then
        self:EnableMouse(false)
    else
        self:EnableMouse(true)
    end
    
    -- Fonts
    if XPlore.GetFont then
        self.Text:SetFont(XPlore.GetFont("Garamond", 12, "OUTLINE"))
    end
    
    -- Theme Swaps
    if config.theme == "MODERN" then
        self.Ring:Show()
        self.Arrow:SetTexture(folder .. "waypoint_arrow.tga")
        
        -- Apply React Palette
        if XPlore.Colors then
            self.Arrow:SetVertexColor(XPlore.Colors.ActiveCyan.r, XPlore.Colors.ActiveCyan.g, XPlore.Colors.ActiveCyan.b, 1)
            self.Ring:SetVertexColor(XPlore.Colors.ActiveCyan.r, XPlore.Colors.ActiveCyan.g, XPlore.Colors.ActiveCyan.b, 0.4)
            self.Text:SetTextColor(XPlore.Colors.Parchment.r, XPlore.Colors.Parchment.g, XPlore.Colors.Parchment.b)
        end
    elseif config.theme == "CLASSIC" then
        self.Ring:Hide()
        self.Arrow:SetTexture(folder .. "map.tga")
        self.Arrow:SetVertexColor(1, 0.8, 0, 1)
        self.Text:SetTextColor(1, 0.8, 0)
    else -- MINIMAL
        self.Ring:Hide()
        self.Arrow:SetTexture(folder .. "waypoint_arrow.tga")
        self.Arrow:SetVertexColor(1, 1, 1, 0.5)
        self.Text:SetTextColor(1, 1, 1, 0.8)
    end
    
    if config.showDistance then
        self.Text:Show()
    else
        self.Text:Hide()
    end
    
    if config.enabled and self.Target.x ~= 0 then
        self:Show()
    else
        self:Hide()
    end
end

function frame:SetTarget(x, y, title)
    self.Target.x = x
    self.Target.y = y
    self.Target.title = title or ""
    self:ApplySettings()
end

-- Dragging Logic
frame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" and not XPlore_Settings.waypointArrow.locked then
        self:StartMoving()
    end
end)

frame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
        local point, _, _, x, y = self:GetPoint()
        XPlore_Settings.waypointArrow.point = point
        XPlore_Settings.waypointArrow.x = x
        XPlore_Settings.waypointArrow.y = y
    end
end)

-- Main Rotation & Distance Logic
frame.totalElapsed = 0
frame:SetScript("OnUpdate", function(self, elapsed)
    if not self.Target or self.Target.x == 0 then return end
    
    self.totalElapsed = self.totalElapsed + elapsed
    
    -- Pulsing Animation for Ring (Premium Feel)
    if XPlore_Settings.waypointArrow.theme == "MODERN" then
        local pulse = 0.4 + math.sin(self.totalElapsed * 3) * 0.1
        self.Ring:SetAlpha(pulse)
        local scaleDelta = 1.0 + math.sin(self.totalElapsed * 3) * 0.05
        self.Ring:SetSize(80 * scaleDelta, 80 * scaleDelta)
    end

    local px, py = GetPlayerMapPosition("player")
    if px == 0 and py == 0 then return end
    
    px, py = px * 100, py * 100
    
    local dx = self.Target.x - px
    local dy = self.Target.y - py
    
    local dist = math.sqrt(dx*dx + dy*dy) * 100 
    self.Text:SetText(string.format("%dyd", dist))
    
    if dist < 5 then
        self:Hide()
        return
    end
    
    local angle = math.atan2(-dx, dy)
    local facing = GetPlayerFacing()
    
    self:SetRotation(angle - facing)
end)

-- Rotation Helper
function frame:SetRotation(angle)
    local sin, cos = math.sin(angle), math.cos(angle)
    self.Arrow:SetTexCoord(
        0.5-0.5*cos+0.5*sin, 0.5-0.5*sin-0.5*cos,
        0.5+0.5*cos+0.5*sin, 0.5-0.5*sin+0.5*cos,
        0.5-0.5*cos-0.5*sin, 0.5+0.5*sin-0.5*cos,
        0.5+0.5*cos-0.5*sin, 0.5+0.5*sin+0.5*cos
    )
end

-- Hook into options init
if XPlore_MainFrame then
    local oldInit = XPlore_Options and XPlore_Options.Init
    if XPlore_Options then
        XPlore_Options.Init = function(self)
            if oldInit then oldInit(self) end
            XPlore_Waypoints:ApplySettings()
        end
    end
end
