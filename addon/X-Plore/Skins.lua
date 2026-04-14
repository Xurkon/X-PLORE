-----------------------------------------------------------------------
-- X-Plore: Skins.lua
-- Theme / skin system.  Mirrors Zygor's STYLE.KeyName flat-key
-- architecture.  Each style is a flat table of named values.
-- Access via XP:SD("KeyName") — returns nil if key not in active style.
--
-- Five built-in styles (matching Zygor):
--   "starlight"       — Dark charcoal / orange accent         (default)
--   "starlight-glass" — Starlight with semi-transparent main  (hidden)
--   "midnight"        — Pure black / white accent
--   "stealth"         — Dark warm brown / orange accent
--   "stealth-glass"   — Stealth with semi-transparent main    (hidden)
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Skin Registry
-----------------------------------------------------------------------
local styles = {}

-- Expose to XP namespace so other files (Viewer, GuideMenu, etc.) can call XP:Size(), XP:SD(), etc.
XP.Skins = styles
local activeSkin  = nil
local activeStyle = nil

-- Subscriber registry: functions called when skin changes at runtime
local skinSubscribers = {}

-- Shared asset directories
local SKINSDIR = "Interface\\AddOns\\X-Plore\\textures\\"
local ICONSDIR = "Interface\\AddOns\\X-Plore\\textures\\icons\\"

-- white.tga — copied from Zygor, used as bgFile/edgeFile for 1px borders
local WHITE_TEX = SKINSDIR .. "white"

-- Per-skin asset directories
local STARLIGHT_DIR       = SKINSDIR .. "skins\\starlight\\"
local STARLIGHT_GLASS_DIR = SKINSDIR .. "skins\\starlight-glass\\"
local MIDNIGHT_DIR        = SKINSDIR .. "skins\\midnight\\"
local STEALTH_DIR         = SKINSDIR .. "skins\\stealth\\"
local STEALTH_GLASS_DIR   = SKINSDIR .. "skins\\stealth-glass\\"

-----------------------------------------------------------------------
-- Helper: HTML #RRGGBB[AA] → {r,g,b,a}
-----------------------------------------------------------------------
local function HTML(hex)
    hex = hex:gsub("^#","")
    local r = tonumber(hex:sub(1,2), 16) / 255
    local g = tonumber(hex:sub(3,4), 16) / 255
    local b = tonumber(hex:sub(5,6), 16) / 255
    local a = hex:len() >= 8 and (tonumber(hex:sub(7,8), 16) / 255) or 1.0
    return {r, g, b, a}
end

-----------------------------------------------------------------------
-- Backdrop helpers
-----------------------------------------------------------------------
local function SolidBackdrop(edge, edgeSize, inset)
    inset    = inset    or 1
    edgeSize = edgeSize or 1
    return {
        bgFile   = WHITE_TEX,
        edgeFile = edge or WHITE_TEX,
        tile = true, tileSize = 8, edgeSize = edgeSize,
        insets = { left = inset, right = inset, top = inset, bottom = inset },
    }
end

local function TiledBackdrop(bgFile, edgeFile, edgeSize, inset)
    inset    = inset    or edgeSize or 1
    edgeSize = edgeSize or 1
    return {
        bgFile   = bgFile or WHITE_TEX,
        edgeFile = edgeFile or WHITE_TEX,
        tile = true, tileSize = 256, edgeSize = edgeSize,
        insets = { left = inset, right = inset, top = inset, bottom = inset },
    }
end

local function NoEdgeBackdrop()
    return { bgFile = WHITE_TEX, tile = true, tileSize = 8 }
end

-----------------------------------------------------------------------
-- Step / action icon map
-- Values are full Interface\\Icons\\ paths usable on all WoW versions.
-----------------------------------------------------------------------
local ACTION_ICON_PATHS = {
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

-- Expose globally so Guide.lua can use them
XP.ActionIconPaths = ACTION_ICON_PATHS
XP.StepIconsAreWoW = true  -- full Interface\\Icons\\ paths (no prefix needed)

-----------------------------------------------------------------------
-- Style: STARLIGHT  (Dark charcoal / orange accent — Zygor-inspired)
-- This is the PRIMARY default skin for X-Plore
-----------------------------------------------------------------------
local STARLIGHT = {}

STARLIGHT.StyleName    = "Starlight"
STARLIGHT.StyleID      = "starlight"
STARLIGHT.GUIHidden    = false
STARLIGHT.AccentColor  = HTML("#FE6100FF")  -- orange
STARLIGHT.FontFace     = SKINSDIR .. "opensans.ttf"
STARLIGHT.FontFaceBold = SKINSDIR .. "opensansb.ttf"
STARLIGHT.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
STARLIGHT.UseOpacity   = false

-- Layout sizes
STARLIGHT.ViewerWidth         = 320
STARLIGHT.ViewerHeight        = 450
STARLIGHT.MenuWidth           = 825
STARLIGHT.MenuHeight          = 630
STARLIGHT.TitleBarHeight      = 34
STARLIGHT.TabHeight           = 28
STARLIGHT.ToolbarHeight       = 30
STARLIGHT.SidebarWidth        = 222
STARLIGHT.CategoryHeight      = 28
STARLIGHT.StepHeight          = 50
STARLIGHT.FooterHeight        = 32
STARLIGHT.ViewerMargin        = 4
STARLIGHT.StepSpacing         = 0
STARLIGHT.TabsHeight          = 28
STARLIGHT.TabsIconSize        = 14
STARLIGHT.StepNumFontSize     = 12
STARLIGHT.StepNumWidth        = 26
STARLIGHT.TitleButtonSize     = 20
STARLIGHT.ProgressBarWidth    = 4
STARLIGHT.ProgressBarOffsetX  = 5
STARLIGHT.ProgressBarOffsetY  = -4
STARLIGHT.ScrollBarButtonSize = {14, 14}

-- Backdrops: use tiled backdrop-opaque TGA files (Zygor style)
STARLIGHT.MainBackdrop            = TiledBackdrop(WHITE_TEX, STARLIGHT_DIR .. "backdrop-opaque", 8, 8)
STARLIGHT.MainBackdropColor       = HTML("#111111FF")
STARLIGHT.MainBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.PanelBackdrop            = TiledBackdrop(WHITE_TEX, STARLIGHT_DIR .. "backdrop-opaque-small", 8, 8)
STARLIGHT.PanelBackdropColor       = HTML("#202020FF")
STARLIGHT.PanelBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.SmallBackdrop            = TiledBackdrop(WHITE_TEX, STARLIGHT_DIR .. "backdrop-opaque-small-outline", 8, 8)
STARLIGHT.SmallBackdropColor       = HTML("#202020FF")
STARLIGHT.SmallBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.NoEdgeBackdrop = NoEdgeBackdrop()

STARLIGHT.Backdrop             = STARLIGHT.MainBackdrop
STARLIGHT.BackdropColor        = STARLIGHT.MainBackdropColor
STARLIGHT.BackdropBorderColor  = {0, 0, 0, 0}

STARLIGHT.WindowBackdrop             = STARLIGHT.MainBackdrop
STARLIGHT.WindowBackdropColor        = HTML("#111111FF")
STARLIGHT.WindowBackdropBorderColor  = {0, 0, 0, 0}

STARLIGHT.WindowBottomBackdrop            = STARLIGHT.PanelBackdrop
STARLIGHT.WindowBottomBackdropColor       = HTML("#202020FF")
STARLIGHT.WindowBottomBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.StepBackdrop             = NoEdgeBackdrop()
STARLIGHT.StepBorderBackdrop       = SolidBackdrop(WHITE_TEX, 1, 0)
STARLIGHT.StepBackdropColor        = HTML("#202020FF")
STARLIGHT.StepBackdropBorderColor  = HTML("#202020FF")
STARLIGHT.StepBackdropPersistentBorder = true

STARLIGHT.TabBackdrop          = NoEdgeBackdrop()
STARLIGHT.TabBackdropColor     = HTML("#20202000")

STARLIGHT.ButtonBackdrop1        = TiledBackdrop(WHITE_TEX, STARLIGHT_DIR .. "button-small-opaque", 8, 8)
STARLIGHT.ButtonColor1           = HTML("#202020FF")
STARLIGHT.ButtonBorderColor1     = HTML("#404040FF")
STARLIGHT.ButtonHighlightColor1  = HTML("#2E2E2EFF")
STARLIGHT.ButtonTextColor1Out    = HTML("#FFFFFFFF")
STARLIGHT.ButtonTextColor1Over   = HTML("#FE6100FF")

STARLIGHT.SystemBarBackdropColor       = HTML("#3B3B3BFF")
STARLIGHT.SystemBarBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.ProgressBarBackdrop           = SolidBackdrop(WHITE_TEX, 1, 1)
STARLIGHT.ProgressBarBackdropColor      = HTML("#111111FF")
STARLIGHT.ProgressBarBackdropBorderColor = {0, 0, 0, 0}
STARLIGHT.ProgressBarTextureFile        = STARLIGHT_DIR .. "progressbarcaps"
STARLIGHT.ProgressBarTextureColor       = HTML("#00CC01FF")
STARLIGHT.ProgressBarDecorUse           = 1

STARLIGHT.ScrollBackColor = {0, 0, 0, 0}
STARLIGHT.ScrollBarColor  = HTML("#666666FF")
STARLIGHT.ScrollBarTexture      = STARLIGHT_DIR .. "scroll-bar"
STARLIGHT.ScrollArrowsTexture   = STARLIGHT_DIR .. "scroll-arrows"
STARLIGHT.ScrollButtonTexture   = STARLIGHT_DIR .. "scrollbutton"

STARLIGHT.GuideMenuMargin                    = 0
STARLIGHT.GuideMenuHeaderFooterBackground    = {0, 0, 0, 0}
STARLIGHT.GuideMenuHeaderFooterBorder        = {0, 0, 0, 0}
STARLIGHT.GuideMenuSectionBorder             = HTML("#40404066")
STARLIGHT.GuideMenuContentBackground         = HTML("#202020FF")
STARLIGHT.GuideMenuDetailsBackground         = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuMenuBackground            = HTML("#2B2B2BFF")
STARLIGHT.GuideMenuSearchEdit                = HTML("#383838FF")
STARLIGHT.GuideMenuSearchTexture             = STARLIGHT_DIR .. "search-bgr"
STARLIGHT.GuideMenuDropdownBackdrop          = TiledBackdrop(WHITE_TEX, STARLIGHT_DIR .. "dropdown-opaque", 8, 8)

STARLIGHT.TabsMargin            = 0
STARLIGHT.TabsIcons             = ICONSDIR
STARLIGHT.TabsBackdropActive    = HTML("#202020FF")
STARLIGHT.TabsBackdropInactive  = {0, 0, 0, 0}
STARLIGHT.TabsBorderColor       = {0, 0, 0, 0}
STARLIGHT.TabsTextColor         = {1, 1, 1, 1}
STARLIGHT.TabsTextColorOver     = HTML("#FFFFFF77")
STARLIGHT.TabsSeparatorColor    = {0, 0, 0, 0}
STARLIGHT.TabsSeparatorTexture  = WHITE_TEX
STARLIGHT.TabsDecor             = true
STARLIGHT.TabsDecorTexture      = STARLIGHT_DIR .. "viewer8-tabs"

STARLIGHT.StepIconsTexture   = STARLIGHT_DIR .. "stepicons"
STARLIGHT.StepLineIcons      = STARLIGHT_DIR .. "stepicons"
STARLIGHT.TitleButtonsTexture = STARLIGHT_DIR .. "titlebuttons-thin"
STARLIGHT.CheckRadioTexture  = STARLIGHT_DIR .. "checkradio-thin"
STARLIGHT.FloatingButtonsTexture = STARLIGHT_DIR .. "floatingbuttons-thin"
STARLIGHT.BorderGlowTexture  = STARLIGHT_DIR .. "border-glow"

STARLIGHT.UISliderBgTexture      = STARLIGHT_DIR .. "ui-sliderbar-background"
STARLIGHT.UISliderBorderTexture  = STARLIGHT_DIR .. "ui-sliderbar-border"
STARLIGHT.OptionsSliderButton    = STARLIGHT_DIR .. "options-slider-button"

STARLIGHT.SelectionTexture    = STARLIGHT_DIR .. "selection"
STARLIGHT.MapArrowTexture     = STARLIGHT_DIR .. "mv-arrow"
STARLIGHT.GuideMiniIconsTexture = STARLIGHT_DIR .. "guideicons-small"
STARLIGHT.GuideBigIconsTexture  = SKINSDIR .. "guideicons-big"

STARLIGHT.MinimapIcon     = STARLIGHT_DIR .. "minimap-icon"
STARLIGHT.LoadingTexture  = SKINSDIR .. "loading"

STARLIGHT.ToastMessageBg      = SKINSDIR .. "messagetoastbg"
STARLIGHT.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

STARLIGHT.NotificationBackdrop            = STARLIGHT.MainBackdrop
STARLIGHT.NotificationBackdropColor       = HTML("#111111FF")
STARLIGHT.NotificationBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT.Colors = {
    bg_deep       = HTML("#111111FF"),
    bg_medium     = HTML("#202020FF"),
    bg_light      = HTML("#2B2B2BFF"),
    bg_hover      = HTML("#FFFFFF0A"),

    border        = HTML("#404040FF"),
    border_bright = HTML("#666666FF"),
    border_dim    = HTML("#333333FF"),

    cyan          = HTML("#FE6100FF"),  -- orange = primary accent
    cyan_light    = HTML("#FF8C40FF"),
    cyan_dark     = HTML("#A03D00FF"),
    purple        = HTML("#9B30FFFF"),
    green         = HTML("#00CC01FF"),
    red           = HTML("#FF3300FF"),
    red_light     = HTML("#FF8080FF"),
    yellow        = HTML("#FFD000FF"),
    orange        = HTML("#FE6100FF"),

    text_bright   = HTML("#FFFFFFFF"),
    text_normal   = HTML("#CCCCCCFF"),
    text_muted    = HTML("#999999FF"),
    text_dim      = HTML("#666666FF"),

    step_active   = HTML("#FE610014"),
    step_complete = HTML("#00CC0114"),
    step_upcoming = HTML("#00000066"),
}

STARLIGHT.Fonts = {
    title   = { STARLIGHT.FontFace,       12, ""  },
    normal  = { STARLIGHT.FontFace,       12, ""  },
    small   = { STARLIGHT.FontFace,       10, ""  },
    tiny    = { STARLIGHT.FontFace,        9, ""  },
    header  = { STARLIGHT.FontFaceHeader, 16, ""  },
    bold    = { STARLIGHT.FontFaceBold,   12, ""  },
}

STARLIGHT.Sizes = {
    viewer_width    = STARLIGHT.ViewerWidth,
    viewer_height   = STARLIGHT.ViewerHeight,
    menu_width      = STARLIGHT.MenuWidth,
    menu_height     = STARLIGHT.MenuHeight,
    titlebar_height = STARLIGHT.TitleBarHeight,
    tab_height      = STARLIGHT.TabHeight,
    toolbar_height  = STARLIGHT.ToolbarHeight,
    sidebar_width   = STARLIGHT.SidebarWidth,
    category_height = STARLIGHT.CategoryHeight,
    step_height     = STARLIGHT.StepHeight,
    footer_height   = STARLIGHT.FooterHeight,
}

STARLIGHT.Backdrops = {
    main  = STARLIGHT.MainBackdrop,
    panel = STARLIGHT.PanelBackdrop,
    small = STARLIGHT.SmallBackdrop,
    none  = STARLIGHT.NoEdgeBackdrop,
}

styles["starlight"] = STARLIGHT

-----------------------------------------------------------------------
-- Style: STARLIGHT-GLASS  (Starlight + semi-transparent backdrops)
-- GUIHidden = true — doesn't appear in skin selector, set programmatically
-----------------------------------------------------------------------
local STARLIGHT_GLASS = {}

-- Inherit all Starlight values first
for k, v in pairs(STARLIGHT) do
    STARLIGHT_GLASS[k] = v
end

STARLIGHT_GLASS.StyleName   = "Starlight Glass"
STARLIGHT_GLASS.StyleID     = "starlight-glass"
STARLIGHT_GLASS.GUIHidden   = true
STARLIGHT_GLASS.UseOpacity  = true

-- Override with glass-specific backdrops from starlight-glass dir
STARLIGHT_GLASS.MainBackdrop            = TiledBackdrop(WHITE_TEX, STARLIGHT_GLASS_DIR .. "backdrop-glass", 8, 8)
STARLIGHT_GLASS.MainBackdropColor       = HTML("#22222277")  -- semi-transparent
STARLIGHT_GLASS.MainBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT_GLASS.PanelBackdrop            = TiledBackdrop(WHITE_TEX, STARLIGHT_GLASS_DIR .. "backdrop-glass-small", 8, 8)
STARLIGHT_GLASS.PanelBackdropColor       = HTML("#22222266")
STARLIGHT_GLASS.PanelBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT_GLASS.SmallBackdrop            = STARLIGHT_GLASS.PanelBackdrop
STARLIGHT_GLASS.SmallBackdropColor       = HTML("#22222266")
STARLIGHT_GLASS.SmallBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT_GLASS.Backdrop            = STARLIGHT_GLASS.MainBackdrop
STARLIGHT_GLASS.BackdropColor       = STARLIGHT_GLASS.MainBackdropColor
STARLIGHT_GLASS.BackdropBorderColor = {0, 0, 0, 0}

STARLIGHT_GLASS.WindowBackdrop             = TiledBackdrop(WHITE_TEX, STARLIGHT_GLASS_DIR .. "backdrop-glass-all", 8, 8)
STARLIGHT_GLASS.WindowBackdropColor        = HTML("#22222277")
STARLIGHT_GLASS.WindowBackdropBorderColor  = {0, 0, 0, 0}

STARLIGHT_GLASS.WindowBottomBackdrop            = TiledBackdrop(WHITE_TEX, STARLIGHT_GLASS_DIR .. "backdrop-glass-upsidedown", 8, 8)
STARLIGHT_GLASS.WindowBottomBackdropColor       = HTML("#22222266")
STARLIGHT_GLASS.WindowBottomBackdropBorderColor = {0, 0, 0, 0}

STARLIGHT_GLASS.NotificationBackdrop            = STARLIGHT_GLASS.MainBackdrop
STARLIGHT_GLASS.NotificationBackdropColor       = HTML("#22222277")
STARLIGHT_GLASS.NotificationBackdropBorderColor = {0, 0, 0, 0}

-- Glass uses its own per-skin assets where they differ
STARLIGHT_GLASS.StepIconsTexture      = STARLIGHT_GLASS_DIR .. "stepicons"
STARLIGHT_GLASS.StepLineIcons         = STARLIGHT_GLASS_DIR .. "stepicons"
STARLIGHT_GLASS.TitleButtonsTexture   = STARLIGHT_GLASS_DIR .. "titlebuttons-thin"
STARLIGHT_GLASS.CheckRadioTexture     = STARLIGHT_GLASS_DIR .. "checkradio-thin"
STARLIGHT_GLASS.FloatingButtonsTexture = STARLIGHT_GLASS_DIR .. "floatingbuttons-thin"
STARLIGHT_GLASS.BorderGlowTexture     = STARLIGHT_GLASS_DIR .. "border-glow"
STARLIGHT_GLASS.ScrollBarTexture      = STARLIGHT_GLASS_DIR .. "scroll-bar"
STARLIGHT_GLASS.ScrollArrowsTexture   = STARLIGHT_GLASS_DIR .. "scroll-arrows"
STARLIGHT_GLASS.SelectionTexture      = STARLIGHT_GLASS_DIR .. "selection"
STARLIGHT_GLASS.MapArrowTexture       = STARLIGHT_GLASS_DIR .. "mv-arrow"
STARLIGHT_GLASS.GuideMiniIconsTexture = STARLIGHT_GLASS_DIR .. "guideicons-small"
STARLIGHT_GLASS.MinimapIcon           = STARLIGHT_GLASS_DIR .. "minimap-icon"
STARLIGHT_GLASS.TabsDecor             = true
STARLIGHT_GLASS.TabsDecorTexture      = STARLIGHT_GLASS_DIR .. "viewer8-tabs"
STARLIGHT_GLASS.GuideMenuSearchTexture      = STARLIGHT_GLASS_DIR .. "search-bgr"
STARLIGHT_GLASS.GuideMenuDropdownBackdrop   = TiledBackdrop(WHITE_TEX, STARLIGHT_GLASS_DIR .. "dropdown-opaque", 8, 8)
STARLIGHT_GLASS.ProgressBarTextureFile      = STARLIGHT_GLASS_DIR .. "progressbarcaps"
STARLIGHT_GLASS.UISliderBgTexture           = STARLIGHT_GLASS_DIR .. "ui-sliderbar-background"
STARLIGHT_GLASS.UISliderBorderTexture       = STARLIGHT_GLASS_DIR .. "ui-sliderbar-border"
STARLIGHT_GLASS.OptionsSliderButton         = STARLIGHT_GLASS_DIR .. "options-slider-button"
STARLIGHT_GLASS.ButtonBackdrop1             = TiledBackdrop(WHITE_TEX, STARLIGHT_GLASS_DIR .. "button-small-opaque", 8, 8)

STARLIGHT_GLASS.Backdrops = {
    main  = STARLIGHT_GLASS.MainBackdrop,
    panel = STARLIGHT_GLASS.PanelBackdrop,
    small = STARLIGHT_GLASS.SmallBackdrop,
    none  = NoEdgeBackdrop(),
}

styles["starlight-glass"] = STARLIGHT_GLASS

-----------------------------------------------------------------------
-- Style: MIDNIGHT  (Pure black with rounded corners — Zygor-inspired)
-----------------------------------------------------------------------
local MIDNIGHT = {}

MIDNIGHT.StyleName    = "Midnight"
MIDNIGHT.StyleID      = "midnight"
MIDNIGHT.GUIHidden    = false
MIDNIGHT.AccentColor  = HTML("#E5661AFF")  -- warm orange
MIDNIGHT.FontFace     = "Fonts\\FRIZQT__.TTF"
MIDNIGHT.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
MIDNIGHT.UseOpacity   = false

-- Layout sizes (same as Starlight)
MIDNIGHT.ViewerWidth         = 320
MIDNIGHT.ViewerHeight        = 450
MIDNIGHT.MenuWidth           = 825
MIDNIGHT.MenuHeight          = 630
MIDNIGHT.TitleBarHeight      = 34
MIDNIGHT.TabHeight           = 28
MIDNIGHT.ToolbarHeight       = 30
MIDNIGHT.SidebarWidth        = 222
MIDNIGHT.CategoryHeight      = 28
MIDNIGHT.StepHeight          = 50
MIDNIGHT.FooterHeight        = 32
MIDNIGHT.ViewerMargin        = 4
MIDNIGHT.StepSpacing         = 0
MIDNIGHT.TabsHeight          = 28
MIDNIGHT.TabsIconSize        = 14
MIDNIGHT.StepNumFontSize     = 12
MIDNIGHT.StepNumWidth        = 26
MIDNIGHT.TitleButtonSize     = 20
MIDNIGHT.ProgressBarWidth    = 4
MIDNIGHT.ProgressBarOffsetX  = 5
MIDNIGHT.ProgressBarOffsetY  = -4
MIDNIGHT.ScrollBarButtonSize = {14, 14}

-- Midnight uses rounded corner backdrop (edgeSize/inset=20)
MIDNIGHT.MainBackdrop            = TiledBackdrop(WHITE_TEX, MIDNIGHT_DIR .. "roundcorners", 20, 20)
MIDNIGHT.MainBackdropColor       = HTML("#00000080")
MIDNIGHT.MainBackdropBorderColor = HTML("#000000FF")

MIDNIGHT.PanelBackdrop            = TiledBackdrop(WHITE_TEX, MIDNIGHT_DIR .. "border", 8, 8)
MIDNIGHT.PanelBackdropColor       = HTML("#00000080")
MIDNIGHT.PanelBackdropBorderColor = {0, 0, 0, 0}

MIDNIGHT.NoEdgeBackdrop = NoEdgeBackdrop()

MIDNIGHT.Backdrop            = MIDNIGHT.MainBackdrop
MIDNIGHT.BackdropColor       = MIDNIGHT.MainBackdropColor
MIDNIGHT.BackdropBorderColor = MIDNIGHT.MainBackdropBorderColor

MIDNIGHT.WindowBackdrop             = MIDNIGHT.MainBackdrop
MIDNIGHT.WindowBackdropColor        = MIDNIGHT.MainBackdropColor
MIDNIGHT.WindowBackdropBorderColor  = MIDNIGHT.MainBackdropBorderColor

MIDNIGHT.WindowBottomBackdrop             = MIDNIGHT.PanelBackdrop
MIDNIGHT.WindowBottomBackdropColor        = HTML("#00000080")
MIDNIGHT.WindowBottomBackdropBorderColor  = HTML("#00000080")

MIDNIGHT.StepBackdrop             = NoEdgeBackdrop()
MIDNIGHT.StepBorderBackdrop       = SolidBackdrop(WHITE_TEX, 1, 0)
MIDNIGHT.StepBackdropColor        = HTML("#00000080")
MIDNIGHT.StepBackdropBorderColor  = HTML("#00000080")
MIDNIGHT.StepBackdropPersistentBorder = false

MIDNIGHT.TabBackdrop          = NoEdgeBackdrop()
MIDNIGHT.TabBackdropColor     = HTML("#22222200")

MIDNIGHT.ButtonBackdrop1        = SolidBackdrop(WHITE_TEX, 1, 1)
MIDNIGHT.ButtonColor1           = HTML("#111111FF")
MIDNIGHT.ButtonBorderColor1     = HTML("#444444FF")
MIDNIGHT.ButtonHighlightColor1  = HTML("#222222FF")
MIDNIGHT.ButtonTextColor1Out    = HTML("#FFFFFFFF")
MIDNIGHT.ButtonTextColor1Over   = HTML("#E5661AFF")

MIDNIGHT.SystemBarBackdropColor       = HTML("#000000CC")
MIDNIGHT.SystemBarBackdropBorderColor = {0, 0, 0, 0}

MIDNIGHT.ProgressBarBackdrop            = SolidBackdrop(WHITE_TEX, 1, 1)
MIDNIGHT.ProgressBarBackdropColor       = HTML("#000000CC")
MIDNIGHT.ProgressBarBackdropBorderColor = {0, 0, 0, 0}
MIDNIGHT.ProgressBarTextureFile         = MIDNIGHT_DIR .. "progressbar"
MIDNIGHT.ProgressBarTextureColor        = HTML("#00CC01FF")
MIDNIGHT.ProgressBarDecorUse            = 1

MIDNIGHT.ScrollBackColor     = HTML("#333333FF")
MIDNIGHT.ScrollBarColor      = HTML("#666666FF")
MIDNIGHT.ScrollButtonTexture = MIDNIGHT_DIR .. "scrollbutton"

MIDNIGHT.GuideMenuMargin                    = 0
MIDNIGHT.GuideMenuHeaderFooterBackground    = {0, 0, 0, 0}
MIDNIGHT.GuideMenuHeaderFooterBorder        = {0, 0, 0, 0}
MIDNIGHT.GuideMenuSectionBorder             = HTML("#3F3F3F66")
MIDNIGHT.GuideMenuContentBackground         = HTML("#222222FF")
MIDNIGHT.GuideMenuDetailsBackground         = HTML("#2B2B2BFF")
MIDNIGHT.GuideMenuMenuBackground            = HTML("#2B2B2BFF")
MIDNIGHT.GuideMenuSearchEdit                = HTML("#2E2E2EFF")

MIDNIGHT.TabsMargin            = 0
MIDNIGHT.TabsIcons             = ICONSDIR
MIDNIGHT.TabsBackdropActive    = HTML("#222222FF")
MIDNIGHT.TabsBackdropInactive  = {0, 0, 0, 1}
MIDNIGHT.TabsBorderColor       = {0, 0, 0, 0}
MIDNIGHT.TabsTextColor         = {1, 1, 1, 1}
MIDNIGHT.TabsTextColorOver     = HTML("#FFFFFF77")
MIDNIGHT.TabsSeparatorColor    = HTML("#3F3F3FFF")
MIDNIGHT.TabsSeparatorTexture  = WHITE_TEX
MIDNIGHT.TabsDecor             = false

MIDNIGHT.TitleButtonsTexture = MIDNIGHT_DIR .. "titlebuttons"
MIDNIGHT.BorderGlowTexture   = MIDNIGHT_DIR .. "border-glow"
MIDNIGHT.SelectionTexture    = MIDNIGHT_DIR .. "selection"
MIDNIGHT.MapArrowTexture     = MIDNIGHT_DIR .. "mv-arrow"
MIDNIGHT.GuideMiniIconsTexture = MIDNIGHT_DIR .. "guideicons-small"
MIDNIGHT.GuideBigIconsTexture  = SKINSDIR .. "guideicons-big"

MIDNIGHT.MinimapIcon     = MIDNIGHT_DIR .. "minimap-icon"
MIDNIGHT.LoadingTexture  = SKINSDIR .. "loading"

MIDNIGHT.ToastMessageBg      = SKINSDIR .. "messagetoastbg"
MIDNIGHT.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

MIDNIGHT.NotificationBackdrop            = MIDNIGHT.MainBackdrop
MIDNIGHT.NotificationBackdropColor       = HTML("#000000CC")
MIDNIGHT.NotificationBackdropBorderColor = HTML("#000000FF")

MIDNIGHT.Colors = {
    bg_deep       = HTML("#000000CC"),
    bg_medium     = HTML("#111111CC"),
    bg_light      = HTML("#222222CC"),
    bg_hover      = HTML("#FFFFFF14"),

    border        = HTML("#444444FF"),
    border_bright = HTML("#808080FF"),
    border_dim    = HTML("#333333FF"),

    cyan          = HTML("#E5661AFF"),  -- warm orange accent
    cyan_light    = HTML("#FF8847FF"),
    cyan_dark     = HTML("#884000FF"),
    purple        = HTML("#9B30FFFF"),
    green         = HTML("#00CC01FF"),
    red           = HTML("#FF3300FF"),
    red_light     = HTML("#FF8080FF"),
    yellow        = HTML("#FFD000FF"),
    orange        = HTML("#E5661AFF"),

    text_bright   = HTML("#FFFFFFFF"),
    text_normal   = HTML("#DDDDDDFF"),
    text_muted    = HTML("#AAAAAAFF"),
    text_dim      = HTML("#777777FF"),

    step_active   = HTML("#E5661A1A"),
    step_complete = HTML("#00CC0114"),
    step_upcoming = HTML("#00000099"),
}

MIDNIGHT.Fonts = {
    title   = { MIDNIGHT.FontFace,       12, ""  },
    normal  = { MIDNIGHT.FontFace,       12, ""  },
    small   = { MIDNIGHT.FontFace,       10, ""  },
    tiny    = { MIDNIGHT.FontFace,        9, ""  },
    header  = { MIDNIGHT.FontFaceHeader, 16, ""  },
    bold    = { MIDNIGHT.FontFace,       12, "OUTLINE" },
}

MIDNIGHT.Sizes = {
    viewer_width    = MIDNIGHT.ViewerWidth,
    viewer_height   = MIDNIGHT.ViewerHeight,
    menu_width      = MIDNIGHT.MenuWidth,
    menu_height     = MIDNIGHT.MenuHeight,
    titlebar_height = MIDNIGHT.TitleBarHeight,
    tab_height      = MIDNIGHT.TabHeight,
    toolbar_height  = MIDNIGHT.ToolbarHeight,
    sidebar_width   = MIDNIGHT.SidebarWidth,
    category_height = MIDNIGHT.CategoryHeight,
    step_height     = MIDNIGHT.StepHeight,
    footer_height   = MIDNIGHT.FooterHeight,
}

MIDNIGHT.Backdrops = {
    main  = MIDNIGHT.MainBackdrop,
    panel = MIDNIGHT.PanelBackdrop,
    none  = MIDNIGHT.NoEdgeBackdrop,
}

styles["midnight"] = MIDNIGHT

-----------------------------------------------------------------------
-- Style: STEALTH  (Dark warm brown / muted orange — Zygor-inspired)
-----------------------------------------------------------------------
local STEALTH = {}

STEALTH.StyleName    = "Stealth"
STEALTH.StyleID      = "stealth"
STEALTH.GUIHidden    = false
STEALTH.AccentColor  = HTML("#C47A33FF")  -- muted amber/orange
STEALTH.FontFace     = SKINSDIR .. "opensans.ttf"
STEALTH.FontFaceBold = SKINSDIR .. "opensansb.ttf"
STEALTH.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
STEALTH.UseOpacity   = false

-- Layout sizes (same as Starlight)
STEALTH.ViewerWidth         = 320
STEALTH.ViewerHeight        = 450
STEALTH.MenuWidth           = 825
STEALTH.MenuHeight          = 630
STEALTH.TitleBarHeight      = 34
STEALTH.TabHeight           = 28
STEALTH.ToolbarHeight       = 30
STEALTH.SidebarWidth        = 222
STEALTH.CategoryHeight      = 28
STEALTH.StepHeight          = 50
STEALTH.FooterHeight        = 32
STEALTH.ViewerMargin        = 4
STEALTH.StepSpacing         = 0
STEALTH.TabsHeight          = 28
STEALTH.TabsIconSize        = 14
STEALTH.StepNumFontSize     = 12
STEALTH.StepNumWidth        = 26
STEALTH.TitleButtonSize     = 20
STEALTH.ProgressBarWidth    = 4
STEALTH.ProgressBarOffsetX  = 5
STEALTH.ProgressBarOffsetY  = -4
STEALTH.ScrollBarButtonSize = {14, 14}

-- Backdrops: stealth uses border-08.tga / border.tga style edges
STEALTH.MainBackdrop            = TiledBackdrop(WHITE_TEX, STEALTH_DIR .. "border-08", 8, 8)
STEALTH.MainBackdropColor       = HTML("#1A1410FF")
STEALTH.MainBackdropBorderColor = HTML("#3A2E22FF")

STEALTH.PanelBackdrop            = TiledBackdrop(WHITE_TEX, STEALTH_DIR .. "border", 8, 8)
STEALTH.PanelBackdropColor       = HTML("#221C14FF")
STEALTH.PanelBackdropBorderColor = HTML("#3A2E22FF")

STEALTH.NoEdgeBackdrop = NoEdgeBackdrop()

STEALTH.Backdrop            = STEALTH.MainBackdrop
STEALTH.BackdropColor       = STEALTH.MainBackdropColor
STEALTH.BackdropBorderColor = STEALTH.MainBackdropBorderColor

STEALTH.WindowBackdrop             = STEALTH.MainBackdrop
STEALTH.WindowBackdropColor        = HTML("#1A1410FF")
STEALTH.WindowBackdropBorderColor  = HTML("#3A2E22FF")

STEALTH.WindowBottomBackdrop             = STEALTH.PanelBackdrop
STEALTH.WindowBottomBackdropColor        = HTML("#221C14FF")
STEALTH.WindowBottomBackdropBorderColor  = HTML("#3A2E22FF")

STEALTH.StepBackdrop             = NoEdgeBackdrop()
STEALTH.StepBorderBackdrop       = SolidBackdrop(WHITE_TEX, 1, 0)
STEALTH.StepBackdropColor        = HTML("#221C14FF")
STEALTH.StepBackdropBorderColor  = HTML("#221C14FF")
STEALTH.StepBackdropPersistentBorder = true

STEALTH.TabBackdrop          = NoEdgeBackdrop()
STEALTH.TabBackdropColor     = HTML("#22200A00")

STEALTH.ButtonBackdrop1        = SolidBackdrop(WHITE_TEX, 1, 1)
STEALTH.ButtonColor1           = HTML("#221C14FF")
STEALTH.ButtonBorderColor1     = HTML("#4A3E2AFF")
STEALTH.ButtonHighlightColor1  = HTML("#302616FF")
STEALTH.ButtonTextColor1Out    = HTML("#E8D8C0FF")
STEALTH.ButtonTextColor1Over   = HTML("#C47A33FF")

STEALTH.SystemBarBackdropColor       = HTML("#332918FF")
STEALTH.SystemBarBackdropBorderColor = {0, 0, 0, 0}

STEALTH.ProgressBarBackdrop            = SolidBackdrop(WHITE_TEX, 1, 1)
STEALTH.ProgressBarBackdropColor       = HTML("#1A1410FF")
STEALTH.ProgressBarBackdropBorderColor = {0, 0, 0, 0}
STEALTH.ProgressBarTextureFile         = STEALTH_DIR .. "progressbar"
STEALTH.ProgressBarTextureColor        = HTML("#00CC01FF")
STEALTH.ProgressBarDecorUse            = 1

STEALTH.ScrollBackColor    = {0, 0, 0, 0}
STEALTH.ScrollBarColor     = HTML("#6B5A40FF")
STEALTH.ScrollBarTexture   = STEALTH_DIR .. "scroll-bar"
STEALTH.ScrollArrowsTexture = STEALTH_DIR .. "scroll-arrows"
STEALTH.ScrollButtonTexture = STEALTH_DIR .. "scrollbutton"

STEALTH.GuideMenuMargin                    = 0
STEALTH.GuideMenuHeaderFooterBackground    = {0, 0, 0, 0}
STEALTH.GuideMenuHeaderFooterBorder        = {0, 0, 0, 0}
STEALTH.GuideMenuSectionBorder             = HTML("#4A3E2A66")
STEALTH.GuideMenuContentBackground         = HTML("#221C14FF")
STEALTH.GuideMenuDetailsBackground         = HTML("#2B2318FF")
STEALTH.GuideMenuMenuBackground            = HTML("#2B2318FF")
STEALTH.GuideMenuSearchEdit                = HTML("#302617FF")
STEALTH.GuideMenuSearchTexture             = STEALTH_DIR .. "search-bgr"

STEALTH.TabsMargin            = 0
STEALTH.TabsIcons             = ICONSDIR
STEALTH.TabsBackdropActive    = HTML("#221C14FF")
STEALTH.TabsBackdropInactive  = {0, 0, 0, 0}
STEALTH.TabsBorderColor       = {0, 0, 0, 0}
STEALTH.TabsTextColor         = {1, 1, 1, 1}
STEALTH.TabsTextColorOver     = HTML("#FFFFFF77")
STEALTH.TabsSeparatorColor    = HTML("#4A3E2A66")
STEALTH.TabsSeparatorTexture  = WHITE_TEX
STEALTH.TabsDecor             = false

-- Stealth uses thick variants
STEALTH.StepIconsTexture       = STEALTH_DIR .. "stepicons"
STEALTH.StepLineIcons          = STEALTH_DIR .. "stepicons"
STEALTH.TitleButtonsTexture    = STEALTH_DIR .. "titlebuttons-thick"
STEALTH.CheckRadioTexture      = STEALTH_DIR .. "checkradio-thick"
STEALTH.FloatingButtonsTexture = STEALTH_DIR .. "floatingbuttons-thick"
STEALTH.BorderGlowTexture      = STEALTH_DIR .. "border-glow"
STEALTH.SelectionTexture       = STEALTH_DIR .. "selection"
STEALTH.MapArrowTexture        = STEALTH_DIR .. "mv-arrow"
STEALTH.GuideMiniIconsTexture  = STEALTH_DIR .. "guideicons-small"
STEALTH.GuideBigIconsTexture   = SKINSDIR .. "guideicons-big"

STEALTH.MinimapIcon     = STEALTH_DIR .. "minimap-icon"
STEALTH.LoadingTexture  = SKINSDIR .. "loading"

STEALTH.ToastMessageBg      = SKINSDIR .. "messagetoastbg"
STEALTH.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

STEALTH.NotificationBackdrop            = STEALTH.MainBackdrop
STEALTH.NotificationBackdropColor       = HTML("#1A1410FF")
STEALTH.NotificationBackdropBorderColor = HTML("#3A2E22FF")

STEALTH.Colors = {
    bg_deep       = HTML("#1A1410FF"),
    bg_medium     = HTML("#221C14FF"),
    bg_light      = HTML("#2B2318FF"),
    bg_hover      = HTML("#FFFFFF0A"),

    border        = HTML("#4A3E2AFF"),
    border_bright = HTML("#6B5A40FF"),
    border_dim    = HTML("#3A2E22FF"),

    cyan          = HTML("#C47A33FF"),  -- amber/orange primary accent
    cyan_light    = HTML("#D99050FF"),
    cyan_dark     = HTML("#7A4A18FF"),
    purple        = HTML("#9B30FFFF"),
    green         = HTML("#00CC01FF"),
    red           = HTML("#FF3300FF"),
    red_light     = HTML("#FF9070FF"),
    yellow        = HTML("#FFD000FF"),
    orange        = HTML("#C47A33FF"),

    text_bright   = HTML("#E8D8C0FF"),
    text_normal   = HTML("#C8B898FF"),
    text_muted    = HTML("#9A8A70FF"),
    text_dim      = HTML("#6B5A40FF"),

    step_active   = HTML("#C47A3314"),
    step_complete = HTML("#00CC0114"),
    step_upcoming = HTML("#00000066"),
}

STEALTH.Fonts = {
    title   = { STEALTH.FontFace,       12, ""  },
    normal  = { STEALTH.FontFace,       12, ""  },
    small   = { STEALTH.FontFace,       10, ""  },
    tiny    = { STEALTH.FontFace,        9, ""  },
    header  = { STEALTH.FontFaceHeader, 16, ""  },
    bold    = { STEALTH.FontFaceBold,   12, ""  },
}

STEALTH.Sizes = {
    viewer_width    = STEALTH.ViewerWidth,
    viewer_height   = STEALTH.ViewerHeight,
    menu_width      = STEALTH.MenuWidth,
    menu_height     = STEALTH.MenuHeight,
    titlebar_height = STEALTH.TitleBarHeight,
    tab_height      = STEALTH.TabHeight,
    toolbar_height  = STEALTH.ToolbarHeight,
    sidebar_width   = STEALTH.SidebarWidth,
    category_height = STEALTH.CategoryHeight,
    step_height     = STEALTH.StepHeight,
    footer_height   = STEALTH.FooterHeight,
}

STEALTH.Backdrops = {
    main  = STEALTH.MainBackdrop,
    panel = STEALTH.PanelBackdrop,
    none  = STEALTH.NoEdgeBackdrop,
}

styles["stealth"] = STEALTH

-----------------------------------------------------------------------
-- Style: STEALTH-GLASS  (Stealth + semi-transparent backdrops)
-- GUIHidden = true — doesn't appear in skin selector
-----------------------------------------------------------------------
local STEALTH_GLASS = {}

-- Inherit all Stealth values first
for k, v in pairs(STEALTH) do
    STEALTH_GLASS[k] = v
end

STEALTH_GLASS.StyleName  = "Stealth Glass"
STEALTH_GLASS.StyleID    = "stealth-glass"
STEALTH_GLASS.GUIHidden  = true
STEALTH_GLASS.UseOpacity = true

-- Override with glass-specific: semi-transparent backdrops
STEALTH_GLASS.MainBackdrop            = TiledBackdrop(WHITE_TEX, STEALTH_GLASS_DIR .. "border-08", 8, 8)
STEALTH_GLASS.MainBackdropColor       = HTML("#22181077")   -- semi-transparent
STEALTH_GLASS.MainBackdropBorderColor = HTML("#3A2E2277")

STEALTH_GLASS.PanelBackdrop            = TiledBackdrop(WHITE_TEX, STEALTH_GLASS_DIR .. "border", 8, 8)
STEALTH_GLASS.PanelBackdropColor       = HTML("#22181066")
STEALTH_GLASS.PanelBackdropBorderColor = HTML("#3A2E2266")

STEALTH_GLASS.Backdrop            = STEALTH_GLASS.MainBackdrop
STEALTH_GLASS.BackdropColor       = STEALTH_GLASS.MainBackdropColor
STEALTH_GLASS.BackdropBorderColor = STEALTH_GLASS.MainBackdropBorderColor

STEALTH_GLASS.WindowBackdrop             = STEALTH_GLASS.MainBackdrop
STEALTH_GLASS.WindowBackdropColor        = HTML("#22181077")
STEALTH_GLASS.WindowBackdropBorderColor  = HTML("#3A2E2277")

STEALTH_GLASS.WindowBottomBackdrop             = STEALTH_GLASS.PanelBackdrop
STEALTH_GLASS.WindowBottomBackdropColor        = HTML("#22181066")
STEALTH_GLASS.WindowBottomBackdropBorderColor  = HTML("#3A2E2266")

STEALTH_GLASS.NotificationBackdrop            = STEALTH_GLASS.MainBackdrop
STEALTH_GLASS.NotificationBackdropColor       = HTML("#22181077")
STEALTH_GLASS.NotificationBackdropBorderColor = HTML("#3A2E2277")

-- Glass uses its own per-skin assets where they differ
STEALTH_GLASS.StepIconsTexture       = STEALTH_GLASS_DIR .. "stepicons"
STEALTH_GLASS.StepLineIcons          = STEALTH_GLASS_DIR .. "stepicons"
STEALTH_GLASS.TitleButtonsTexture    = STEALTH_GLASS_DIR .. "titlebuttons-thick"
STEALTH_GLASS.CheckRadioTexture      = STEALTH_GLASS_DIR .. "checkradio-thick"
STEALTH_GLASS.FloatingButtonsTexture = STEALTH_GLASS_DIR .. "floatingbuttons-thick"
STEALTH_GLASS.BorderGlowTexture      = STEALTH_GLASS_DIR .. "border-glow"
STEALTH_GLASS.ScrollBarTexture       = STEALTH_GLASS_DIR .. "scroll-bar"
STEALTH_GLASS.ScrollArrowsTexture    = STEALTH_GLASS_DIR .. "scroll-arrows"
STEALTH_GLASS.SelectionTexture       = STEALTH_GLASS_DIR .. "selection"
STEALTH_GLASS.MapArrowTexture        = STEALTH_GLASS_DIR .. "mv-arrow"
STEALTH_GLASS.GuideMiniIconsTexture  = STEALTH_GLASS_DIR .. "guideicons-small"
STEALTH_GLASS.MinimapIcon            = STEALTH_GLASS_DIR .. "minimap-icon"
STEALTH_GLASS.GuideMenuSearchTexture = STEALTH_GLASS_DIR .. "search-bgr"

STEALTH_GLASS.Backdrops = {
    main  = STEALTH_GLASS.MainBackdrop,
    panel = STEALTH_GLASS.PanelBackdrop,
    none  = NoEdgeBackdrop(),
}

styles["stealth-glass"] = STEALTH_GLASS

-----------------------------------------------------------------------
-- Style: DEFAULT (legacy alias — maps to Starlight)
-- Kept for backward compatibility with any code doing XP:SetSkin("default")
-----------------------------------------------------------------------
styles["default"] = STARLIGHT

-----------------------------------------------------------------------
-- Public API
-----------------------------------------------------------------------
function XP:InitSkins()
    local skinID = self.db and self.db.profile.skin or "starlight"
    self:SetSkin(skinID)
end

function XP:SetSkin(styleID)
    local style = styles[styleID] or styles["starlight"]
    styleID     = style.StyleID or "starlight"
    activeStyle = style

    XP.CurrentSkin      = style  -- legacy compat alias
    XP.CurrentSkinStyle = style

    if self.SendMessage then
        self:SendMessage("XP_SKIN_UPDATED", styleID)
    end

    -- Notify registered re-skin callbacks (e.g. Viewer, GuideMenu)
    for _, fn in ipairs(skinSubscribers) do
        pcall(fn, styleID)
    end
end

-- Register a function to be called whenever SetSkin() is called at runtime.
-- Used by Viewer.lua, GuideMenu.lua etc. to re-apply colors/backdrops.
function XP:RegisterSkinSubscriber(fn)
    if type(fn) == "function" then
        table.insert(skinSubscribers, fn)
    end
end

function XP:RegisterSkin(skinData)
    if skinData and skinData.StyleID then
        styles[skinData.StyleID] = skinData
    end
end

function XP:GetSkinList()
    local list = {}
    for id, s in pairs(styles) do
        if not s.GUIHidden then
            table.insert(list, { id = id, name = s.StyleName or id })
        end
    end
    table.sort(list, function(a, b) return a.name < b.name end)
    return list
end

-----------------------------------------------------------------------
-- SkinData accessor  — mirrors Zygor's SkinData("KeyName")
-- Returns the raw value from the active style, or nil.
-----------------------------------------------------------------------
function XP:SD(key)
    if not activeStyle then return nil end
    return activeStyle[key]
end

-- Shortcut for colors: XP:Color("cyan") → {r,g,b,a} table (array form)
function XP:Color(name)
    local c = activeStyle and activeStyle.Colors and activeStyle.Colors[name]
    return c or {1, 1, 1, 1}
end

-- Returns r, g, b, a unpacked from the named color
function XP:ColorRGBA(name)
    local c = self:Color(name)
    return c[1] or 1, c[2] or 1, c[3] or 1, c[4] or 1
end

-- Font definition: XP:Font("bold") → {path, size, flags}
function XP:Font(name)
    local f = activeStyle and activeStyle.Fonts and activeStyle.Fonts[name]
    return f or { "Fonts\\FRIZQT__.TTF", 12, "" }
end

-- Backdrop preset: XP:Backdrop("main")
function XP:Backdrop(name)
    local b = activeStyle and activeStyle.Backdrops and activeStyle.Backdrops[name]
    return b or (activeStyle and activeStyle.MainBackdrop) or SolidBackdrop()
end

-- Size constant: XP:Size("viewer_width")
function XP:Size(name)
    local s = activeStyle and activeStyle.Sizes and activeStyle.Sizes[name]
    return s or 0
end

-- Step action icon path: XP:ActionIcon("kill") → "Interface\\Icons\\..."
function XP:ActionIcon(actionName)
    return ACTION_ICON_PATHS[actionName:lower()] or ACTION_ICON_PATHS["default"]
end

-----------------------------------------------------------------------
-- Skin Application Helpers
-----------------------------------------------------------------------

-- Apply backdrop + colors to a frame
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
end

-- Apply font + color to a FontString
function XP:ApplyFont(fontString, fontName, colorName)
    if not fontString then return end
    local f = self:Font(fontName or "normal")
    fontString:SetFont(f[1], f[2], f[3])
    if colorName then
        fontString:SetTextColor(self:ColorRGBA(colorName))
    end
end

-- Style a button with the skin theme
function XP:SkinButton(button, options)
    if not button then return end
    options = options or {}
    self:ApplyBackdrop(button, "panel",
        options.bg     or "bg_medium",
        options.border or "border")
    local textObj = button:GetFontString() or button.Text
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
end

-- Create a horizontal 1px divider line
function XP:CreateDivider(parent, yOffset, colorName)
    local div = parent:CreateTexture(nil, "ARTWORK")
    div:SetHeight(1)
    div:SetPoint("TOPLEFT",  parent, "TOPLEFT",  0, yOffset or 0)
    div:SetPoint("TOPRIGHT", parent, "TOPRIGHT", 0, yOffset or 0)
    XP.SetTexColor(div, XP:ColorRGBA(colorName or "border"))
    return div
end
