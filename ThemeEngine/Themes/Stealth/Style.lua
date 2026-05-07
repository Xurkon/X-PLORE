-- ThemeEngine\Themes\Stealth\Style.lua
-- Registers the Stealth style with XP's skin system.
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
if not XP or not XP.OnSkinReady then return end

XP:OnSkinReady("default", function(Skin)
    local STYLE = Skin:AddStyle("stealth", "Stealth")
    local ADDON_DIR = "Interface\\AddOns\\" .. ADDON_NAME
    local SKINSDIR = ADDON_DIR .. "\\ThemeEngine\\Themes\\Stealth\\assets\\"
    local HTML = XP.HTML
    local SolidBackdrop = XP.SolidBackdrop
    local TiledBackdrop = XP.TiledBackdrop
    local NoEdgeBackdrop = XP.NoEdgeBackdrop
    local WHITE_TEX = SKINSDIR .. "white"
    local GUIDEICONS_DIR = SKINSDIR .. "guideicons"

    STYLE.StyleName = "Stealth"
    STYLE.StyleID = "stealth"
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
    STYLE.ViewerMargin = 10
    STYLE.StepSpacing = 2
    STYLE.TabsHeight = 20
    STYLE.TabsIconSize = 12
    STYLE.StepNumFontSize = 14
    STYLE.StepNumWidth = 40
    STYLE.TitleButtonSize = 16
    STYLE.ProgressBarWidth = 0
    STYLE.ProgressBarOffsetX = 0
    STYLE.ProgressBarOffsetY = 0
    STYLE.ScrollBarButtonSize = {16, 16}
    STYLE.TopHeight = 60.0
    STYLE.StepFontSizeMod = 1
    STYLE.TitleButtonStepPrevNextSize = 14
    STYLE.TitleButtonInset = 0
    STYLE.TitleButtonInsetHighlight = 0
    STYLE.TitleButtonHighlightAlpha = 0.6
    STYLE.StyleAceGUI = false
    STYLE.IconIndent = 17

    STYLE.MainBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
    STYLE.MainBackdropColor = {0, 0, 0, 1}
    STYLE.MainBackdropBorderColor = {0.49, 0.49, 0.49, 1}

    STYLE.PanelBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
    STYLE.PanelBackdropColor = HTML("#222222FF")

    STYLE.SmallBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
    STYLE.SmallBackdropColor = HTML("#222222FF")

    STYLE.NoEdgeBackdrop = NoEdgeBackdrop()
    STYLE.Backdrop = STYLE.MainBackdrop
    STYLE.BackdropColor = STYLE.MainBackdropColor
    STYLE.BackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.WindowBackdrop = STYLE.MainBackdrop
    STYLE.WindowBackdropColor = STYLE.MainBackdropColor
    STYLE.WindowBackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.WindowBottomBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 0)
    STYLE.WindowBottomBackdropColor = {0, 0, 0, 0}
    STYLE.WindowBottomBackdropBorderColor = {0, 0, 0, 0}

    STYLE.StepBackdrop = NoEdgeBackdrop()
    STYLE.StepBorderBackdrop = SolidBackdrop(SKINSDIR .. "border-glow", 4, 0)
    STYLE.StepBackdropColor = HTML("#222222FF")
    STYLE.StepBackdropBorderColor = {0, 0, 0, 1}
    STYLE.StepBackdropPersistentBorder = true
    STYLE.StepPaddingTop = 0
    STYLE.StepPaddingBottom = 0
    STYLE.StepPaddingWidth = 0
    STYLE.StepStickyBarSpace = 5
    STYLE.StepStickyBarHeight = 1
    STYLE.StepStickySeparatorColor = HTML("#222222FF")

    STYLE.TabBackdrop = NoEdgeBackdrop()
    STYLE.TabBackdropColor = {0, 0, 0, 0}

    STYLE.ButtonBackdrop1 = STYLE.MainBackdrop
    STYLE.ButtonColor1 = HTML("#333333FF")
    STYLE.ButtonBorderColor1 = {0.50, 0.50, 0.50, 1}
    STYLE.ButtonHighlightColor1 = HTML("#444444FF")
    STYLE.ButtonTextColor1Out = HTML("#FFFFFFFF")
    STYLE.ButtonTextColor1Over = HTML("#FFFFFF77")

    STYLE.ButtonBackdrop2 = STYLE.NoEdgeBackdrop
    STYLE.ButtonColor2 = HTML("#E5661AFF")
    STYLE.ButtonHighlightColor2 = HTML("#EA8548")

    STYLE.ButtonBackdrop3 = STYLE.ButtonBackdrop1
    STYLE.ButtonBorderColor3 = STYLE.ButtonBorderColor1
    STYLE.ButtonHighlightColor3 = HTML("#444444FF")

    STYLE.SystemBarBackdropColor = HTML("#222222FF")
    STYLE.SystemBarBackdropBorderColor = HTML("#222222FF")

    STYLE.ProgressBarBackdrop = SolidBackdrop(WHITE_TEX, 1, 1)
    STYLE.ProgressBarBackdropColor = HTML("#222222FF")
    STYLE.ProgressBarBackdropBorderColor = {0, 0, 0, 1}
    STYLE.ProgressBarTextureFile = SKINSDIR .. "progressbar"
    STYLE.ProgressBarTextureColor = {1, 1, 1, 1}
    STYLE.ProgressBarTextureFileOffset = {0, 0.5, 0, 0.5}
    STYLE.ProgressBarDecorUse = 0
    STYLE.ProgressBarDecorFileOffset = {0.5, 1, 0, 0.5}
    STYLE.ProgressBarCaps = SKINSDIR .. "progressbarcaps"
    STYLE.ProgressBarWidth = 0
    STYLE.ProgressBarCapsColor = {0, 0, 0, 0}
    STYLE.ProgressBarOffsetX = 0
    STYLE.ProgressBarOffsetY = 0
    STYLE.ProgressBarTexture = {1.0, 1.0, 1.0, 1.0}
    STYLE.ProgressBarTextureHeight = 5
    STYLE.ProgressBarHeight = 7
    STYLE.ProgressBarInset = 0
    STYLE.ProgressBarColor = {0.0, 0.8, 0.0, 1.0}
    STYLE.ProgressBarColor2 = {1/255, 162/255, 253/255, 1.0}
    STYLE.ProgressBarSpaceHeight = 12

    STYLE.ScrollBackColor = HTML("#333333FF")
    STYLE.ScrollBarColor = HTML("#666666FF")
    STYLE.ScrollBarTexture = WHITE_TEX
    STYLE.ScrollArrowsTexture = SKINSDIR .. "scroll-arrows"
    STYLE.ScrollBarDecorHeight = 0

    STYLE.GuideMenuMargin = 0
    STYLE.GuideMenuHeaderFooterBackground = {0, 0, 0, 0}
    STYLE.GuideMenuHeaderFooterBorder = {0, 0, 0, 1}
    STYLE.GuideMenuSectionBorder = {0, 0, 0, 1}
    STYLE.GuideMenuContentBackground = HTML("#222222FF")
    STYLE.GuideMenuDetailsBackground = HTML("#2B2B2BFF")
    STYLE.GuideMenuMenuBackground = HTML("#2B2B2BFF")
    STYLE.SearchEditBackdropColor = {1, 1, 1, 1}
    STYLE.SearchEditBorderColor = {1, 1, 1, 1}
    STYLE.GuideMenuSearchTexture = SKINSDIR .. "search-bgr"
    STYLE.GuideMenuFooterElementsOffset = 5
    STYLE.GuideMenuGuideButtonDecorColor = {0, 0, 0, 0}

    STYLE.TabsMargin = 10
    STYLE.TabsIcons = GUIDEICONS_DIR .. "-big"
    STYLE.GuideMenuSmallIcons = GUIDEICONS_DIR .. "-small"
    STYLE.TabsBackdrop = STYLE.MainBackdrop
    STYLE.TabsBackdropActive = HTML("#222222FF")
    STYLE.TabsBackdropInactive = HTML("#101010FF")
    STYLE.TabsContainerBackdropActive = HTML("#222222FF")
    STYLE.TabsContainerBackdropInactive = {0, 0, 0, 1}
    STYLE.TabsBorderColor = {0, 0, 0, 1}
    STYLE.TabsTextColor = {1, 1, 1, 1}
    STYLE.TabsTextColorOver = HTML("#FFFFFF77")
    STYLE.TabsBusyIcon = SKINSDIR .. "loading"
    STYLE.TabsTopOffset = 0
    STYLE.TabsSeparatorColor = HTML("#555555FF")
    STYLE.TabsSeparatorTexture = WHITE_TEX
    STYLE.TabsFirstOffset = 0

    STYLE.StepIconsTexture = SKINSDIR .. "stepicons"
    STYLE.StepLineIcons = SKINSDIR .. "stepicons"
    STYLE.StepLineBackBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
    STYLE.StepLineBackBackdropColor = {0, 0, 0, 0}
    STYLE.StepLineBackBackdropBorderColor = {0, 0, 0, 0}
    STYLE.StepLineClickerBackdrop = STYLE.StepLineBackBackdrop
    STYLE.StepLinePaddingWidth = 3
    STYLE.StepLinePaddingHeight = 3
    STYLE.StepLineIconOffset = 0
    STYLE.StepLineTextOffset = 0
    STYLE.StepLineIconSize = 1.1
    STYLE.StepLineIconMarginRight = 3
    STYLE.StepLineSpacing = 0

    STYLE.TitleButtonsTexture = SKINSDIR .. "titlebuttons-thick"
    STYLE.CheckRadioTexture = SKINSDIR .. "checkradio-thick"
    STYLE.FloatingButtonsTexture = SKINSDIR .. "floatingbuttons-thick"
    STYLE.BorderGlowTexture = SKINSDIR .. "border-glow"

    STYLE.SelectionTexture = SKINSDIR .. "selection"
    STYLE.MapArrowTexture = SKINSDIR .. "mv-arrow"
    STYLE.GuideMiniIconsTexture = SKINSDIR .. "guideicons-small"
    STYLE.GuideBigIconsTexture = SKINSDIR .. "guideicons-big"

    STYLE.MinimapIcon = SKINSDIR .. "minimap-icon"
    STYLE.LoadingTexture = SKINSDIR .. "loading"

    STYLE.ToastMessageBg = SKINSDIR .. "messagetoastbg"
    STYLE.ToastMessageBgWOTLK = SKINSDIR .. "messagetoastbg-classicwotlk"

    STYLE.NotificationBackdrop = STYLE.MainBackdrop
    STYLE.NotificationBackdropColor = HTML("#222222FF")
    STYLE.NotificationBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.NotificationDecorColor = STYLE.MainBackdropBorderColor
    STYLE.NotificationTextColor = {0.8, 0.8, 0.8, 1}
    STYLE.NotificationTextColorOver = {1, 1, 1, 1}
    STYLE.NotificationBubbleColor = HTML("#FE6100FF")
    STYLE.NotificationPopupShowHeader = true
    STYLE.NotificationPopupHeaderBackdrop = STYLE.MainBackdrop
    STYLE.NotificationPopupHeaderBackdropColor = STYLE.MainBackdropColor
    STYLE.NotificationPopupHeaderBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.NotificationPopupContentBackdrop = STYLE.MainBackdrop
    STYLE.NotificationPopupContentBackdropColor = HTML("#222222FF")
    STYLE.NotificationPopupContentBackdropBorderColor = HTML("#222222FF")

    STYLE.MessageWarning = HTML("#FF3300FF")
    STYLE.MessageNotify = HTML("#FE6100FF")

    STYLE.FloatMenuBackdrop = STYLE.MainBackdrop
    STYLE.FloatMenuBackdropColor = STYLE.MainBackdropColor
    STYLE.FloatMenuBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.FloatMenuSeparatorColor = HTML("#333333FF")

    STYLE.FloatMenuSmallBackdrop = STYLE.FloatMenuBackdrop
    STYLE.FloatMenuSmallBackdropColor = STYLE.MainBackdropColor
    STYLE.FloatMenuSmallBackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.SearchBackdrop = TiledBackdrop(WHITE_TEX, WHITE_TEX, 1, 1)
    STYLE.SearchEditBackdropColor = {1, 1, 1, 1}
    STYLE.SearchEditBorderColor = {1, 1, 1, 1}
    STYLE.SearchEditTextColor = {0, 0, 0, 1}
    STYLE.SearchEditTextColorActive = {0, 0, 0, 1}

    STYLE.ActionBarBackdrop = STYLE.MainBackdrop
    STYLE.ActionBarBackdropColor = STYLE.MainBackdropColor
    STYLE.ActionBarBackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.FindNearestBackdrop = HTML("#222222FF")
    STYLE.FindNearestBackdropColor = STYLE.MainBackdropColor
    STYLE.FindNearestBackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.GoldguideBackdrop = STYLE.MainBackdrop
    STYLE.GoldguideBackdropColor = STYLE.MainBackdropColor
    STYLE.GoldguideBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.GoldguideHeaderFooterColor = STYLE.GuideMenuHeaderFooterBackground

    STYLE.WorldQuestBackdrop = STYLE.MainBackdrop
    STYLE.WorldQuestBackdropColor = STYLE.MainBackdropColor
    STYLE.WorldQuestBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.WorldQuestMargin = 10

    STYLE.AuctionToolsMargin = 0
    STYLE.AuctionToolsBackdrop = STYLE.MainBackdrop
    STYLE.AuctionToolsBackdropColor = STYLE.MainBackdropColor
    STYLE.AuctionToolsBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.AuctionToolsPriceIcons = SKINSDIR .. "goldpricestatusicons"
    STYLE.AuctionToolsHeaderFooterBackground = {0, 0, 0, 1}
    STYLE.AuctionToolsHeaderFooterBorder = {0, 0, 0, 1}

    STYLE.BugBackdrop = STYLE.MainBackdrop
    STYLE.BugBackdropColor = STYLE.MainBackdropColor
    STYLE.BugBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.BugEditBackdrop = STYLE.NoEdgeBackdrop
    STYLE.BugEditBackdropColor = HTML("#222222FF")

    STYLE.GearFinderBackdrop = STYLE.MainBackdrop
    STYLE.GearFinderBackdropColor = STYLE.MainBackdropColor
    STYLE.GearFinderBackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.WidgetsBackdrop = STYLE.MainBackdrop
    STYLE.WidgetsBackdropColor = STYLE.MainBackdropColor
    STYLE.WidgetsBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.WidgetsTextColor = {1, 1, 1, 1}
    STYLE.WidgetsDragColor = HTML("#333333FF")
    STYLE.WidgetsPopupBackdropColor = {0, 0, 0, 1}
    STYLE.WidgetsPopupBackdropBorderColor = {0, 0, 0, 1}

    STYLE.CreatureBackdrop = STYLE.MainBackdrop
    STYLE.CreatureBackdropColor = STYLE.MainBackdropColor
    STYLE.CreatureBackdropBorderColor = STYLE.MainBackdropBorderColor
    STYLE.CreatureViewerLabelBackground = STYLE.NoEdgeBackdrop
    STYLE.CreatureViewerLabelColor = {1.0, 1.0, 1.0, 1.0}
    STYLE.CreatureViewerGap = {-10, 0}
    STYLE.CVNoModelTexture = SKINSDIR .. "zygor_mascot"

    STYLE.MoneyBackdrop = STYLE.MainBackdrop
    STYLE.MoneyBackdropColor = STYLE.MainBackdropColor
    STYLE.MoneyBackdropBorderColor = STYLE.MainBackdropBorderColor

    STYLE.GuideMenuBackdrop = STYLE.MainBackdrop
    STYLE.GuideMenuBackdropColor = STYLE.MainBackdropColor
    STYLE.GuideMenuBackdropBorderColor = {0, 0, 0, 1}
    STYLE.GuideMenuMenuBackgroundColor = HTML("#2B2B2BFF")
    STYLE.GuideMenuMenuBackdropBorderColor = {0, 0, 0, 1}
    STYLE.GuideMenuDetailsBackdrop = STYLE.MainBackdrop
    STYLE.GuideMenuDetailsBackdropColor = HTML("#2B2B2BFF")
    STYLE.GuideMenuDetailsBackdropBorderColor = {0, 0, 0, 1}
    STYLE.GuideMenuContentBackdrop = STYLE.MainBackdrop
    STYLE.GuideMenuContentBackdropColor = HTML("#222222FF")
    STYLE.GuideMenuContentBackdropBorderColor = {0, 0, 0, 1}
    STYLE.GuideMenuExpandedBackdrop = STYLE.MainBackdrop
    STYLE.GuideMenuExpandedBackdropColor = HTML("#2B2B2BFF")
    STYLE.GuideMenuExpandedBackdropBorderColor = HTML("#2B2B2BFF")
    STYLE.GuideMenuFeaturedDropdown = TiledBackdrop(WHITE_TEX, SKINSDIR .. "backdrop-opaque-small-outline", 32, 31)
    STYLE.GuideMenuFeaturedDropdownBackdropColor = {0, 0, 0, 1}
    STYLE.GuideMenuFeaturedDropdownBackdropBorderColor = {1, 1, 1, 1}
    STYLE.GuideMenuTinyMargin = 1

    STYLE.TitleLogo = SKINSDIR .. "zygorlogo"
    STYLE.TitleLogoSize = {110, 27.5}

    STYLE.TransparencyPrimary = 1
    STYLE.TransparencySecondary = 1

    STYLE.TabBackdrop = TiledBackdrop(WHITE_TEX, nil, 0, 0)
    STYLE.TabBackdropColor = {0, 0, 0, 0.0}
    STYLE.StepnumBackdropColor = {0, 0, 0, 0.0}

    -- Override GetDir on the stealth style to point to ThemeEngine path
    STYLE.GetDir = function(self)
        return SKINSDIR
    end

    XP.InitStyleTables(STYLE)
end)
