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
local ICON_PATH     = XP.TEXTURE_PATH .. "XPIcon.tga"

-- ─────────────────────────────────────────────────────────────────────────────
-- Angle ↔ Position helpers
-- ─────────────────────────────────────────────────────────────────────────────

-- Returns the minimap frame reference (handles both WotLK and Retail naming).
-- DEBUG: ENTER GetMinimapFrame()
local function GetMinimapFrame()
    return Minimap or MinimapCluster
-- DEBUG: EXIT GetMinimapFrame()
end

-- Converts an angle (degrees, 0=top, clockwise) to an x,y offset
-- at BUTTON_RADIUS from the minimap's centre.
-- DEBUG: ENTER AngleToPos()
-- DEBUG: PARAM angle = [angle]
local function AngleToPos(angle)
    local rad = math.rad(angle)
    local x = BUTTON_RADIUS * math.cos(rad - math.pi / 2)
    local y = BUTTON_RADIUS * math.sin(rad - math.pi / 2)
    return x, y
-- DEBUG: EXIT AngleToPos()
end

-- Converts a cursor position relative to the minimap centre back to an angle.
-- DEBUG: ENTER PosToAngle()
-- DEBUG: PARAM x = [x]
-- DEBUG: PARAM y = [y]
local function PosToAngle(x, y)
    local rad = math.atan2(y, x) + math.pi / 2
    return math.deg(rad) % 360
-- DEBUG: EXIT PosToAngle()
end

-- Clamp an angle into [0, 360).
-- DEBUG: ENTER NormalizeAngle()
-- DEBUG: PARAM a = [a]
local function NormalizeAngle(a)
    return a % 360
-- DEBUG: EXIT NormalizeAngle()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Button placement
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER MM:PlaceButton()
-- DEBUG: PARAM angle = [angle]
function MM:PlaceButton(angle)
    if not self.button then return end
    local x, y = AngleToPos(angle)
    self.button:ClearAllPoints()
    self.button:SetPoint("CENTER", GetMinimapFrame(), "CENTER", x, y)
-- DEBUG: EXIT MM:PlaceButton()
end

-- Persist the angle and reposition the button.
-- DEBUG: ENTER MM:SetAngle()
-- DEBUG: PARAM angle = [angle]
function MM:SetAngle(angle)
    angle = NormalizeAngle(angle)
    if XP.db and XP.db.profile then
        XP.db.profile.minimapAngle = angle
    end
    MM._angle = angle
    self:PlaceButton(angle)
-- DEBUG: EXIT MM:SetAngle()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Context menu
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER ShowContextMenu()
-- DEBUG: PARAM btn = [btn]
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
        -- DEBUG: ENTER func()
        info.func     = function() XP:ToggleMenu() end
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Toggle Guide Viewer"
        info.notCheckable = true
        -- DEBUG: ENTER func()
        info.func     = function() XP:ToggleViewer() end
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Options"
        info.notCheckable = true
        -- DEBUG: ENTER func()
        info.func     = function()
            XP:ToggleMenu()
            -- Open the options tab in the menu (the menu must be open first)
            if XP.Menu and XP.Menu.ShowOptions then
                XP.Menu:ShowOptions()
            end
        -- DEBUG: EXIT func()
        end
        UIDropDownMenu_AddButton(info)

        info = UIDropDownMenu_CreateInfo()
        info.text     = "Reset Button Position"
        info.notCheckable = true
        -- DEBUG: ENTER func()
        info.func     = function()
            MM:SetAngle(DEFAULT_ANGLE)
        -- DEBUG: EXIT func()
        end
        UIDropDownMenu_AddButton(info)
    end, "MENU")

    ToggleDropDownMenu(1, nil, MM._dropDown, "cursor", 3, -3)
-- DEBUG: EXIT ShowContextMenu()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Drag logic
-- ─────────────────────────────────────────────────────────────────────────────

local isDragging = false

-- DEBUG: ENTER OnDragStart()
-- DEBUG: PARAM btn = [btn]
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
-- DEBUG: EXIT OnDragStart()
end

-- DEBUG: ENTER OnDragStop()
-- DEBUG: PARAM btn = [btn]
local function OnDragStop(btn)
    isDragging = false
    btn:SetScript("OnUpdate", nil)
-- DEBUG: EXIT OnDragStop()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Button creation
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER MM:CreateButton()
function MM:CreateButton()
    if self.button then return end

    local btn = CreateFrame("Button", "XPlore_MinimapButton", GetMinimapFrame())
    btn:SetSize(BUTTON_SIZE, BUTTON_SIZE)
    btn:SetFrameStrata("MEDIUM")
    btn:SetFrameLevel(8)

    -- Icon texture — SetNormalTexture exists on Button in ALL WoW versions.
    -- SetTexCoord selects the correct cell from the multi-cell atlas.
    btn:SetNormalTexture(ICON_PATH)
    btn:GetNormalTexture():SetTexCoord(0, 1, 0, 1)  -- full texture (single icon, no atlas)
    self._icon = btn:GetNormalTexture()

    -- Circular mask — implemented differently per version:
    --
    -- Retail (8.0+): AddMaskTexture stacks a mask texture onto the icon.
    -- WotLK:     The classic approach is SetPortraitToTexture(tex, path) which
    --             applies the built-in circular alpha mask to a texture AND sets
    --             its texture to the path. However, SetPortraitToTexture calls
    --             SetTexture(path) internally which resets SetTexCoord — making
    --             it incompatible with atlas UV selection.
    --
    --             Therefore on WotLK the icon renders as a square (no mask).
    --             The icon is still fully functional and recognisable.
    -- Circular mask — only apply when Masque is NOT active.
    -- Masque handles all masking/skinning on both Retail and WotLK.
    -- On Retail without Masque, AddMaskTexture stacks a circular mask on the icon.
    -- On WotLK without Masque, no compatible mask exists for atlas UV selection
    -- (SetPortraitToTexture resets SetTexCoord), so the icon renders square.
    if not self._masqueSkinned and self._icon.AddMaskTexture then
        -- Retail: create a dedicated mask texture and stack it on the icon.
        -- The mask clips the icon to the button's round shape without
        -- disturbing SetTexCoord (mask is a separate texture layer).
        local mask = btn:CreateTexture(nil, "MASK")
        mask:SetAllPoints()
        mask:SetTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Mask")
        self._icon:AddMaskTexture(mask)
        self._maskApplied = true
    else
        -- WotLK: no mask available that works with atlas UV selection.
        -- Icon renders as a square — fully functional, recognisable.
        self._maskApplied = false
    end

    -- Highlight (mouseover glow) — works on all versions
    btn:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

    -- Pushed state (cosmetic)
    btn:SetPushedTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

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

    -- Masque support — if Masque is installed, let it skin the button.
    -- Masque handles circular masking automatically on ALL WoW versions
    -- (WotLK, Cata, MoP, Legion, BfA, Shadowlands, Dragonflight, Retail).
    -- If Masque is absent we fall through to the built-in AddMaskTexture path.
    local Masque = LibStub and LibStub("Masque", true)
    if Masque then
        local group = Masque:Group("X-PLORE", "Minimap Button")
        group:AddButton(btn, {
            -- Icon/Foreground
            Icon = ICON_PATH,
            -- Tell Masque this is a "square" icon so it knows how to mask it
            Square = true,
        })
        self._masqueSkinned = true
    end

    -- Place at saved or default angle
    local angle = (XP.db and XP.db.profile and XP.db.profile.minimapAngle) or DEFAULT_ANGLE
    MM._angle = angle
    self:PlaceButton(angle)
-- DEBUG: EXIT MM:CreateButton()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Show / Hide
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER MM:Show()
function MM:Show()
    if self.button then self.button:Show() end
-- DEBUG: EXIT MM:Show()
end

-- DEBUG: ENTER MM:Hide()
function MM:Hide()
    if self.button then self.button:Hide() end
-- DEBUG: EXIT MM:Hide()
end

-- DEBUG: ENTER MM:Toggle()
function MM:Toggle()
    if self.button then
        if self.button:IsShown() then
            self:Hide()
        else
            self:Show()
        end
    end
-- DEBUG: EXIT MM:Toggle()
end

-- ─────────────────────────────────────────────────────────────────────────────
-- Init (called from Core.lua OnEnable)
-- ─────────────────────────────────────────────────────────────────────────────

-- DEBUG: ENTER MM:OnEnable()
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
-- DEBUG: EXIT MM:OnEnable()
end
