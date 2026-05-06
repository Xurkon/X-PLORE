-- Skins\Default\Starlight\Style.lua
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
if not XP or not XP.Skins or not XP.Skins["default"] or not XP.Skins["default"].styles["starlight"] then
    return
end

local STYLE = XP.Skins["default"].styles["starlight"]
local SKIN = STYLE.skin
local ADDON_DIR = "Interface\\AddOns\\" .. ADDON_NAME
local SKINSDIR = ADDON_DIR .. "\\Skins\\"
local STYLEDIR = XP:GetSkinPath(SKIN.id, STYLE.id)
local HTML = XP.HTML
local SolidBackdrop = XP.SolidBackdrop
local TiledBackdrop = XP.TiledBackdrop
local NoEdgeBackdrop = XP.NoEdgeBackdrop
local WHITE_TEX = SKINSDIR .. "white"
local GUIDEICONS_DIR = SKINSDIR .. "guideicons"

STYLE.StyleName = "Starlight"
STYLE.StyleID = "starlight"
STYLE.GUIHidden = false
STYLE.AccentColor = HTML("#FE6100FF")
STYLE.FontFace = SKINSDIR .. "opensans.ttf"
STYLE.FontFaceBold = SKINSDIR .. "opensansb.ttf"
STYLE.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
STYLE.UseOpacity = false

STYLE.ViewerWidth = 320
STYLE.ViewerHeight = 450
STYLE.MenuWidth = 825
STYLE.MenuHeight = 630
STYLE.TitleBarHeight = 34
STYLE.TabHeight = 28
STYLE.ToolbarHeight = 30
STYLE.SidebarWidth = 170
STYLE.CategoryHeight = 28
STYLE.StepHeight = 50
STYLE.FooterHeight = 0
STYLE.TitleLogo = SKINSDIR .. "logo2"
STYLE.TitleLogoSize = {120, 24}
STYLE.ViewerMargin = 0
STYLE.StepSpacing = 2
STYLE.TabsHeight = 20
STYLE.TabsIconSize = 12
STYLE.StepNumFontSize = 14
STYLE.StepNumWidth = 40
STYLE.TitleButtonSize = 16
STYLE.ProgressBarWidth = 4
STYLE.ProgressBarOffsetX = 5
STYLE.ProgressBarOffsetY = -4
STYLE.ScrollBarButtonSize = {16, 16}
STYLE.TopHeight = 55.5
STYLE.StepFontSizeMod = 1
STYLE.TitleButtonStepPrevNextSize = 14
STYLE.TitleButtonInset = 2
STYLE.TitleButtonInsetHighlight = -3
STYLE.TitleButtonHighlightAlpha = 0.6
STYLE.StyleAceGUI = true

STYLE.MainBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque", 90, 0)
STYLE.MainBackdropColor = HTML("#111111FF")
STYLE.MainBackdropBorderColor = {0, 0, 0, 0}

STYLE.PanelBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small", 32, 31)
STYLE.PanelBackdropColor = HTML("#202020FF")
STYLE.PanelBackdropBorderColor = {0, 0, 0, 0}

STYLE.SmallBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 32, 31)
STYLE.SmallBackdropColor = HTML("#111111FF")
STYLE.SmallBackdropBorderColor = {0, 0, 0, 0}

STYLE.NoEdgeBackdrop = NoEdgeBackdrop()
STYLE.Backdrop = STYLE.MainBackdrop
STYLE.BackdropColor = STYLE.MainBackdropColor
STYLE.BackdropBorderColor = {0, 0, 0, 0}

STYLE.WindowBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque", 90, 0)
STYLE.WindowBackdropColor = {0, 0, 0, 0}
STYLE.WindowBackdropBorderColor = HTML("#111111FF")

STYLE.WindowBottomBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small", 32, 31)
STYLE.WindowBottomBackdropColor = HTML("#202020FF")
STYLE.WindowBottomBackdropBorderColor = HTML("#202020FF")

STYLE.StepBackdrop = NoEdgeBackdrop()
STYLE.StepBorderBackdrop = SolidBackdrop(STYLEDIR .. "border-glow", 4, 0)
STYLE.StepBackdropColor = HTML("#202020FF")
STYLE.StepBackdropBorderColor = HTML("#202020FF")
STYLE.StepBackdropPersistentBorder = true
-- All step states use the same dark background (XP-matching).
-- State is indicated by edge bar/text color only, not background color.
STYLE.StepActiveColor   = HTML("#202020FF")
STYLE.StepCompleteColor = HTML("#1A2B1AFF")
STYLE.StepUpcomingColor = HTML("#202020FF")
STYLE.StepPaddingTop = 0
STYLE.StepPaddingBottom = 0
STYLE.StepPaddingWidth = 0
STYLE.StepStickyBarSpace = 5
STYLE.StepStickyBarHeight = 1
STYLE.StepStickySeparatorColor = HTML("#3B3B3BFF")

STYLE.TabBackdrop = NoEdgeBackdrop()
STYLE.TabBackdropColor = {0, 0, 0, 0}

STYLE.ButtonBackdrop1 = TiledBackdrop(WHITE_TEX, STYLEDIR .. "button-small-opaque", 8, 2)
STYLE.ButtonColor1 = HTML("#333333FF")
STYLE.ButtonBorderColor1 = {0, 0, 0, 0}
STYLE.ButtonHighlightColor1 = HTML("#444444FF")
STYLE.ButtonTextColor1Out = HTML("#FFFFFFFF")
STYLE.ButtonTextColor1Over = HTML("#FFFFFF77")

STYLE.ButtonBackdrop2 = STYLE.SmallBackdrop
STYLE.ButtonColor2 = HTML("#E5661AFF")
STYLE.ButtonHighlightColor2 = HTML("#EA8548")

STYLE.ButtonBackdrop3 = TiledBackdrop(WHITE_TEX, STYLEDIR .. "button-small-opaque", 2, 2)
STYLE.ButtonBorderColor3 = HTML("#333333FF")
STYLE.ButtonHighlightColor3 = HTML("#444444FF")

STYLE.SystemBarBackdropColor = HTML("#3B3B3BFF")
STYLE.SystemBarBackdropBorderColor = {0, 0, 0, 0}

STYLE.ProgressBarBackdrop = SolidBackdrop(WHITE_TEX, 1, 1)
STYLE.ProgressBarBackdropColor = HTML("#454545FF")
STYLE.ProgressBarBackdropBorderColor = {0, 0, 0, 0}
STYLE.ProgressBarTextureFile = WHITE_TEX
STYLE.ProgressBarTextureColor = HTML("#00CC01FF")
STYLE.ProgressBarTextureFileOffset = {0, 0.5, 0, 0.5}
STYLE.ProgressBarDecorUse = 0
STYLE.ProgressBarDecorFileOffset = {0, 0, 0, 0}
STYLE.ProgressBarCaps = STYLEDIR .. "progressbarcaps"
STYLE.ProgressBarWidth = 4
STYLE.ProgressBarCapsColor = HTML("#202020FF")
STYLE.ProgressBarOffsetX = 5
STYLE.ProgressBarOffsetY = -4
STYLE.ProgressBarTexture = {1.0, 1.0, 1.0, 1.0}
STYLE.ProgressBarTextureHeight = 5
STYLE.ProgressBarHeight = 7
STYLE.ProgressBarInset = 0
STYLE.ProgressBarColor = {0.0, 0.8, 0.0, 1.0}
STYLE.ProgressBarColor2 = {1/255, 162/255, 253/255, 1.0}
STYLE.ProgressBarSpaceHeight = 16

STYLE.ScrollBackColor = {0, 0, 0, 0}
STYLE.ScrollBarColor = HTML("#666666FF")
STYLE.ScrollBarTexture = STYLEDIR .. "scroll-bar"
STYLE.ScrollArrowsTexture = STYLEDIR .. "scroll-arrows"
STYLE.ScrollBarDecorHeight = 16

STYLE.GuideMenuMargin = 0
STYLE.GuideMenuHeaderFooterBackground = {0, 0, 0, 0}
STYLE.GuideMenuHeaderFooterBorder = {0, 0, 0, 0}
STYLE.GuideMenuSectionBorder = {0, 0, 0, 0}
STYLE.GuideMenuContentBackground = HTML("#202020FF")
STYLE.GuideMenuDetailsBackground = HTML("#2B2B2BFF")
STYLE.GuideMenuMenuBackground = HTML("#2B2B2BFF")
STYLE.SearchEditBackdropColor = HTML("#0D0D0DFF")
STYLE.SearchEditBorderColor = HTML("#0D0D0DFF")
STYLE.GuideMenuSearchTexture = STYLEDIR .. "search-bgr"
STYLE.GuideMenuFooterElementsOffset = 13
STYLE.GuideMenuGuideButtonDecorColor = STYLE.AccentColor

STYLE.TabsMargin = 0
STYLE.TabsIcons = GUIDEICONS_DIR .. "-big"
STYLE.GuideMenuSmallIcons = GUIDEICONS_DIR .. "-small"
STYLE.TabsBackdrop = STYLE.MainBackdrop
STYLE.TabsBackdropActive = HTML("#202020FF")
STYLE.TabsBackdropInactive = {0, 0, 0, 0}
STYLE.TabsContainerBackdropActive = HTML("#3B3B3BFF")
STYLE.TabsContainerBackdropInactive = HTML("#111111FF")
STYLE.TabsBorderColor = {0, 0, 0, 0}
STYLE.TabsTextColor = {1, 1, 1, 1}
STYLE.TabsTextColorOver = HTML("#FFFFFF77")
STYLE.TabsBusyIcon = SKINSDIR .. "loading"
STYLE.TabsTopOffset = -5
STYLE.TabsSeparatorColor = {0, 0, 0, 0}
STYLE.TabsSeparatorTexture = WHITE_TEX
STYLE.TabsFirstOffset = 4

STYLE.StepIconsTexture = STYLEDIR .. "stepicons"
STYLE.StepLineIcons = STYLEDIR .. "stepicons"
STYLE.StepLineBackBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
STYLE.StepLineBackBackdropColor = {0, 0, 0, 0}
STYLE.StepLineBackBackdropBorderColor = {0, 0, 0, 0}
STYLE.StepLineClickerBackdrop = STYLE.StepLineBackBackdrop
STYLE.StepLinePaddingWidth = 3
STYLE.StepLinePaddingHeight = 3
STYLE.StepLineIconOffset = 3
STYLE.StepLineTextOffset = 0
STYLE.StepLineIconSize = 1.1
STYLE.StepLineIconMarginRight = 3
STYLE.StepLineSpacing = 0

STYLE.TitleButtonsTexture = STYLEDIR .. "titlebuttons-thin"
STYLE.CheckRadioTexture = STYLEDIR .. "checkradio-thin"
STYLE.FloatingButtonsTexture = STYLEDIR .. "floatingbuttons-thin"
STYLE.BorderGlowTexture = STYLEDIR .. "border-glow"

STYLE.UISliderBgTexture = STYLEDIR .. "ui-sliderbar-background"
STYLE.UISliderBorderTexture = STYLEDIR .. "ui-sliderbar-border"
STYLE.OptionsSliderButton = STYLEDIR .. "options-slider-button"

STYLE.SelectionTexture = STYLEDIR .. "selection"
STYLE.MapArrowTexture = STYLEDIR .. "mv-arrow"
STYLE.GuideMiniIconsTexture = STYLEDIR .. "guideicons-small"
STYLE.GuideBigIconsTexture = SKINSDIR .. "guideicons-big"

STYLE.MinimapIcon = STYLEDIR .. "minimap-icon"
STYLE.LoadingTexture = SKINSDIR .. "loading"

STYLE.ToastMessageBg = SKINSDIR .. "messagetoastbg"
STYLE.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

STYLE.NotificationBackdrop = STYLE.SmallBackdrop
STYLE.NotificationBackdropColor = {0, 0, 0, 1}
STYLE.NotificationBackdropBorderColor = {0, 0, 0, 1}
STYLE.NotificationDecorColor = HTML("#3B3B3BFF")
STYLE.NotificationTextColor = {0.8, 0.8, 0.8, 1}
STYLE.NotificationTextColorOver = {1, 1, 1, 1}
STYLE.NotificationBubbleColor = STYLE.AccentColor
STYLE.NotificationPopupShowHeader = false
STYLE.NotificationPopupHeaderBackdrop = STYLE.SmallBackdrop
STYLE.NotificationPopupHeaderBackdropColor = {0, 0, 0, 1}
STYLE.NotificationPopupHeaderBackdropBorderColor = {0, 0, 0, 1}
STYLE.NotificationPopupContentBackdrop = STYLE.SmallBackdrop
STYLE.NotificationPopupContentBackdropColor = HTML("#222222FF")
STYLE.NotificationPopupContentBackdropBorderColor = HTML("#222222FF")

STYLE.MessageWarning = HTML("#FF3300FF")
STYLE.MessageNotify = HTML("#FE6100FF")

STYLE.FloatMenuBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 32, 31)
STYLE.FloatMenuBackdropColor = {0, 0, 0, 1}
STYLE.FloatMenuBackdropBorderColor = {1, 1, 1, 1}
STYLE.FloatMenuSeparatorColor = HTML("#666666FF")

STYLE.FloatMenuSmallBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 12, 12)
STYLE.FloatMenuSmallBackdropColor = {0, 0, 0, 1}
STYLE.FloatMenuSmallBackdropBorderColor = {1, 1, 1, 1}

STYLE.SearchBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "search-bgr", 20, 10)
STYLE.SearchEditBackdropColor = HTML("#0D0D0DFF")
STYLE.SearchEditBorderColor = HTML("#0D0D0DFF")
STYLE.SearchEditTextColor = HTML("#666666FF")
STYLE.SearchEditTextColorActive = {1, 1, 1, 1}

STYLE.AceGUIInputTexture = STYLEDIR .. "dropdown-opaque"
STYLE.AceGUIDropDownBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 32, 31)
STYLE.AceGUIDropDownBackdropColor = {0, 0, 0, 1}
STYLE.AceGUIDropDownBackdropBorderColor = {1, 1, 1, 1}
STYLE.AceGUIEditBackdrop = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 16, 15)
STYLE.AceGUIEditBackdropMultiline = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 32, 31)
STYLE.AceGUIEditBackdropColor = {0, 0, 0, 1}
STYLE.AceGUIEditBackdropBorderColor = {1, 1, 1, 1}
STYLE.AceGUIButtonTexture = TiledBackdrop(WHITE_TEX, STYLEDIR .. "search-bgr", 20, 10)
STYLE.AceGUIButtonTextureColor = HTML("#666666FF")
STYLE.AceGUIButtonTextColor = {1, 1, 1, 1}
STYLE.AceGUIButtonTextColorDisabled = {1, 1, 1, 0.6}
STYLE.AceGUISliderBackdrop = TiledBackdrop(STYLE.UISliderBgTexture, STYLE.UISliderBorderTexture, 8, 3)
STYLE.AceGUISliderThumb = STYLEDIR .. "options-slider-button"

STYLE.ActionBarBackdrop = STYLE.SmallBackdrop
STYLE.ActionBarBackdropColor = STYLE.SmallBackdropColor
STYLE.ActionBarBackdropBorderColor = STYLE.SmallBackdropBorderColor

STYLE.FindNearestBackdrop = STYLE.SmallBackdrop
STYLE.FindNearestBackdropColor = STYLE.SmallBackdropColor
STYLE.FindNearestBackdropBorderColor = STYLE.SmallBackdropBorderColor

STYLE.GoldguideBackdrop = STYLE.MainBackdrop
STYLE.GoldguideBackdropColor = STYLE.MainBackdropColor
STYLE.GoldguideBackdropBorderColor = STYLE.MainBackdropBorderColor
STYLE.GoldguideHeaderFooterColor = STYLE.GuideMenuHeaderFooterBackground

STYLE.WorldQuestBackdrop = STYLE.MainBackdrop
STYLE.WorldQuestBackdropColor = STYLE.MainBackdropColor
STYLE.WorldQuestBackdropBorderColor = STYLE.MainBackdropBorderColor
STYLE.WorldQuestMargin = 0

STYLE.AuctionToolsMargin = 0
STYLE.AuctionToolsBackdrop = STYLE.MainBackdrop
STYLE.AuctionToolsBackdropColor = STYLE.MainBackdropColor
STYLE.AuctionToolsBackdropBorderColor = STYLE.MainBackdropBorderColor
STYLE.AuctionToolsPriceIcons = SKINSDIR .. "goldpricestatusicons"
STYLE.AuctionToolsHeaderFooterBackground = {0, 0, 0, 0}
STYLE.AuctionToolsHeaderFooterBorder = {0, 0, 0, 0}

STYLE.BugBackdrop = STYLE.MainBackdrop
STYLE.BugBackdropColor = STYLE.MainBackdropColor
STYLE.BugBackdropBorderColor = STYLE.MainBackdropBorderColor
STYLE.BugEditBackdrop = STYLE.NoEdgeBackdrop
STYLE.BugEditBackdropColor = HTML("#202020FF")

STYLE.GearFinderBackdrop = STYLE.MainBackdrop
STYLE.GearFinderBackdropColor = STYLE.MainBackdropColor
STYLE.GearFinderBackdropBorderColor = STYLE.MainBackdropBorderColor

STYLE.WidgetsBackdrop = STYLE.SmallBackdrop
STYLE.WidgetsBackdropColor = STYLE.SmallBackdropColor
STYLE.WidgetsBackdropBorderColor = STYLE.SmallBackdropBorderColor
STYLE.WidgetsPopupBackdropColor = HTML("#202020FF")
STYLE.WidgetsPopupBackdropBorderColor = HTML("#202020FF")
STYLE.WidgetsTextColor = {1, 1, 1, 1}
STYLE.WidgetsDragColor = HTML("#333333FF")

STYLE.CreatureBackdrop = STYLE.MainBackdrop
STYLE.CreatureBackdropColor = STYLE.MainBackdropColor
STYLE.CreatureBackdropBorderColor = {0, 0, 0, 0}
STYLE.CreatureViewerLabelBackground = STYLE.NoEdgeBackdrop
STYLE.CreatureViewerLabelColor = {1.0, 1.0, 1.0, 1.0}
STYLE.CreatureViewerGap = {-10, 0}
STYLE.CVNoModelTexture = SKINSDIR .. "zygor_mascot"

STYLE.MoneyBackdrop = STYLE.MainBackdrop
STYLE.MoneyBackdropColor = STYLE.MainBackdropColor
STYLE.MoneyBackdropBorderColor = {0, 0, 0, 0}

STYLE.GuideMenuBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuBackdropColor = HTML("#111111FF")
STYLE.GuideMenuBackdropBorderColor = HTML("#111111FF")
STYLE.GuideMenuMenuBackgroundColor = HTML("#2B2B2BFF")
STYLE.GuideMenuMenuBackdropBorderColor = HTML("#2B2B2BFF")
STYLE.GuideMenuDetailsBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuDetailsBackdropColor = HTML("#2B2B2BFF")
STYLE.GuideMenuDetailsBackdropBorderColor = HTML("#2B2B2BFF")
STYLE.GuideMenuContentBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuContentBackdropColor = HTML("#202020FF")
STYLE.GuideMenuContentBackdropBorderColor = HTML("#202020FF")
STYLE.GuideMenuExpandedBackdrop = STYLE.MainBackdrop
STYLE.GuideMenuExpandedBackdropColor = HTML("#2B2B2BFF")
STYLE.GuideMenuExpandedBackdropBorderColor = HTML("#2B2B2BFF")
STYLE.GuideMenuFeaturedDropdown = TiledBackdrop(WHITE_TEX, STYLEDIR .. "backdrop-opaque-small-outline", 32, 31)
STYLE.GuideMenuFeaturedDropdownBackdropColor = {0, 0, 0, 1}
STYLE.GuideMenuFeaturedDropdownBackdropBorderColor = {1, 1, 1, 1}
STYLE.GuideMenuTinyMargin = 0

STYLE.TitleLogo = STYLEDIR .. "zygorlogo"
STYLE.TitleLogoSize = {100, 25}

STYLE.TransparencyPrimary = 1
STYLE.TransparencySecondary = 1

STYLE.TabBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
STYLE.TabBackdropColor = {0, 0, 0, 0.0}
STYLE.StepnumBackdropColor = {0, 0, 0, 0.0}

XP.InitStyleTables(STYLE)
