-- Minimap.lua
-- X-PLORE: Draggable minimap button.
-- Left-click toggles the Viewer frame.
-- Right-click shows a small context menu (Open Guide Menu, Options, Reset Position).
-- Button position is persisted in AceDB profile.minimapPos (angle in degrees).
--
-- Universal: works on WotLK 3.3.5a AND Retail.
-- Does NOT use LibDBIcon so there are no external dependencies beyond !X-Libs.

local MM = {}
XP.Minimap = MM

-- ─────────────────────────────────────────────────────────────────────────────
-- Constants
-- ─────────────────────────────────────────────────────────────────────────────

local BUTTON_SIZE   = 31          -- diameter of the minimap button
local BUTTON_RADIUS = 80          -- orbital radius from minimap centre
local DEFAULT_ANGLE = 45          -- default starting angle (degrees, clockwise from top)
local ICON_PATH     = XP.TEXTURE_PATH .. "minimap_button.tga"

-- ─────────────────────────────────────────────────────────────────────────────
-- Angle ↔ Position helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Returns the minimap frame reference (handles both WotLK and Retail naming).
local function GetMinimapFrame()
    return Minimap or MinimapCluster
end

-- Converts an angle (degrees, 0=top, clockwise) to an x,y offset
-- at BUTTON_RADIUS from the minimap's centre.
local function AngleToPos(angle)
    local rad = math.rad(angle)
    local x = BUTTON_RADIUS * math.cos(rad - math.pi / 2)
    local y = BUTTON_RADIUS * math.sin(rad - math.pi / 2)
    return x, y
end

-- Converts a cursor position relative to the minimap centre back to an angle.
local function PosToAngle(x, y)
    local rad = math.atan2(y, x) + math.pi / 2
    return math.deg(rad) % 360
end

-- Clamp an angle into [0, 360).
local function NormalizeAngle(a)
    return a % 360
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Button placement
-- ─────────────────────────────────────────────────────────────────────────────

function MM:PlaceButton(angle)
    if not self.button then return end
    local x, y = AngleToPos(angle)
    self.button:ClearAllPoints()
    self.button:SetPoint("CENTER", GetMinimapFrame(), "CENTER", x, y)
end

-- Persist the angle and reposition the button.
function MM:SetAngle(angle)
    angle = NormalizeAngle(angle)
    if XP.db and XP.db.profile then
        XP.db.profile.minimapAngle = angle
    end
    MM._angle = angle
    self:PlaceButton(angle)
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Context menu
-- ─────────────────────────────────────────────────────────────────────────────

local function ShowContextMenu(btn)
    -- Build a minimal dropdown-style context menu using UIDropDownMenu if available
    -- (works on WotLK). On Retail the same API still exists for now.
    if not UIDropDownMenu_Initialize then
        -- Fallback: no DropDown API available; just print available actions.
        XP:Print("Right-click menu: /xp menu | /xp options | /xp reset")
        return
    end

    -- Lazily create the DropDown frame
    if not MM._dropDown then
        MM._dropDown = CreateFrame("Frame", "XPlore_MinimapDropDown", UIParent,
            "UIDropDownMenuTemplate")
    end

    UIDropDownMenu_Initialize(MM._dropDown, function(self, level)
        local info = UIDropDownMenu_CreateInfo()

        info.text     = "X-PLORE"
        info.isTitle  = true
        info.notCheckable = true
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Open Guide Menu"
        info.notCheckable = true
        info.func     = function() XP:ToggleMenu() end
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Toggle Guide Viewer"
        info.notCheckable = true
        info.func     = function() XP:ToggleViewer() end
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Options"
        info.notCheckable = true
        info.func     = function()
            XP:ToggleMenu()
            -- Open the options tab in the menu (the menu must be open first)
            if XP.Menu and XP.Menu.ShowOptions then
                XP.Menu:ShowOptions()
            end
        end
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Reset Button Position"
        info.notCheckable = true
        info.func     = function()
            MM:SetAngle(DEFAULT_ANGLE)
        end
        UIDropDownMenu_AddButton(info)
    end, "MENU")

    ToggleDropDownMenu(1, nil, MM._dropDown, "cursor", 3, -3)
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Drag logic
-- ─────────────────────────────────────────────────────────────────────────────

local isDragging = false

local function OnDragStart(btn)
    isDragging = true
    btn:SetScript("OnUpdate", function(self)
        if not IsMouseButtonDown("LeftButton") then
            self:SetScript("OnUpdate", nil)
            isDragging = false
            return
        end

        local mx, my = Minimap:GetCenter()
        local scale  = UIParent:GetEffectiveScale()
        local cx, cy = GetCursorPosition()
        cx = cx / scale
        cy = cy / scale

        local angle = PosToAngle(cx - mx, cy - my)
        MM:SetAngle(angle)
    end)
end

local function OnDragStop(btn)
    isDragging = false
    btn:SetScript("OnUpdate", nil)
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Button creation
-- ─────────────────────────────────────────────────────────────────────────────

function MM:CreateButton()
    if self.button then return end

    local btn = CreateFrame("Button", "XPlore_MinimapButton", GetMinimapFrame())
    btn:SetSize(BUTTON_SIZE, BUTTON_SIZE)
    btn:SetFrameStrata("MEDIUM")
    btn:SetFrameLevel(8)

    -- Circular mask for the icon
    btn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight", "ADD")

    -- Circular mask — clip the icon to the button's round shape
    local mask = btn:CreateTexture(nil, "MASK")
    mask:SetAllPoints()
    mask:SetTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Mask")

    -- Icon texture — fill the button and clip to the circular mask
    local icon = btn:CreateTexture(nil, "BACKGROUND")
    icon:SetAllPoints()
    icon:SetTexCoord(0, 1, 0, 1/4)  -- top quarter of atlas (first of 4 cells)
    icon:SetTexture(ICON_PATH)
    -- AddMaskTexture was introduced in WoW 8.0 (BFA). On WotLK (3.3.5a)
    -- the older SetMaskTexture API exists but accepts only one mask.
    if icon.AddMaskTexture then
        icon:AddMaskTexture(mask)
    elseif icon.SetMaskTexture then
        icon:SetMaskTexture(mask)
    end
    self._icon = icon

    -- Circular border texture (optional cosmetic)
    local border = btn:CreateTexture(nil, "OVERLAY")
    border:SetSize(BUTTON_SIZE + 4, BUTTON_SIZE + 4)
    border:SetPoint("CENTER")
    border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
    self._border = border

    -- Tooltip
    btn:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        GameTooltip:SetText("X-PLORE", 0, 0.9, 1, 1)
        GameTooltip:AddLine("Left-click to toggle viewer", 1, 1, 1)
        GameTooltip:AddLine("Right-click for options", 1, 1, 1)
        GameTooltip:AddLine("Drag to reposition", 1, 1, 1)
        GameTooltip:Show()
    end)
    btn:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    -- Click handlers
    btn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
    btn:SetScript("OnClick", function(self, button)
        if button == "RightButton" then
            ShowContextMenu(self)
        else
            XP:ToggleViewer()
        end
    end)

    -- Drag
    btn:RegisterForDrag("LeftButton")
    btn:SetScript("OnDragStart", OnDragStart)
    btn:SetScript("OnDragStop",  OnDragStop)

    self.button = btn

    -- Place at saved or default angle
    local angle = (XP.db and XP.db.profile and XP.db.profile.minimapAngle) or DEFAULT_ANGLE
    MM._angle = angle
    self:PlaceButton(angle)
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Show / Hide
-- ─────────────────────────────────────────────────────────────────────────────

function MM:Show()
    if self.button then self.button:Show() end
end

function MM:Hide()
    if self.button then self.button:Hide() end
end

function MM:Toggle()
    if self.button then
        if self.button:IsShown() then
            self:Hide()
        else
            self:Show()
        end
    end
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Init (called from Core.lua OnEnable)
-- ─────────────────────────────────────────────────────────────────────────────

function MM:OnEnable()
    self:CreateButton()

    -- Honour the db option to show/hide the minimap button
    local show = true
    if XP.db and XP.db.profile and XP.db.profile.showMinimapButton ~= nil then
        show = XP.db.profile.showMinimapButton
    end

    if show then
        self:Show()
    else
        self:Hide()
    end
end
