-----------------------------------------------------------------------
-- X-Plore: Skins.lua
-- Complete skin system with 1:1 parity to Zygor's skin architecture.
-- Universal Lua 5.0+ compatible (no closures, no __pairs metamethods)
--
-- Architecture:
--   SkinProto    - Represents a skin (e.g. "default")
--   StyleProto   - Represents a style variant (e.g. "starlight", "starlight-glass")
--   Styles inherit via __index metamethod
--
-- Two built-in skins:
--   "default" with styles: "starlight", "starlight-glass", "stealth", "stealth-glass"
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local SKINSDIR = "Interface\\AddOns\\X-Plore\\Skins\\"
local SKINS_DIR = "Interface\\AddOns\\X-Plore\\Skins\\Default\\"
local ICONSDIR = "Interface\\AddOns\\X-Plore\\Skins\\"
local GUIDEICONS_DIR = SKINSDIR .. "guideicons"
local WHITE_TEX = SKINSDIR .. "white"

-----------------------------------------------------------------------
-- Skin Registry
-----------------------------------------------------------------------
local skins = {}
XP.Skins = skins

local activeSkin = nil
local activeStyle = nil

local skinSubscribers = {}

-----------------------------------------------------------------------
-- Helper: HTML #RRGGBB[AA] -> {r,g,b,a}
-----------------------------------------------------------------------
-- DEBUG: ENTER HTML()
-- DEBUG: PARAM hex = [hex]
local function HTML(hex)
    hex = hex:gsub("^#", "")
    local r = tonumber(hex:sub(1, 2), 16) / 255
    local g = tonumber(hex:sub(3, 4), 16) / 255
    local b = tonumber(hex:sub(5, 6), 16) / 255
    local a = hex:len() >= 8 and (tonumber(hex:sub(7, 8), 16) / 255) or 1.0
    return {r, g, b, a}
-- DEBUG: EXIT HTML()
end

-----------------------------------------------------------------------
-- Backdrop Helpers (Lua 5.0 compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER SolidBackdrop()
-- DEBUG: PARAM edge = [edge]
-- DEBUG: PARAM edgeSize = [edgeSize]
-- DEBUG: PARAM inset = [inset]
local function SolidBackdrop(edge, edgeSize, inset)
    edgeSize = edgeSize or 1
    inset = inset or 1
    return {
        bgFile = WHITE_TEX,
        edgeFile = edge or WHITE_TEX,
        tile = true, tileSize = 8, edgeSize = edgeSize,
        insets = {left = inset, right = inset, top = inset, bottom = inset}
    }
-- DEBUG: EXIT SolidBackdrop()
end

-- DEBUG: ENTER TiledBackdrop()
-- DEBUG: PARAM bgFile = [bgFile]
-- DEBUG: PARAM edgeFile = [edgeFile]
-- DEBUG: PARAM edgeSize = [edgeSize]
-- DEBUG: PARAM inset = [inset]
local function TiledBackdrop(bgFile, edgeFile, edgeSize, inset)
    edgeSize = edgeSize or 1
    inset = inset or edgeSize
    return {
        bgFile = bgFile or WHITE_TEX,
        edgeFile = edgeFile or WHITE_TEX,
        tile = true, tileSize = 256, edgeSize = edgeSize,
        insets = {left = inset, right = inset, top = inset, bottom = inset}
    }
-- DEBUG: EXIT TiledBackdrop()
end

-- DEBUG: ENTER NoEdgeBackdrop()
local function NoEdgeBackdrop()
    return {bgFile = WHITE_TEX, tile = true, tileSize = 8}
-- DEBUG: EXIT NoEdgeBackdrop()
end

-----------------------------------------------------------------------
-- Skin Prototype System (Zygor-compatible)
-----------------------------------------------------------------------
local SkinProto = {}
local StyleProto = {}

-- DEBUG: ENTER SkinProto:New()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
function SkinProto:New(id, name)
    local skin = {id = id, name = name, styles = {}}
    setmetatable(skin, {__index = SkinProto})
    return skin
-- DEBUG: EXIT SkinProto:New()
end

-- DEBUG: ENTER SkinProto:AddStyle()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM inherit = [inherit]
function SkinProto:AddStyle(id, name, inherit)
    local style = StyleProto:New(id, name)
    style.skin = self
    if inherit then
        style.inheritedStyle = self.styles[inherit]
    end
    self.styles[id] = style
    if not self.defaultStyle then
        self.defaultStyle = id
    end
    return style
-- DEBUG: EXIT SkinProto:AddStyle()
end

-- DEBUG: ENTER SkinProto:GetStyle()
-- DEBUG: PARAM id = [id]
function SkinProto:GetStyle(id)
    return self.styles[id or self.defaultStyle]
-- DEBUG: EXIT SkinProto:GetStyle()
end

-- DEBUG: ENTER SkinProto:GetDir()
function SkinProto:GetDir()
    return SKINS_DIR .. self.id .. "\\"
-- DEBUG: EXIT SkinProto:GetDir()
end

-- DEBUG: ENTER StyleProto:New()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
function StyleProto:New(id, name)
    local style = {id = id, name = name}
    setmetatable(style, {
        -- DEBUG: ENTER __index()
        -- DEBUG: PARAM t = [t]
        -- DEBUG: PARAM k = [k]
        __index = function(t, k)
            local proto = rawget(StyleProto, k)
            if proto then return proto end
            local inheritedStyle = rawget(t, "inheritedStyle")
            if not inheritedStyle then return end
            local inherited = inheritedStyle[k]
            if inherited then return inherited end
        -- DEBUG: EXIT __index()
        end
    })
    return style
-- DEBUG: EXIT StyleProto:New()
end

-- DEBUG: ENTER StyleProto:GetDir()
function StyleProto:GetDir()
    return self.skin:GetDir() .. self.id .. "\\"
-- DEBUG: EXIT StyleProto:GetDir()
end

-----------------------------------------------------------------------
-- Skin Data Accessor with Inheritance
-- XP:SD("KeyName") returns value, checking inheritance chain
-----------------------------------------------------------------------
local quiet = false
-- DEBUG: ENTER StyleProto:GetProp()
-- DEBUG: PARAM propertyname = [propertyname]
function StyleProto:GetProp(propertyname, ...)
    if type(propertyname) == "table" then
        for i, prop in ipairs(propertyname) do
            quiet = true
            local v = self:GetProp(prop, ...)
            quiet = false
            if v then return v end
        end
        return
    end
    local r = self[propertyname]
    if r then
        if type(r) == "function" then
            return r(...)
        else
            return r
        end
    end
-- DEBUG: EXIT StyleProto:GetProp()
end

-----------------------------------------------------------------------
-- Step / Action Icon Paths
-----------------------------------------------------------------------
XP.ActionIconPaths = {
    accept_quest  = "Interface\\Icons\\INV_Misc_QuestionMark",
    turnin_quest  = "Interface\\Icons\\Achievement_Quests_Completed_Daily_05",
    kill          = "Interface\\Icons\\INV_Sword_04",
    kill_mob      = "Interface\\Icons\\INV_Sword_04",
    collect       = "Interface\\Icons\\INV_Misc_Bag_07",
    travel        = "Interface\\Icons\\INV_Misc_Map_01",
    ["goto"]      = "Interface\\Icons\\INV_Misc_Map_01",
    interact      = "Interface\\Icons\\INV_Misc_Gear_01",
    talk          = "Interface\\Icons\\INV_Misc_Gear_01",
    fly           = "Interface\\Icons\\Ability_Druid_FlightForm",
    buy           = "Interface\\Icons\\INV_Misc_Coin_01",
    equip         = "Interface\\Icons\\INV_Chest_Chain_01",
    explore       = "Interface\\Icons\\Ability_Tracking",
    note          = "Interface\\Icons\\INV_Misc_Note_05",
    use           = "Interface\\Icons\\INV_Misc_Gear_01",
    default       = "Interface\\Icons\\INV_Misc_QuestionMark",
}
XP.StepIconsAreWoW = true

-----------------------------------------------------------------------
-- Default Skin with All Styles
-----------------------------------------------------------------------
local DEFAULT_SKIN = SkinProto:New("default", "Default")
skins["default"] = DEFAULT_SKIN

local SKINSDIR_DEFAULT = SKINS_DIR

-----------------------------------------------------------------------
-- Style: STARLIGHT
-----------------------------------------------------------------------
local STARLIGHT = DEFAULT_SKIN:AddStyle("starlight", "Starlight")

STARLIGHT.StyleName = "Starlight"
STARLIGHT.StyleID = "starlight"
STARLIGHT.GUIHidden = false
STARLIGHT.AccentColor = HTML("#FE6100FF")
STARLIGHT.FontFace = SKINSDIR .. "opensans.ttf"
STARLIGHT.FontFaceBold = SKINSDIR .. "opensansb.ttf"
STARLIGHT.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
STARLIGHT.UseOpacity = false

STARLIGHT.ViewerWidth = 320
STARLIGHT.ViewerHeight = 450
STARLIGHT.MenuWidth = 825
STARLIGHT.MenuHeight = 630
STARLIGHT.TitleBarHeight = 34
STARLIGHT.TabHeight = 28
STARLIGHT.ToolbarHeight = 30
STARLIGHT.SidebarWidth = 170
STARLIGHT.CategoryHeight = 28
STARLIGHT.StepHeight = 50
STARLIGHT.FooterHeight = 32
STARLIGHT.ViewerMargin = 0
STARLIGHT.StepSpacing = 2
STARLIGHT.TabsHeight = 20
STARLIGHT.TabsIconSize = 12
STARLIGHT.StepNumFontSize = 14
STARLIGHT.StepNumWidth = 40
STARLIGHT.TitleButtonSize = 16
STARLIGHT.ProgressBarWidth = 4
STARLIGHT.ProgressBarOffsetX = 5
STARLIGHT.ProgressBarOffsetY = -4
STARLIGHT.ScrollBarButtonSize = {16, 16}
STARLIGHT.TopHeight = 55.5
STARLIGHT.StepFontSizeMod = 1
STARLIGHT.TitleButtonStepPrevNextSize = 14
STARLIGHT.TitleButtonInset = 2
STARLIGHT.TitleButtonInsetHighlight = -3
STARLIGHT.TitleButtonHighlightAlpha = 0.6
STARLIGHT.StyleAceGUI = true

STARLIGHT.MainBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque", 90, 0)
STARLIGHT.MainBackdropColor = HTML("#111111FF")
STARLIGHT.MainBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.PanelBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small", 32, 31)
STARLIGHT.PanelBackdropColor = HTML("#202020FF")
STARLIGHT.PanelBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.SmallBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 32, 31)
STARLIGHT.SmallBackdropColor = HTML("#111111FF")
STARLIGHT.SmallBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.NoEdgeBackdrop = NoEdgeBackdrop()
STARLIGHT.Backdrop = STARLIGHT.MainBackdrop
STARLIGHT.BackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.BackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.WindowBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque", 90, 0)
STARLIGHT.WindowBackdropColor = {0, 0, 0, 0}
STARLIGHT.WindowBackdropBorderColor = HTML("#111111FF")

STARLIGHT.WindowBottomBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small", 32, 31)
STARLIGHT.WindowBottomBackdropColor = HTML("#202020FF")
STARLIGHT.WindowBottomBackdropBorderColor = HTML("#202020FF")

STARLIGHT.StepBackdrop = NoEdgeBackdrop()
STARLIGHT.StepBorderBackdrop = SolidBackdrop(SKINSDIR_DEFAULT .. "starlight\\border-glow", 4, 0)
STARLIGHT.StepBackdropColor = HTML("#202020FF")
STARLIGHT.StepBackdropBorderColor = HTML("#202020FF")
STARLIGHT.StepBackdropPersistentBorder = true
STARLIGHT.StepPaddingTop = 0
STARLIGHT.StepPaddingBottom = 0
STARLIGHT.StepPaddingWidth = 0
STARLIGHT.StepStickyBarSpace = 5
STARLIGHT.StepStickyBarHeight = 1
STARLIGHT.StepStickySeparatorColor = HTML("#3B3B3BFF")

STARLIGHT.TabBackdrop = NoEdgeBackdrop()
STARLIGHT.TabBackdropColor = {0, 0, 0, 0}

STARLIGHT.ButtonBackdrop1 = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\button-small-opaque", 8, 2)
STARLIGHT.ButtonColor1 = HTML("#333333FF")
STARLIGHT.ButtonBorderColor1 = {0, 0, 0, 0}
STARLIGHT.ButtonHighlightColor1 = HTML("#444444FF")
STARLIGHT.ButtonTextColor1Out = HTML("#FFFFFFFF")
STARLIGHT.ButtonTextColor1Over = HTML("#FFFFFF77")

STARLIGHT.ButtonBackdrop2 = STARLIGHT.SmallBackdrop
STARLIGHT.ButtonColor2 = HTML("#E5661AFF")
STARLIGHT.ButtonHighlightColor2 = HTML("#EA8548")

STARLIGHT.ButtonBackdrop3 = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\button-small-opaque", 2, 2)
STARLIGHT.ButtonBorderColor3 = HTML("#333333FF")
STARLIGHT.ButtonHighlightColor3 = HTML("#444444FF")

STARLIGHT.SystemBarBackdropColor = HTML("#3B3B3BFF")
STARLIGHT.SystemBarBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.ProgressBarBackdrop = SolidBackdrop(WHITE_TEX, 1, 1)
STARLIGHT.ProgressBarBackdropColor = HTML("#454545FF")
STARLIGHT.ProgressBarBackdropBorderColor = {0, 0, 0, 0}
STARLIGHT.ProgressBarTextureFile = WHITE_TEX
STARLIGHT.ProgressBarTextureColor = HTML("#00CC01FF")
STARLIGHT.ProgressBarTextureFileOffset = {0, 0.5, 0, 0.5}
STARLIGHT.ProgressBarDecorUse = 0
STARLIGHT.ProgressBarDecorFileOffset = {0, 0, 0, 0}
STARLIGHT.ProgressBarCaps = SKINSDIR_DEFAULT .. "starlight\\progressbarcaps"
STARLIGHT.ProgressBarWidth = 4
STARLIGHT.ProgressBarCapsColor = HTML("#202020FF")
STARLIGHT.ProgressBarOffsetX = 5
STARLIGHT.ProgressBarOffsetY = -4
STARLIGHT.ProgressBarTexture = {1.0, 1.0, 1.0, 1.0}
STARLIGHT.ProgressBarTextureHeight = 5
STARLIGHT.ProgressBarHeight = 7
STARLIGHT.ProgressBarInset = 0
STARLIGHT.ProgressBarColor = {0.0, 0.8, 0.0, 1.0}
STARLIGHT.ProgressBarColor2 = {1/255, 162/255, 253/255, 1.0}
STARLIGHT.ProgressBarSpaceHeight = 16

STARLIGHT.ScrollBackColor = {0, 0, 0, 0}
STARLIGHT.ScrollBarColor = HTML("#666666FF")
STARLIGHT.ScrollBarTexture = SKINSDIR_DEFAULT .. "starlight\\scroll-bar"
STARLIGHT.ScrollArrowsTexture = SKINSDIR_DEFAULT .. "starlight\\scroll-arrows"
STARLIGHT.ScrollBarDecorHeight = 16

STARLIGHT.GuideMenuMargin = 0
STARLIGHT.GuideMenuHeaderFooterBackground = {0, 0, 0, 0}
STARLIGHT.GuideMenuHeaderFooterBorder = {0, 0, 0, 0}
STARLIGHT.GuideMenuSectionBorder = {0, 0, 0, 0}
STARLIGHT.GuideMenuContentBackground = HTML("#202020FF")
STARLIGHT.GuideMenuDetailsBackground = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuMenuBackground = HTML("#2B2B2BFF")
STARLIGHT.SearchEditBackdropColor = HTML("#0D0D0DFF")
STARLIGHT.SearchEditBorderColor = HTML("#0D0D0DFF")
STARLIGHT.GuideMenuSearchTexture = SKINSDIR_DEFAULT .. "starlight\\search-bgr"
STARLIGHT.GuideMenuFooterElementsOffset = 13
STARLIGHT.GuideMenuGuideButtonDecorColor = STARLIGHT.AccentColor

STARLIGHT.TabsMargin = 0
STARLIGHT.TabsIcons = GUIDEICONS_DIR .. "-big"
STARLIGHT.GuideMenuSmallIcons = GUIDEICONS_DIR .. "-small"
STARLIGHT.TabsBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.TabsBackdropActive = HTML("#202020FF")
STARLIGHT.TabsBackdropInactive = {0, 0, 0, 0}
STARLIGHT.TabsContainerBackdropActive = HTML("#3B3B3BFF")
STARLIGHT.TabsContainerBackdropInactive = HTML("#111111FF")
STARLIGHT.TabsBorderColor = {0, 0, 0, 0}
STARLIGHT.TabsTextColor = {1, 1, 1, 1}
STARLIGHT.TabsTextColorOver = HTML("#FFFFFF77")
STARLIGHT.TabsBusyIcon = SKINSDIR .. "loading"
STARLIGHT.TabsDecor = SKINSDIR_DEFAULT .. "starlight\\viewer8-tabs"
STARLIGHT.TabsDecorWidth = 8
STARLIGHT.TabsTopOffset = -5
STARLIGHT.TabsSeparatorColor = {0, 0, 0, 0}
STARLIGHT.TabsSeparatorTexture = WHITE_TEX
STARLIGHT.TabsFirstOffset = 4

STARLIGHT.StepIconsTexture = SKINSDIR_DEFAULT .. "starlight\\stepicons"
STARLIGHT.StepLineIcons = SKINSDIR_DEFAULT .. "starlight\\stepicons"
STARLIGHT.StepLineBackBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
STARLIGHT.StepLineBackBackdropColor = {0, 0, 0, 0}
STARLIGHT.StepLineBackBackdropBorderColor = {0, 0, 0, 0}
STARLIGHT.StepLineClickerBackdrop = STARLIGHT.StepLineBackBackdrop
STARLIGHT.StepLinePaddingWidth = 3
STARLIGHT.StepLinePaddingHeight = 3
STARLIGHT.StepLineIconOffset = 3
STARLIGHT.StepLineTextOffset = 0
STARLIGHT.StepLineIconSize = 1.1
STARLIGHT.StepLineIconMarginRight = 3
STARLIGHT.StepLineSpacing = 0

STARLIGHT.TitleButtonsTexture = SKINSDIR_DEFAULT .. "starlight\\titlebuttons-thin"
STARLIGHT.CheckRadioTexture = SKINSDIR_DEFAULT .. "starlight\\checkradio-thin"
STARLIGHT.FloatingButtonsTexture = SKINSDIR_DEFAULT .. "starlight\\floatingbuttons-thin"
STARLIGHT.BorderGlowTexture = SKINSDIR_DEFAULT .. "starlight\\border-glow"

STARLIGHT.UISliderBgTexture = SKINSDIR_DEFAULT .. "starlight\\ui-sliderbar-background"
STARLIGHT.UISliderBorderTexture = SKINSDIR_DEFAULT .. "starlight\\ui-sliderbar-border"
STARLIGHT.OptionsSliderButton = SKINSDIR_DEFAULT .. "starlight\\options-slider-button"

STARLIGHT.SelectionTexture = SKINSDIR_DEFAULT .. "starlight\\selection"
STARLIGHT.MapArrowTexture = SKINSDIR_DEFAULT .. "starlight\\mv-arrow"
STARLIGHT.GuideMiniIconsTexture = SKINSDIR_DEFAULT .. "starlight\\guideicons-small"
STARLIGHT.GuideBigIconsTexture = SKINSDIR .. "guideicons-big"

STARLIGHT.MinimapIcon = SKINSDIR_DEFAULT .. "starlight\\minimap-icon"
STARLIGHT.LoadingTexture = SKINSDIR .. "loading"

STARLIGHT.ToastMessageBg = SKINSDIR .. "messagetoastbg"
STARLIGHT.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

STARLIGHT.NotificationBackdrop = STARLIGHT.SmallBackdrop
STARLIGHT.NotificationBackdropColor = {0, 0, 0, 1}
STARLIGHT.NotificationBackdropBorderColor = {0, 0, 0, 1}
STARLIGHT.NotificationDecorColor = HTML("#3B3B3BFF")
STARLIGHT.NotificationTextColor = {0.8, 0.8, 0.8, 1}
STARLIGHT.NotificationTextColorOver = {1, 1, 1, 1}
STARLIGHT.NotificationBubbleColor = STARLIGHT.AccentColor
STARLIGHT.NotificationPopupShowHeader = false
STARLIGHT.NotificationPopupHeaderBackdrop = STARLIGHT.SmallBackdrop
STARLIGHT.NotificationPopupHeaderBackdropColor = {0, 0, 0, 1}
STARLIGHT.NotificationPopupHeaderBackdropBorderColor = {0, 0, 0, 1}
STARLIGHT.NotificationPopupContentBackdrop = STARLIGHT.SmallBackdrop
STARLIGHT.NotificationPopupContentBackdropColor = HTML("#222222FF")
STARLIGHT.NotificationPopupContentBackdropBorderColor = HTML("#222222FF")

STARLIGHT.MessageWarning = HTML("#FF3300FF")
STARLIGHT.MessageNotify = HTML("#FE6100FF")

STARLIGHT.FloatMenuBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 32, 31)
STARLIGHT.FloatMenuBackdropColor = {0, 0, 0, 1}
STARLIGHT.FloatMenuBackdropBorderColor = {1, 1, 1, 1}
STARLIGHT.FloatMenuSeparatorColor = HTML("#666666FF")

STARLIGHT.FloatMenuSmallBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 12, 12)
STARLIGHT.FloatMenuSmallBackdropColor = {0, 0, 0, 1}
STARLIGHT.FloatMenuSmallBackdropBorderColor = {1, 1, 1, 1}

STARLIGHT.SearchBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\search-bgr", 20, 10)
STARLIGHT.SearchEditBackdropColor = HTML("#0D0D0DFF")
STARLIGHT.SearchEditBorderColor = HTML("#0D0D0DFF")
STARLIGHT.SearchEditTextColor = HTML("#666666FF")
STARLIGHT.SearchEditTextColorActive = {1, 1, 1, 1}

STARLIGHT.AceGUIInputTexture = SKINSDIR_DEFAULT .. "starlight\\dropdown-opaque"
STARLIGHT.AceGUIDropDownBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 32, 31)
STARLIGHT.AceGUIDropDownBackdropColor = {0, 0, 0, 1}
STARLIGHT.AceGUIDropDownBackdropBorderColor = {1, 1, 1, 1}
STARLIGHT.AceGUIEditBackdrop = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 16, 15)
STARLIGHT.AceGUIEditBackdropMultiline = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 32, 31)
STARLIGHT.AceGUIEditBackdropColor = {0, 0, 0, 1}
STARLIGHT.AceGUIEditBackdropBorderColor = {1, 1, 1, 1}
STARLIGHT.AceGUIButtonTexture = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\search-bgr", 20, 10)
STARLIGHT.AceGUIButtonTextureColor = HTML("#666666FF")
STARLIGHT.AceGUIButtonTextColor = {1, 1, 1, 1}
STARLIGHT.AceGUIButtonTextColorDisabled = {1, 1, 1, 0.6}
STARLIGHT.AceGUISliderBackdrop = TiledBackdrop(STARLIGHT.UISliderBgTexture, STARLIGHT.UISliderBorderTexture, 8, 3)
STARLIGHT.AceGUISliderThumb = SKINSDIR_DEFAULT .. "starlight\\options-slider-button"

STARLIGHT.ActionBarBackdrop = STARLIGHT.SmallBackdrop
STARLIGHT.ActionBarBackdropColor = STARLIGHT.SmallBackdropColor
STARLIGHT.ActionBarBackdropBorderColor = STARLIGHT.SmallBackdropBorderColor

STARLIGHT.FindNearestBackdrop = STARLIGHT.SmallBackdrop
STARLIGHT.FindNearestBackdropColor = STARLIGHT.SmallBackdropColor
STARLIGHT.FindNearestBackdropBorderColor = STARLIGHT.SmallBackdropBorderColor

STARLIGHT.GoldguideBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.GoldguideBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.GoldguideBackdropBorderColor = STARLIGHT.MainBackdropBorderColor
STARLIGHT.GoldguideHeaderFooterColor = STARLIGHT.GuideMenuHeaderFooterBackground

STARLIGHT.WorldQuestBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.WorldQuestBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.WorldQuestBackdropBorderColor = STARLIGHT.MainBackdropBorderColor
STARLIGHT.WorldQuestMargin = 0

STARLIGHT.AuctionToolsMargin = 0
STARLIGHT.AuctionToolsBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.AuctionToolsBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.AuctionToolsBackdropBorderColor = STARLIGHT.MainBackdropBorderColor
STARLIGHT.AuctionToolsPriceIcons = SKINSDIR .. "goldpricestatusicons"
STARLIGHT.AuctionToolsHeaderFooterBackground = {0, 0, 0, 0}
STARLIGHT.AuctionToolsHeaderFooterBorder = {0, 0, 0, 0}

STARLIGHT.BugBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.BugBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.BugBackdropBorderColor = STARLIGHT.MainBackdropBorderColor
STARLIGHT.BugEditBackdrop = STARLIGHT.NoEdgeBackdrop
STARLIGHT.BugEditBackdropColor = HTML("#202020FF")

STARLIGHT.GearFinderBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.GearFinderBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.GearFinderBackdropBorderColor = STARLIGHT.MainBackdropBorderColor

STARLIGHT.WidgetsBackdrop = STARLIGHT.SmallBackdrop
STARLIGHT.WidgetsBackdropColor = STARLIGHT.SmallBackdropColor
STARLIGHT.WidgetsBackdropBorderColor = STARLIGHT.SmallBackdropBorderColor
STARLIGHT.WidgetsPopupBackdropColor = HTML("#202020FF")
STARLIGHT.WidgetsPopupBackdropBorderColor = HTML("#202020FF")
STARLIGHT.WidgetsTextColor = {1, 1, 1, 1}
STARLIGHT.WidgetsDragColor = HTML("#333333FF")

STARLIGHT.CreatureBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.CreatureBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.CreatureBackdropBorderColor = {0, 0, 0, 0}
STARLIGHT.CreatureViewerLabelBackground = STARLIGHT.NoEdgeBackdrop
STARLIGHT.CreatureViewerLabelColor = {1.0, 1.0, 1.0, 1.0}
STARLIGHT.CreatureViewerGap = {-10, 0}
STARLIGHT.CVNoModelTexture = SKINSDIR .. "zygor_mascot"

STARLIGHT.MoneyBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.MoneyBackdropColor = STARLIGHT.MainBackdropColor
STARLIGHT.MoneyBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.GuideMenuBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.GuideMenuBackdropColor = HTML("#111111FF")
STARLIGHT.GuideMenuBackdropBorderColor = HTML("#111111FF")
STARLIGHT.GuideMenuMenuBackgroundColor = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuMenuBackdropBorderColor = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuDetailsBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.GuideMenuDetailsBackdropColor = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuDetailsBackdropBorderColor = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuContentBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.GuideMenuContentBackdropColor = HTML("#202020FF")
STARLIGHT.GuideMenuContentBackdropBorderColor = HTML("#202020FF")
STARLIGHT.GuideMenuExpandedBackdrop = STARLIGHT.MainBackdrop
STARLIGHT.GuideMenuExpandedBackdropColor = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuExpandedBackdropBorderColor = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuFeaturedDropdown = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "starlight\\backdrop-opaque-small-outline", 32, 31)
STARLIGHT.GuideMenuFeaturedDropdownBackdropColor = {0, 0, 0, 1}
STARLIGHT.GuideMenuFeaturedDropdownBackdropBorderColor = {1, 1, 1, 1}
STARLIGHT.GuideMenuTinyMargin = 0

STARLIGHT.TitleLogo = SKINSDIR_DEFAULT .. "starlight\\zygorlogo"
STARLIGHT.TitleLogoSize = {100, 25}

STARLIGHT.TransparencyPrimary = 1
STARLIGHT.TransparencySecondary = 1

STARLIGHT.TabBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
STARLIGHT.TabBackdropColor = {0, 0, 0, 0.0}
STARLIGHT.StepnumBackdropColor = {0, 0, 0, 0.0}

-----------------------------------------------------------------------
-- Style: STARLIGHT-GLASS (inherits from starlight, adds transparency)
-----------------------------------------------------------------------
local STARLIGHT_GLASS = DEFAULT_SKIN:AddStyle("starlight-glass", "Starlight Glass", "starlight")

STARLIGHT_GLASS.StyleName = "Starlight Glass"
STARLIGHT_GLASS.StyleID = "starlight-glass"
STARLIGHT_GLASS.GUIHidden = true
STARLIGHT_GLASS.UseOpacity = true
STARLIGHT_GLASS.TransparencyPrimary = 0.8
STARLIGHT_GLASS.TransparencySecondary = 0.6
STARLIGHT_GLASS.MainBackdropColor = HTML("#11111180")
STARLIGHT_GLASS.WindowBackdropColor = HTML("#11111180")
STARLIGHT_GLASS.StepBackdropColor = HTML("#20202060")

-----------------------------------------------------------------------
-- Style: STEALTH
-----------------------------------------------------------------------
local STEALTH = DEFAULT_SKIN:AddStyle("stealth", "Stealth")

STEALTH.StyleName = "Stealth"
STEALTH.StyleID = "stealth"
STEALTH.GUIHidden = false
STEALTH.AccentColor = HTML("#FE6100FF")
STEALTH.FontFace = SKINSDIR .. "opensans.ttf"
STEALTH.FontFaceBold = SKINSDIR .. "opensansb.ttf"
STEALTH.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
STEALTH.UseOpacity = false

STEALTH.ViewerWidth = 320
STEALTH.ViewerHeight = 450
STEALTH.MenuWidth = 825
STEALTH.MenuHeight = 630
STEALTH.TitleBarHeight = 34
STEALTH.TabHeight = 28
STEALTH.ToolbarHeight = 30
STEALTH.SidebarWidth = 170
STEALTH.CategoryHeight = 28
STEALTH.StepHeight = 50
STEALTH.FooterHeight = 32
STEALTH.ViewerMargin = 10
STEALTH.StepSpacing = 2
STEALTH.TabsHeight = 20
STEALTH.TabsIconSize = 12
STEALTH.StepNumFontSize = 14
STEALTH.StepNumWidth = 40
STEALTH.TitleButtonSize = 16
STEALTH.ProgressBarWidth = 0
STEALTH.ProgressBarOffsetX = 0
STEALTH.ProgressBarOffsetY = 0
STEALTH.ScrollBarButtonSize = {16, 16}
STEALTH.TopHeight = 60.0
STEALTH.StepFontSizeMod = 1
STEALTH.TitleButtonStepPrevNextSize = 14
STEALTH.TitleButtonInset = 0
STEALTH.TitleButtonInsetHighlight = 0
STEALTH.TitleButtonHighlightAlpha = 0.6
STEALTH.StyleAceGUI = false
STEALTH.IconIndent = 17

STEALTH.MainBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
STEALTH.MainBackdropColor = {0, 0, 0, 1}
STEALTH.MainBackdropBorderColor = {0.49, 0.49, 0.49, 1}

STEALTH.PanelBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
STEALTH.PanelBackdropColor = HTML("#222222FF")

STEALTH.SmallBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
STEALTH.SmallBackdropColor = HTML("#222222FF")

STEALTH.NoEdgeBackdrop = NoEdgeBackdrop()
STEALTH.Backdrop = STEALTH.MainBackdrop
STEALTH.BackdropColor = STEALTH.MainBackdropColor
STEALTH.BackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.WindowBackdrop = STEALTH.MainBackdrop
STEALTH.WindowBackdropColor = STEALTH.MainBackdropColor
STEALTH.WindowBackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.WindowBottomBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
STEALTH.WindowBottomBackdropColor = {0, 0, 0, 0}
STEALTH.WindowBottomBackdropBorderColor = {0, 0, 0, 0}

STEALTH.StepBackdrop = NoEdgeBackdrop()
STEALTH.StepBorderBackdrop = SolidBackdrop(SKINSDIR_DEFAULT .. "stealth\\border-glow", 4, 0)
STEALTH.StepBackdropColor = HTML("#222222FF")
STEALTH.StepBackdropBorderColor = {0, 0, 0, 1}
STEALTH.StepBackdropPersistentBorder = true
STEALTH.StepPaddingTop = 0
STEALTH.StepPaddingBottom = 0
STEALTH.StepPaddingWidth = 0
STEALTH.StepStickyBarSpace = 5
STEALTH.StepStickyBarHeight = 1
STEALTH.StepStickySeparatorColor = HTML("#222222FF")

STEALTH.TabBackdrop = NoEdgeBackdrop()
STEALTH.TabBackdropColor = {0, 0, 0, 0}

STEALTH.ButtonBackdrop1 = STEALTH.MainBackdrop
STEALTH.ButtonColor1 = HTML("#333333FF")
STEALTH.ButtonBorderColor1 = {0.50, 0.50, 0.50, 1}
STEALTH.ButtonHighlightColor1 = HTML("#444444FF")
STEALTH.ButtonTextColor1Out = HTML("#FFFFFFFF")
STEALTH.ButtonTextColor1Over = HTML("#FFFFFF77")

STEALTH.ButtonBackdrop2 = STEALTH.NoEdgeBackdrop
STEALTH.ButtonColor2 = HTML("#E5661AFF")
STEALTH.ButtonHighlightColor2 = HTML("#EA8548")

STEALTH.ButtonBackdrop3 = STEALTH.ButtonBackdrop1
STEALTH.ButtonBorderColor3 = STEALTH.ButtonBorderColor1
STEALTH.ButtonHighlightColor3 = HTML("#444444FF")

STEALTH.SystemBarBackdropColor = HTML("#222222FF")
STEALTH.SystemBarBackdropBorderColor = HTML("#222222FF")

STEALTH.ProgressBarBackdrop = SolidBackdrop(WHITE_TEX, 1, 1)
STEALTH.ProgressBarBackdropColor = HTML("#222222FF")
STEALTH.ProgressBarBackdropBorderColor = {0, 0, 0, 1}
STEALTH.ProgressBarTextureFile = SKINSDIR_DEFAULT .. "stealth\\progressbar"
STEALTH.ProgressBarTextureColor = {1, 1, 1, 1}
STEALTH.ProgressBarTextureFileOffset = {0, 0.5, 0, 0.5}
STEALTH.ProgressBarDecorUse = 0
STEALTH.ProgressBarDecorFileOffset = {0.5, 1, 0, 0.5}
STEALTH.ProgressBarCaps = SKINSDIR_DEFAULT .. "stealth\\progressbarcaps"
STEALTH.ProgressBarWidth = 0
STEALTH.ProgressBarCapsColor = {0, 0, 0, 0}
STEALTH.ProgressBarOffsetX = 0
STEALTH.ProgressBarOffsetY = 0
STEALTH.ProgressBarTexture = {1.0, 1.0, 1.0, 1.0}
STEALTH.ProgressBarTextureHeight = 5
STEALTH.ProgressBarHeight = 7
STEALTH.ProgressBarInset = 0
STEALTH.ProgressBarColor = {0.0, 0.8, 0.0, 1.0}
STEALTH.ProgressBarColor2 = {1/255, 162/255, 253/255, 1.0}
STEALTH.ProgressBarSpaceHeight = 12

STEALTH.ScrollBackColor = HTML("#333333FF")
STEALTH.ScrollBarColor = HTML("#666666FF")
STEALTH.ScrollBarTexture = WHITE_TEX
STEALTH.ScrollArrowsTexture = SKINSDIR_DEFAULT .. "stealth\\scroll-arrows"
STEALTH.ScrollBarDecorHeight = 0

STEALTH.GuideMenuMargin = 0
STEALTH.GuideMenuHeaderFooterBackground = {0, 0, 0, 0}
STEALTH.GuideMenuHeaderFooterBorder = {0, 0, 0, 1}
STEALTH.GuideMenuSectionBorder = {0, 0, 0, 1}
STEALTH.GuideMenuContentBackground = HTML("#222222FF")
STEALTH.GuideMenuDetailsBackground = HTML("#2B2B2BFF")
STEALTH.GuideMenuMenuBackground = HTML("#2B2B2BFF")
STEALTH.SearchEditBackdropColor = {1, 1, 1, 1}
STEALTH.SearchEditBorderColor = {1, 1, 1, 1}
STEALTH.GuideMenuSearchTexture = SKINSDIR_DEFAULT .. "stealth\\search-bgr"
STEALTH.GuideMenuFooterElementsOffset = 5
STEALTH.GuideMenuGuideButtonDecorColor = {0, 0, 0, 0}

STEALTH.TabsMargin = 10
STEALTH.TabsIcons = GUIDEICONS_DIR .. "-big"
STEALTH.GuideMenuSmallIcons = GUIDEICONS_DIR .. "-small"
STEALTH.TabsBackdrop = STEALTH.MainBackdrop
STEALTH.TabsBackdropActive = HTML("#222222FF")
STEALTH.TabsBackdropInactive = HTML("#101010FF")
STEALTH.TabsContainerBackdropActive = HTML("#222222FF")
STEALTH.TabsContainerBackdropInactive = {0, 0, 0, 1}
STEALTH.TabsBorderColor = {0, 0, 0, 1}
STEALTH.TabsTextColor = {1, 1, 1, 1}
STEALTH.TabsTextColorOver = HTML("#FFFFFF77")
STEALTH.TabsBusyIcon = SKINSDIR .. "loading"
STEALTH.TabsDecor = false
STEALTH.TabsDecorWidth = 0
STEALTH.TabsTopOffset = 0
STEALTH.TabsSeparatorColor = HTML("#555555FF")
STEALTH.TabsSeparatorTexture = WHITE_TEX
STEALTH.TabsFirstOffset = 0

STEALTH.StepIconsTexture = SKINSDIR_DEFAULT .. "stealth\\stepicons"
STEALTH.StepLineIcons = SKINSDIR_DEFAULT .. "stealth\\stepicons"
STEALTH.StepLineBackBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
STEALTH.StepLineBackBackdropColor = {0, 0, 0, 0}
STEALTH.StepLineBackBackdropBorderColor = {0, 0, 0, 0}
STEALTH.StepLineClickerBackdrop = STEALTH.StepLineBackBackdrop
STEALTH.StepLinePaddingWidth = 3
STEALTH.StepLinePaddingHeight = 3
STEALTH.StepLineIconOffset = 0
STEALTH.StepLineTextOffset = 0
STEALTH.StepLineIconSize = 1.1
STEALTH.StepLineIconMarginRight = 3
STEALTH.StepLineSpacing = 0

STEALTH.TitleButtonsTexture = SKINSDIR_DEFAULT .. "stealth\\titlebuttons-thick"
STEALTH.CheckRadioTexture = SKINSDIR_DEFAULT .. "stealth\\checkradio-thick"
STEALTH.FloatingButtonsTexture = SKINSDIR_DEFAULT .. "stealth\\floatingbuttons-thick"
STEALTH.BorderGlowTexture = SKINSDIR_DEFAULT .. "stealth\\border-glow"

STEALTH.SelectionTexture = SKINSDIR_DEFAULT .. "stealth\\selection"
STEALTH.MapArrowTexture = SKINSDIR_DEFAULT .. "stealth\\mv-arrow"
STEALTH.GuideMiniIconsTexture = SKINSDIR_DEFAULT .. "stealth\\guideicons-small"
STEALTH.GuideBigIconsTexture = SKINSDIR .. "guideicons-big"

STEALTH.MinimapIcon = SKINSDIR_DEFAULT .. "stealth\\minimap-icon"
STEALTH.LoadingTexture = SKINSDIR .. "loading"

STEALTH.ToastMessageBg = SKINSDIR .. "messagetoastbg"
STEALTH.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

STEALTH.NotificationBackdrop = STEALTH.MainBackdrop
STEALTH.NotificationBackdropColor = HTML("#222222FF")
STEALTH.NotificationBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.NotificationDecorColor = STEALTH.MainBackdropBorderColor
STEALTH.NotificationTextColor = {0.8, 0.8, 0.8, 1}
STEALTH.NotificationTextColorOver = {1, 1, 1, 1}
STEALTH.NotificationBubbleColor = HTML("#FE6100FF")
STEALTH.NotificationPopupShowHeader = true
STEALTH.NotificationPopupHeaderBackdrop = STEALTH.MainBackdrop
STEALTH.NotificationPopupHeaderBackdropColor = STEALTH.MainBackdropColor
STEALTH.NotificationPopupHeaderBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.NotificationPopupContentBackdrop = STEALTH.MainBackdrop
STEALTH.NotificationPopupContentBackdropColor = HTML("#222222FF")
STEALTH.NotificationPopupContentBackdropBorderColor = HTML("#222222FF")

STEALTH.MessageWarning = HTML("#FF3300FF")
STEALTH.MessageNotify = HTML("#FE6100FF")

STEALTH.FloatMenuBackdrop = STEALTH.MainBackdrop
STEALTH.FloatMenuBackdropColor = STEALTH.MainBackdropColor
STEALTH.FloatMenuBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.FloatMenuSeparatorColor = HTML("#333333FF")

STEALTH.FloatMenuSmallBackdrop = STEALTH.FloatMenuBackdrop
STEALTH.FloatMenuSmallBackdropColor = STEALTH.MainBackdropColor
STEALTH.FloatMenuSmallBackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.SearchBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 1)
STEALTH.SearchEditBackdropColor = {1, 1, 1, 1}
STEALTH.SearchEditBorderColor = {1, 1, 1, 1}
STEALTH.SearchEditTextColor = {0, 0, 0, 1}
STEALTH.SearchEditTextColorActive = {0, 0, 0, 1}

STEALTH.ActionBarBackdrop = STEALTH.MainBackdrop
STEALTH.ActionBarBackdropColor = STEALTH.MainBackdropColor
STEALTH.ActionBarBackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.FindNearestBackdrop = HTML("#222222FF")
STEALTH.FindNearestBackdropColor = STEALTH.MainBackdropColor
STEALTH.FindNearestBackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.GoldguideBackdrop = STEALTH.MainBackdrop
STEALTH.GoldguideBackdropColor = STEALTH.MainBackdropColor
STEALTH.GoldguideBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.GoldguideHeaderFooterColor = STEALTH.GuideMenuHeaderFooterBackground

STEALTH.WorldQuestBackdrop = STEALTH.MainBackdrop
STEALTH.WorldQuestBackdropColor = STEALTH.MainBackdropColor
STEALTH.WorldQuestBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.WorldQuestMargin = 10

STEALTH.AuctionToolsMargin = 0
STEALTH.AuctionToolsBackdrop = STEALTH.MainBackdrop
STEALTH.AuctionToolsBackdropColor = STEALTH.MainBackdropColor
STEALTH.AuctionToolsBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.AuctionToolsPriceIcons = SKINSDIR .. "goldpricestatusicons"
STEALTH.AuctionToolsHeaderFooterBackground = {0, 0, 0, 1}
STEALTH.AuctionToolsHeaderFooterBorder = {0, 0, 0, 1}

STEALTH.BugBackdrop = STEALTH.MainBackdrop
STEALTH.BugBackdropColor = STEALTH.MainBackdropColor
STEALTH.BugBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.BugEditBackdrop = STEALTH.NoEdgeBackdrop
STEALTH.BugEditBackdropColor = HTML("#222222FF")

STEALTH.GearFinderBackdrop = STEALTH.MainBackdrop
STEALTH.GearFinderBackdropColor = STEALTH.MainBackdropColor
STEALTH.GearFinderBackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.WidgetsBackdrop = STEALTH.MainBackdrop
STEALTH.WidgetsBackdropColor = STEALTH.MainBackdropColor
STEALTH.WidgetsBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.WidgetsTextColor = {1, 1, 1, 1}
STEALTH.WidgetsDragColor = HTML("#333333FF")
STEALTH.WidgetsPopupBackdropColor = {0, 0, 0, 1}
STEALTH.WidgetsPopupBackdropBorderColor = {0, 0, 0, 1}

STEALTH.CreatureBackdrop = STEALTH.MainBackdrop
STEALTH.CreatureBackdropColor = STEALTH.MainBackdropColor
STEALTH.CreatureBackdropBorderColor = STEALTH.MainBackdropBorderColor
STEALTH.CreatureViewerLabelBackground = STEALTH.NoEdgeBackdrop
STEALTH.CreatureViewerLabelColor = {1.0, 1.0, 1.0, 1.0}
STEALTH.CreatureViewerGap = {-10, 0}
STEALTH.CVNoModelTexture = SKINSDIR .. "zygor_mascot"

STEALTH.MoneyBackdrop = STEALTH.MainBackdrop
STEALTH.MoneyBackdropColor = STEALTH.MainBackdropColor
STEALTH.MoneyBackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.GuideMenuBackdrop = STEALTH.MainBackdrop
STEALTH.GuideMenuBackdropColor = STEALTH.MainBackdropColor
STEALTH.GuideMenuBackdropBorderColor = {0, 0, 0, 1}
STEALTH.GuideMenuMenuBackgroundColor = HTML("#2B2B2BFF")
STEALTH.GuideMenuMenuBackdropBorderColor = {0, 0, 0, 1}
STEALTH.GuideMenuDetailsBackdrop = STEALTH.MainBackdrop
STEALTH.GuideMenuDetailsBackdropColor = HTML("#2B2B2BFF")
STEALTH.GuideMenuDetailsBackdropBorderColor = {0, 0, 0, 1}
STEALTH.GuideMenuContentBackdrop = STEALTH.MainBackdrop
STEALTH.GuideMenuContentBackdropColor = HTML("#222222FF")
STEALTH.GuideMenuContentBackdropBorderColor = {0, 0, 0, 1}
STEALTH.GuideMenuExpandedBackdrop = STEALTH.MainBackdrop
STEALTH.GuideMenuExpandedBackdropColor = HTML("#2B2B2BFF")
STEALTH.GuideMenuExpandedBackdropBorderColor = HTML("#2B2B2BFF")
STEALTH.GuideMenuFeaturedDropdown = TiledBackdrop(WHITE_TEX, SKINSDIR_DEFAULT .. "stealth\\backdrop-opaque-small-outline", 32, 31)
STEALTH.GuideMenuFeaturedDropdownBackdropColor = {0, 0, 0, 1}
STEALTH.GuideMenuFeaturedDropdownBackdropBorderColor = {1, 1, 1, 1}
STEALTH.GuideMenuTinyMargin = 1

STEALTH.TitleLogo = SKINSDIR_DEFAULT .. "stealth\\zygorlogo"
STEALTH.TitleLogoSize = {110, 27.5}

STEALTH.TransparencyPrimary = 1
STEALTH.TransparencySecondary = 1

STEALTH.TabBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
STEALTH.TabBackdropColor = {0, 0, 0, 0.0}
STEALTH.StepnumBackdropColor = {0, 0, 0, 0.0}

-----------------------------------------------------------------------
-- Style: STEALTH-GLASS (inherits from stealth, adds transparency)
-----------------------------------------------------------------------
local STEALTH_GLASS = DEFAULT_SKIN:AddStyle("stealth-glass", "Stealth Glass", "stealth")

STEALTH_GLASS.StyleName = "Stealth Glass"
STEALTH_GLASS.StyleID = "stealth-glass"
STEALTH_GLASS.GUIHidden = true
STEALTH_GLASS.UseOpacity = true
STEALTH_GLASS.TransparencyPrimary = 0.8
STEALTH_GLASS.TransparencySecondary = 0.6
STEALTH_GLASS.MainBackdropColor = {0, 0, 0, 0.8}
STEALTH_GLASS.WindowBackdropColor = {0, 0, 0, 0.8}
STEALTH_GLASS.StepBackdropColor = {0.13, 0.13, 0.13, 0.6}

-----------------------------------------------------------------------
-- Colors Table (Zygor-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitColors()
-- DEBUG: PARAM style = [style]
local function InitColors(style)
    style.Colors = {
        bg_deep = style.MainBackdropColor or HTML("#111111FF"),
        bg_medium = style.PanelBackdropColor or HTML("#202020FF"),
        bg_light = style.SmallBackdropColor or HTML("#2B2B2BFF"),
        bg_hover = HTML("#FFFFFF0A"),
        border = style.MainBackdropBorderColor or HTML("#404040FF"),
        border_bright = HTML("#666666FF"),
        border_dim = HTML("#333333FF"),
        cyan = style.AccentColor or HTML("#FE6100FF"),
        cyan_light = HTML("#FF8C40FF"),
        cyan_dark = HTML("#A03D00FF"),
        purple = HTML("#9B30FFFF"),
        green = HTML("#00CC01FF"),
        red = HTML("#FF3300FF"),
        red_light = HTML("#FF8080FF"),
        yellow = HTML("#FFD000FF"),
        orange = style.AccentColor or HTML("#FE6100FF"),
        text_bright = {1, 1, 1, 1},
        text_normal = HTML("#CCCCCCFF"),
        text_muted = HTML("#999999FF"),
        text_dim = HTML("#666666FF"),
        step_active = HTML("#FE610014"),
        step_complete = HTML("#00CC0114"),
        step_upcoming = HTML("#00000066"),
        black = {0, 0, 0, 1},
        white = {1, 1, 1, 1},
        transparent = {0, 0, 0, 0},
    }
-- DEBUG: EXIT InitColors()
end

InitColors(STARLIGHT)
InitColors(STARLIGHT_GLASS)
InitColors(STEALTH)
InitColors(STEALTH_GLASS)

-----------------------------------------------------------------------
-- Fonts Table (Zygor-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitFonts()
-- DEBUG: PARAM style = [style]
local function InitFonts(style)
    style.Fonts = {
        title = {style.FontFace, 12, ""},
        normal = {style.FontFace, 12, ""},
        small = {style.FontFace, 10, ""},
        tiny = {style.FontFace, 9, ""},
        header = {style.FontFaceHeader, 16, ""},
        bold = {style.FontFaceBold, 12, ""},
    }
-- DEBUG: EXIT InitFonts()
end

InitFonts(STARLIGHT)
InitFonts(STARLIGHT_GLASS)
InitFonts(STEALTH)
InitFonts(STEALTH_GLASS)

-----------------------------------------------------------------------
-- Sizes Table (Zygor-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitSizes()
-- DEBUG: PARAM style = [style]
local function InitSizes(style)
    style.Sizes = {
        viewer_width = style.ViewerWidth,
        viewer_height = style.ViewerHeight,
        menu_width = style.MenuWidth,
        menu_height = style.MenuHeight,
        titlebar_height = style.TitleBarHeight,
        tab_height = style.TabHeight,
        toolbar_height = style.ToolbarHeight,
        sidebar_width = style.SidebarWidth,
        category_height = style.CategoryHeight,
        step_height = style.StepHeight,
        footer_height = style.FooterHeight,
    }
-- DEBUG: EXIT InitSizes()
end

InitSizes(STARLIGHT)
InitSizes(STARLIGHT_GLASS)
InitSizes(STEALTH)
InitSizes(STEALTH_GLASS)

-----------------------------------------------------------------------
-- Backdrops Table (Zygor-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER InitBackdrops()
-- DEBUG: PARAM style = [style]
local function InitBackdrops(style)
    style.Backdrops = {
        main = style.MainBackdrop,
        panel = style.PanelBackdrop,
        small = style.SmallBackdrop,
        none = style.NoEdgeBackdrop,
    }
-- DEBUG: EXIT InitBackdrops()
end

InitBackdrops(STARLIGHT)
InitBackdrops(STARLIGHT_GLASS)
InitBackdrops(STEALTH)
InitBackdrops(STEALTH_GLASS)

-----------------------------------------------------------------------
-- Public API
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:InitSkins()
function XP:InitSkins()
    local skinID = self.db and self.db.profile.skin or "default"
    local styleID = self.db and self.db.profile.skinstyle or "starlight"
    self:SetSkin(skinID, styleID)
-- DEBUG: EXIT XP:InitSkins()
end

-- DEBUG: ENTER XP:SetSkin()
-- DEBUG: PARAM skinID = [skinID]
-- DEBUG: PARAM styleID = [styleID]
function XP:SetSkin(skinID, styleID)
    -- Handle combined "skinID-styleID" format from GetSkinList
    if type(skinID) == "string" and styleID == nil and skinID:match(".-%-(.+)") then
        skinID, styleID = skinID:match("([^%-]+)%-(.+)")
    end
    
    local skin = skins[skinID or "default"]
    if not skin then
        skin = skins["default"]
    end
    
    local styledata = skin:GetStyle(styleID)
    if not styledata then
        styledata = skin:GetStyle("starlight")
    end
    
    activeSkin = skin
    activeStyle = styledata
    
    XP.CurrentSkin = skin
    XP.CurrentSkinStyle = styledata
    XP.SkinDir = skin:GetDir()
    XP.StyleDir = styledata:GetDir()
    
    self:CreateIconSets()
    self:CreateButtonSets()
    
    if self.SendMessage then
        self:SendMessage("XP_SKIN_UPDATED", styledata.id)
    end
    
    for _, fn in ipairs(skinSubscribers) do
        pcall(fn, styledata.id)
    end
    
    self:CreateFrame()
-- DEBUG: EXIT XP:SetSkin()
end

-- DEBUG: ENTER XP:CreateFrame()
function XP:CreateFrame()
    if self.MenuFrame and self.MenuFrame.ApplySkin then
        self.MenuFrame:ApplySkin()
    end
    if self.ViewerFrame and self.ViewerFrame.ApplySkin then
        self.ViewerFrame:ApplySkin()
    end
-- DEBUG: EXIT XP:CreateFrame()
end

-- DEBUG: ENTER XP:RegisterSkinSubscriber()
-- DEBUG: PARAM fn = [fn]
function XP:RegisterSkinSubscriber(fn)
    if type(fn) == "function" then
        table.insert(skinSubscribers, fn)
    end
-- DEBUG: EXIT XP:RegisterSkinSubscriber()
end

-- DEBUG: ENTER XP:RegisterSkin()
-- DEBUG: PARAM skinData = [skinData]
function XP:RegisterSkin(skinData)
    if skinData and skinData.id then
        skins[skinData.id] = skinData
    end
-- DEBUG: EXIT XP:RegisterSkin()
end

-- DEBUG: ENTER XP:GetSkinList()
function XP:GetSkinList()
    local list = {}
    for id, skin in pairs(skins) do
        if type(skin) == "table" and not skin.GUIHidden then
            local styles_list = {}
            for sid, style in pairs(skin.styles) do
                if not style.GUIHidden then
                    table.insert(styles_list, {id = sid, name = style.name or style.StyleName or sid})
                end
            end
            table.sort(styles_list, function(a, b) return a.name < b.name end)
            for _, s in ipairs(styles_list) do
                table.insert(list, {id = id .. "-" .. s.id, name = skin.name .. " - " .. s.name})
            end
        end
    end
    table.sort(list, function(a, b) return a.name < b.name end)
    return list
-- DEBUG: EXIT XP:GetSkinList()
end

-- DEBUG: ENTER XP:GetSkin()
-- DEBUG: PARAM id = [id]
function XP:GetSkin(id)
    return skins[id or "default"]
-- DEBUG: EXIT XP:GetSkin()
end

-----------------------------------------------------------------------
-- SkinData Accessor (Zygor-compatible)
-- XP:SD("KeyName") or XP.SkinData("KeyName")
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:SD()
-- DEBUG: PARAM key = [key]
function XP:SD(key)
    if not activeStyle then return nil end
    return activeStyle:GetProp(key)
-- DEBUG: EXIT XP:SD()
end

-- DEBUG: ENTER SkinData()
-- DEBUG: PARAM key = [key]
XP.SkinData = function(key)
    if not activeStyle then return nil end
    return activeStyle:GetProp(key)
-- DEBUG: EXIT SkinData()
end

-----------------------------------------------------------------------
-- Color Helpers
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:Color()
-- DEBUG: PARAM name = [name]
function XP:Color(name)
    if not activeStyle or not activeStyle.Colors then
        return {1, 1, 1, 1}
    end
    local c = activeStyle.Colors[name]
    return c or {1, 1, 1, 1}
-- DEBUG: EXIT XP:Color()
end

-- DEBUG: ENTER XP:ColorRGBA()
-- DEBUG: PARAM name = [name]
function XP:ColorRGBA(name)
    local c = self:Color(name)
    return c[1] or 1, c[2] or 1, c[3] or 1, c[4] or 1
-- DEBUG: EXIT XP:ColorRGBA()
end

-- DEBUG: ENTER XP:Font()
-- DEBUG: PARAM name = [name]
function XP:Font(name)
    if not activeStyle or not activeStyle.Fonts then
        return {"Fonts\\FRIZQT__.TTF", 12, ""}
    end
    local f = activeStyle.Fonts[name]
    return f or {"Fonts\\FRIZQT__.TTF", 12, ""}
-- DEBUG: EXIT XP:Font()
end

-- DEBUG: ENTER XP:Backdrop()
-- DEBUG: PARAM name = [name]
function XP:Backdrop(name)
    if not activeStyle then
        return SolidBackdrop()
    end
    if activeStyle.Backdrops and activeStyle.Backdrops[name] then
        return activeStyle.Backdrops[name]
    end
    if activeStyle[name] then
        return activeStyle[name]
    end
    return activeStyle.MainBackdrop or SolidBackdrop()
-- DEBUG: EXIT XP:Backdrop()
end

-- DEBUG: ENTER XP:Size()
-- DEBUG: PARAM name = [name]
function XP:Size(name)
    if not activeStyle or not activeStyle.Sizes then
        return 0
    end
    local s = activeStyle.Sizes[name]
    return s or 0
-- DEBUG: EXIT XP:Size()
end

-- DEBUG: ENTER XP:ActionIcon()
-- DEBUG: PARAM actionName = [actionName]
function XP:ActionIcon(actionName)
    return XP.ActionIconPaths[actionName:lower()] or XP.ActionIconPaths["default"]
-- DEBUG: EXIT XP:ActionIcon()
end

-----------------------------------------------------------------------
-- Skin Application Helpers
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:ApplyBackdrop()
-- DEBUG: PARAM frame = [frame]
-- DEBUG: PARAM backdropName = [backdropName]
-- DEBUG: PARAM bgColor = [bgColor]
-- DEBUG: PARAM borderColor = [borderColor]
function XP:ApplyBackdrop(frame, backdropName, bgColor, borderColor)
    if not frame then return end
    local bd = self:Backdrop(backdropName or "main")
    if frame.SetBackdrop then
        frame:SetBackdrop(bd)
        if bgColor then
            frame:SetBackdropColor(self:ColorRGBA(bgColor))
        end
        if borderColor then
            frame:SetBackdropBorderColor(self:ColorRGBA(borderColor))
        end
    end
-- DEBUG: EXIT XP:ApplyBackdrop()
end

-- DEBUG: ENTER XP:ApplyFont()
-- DEBUG: PARAM fontString = [fontString]
-- DEBUG: PARAM fontName = [fontName]
-- DEBUG: PARAM colorName = [colorName]
function XP:ApplyFont(fontString, fontName, colorName)
    if not fontString then return end
    local f = self:Font(fontName or "normal")
    fontString:SetFont(f[1], f[2], f[3])
    if colorName then
        fontString:SetTextColor(self:ColorRGBA(colorName))
    end
-- DEBUG: EXIT XP:ApplyFont()
end

-- DEBUG: ENTER XP:SkinButton()
-- DEBUG: PARAM button = [button]
-- DEBUG: PARAM options = [options]
function XP:SkinButton(button, options)
    if not button then return end
    options = options or {}
    self:ApplyBackdrop(button, "panel",
        options.bg or "bg_medium",
        options.border or "border")
    local textObj = button.GetFontString and button:GetFontString() or button.Text
    if textObj then
        self:ApplyFont(textObj, options.font or "small",
            options.textColor or "text_bright")
    end
    button:SetScript("OnEnter", function(self_btn)
        if button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
        end
        if options.onEnter then options.onEnter(self_btn) end
    end)
    button:SetScript("OnLeave", function(self_btn)
        if button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(XP:ColorRGBA(options.border or "border"))
        end
        if options.onLeave then options.onLeave(self_btn) end
    end)
-- DEBUG: EXIT XP:SkinButton()
end

-- DEBUG: ENTER XP:CreateDivider()
-- DEBUG: PARAM parent = [parent]
-- DEBUG: PARAM yOffset = [yOffset]
-- DEBUG: PARAM colorName = [colorName]
function XP:CreateDivider(parent, yOffset, colorName)
    local div = parent:CreateTexture(nil, "ARTWORK")
    div:SetHeight(1)
    div:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, yOffset or 0)
    div:SetPoint("TOPRIGHT", parent, "TOPRIGHT", 0, yOffset or 0)
    XP.SetTexColor(div, XP:ColorRGBA(colorName or "border"))
    return div
-- DEBUG: EXIT XP:CreateDivider()
end

-- SetTexColor is defined in Compat.lua for WoW version compat
-- DO NOT define it here. It uses SetColorTexture/SetTexture(r,g,b,a) not SetVertexColor

-----------------------------------------------------------------------
-- Icon Sets (Zygor-compatible)
-----------------------------------------------------------------------
XP.IconSets = {}

-- DEBUG: ENTER XP:CreateIconSets()
function XP:CreateIconSets()
    -- DEBUG: ENTER getTexCoord()
    -- DEBUG: PARAM set = [set]
    -- DEBUG: PARAM name = [name]
    local getTexCoord = function(set, name)
        local data = set[name]
        if not data then
            data = set[set.default] or {1, 1}
        end
        local c, r = data[1], data[2]
        local pad = set.padding or 0
        return
            (c - 1) / set.cols + pad / set.cols,
            c / set.cols - pad / set.cols,
            (r - 1) / set.rows + pad / set.rows,
            r / set.rows - pad / set.rows
    -- DEBUG: EXIT getTexCoord()
    end
    
    self.IconSets.TabsIcons = {
        LEVELING = {1, 1, label = "Leveling"},
        EVENTS = {2, 1, label = "Events"},
        DAILIES = {3, 1, label = "Dailies"},
        LOREMASTER = {4, 1, label = "Loremaster"},
        GOLD = {1, 2, label = "Gold"},
        PROFESSIONS = {2, 2, label = "Professions"},
        PETSMOUNTS = {3, 2, label = "Pets & Mounts"},
        ACHIEVEMENTS = {4, 2, label = "Achievements"},
        TITLES = {1, 3, label = "Titles"},
        REPUTATIONS = {2, 3, label = "Reputations"},
        MACROS = {3, 3, label = "Macros"},
        DUNGEONS = {4, 3, label = "Dungeons"},
        GEAR = {1, 4, label = "Gear"},
        SHARED = {2, 4, label = "Shared"},
        QUESTS = {3, 4, label = "Quests"},
        FAVOURITES = {4, 4, label = "Favorites"},
        STARTUPWIZ = {5, 1, label = "Startup Guide Wizard"},
        TEST = {0, 0, label = "Test"},
        file = self:SD("TabsIcons") or GUIDEICONS_DIR .. "-big",
        cols = 8,
        rows = 4,
        width = 512,
        height = 512,
        padding = 0,
        default = "LEVELING"
    }
    
    self.IconSets.GuideIconsSmall = {
        FOLDER = {1, 1},
        GUIDE = {2, 1},
        EXCLAMATION = {3, 1},
        STAR = {1, 2},
        QUEST = {2, 2},
        file = self:SD("GuideMenuSmallIcons") or GUIDEICONS_DIR .. "-small",
        cols = 4,
        rows = 2,
        width = 128,
        height = 64,
        padding = 0,
        default = "GUIDE"
    }
    
    self.IconSets.OptionsIcons = {
        general = {2, 1, label = "General"},
        stepdisplay = {2, 2, label = "Step Display"},
        display = {2, 3, label = "Display"},
        travelsystem = {2, 4, label = "Travel System"},
        poi = {2, 5, label = "POI"},
        notification = {2, 6, label = "Notification"},
        gear = {2, 7, label = "Gear"},
        itemscore = {2, 8, label = "Item Score"},
        gold = {2, 9, label = "Gold"},
        extras = {2, 10, label = "Extras"},
        profile = {2, 11, label = "Profile"},
        about = {2, 12, label = "About"},
        share = {2, 13, label = "Share"},
        zta = {2, 15, label = "Talent System"},
        _exclamation = {2, 14, label = ""},
        _target = {2, 15, label = ""},
        automation = {2, 16, label = "Automation"},
        actionbuttons = {2, 17, label = "Action Buttons"},
        maps = {2, 18, label = "Maps"},
        debugset = {0, 0, label = "Debug: settings"},
        debugfake = {0, 0, label = "Debug: faking stuff"},
        debugdig = {0, 0, label = "Debug: data digging"},
        debugremoved = {0, 0, label = "Debug: removed options"},
        debugshare = {0, 0, label = "Debug: share"},
        debugvariants = {0, 0, label = "Debug: variants"},
        file = SKINSDIR .. "options-menu-icons",
        cols = 2,
        rows = 32,
        width = 128,
        height = 2048,
        padding = 0,
        default = "general"
    }
    
    self.IconSets.GoldGuideIcons = {
        GOLD = {1, 1},
        FARM = {2, 1},
        GATHER = {3, 1},
        CRAFT = {4, 1},
        AUCTION = {5, 1},
        QUEST = {6, 1},
        BASKET = {7, 1},
        SHOVEL = {8, 1},
        file = SKINSDIR .. "goldguideicons",
        cols = 8,
        rows = 2,
        width = 512,
        height = 128,
        padding = 0,
        default = "GOLD"
    }
    
    self.IconSets.AuctionToolsPriceIcons = {
        UP1 = {1, 1}, UP2 = {2, 1}, UP3 = {3, 1},
        DOWN1 = {4, 1}, DOWN2 = {5, 1}, DOWN3 = {6, 1},
        BULLET = {7, 1}, CROSSH = {8, 1},
        NOPE = {9, 1}, QUESTION = {10, 1},
        DELETE = {11, 1}, ADD = {12, 1},
        file = SKINSDIR .. "goldpricestatusicons",
        cols = 16,
        rows = 1,
        width = 512,
        height = 32,
        padding = 0,
        default = "BULLET"
    }
    
    self.IconSets.WorldQuest = {
        QUEST = {1, 1}, PET = {2, 1}, DUNGEON = {3, 1},
        RAID = {4, 1}, INVASION = {5, 1}, PVP = {6, 1},
        ALCHEMY = {7, 1}, ARCHAEOLOGY = {8, 1}, BLACKSMITHING = {9, 1},
        HERBALISM = {10, 1}, INSCRIPTION = {11, 1}, JEWELCRAFTING = {12, 1},
        LEATHERWORKING = {13, 1}, TAILORING = {14, 1}, SKINNING = {15, 1},
        COOKING = {16, 1}, ENCHANTING = {17, 1}, ENGINEERING = {18, 1},
        FISHING = {19, 1}, MINING = {20, 1}, HORDE = {21, 1},
        ALLIANCE = {22, 1}, DAILY = {23, 1}, FIRSTAID = {24, 1},
        BARBER = {25, 1}, VOID = {26, 1},
        file = SKINSDIR .. "icons-worldquest",
        cols = 32,
        rows = 1,
        width = 1024,
        height = 32,
        padding = 0,
        default = "QUEST"
    }
    
    self.IconSets.TalentPoints = {
        EMPTY = {1, 1},
        [1] = {2, 1}, [2] = {3, 1}, [3] = {4, 1},
        [4] = {5, 1}, [5] = {6, 1},
        GOOD = {7, 1}, BAD = {8, 1},
        ANIM1 = {1, 2}, ANIM2 = {2, 2}, ANIM3 = {3, 2},
        ANIM4 = {4, 2}, ANIM5 = {5, 2}, ANIM6 = {6, 2},
        ANIM7 = {7, 2}, ANIM8 = {8, 2},
        file = SKINSDIR .. "zta_hints",
        cols = 8,
        rows = 2,
        width = 512,
        height = 128,
        padding = 0,
        default = "EMPTY"
    }
    
    self.IconSets.ActionBarIcons = {
        TALK = {1, 1}, KILL = {2, 1}, EMOTE = {3, 1},
        SCRIPT = {4, 1}, TRASH = {5, 1},
        file = SKINSDIR .. "actionbar",
        cols = 8,
        rows = 1,
        width = 512,
        height = 64,
        padding = 0,
        default = "TALK"
    }
    
    self.IconSets.ExpansionIcons = {
        VANILLA = {1, 1}, TBC = {2, 1}, WOTLK = {3, 1},
        CATA = {4, 1}, MOP = {5, 1}, WOD = {6, 1},
        LEGION = {7, 1}, BFA = {8, 1},
        SHADOW = {9, 1}, DRAGON = {10, 1},
        file = SKINSDIR .. "expansion-icons",
        cols = 16,
        rows = 1,
        width = 1024,
        height = 64,
        padding = 0,
        default = "DRAGON"
    }
    
    self.IconSets.NotificationIcons = {
        RELOAD = {1, 1}, MONK = {2, 1}, DUNGEON = {3, 1},
        MOUNT = {4, 1}, GEAR = {5, 1}, PET = {6, 1},
        GOLD = {7, 1}, ZYGOR = {8, 1}, ORIENTATION = {9, 1},
        SHARE = {10, 1}, EVENTS = {11, 1}, SKILL = {12, 1},
        NOSKILL = {13, 1}, DAILY = {14, 1}, WEEKLY = {15, 1},
        CUTSCENE = {16, 1}, FOLDER = {17, 1},
        file = SKINSDIR .. "icons-notificationcenter",
        cols = 32,
        rows = 1,
        width = 1024,
        height = 32,
        padding = 0,
        default = "ZYGOR"
    }
    
    self.IconSets.ItemUpgrades = {
        GLOW = {1, 1}, ARROW = {1, 2}, BORDER = {1, 3},
        file = SKINSDIR .. "item-upgrade",
        cols = 1,
        rows = 4,
        width = 64,
        height = 256,
        padding = 0,
        default = "GLOW"
    }
    
    self.IconSets.StepLineIcons = {
        DOT = {1, 1}, BIGDOT = {2, 1}, CHECK = {3, 1},
        INACTIVEDOT = {4, 1}, EXCLAMATION = {5, 1}, QUEST = {6, 1},
        MOB = {7, 1}, LOOT = {8, 1}, STAR = {9, 1},
        INN = {10, 1}, DAILY = {11, 1}, WING = {12, 1},
        TALK = {13, 1}, NAVIGATION = {14, 1}, TREASURE = {15, 1},
        RAREMOB = {16, 1}, IMAGE = {17, 1}, ARROW = {18, 1},
        file = self:SD("StepLineIcons") or SKINSDIR .. "stepicons",
        cols = 32,
        rows = 1,
        width = 1024,
        height = 32,
        padding = 0,
        default = "DOT"
    }
    
    for setName, set in pairs(self.IconSets) do
        -- DEBUG: ENTER getTexCoord()
        -- DEBUG: PARAM name = [name]
        set.getTexCoord = function(name)
            return getTexCoord(set, name)
        -- DEBUG: EXIT getTexCoord()
        end
        -- DEBUG: ENTER getIconPath()
        -- DEBUG: PARAM name = [name]
        set.getIconPath = function(name)
            return set.file
        -- DEBUG: EXIT getIconPath()
        end
        -- DEBUG: ENTER AssignToTexture()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM texture = [texture]
        set.AssignToTexture = function(icon, texture)
            if not texture then return end
            texture:SetTexture(set.file)
            local left, right, top, bottom = set.getTexCoord(icon or set.default)
            texture:SetTexCoord(left, right, top, bottom)
        -- DEBUG: EXIT AssignToTexture()
        end
        -- DEBUG: ENTER AssignToButton()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM button = [button]
        set.AssignToButton = function(icon, button)
            if not button then return end
            if not button.GetNormalTexture then return end
            if not button:GetNormalTexture() then button:SetNormalTexture("dummy") end
            if not button:GetPushedTexture() then button:SetPushedTexture("dummy") end
            if not button:GetHighlightTexture() then button:SetHighlightTexture("dummy") end
            if not button:GetDisabledTexture() then button:SetDisabledTexture("dummy") end
            
            local left, right, top, bottom = getTexCoord(set, set.default)
            local ntex = button:GetNormalTexture()
            if ntex then ntex:SetTexture(set.file); ntex:SetTexCoord(left, right, top, bottom) end
            local ptex = button:GetPushedTexture()
            if ptex then ptex:SetTexture(set.file); ptex:SetTexCoord(left, right, top, bottom) end
            local htex = button:GetHighlightTexture()
            if htex then htex:SetTexture(set.file); htex:SetTexCoord(left, right, top, bottom); htex:SetBlendMode("ADD") end
            local dtex = button:GetDisabledTexture()
            if dtex then dtex:SetTexture(set.file); dtex:SetTexCoord(left, right, top, bottom) end
        -- DEBUG: EXIT AssignToButton()
        end
    end
-- DEBUG: EXIT XP:CreateIconSets()
end

-----------------------------------------------------------------------
-- Button Sets (Zygor-compatible)
-----------------------------------------------------------------------
XP.ButtonSets = {}

-- DEBUG: ENTER XP:CreateButtonSets()
function XP:CreateButtonSets()
    -- DEBUG: ENTER getTexCoords()
    -- DEBUG: PARAM set = [set]
    -- DEBUG: PARAM name = [name]
    local getTexCoords = function(set, name)
        -- DEBUG: ENTER getTexCoord()
        -- DEBUG: PARAM set = [set]
        -- DEBUG: PARAM name = [name]
        -- DEBUG: PARAM i = [i]
        local function getTexCoord(set, name, i)
            local n = set[name].n
            return
                (n - 1) / set.count + set.padding / set.count,
                n / set.count - set.padding / set.count,
                (i - 1) / 4 + set.padding / 4,
                i / 4 - set.padding / 4
        -- DEBUG: EXIT getTexCoord()
        end
        return {getTexCoord(set, name, 1)}, {getTexCoord(set, name, 2)}, {getTexCoord(set, name, 3)}, {getTexCoord(set, name, 4)}
    -- DEBUG: EXIT getTexCoords()
    end
    
    -- DEBUG: ENTER getTexCoordsRaw()
    -- DEBUG: PARAM set = [set]
    -- DEBUG: PARAM name = [name]
    local getTexCoordsRaw = function(set, name)
        -- DEBUG: ENTER getTexCoord()
        -- DEBUG: PARAM set = [set]
        -- DEBUG: PARAM name = [name]
        -- DEBUG: PARAM i = [i]
        local function getTexCoord(set, name, i)
            if not set.texturewidth then return end
            local n = set[name].n
            local w = set.texturewidth / set.count
            local h = set.textureheight / 4
            return
                (n - 1) * w + set.padding / set.count,
                n * w - set.padding / set.count,
                (i - 1) * h + set.padding / 4,
                i * h - set.padding / 4
        -- DEBUG: EXIT getTexCoord()
        end
        return {getTexCoord(set, name, 1)}, {getTexCoord(set, name, 2)}, {getTexCoord(set, name, 3)}, {getTexCoord(set, name, 4)}
    -- DEBUG: EXIT getTexCoordsRaw()
    end
    
    self.ButtonSets.TitleButtons = {
        QUESTION = {n = 1}, NOTIFICATIONS = {n = 2},
        LOCK_OFF = {n = 3}, LOCK_ON = {n = 4},
        SETTINGS = {n = 5}, CLOSE = {n = 6},
        DOTS = {n = 7}, FRAME = {n = 8},
        STEP_PREV = {n = 9}, STEP_NEXT = {n = 10},
        LOADGUIDE = {n = 11}, QUESTCLEANUP = {n = 12},
        MORETABS = {n = 13}, STEPREPORT = {n = 14},
        BUGREPORT = {n = 15}, LIST = {n = 16},
        BURGER = {n = 17}, INFO = {n = 18},
        DROPDOWN = {n = 19}, SMALLX = {n = 20},
        INLINETRAVEL = {n = 21}, GOLDGUIDE = {n = 22},
        ADDGUIDE = {n = 23}, SHARE = {n = 24},
        MAPMARKER = {n = 25}, CHANGEGUIDE = {n = 26},
        RIGHTRIGHT = {n = 27}, PLUS = {n = 28},
        MINUS = {n = 29}, RELOAD = {n = 30},
        FLASH = {n = 31}, SEARCH = {n = 32},
        TRAINER = {n = 33}, FINDNPC = {n = 34},
        RESIZE = {n = 35}, DRAG = {n = 36},
        VISIBLE = {n = 37}, INVISIBLE = {n = 38},
        BROOM = {n = 39}, WIDGETS = {n = 40},
        WAND = {n = 41}, BAGMANY = {n = 42},
        BAGONE = {n = 43}, BAGLIST = {n = 44},
        VIEWER = {n = 45},
        file = self:SD("TitleButtonsTexture") or SKINSDIR .. "titlebuttons-thin",
        count = 64,
        width = 1,
        height = 1,
        padding = 1/16,
        texturewidth = 2048,
        textureheight = 128,
        default = "QUESTION"
    }
    
    self.ButtonSets.Interactions = {
        CHECKBOX = {n = 1}, CHECKBOX_ON = {n = 2},
        RADIO = {n = 3}, RADIO_ON = {n = 4},
        file = self:SD("InteractionTexture") or SKINSDIR .. "checkradio-thin",
        count = 4,
        width = 1,
        height = 1,
        padding = 1/16,
        default = "CHECKBOX"
    }
    
    self.ButtonSets.RatingButtons = {
        HAPPY = {n = 1}, INDIFFERENT = {n = 2}, UNHAPPY = {n = 3},
        file = SKINSDIR .. "rating-zygorface4",
        count = 4,
        width = 1,
        height = 1,
        padding = 1/16,
        default = "INDIFFERENT"
    }
    
    self.ButtonSets.RatingButtons_active = {
        HAPPY = {n = 1}, INDIFFERENT = {n = 2}, UNHAPPY = {n = 3},
        file = SKINSDIR .. "rating-zygorface4",
        count = 4,
        width = 1,
        height = 1,
        padding = 1/16,
        default = "INDIFFERENT"
    }
    
    self.ButtonSets.FloatingIcons = {
        BROOM = {n = 1}, WIDGETS = {n = 2}, CLOSE = {n = 3},
        file = self:SD("FloatingButtons") or SKINSDIR .. "floatingbuttons-thin",
        count = 4,
        width = 1,
        height = 1,
        padding = 0,
        default = "CLOSE"
    }
    
    self.ButtonSets.Minimap = {
        NORMAL = {n = 1}, ACTIVE = {n = 2},
        file = self:SD("MinimapIcon") or SKINSDIR .. "minimap-icon",
        count = 2,
        width = 1,
        height = 1,
        padding = 0,
        default = "NORMAL"
    }
    
    self.ButtonSets.SpecialButton = {
        ZYGOR = {n = 1},
        file = SKINSDIR .. "gear-logo-64",
        count = 1,
        width = 1,
        height = 1,
        padding = 0
    }
    
    for setName, set in pairs(self.ButtonSets) do
        -- DEBUG: ENTER getTexCoords()
        -- DEBUG: PARAM name = [name]
        set.getTexCoords = function(name)
            return getTexCoords(set, name)
        -- DEBUG: EXIT getTexCoords()
        end
        -- DEBUG: ENTER getTexCoordsRaw()
        -- DEBUG: PARAM name = [name]
        set.getTexCoordsRaw = function(name)
            return getTexCoordsRaw(set, name)
        -- DEBUG: EXIT getTexCoordsRaw()
        end
        -- DEBUG: ENTER AssignToButton()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM button = [button]
        set.AssignToButton = function(icon, button)
            if not button then return end
            if not button.GetNormalTexture then return end
            if not button:GetNormalTexture() then button:SetNormalTexture("dummy") end
            if not button:GetPushedTexture() then button:SetPushedTexture("dummy") end
            if not button:GetHighlightTexture() then button:SetHighlightTexture("dummy") end
            if not button:GetDisabledTexture() then button:SetDisabledTexture("dummy") end
            
            local coords = set.getTexCoords(set.default)
            local ntex = button:GetNormalTexture()
            if ntex then ntex:SetTexture(set.file); ntex:SetTexCoord(unpack(coords[1])) end
            local ptex = button:GetPushedTexture()
            if ptex then ptex:SetTexture(set.file); ptex:SetTexCoord(unpack(coords[2])) end
            local htex = button:GetHighlightTexture()
            if htex then htex:SetTexture(set.file); htex:SetTexCoord(unpack(coords[3])); htex:SetBlendMode("ADD") end
            local dtex = button:GetDisabledTexture()
            if dtex then dtex:SetTexture(set.file); dtex:SetTexCoord(unpack(coords[4])) end
        -- DEBUG: EXIT AssignToButton()
        end
        -- DEBUG: ENTER AssignToTexture()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM texture = [texture]
        set.AssignToTexture = function(icon, texture)
            if not texture then return end
            local coords = getTexCoords(set, set.default)
            texture:SetTexture(set.file)
            texture:SetTexCoord(unpack(coords[1]))
        -- DEBUG: EXIT AssignToTexture()
        end
        -- DEBUG: ENTER GetFontString()
        -- DEBUG: PARAM icon = [icon]
        -- DEBUG: PARAM width = [width]
        -- DEBUG: PARAM height = [height]
        -- DEBUG: PARAM offsetx = [offsetx]
        -- DEBUG: PARAM offsety = [offsety]
        set.GetFontString = function(icon, width, height, offsetx, offsety)
            local raw = getTexCoordsRaw(set, set.default)
            local icon1 = raw[1]
            return {
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, icon1[1], icon1[2], icon1[3], icon1[4]),
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, raw[2][1], raw[2][2], raw[2][3], raw[2][4]),
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, raw[3][1], raw[3][2], raw[3][3], raw[3][4]),
                ("%s:%d:%d:%d:%d:%d:%d:%d:%d:%d:%d"):format(set.file, width or 16, height or 16, offsetx or 0, offsety or 0, set.texturewidth or 256, set.textureheight or 64, raw[4][1], raw[4][2], raw[4][3], raw[4][4])
            }
        -- DEBUG: EXIT GetFontString()
        end
    end
-- DEBUG: EXIT XP:CreateButtonSets()
end

-----------------------------------------------------------------------
-- Scrollbar Styling (Zygor-compatible)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:AddStyleToBlizzardScrollBar()
-- DEBUG: PARAM scrollbar = [scrollbar]
function XP:AddStyleToBlizzardScrollBar(scrollbar)
    if not scrollbar then return end
    
    local thumb_top = scrollbar:CreateTexture()
    thumb_top:SetDrawLayer("ARTWORK", 1)
    thumb_top:SetPoint("TOP", scrollbar.ThumbTexture)
    thumb_top:SetSize(11, self:SD("ScrollBarDecorHeight") or 16)
    thumb_top:SetTexture(self:SD("ScrollBarTexture") or WHITE_TEX)
    thumb_top:SetTexCoord(0, 1, 0, 0.25)
    local sr, sg, sb, sa = self:ColorRGBA("ScrollBarColor")
    thumb_top:SetVertexColor(sr, sg, sb, sa)
    thumb_top:SetWidth(scrollbar.ThumbTexture:GetWidth())
    
    local thumb_bottom = scrollbar:CreateTexture()
    thumb_bottom:SetDrawLayer("ARTWORK", 1)
    thumb_bottom:SetPoint("BOTTOM", scrollbar.ThumbTexture)
    thumb_bottom:SetSize(11, self:SD("ScrollBarDecorHeight") or 16)
    thumb_bottom:SetTexture(self:SD("ScrollBarTexture") or WHITE_TEX)
    thumb_bottom:SetTexCoord(0, 1, 0.5, 0.75)
    thumb_bottom:SetVertexColor(sr, sg, sb, sa)
    thumb_bottom:SetWidth(scrollbar.ThumbTexture:GetWidth())
    
    scrollbar.ThumbTexture:SetAlpha(0)
    
    for i, v in ipairs({scrollbar:GetRegions()}) do
        if v.GetName and v:GetName() == "BACKGROUND" then
            v:SetAlpha(0)
        end
    end
    
    if scrollbar.ScrollUpButton and scrollbar.ScrollDownButton then
        local arrowsTex = self:SD("ScrollArrowsTexture") or WHITE_TEX
        scrollbar.ScrollUpButton:SetNormalTexture(arrowsTex)
        scrollbar.ScrollUpButton:SetPushedTexture(arrowsTex)
        scrollbar.ScrollUpButton:SetHighlightTexture(arrowsTex)
        scrollbar.ScrollDownButton:SetNormalTexture(arrowsTex)
        scrollbar.ScrollDownButton:SetPushedTexture(arrowsTex)
        scrollbar.ScrollDownButton:SetHighlightTexture(arrowsTex)
    end
-- DEBUG: EXIT XP:AddStyleToBlizzardScrollBar()
end

-----------------------------------------------------------------------
-- Arrow Skin System (Zygor-compatible placeholder)
-- Full implementation would be in a separate ArrowSkin.lua file
-----------------------------------------------------------------------
XP.ArrowSkins = {}

-- DEBUG: ENTER XP.ArrowSkins:AddArrowSkin()
-- DEBUG: PARAM id = [id]
-- DEBUG: PARAM name = [name]
function XP.ArrowSkins:AddArrowSkin(id, name)
    local arrowSkin = {id = id, name = name, icons = {}}
    XP.ArrowSkins[id] = arrowSkin
    return arrowSkin
-- DEBUG: EXIT XP.ArrowSkins:AddArrowSkin()
end

-- DEBUG: ENTER XP:SetArrowSkin()
-- DEBUG: PARAM skinID = [skinID]
function XP:SetArrowSkin(skinID)
    self.CurrentArrowSkin = XP.ArrowSkins[skinID]
    if self.SendMessage then
        self:SendMessage("XP_ARROWSKIN_UPDATED", skinID)
    end
-- DEBUG: EXIT XP:SetArrowSkin()
end

-- DEBUG: ENTER XP:GetArrowSkin()
function XP:GetArrowSkin()
    return self.CurrentArrowSkin
-- DEBUG: EXIT XP:GetArrowSkin()
end

-----------------------------------------------------------------------
-- Legacy Aliases
-----------------------------------------------------------------------
XP.SkinDir = SKINSDIR
XP.StyleDir = SKINSDIR .. "default\\starlight\\"

-----------------------------------------------------------------------
-- Initialize with default
-----------------------------------------------------------------------
activeSkin = skins["default"]
activeStyle = skins["default"]:GetStyle("starlight")

-----------------------------------------------------------------------
-- Shim for Legacy Zygor Style.lua Files
-----------------------------------------------------------------------
ADDON_TABLE.Skins = skins
ADDON_TABLE.SKINSDIR = SKINSDIR
ADDON_TABLE.DIR = "Interface\\AddOns\\X-Plore"
ADDON_TABLE.HTMLColor = HTML
ADDON_TABLE.F = { HTMLColor = HTML }


-- DEBUG: ENTER GetSkin()
-- DEBUG: PARAM skins = [skins]
-- DEBUG: PARAM { __index = [{ __index]
-- DEBUG: PARAM id = [id]
setmetatable(skins, { __index = { GetSkin = function(self, id) return rawget(self, id) or rawget(self, "default") end } })


-- DEBUG: EXIT GetSkin() [EOF]