-- ThemeEngine/Themes/Midnight/Skin.lua
-- Registers the "midnight" skin and "midnight" style with the XP skin system.
-- All style data lives here so the skin is fully self-contained.
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
if not XP or not XP.OnSkinReady then return end

XP:OnSkinReady("midnight", function(Skin)
    local STYLE = Skin:AddStyle("midnight", "Midnight")
    local ADDON_DIR = "Interface\\AddOns\\" .. ADDON_NAME
    local SKINSDIR = ADDON_DIR .. "\\ThemeEngine\\Themes\\Midnight\\assets\\"
    local HTML = XP.HTML
    local Transparent = {0, 0, 0, 0}

    STYLE.StyleName = "Midnight"
    STYLE.StyleID = "midnight"
    STYLE.Transparent = Transparent

    -- Color Palette
    STYLE.AccentColor          = HTML("#00D9FFFF")
    STYLE.AccentColorBright    = HTML("#14F1FFFF")
    STYLE.BackgroundDeep       = HTML("#071126FF")
    STYLE.BackgroundPanel      = HTML("#0D1833FF")
    STYLE.BorderCyan           = HTML("#00B7D6FF")
    STYLE.BorderCyanSubtle     = HTML("#00B7D633")
    STYLE.TextPrimary          = HTML("#FFFFFFFF")
    STYLE.TextSecondary        = HTML("#8BA4C7FF")
    STYLE.TextDark             = HTML("#4A6A8AFF")
    STYLE.DangerRed            = HTML("#D93352FF")
    STYLE.SyncDotGreen         = HTML("#00FF66FF")

    -- Legacy aliases
    STYLE.MainBackdropColor    = HTML("#0D1833CC")
    STYLE.MainBackdropBorderColor = STYLE.AccentColor
    STYLE.SecBackdropColor     = HTML("#0D183399")
    STYLE.TriBackdropColor     = HTML("#333333FF")
    STYLE.DarkBorder           = HTML("#000000FF")

    local WHITE_TEX = SKINSDIR .. "white"

    -- Backdrop System
    STYLE.MainBackdrop = {
        bgFile = WHITE_TEX, edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 20, tileSize = 20,
        insets = {left = 20, right = 20, top = 20, bottom = 20}
    }
    STYLE.SecBackdrop = {
        bgFile = WHITE_TEX, edgeFile = "",
        tile = true, edgeSize = 0, tileSize = 20,
        insets = {left = 0, right = 0, top = 0, bottom = 0}
    }
    STYLE.PanelBackdrop = {
        bgFile = SKINSDIR .. "panel-bg", edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 16, tileSize = 64,
        insets = {left = 16, right = 16, top = 16, bottom = 16}
    }
    STYLE.WindowBackdrop = STYLE.MainBackdrop
    STYLE.WindowBottomBackdrop = STYLE.PanelBackdrop
    STYLE.SmallBackdrop = {
        bgFile = WHITE_TEX, edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 8, tileSize = 8,
        insets = {left = 8, right = 8, top = 8, bottom = 8}
    }
    STYLE.NoEdgeBackdrop = {
        bgFile = WHITE_TEX, edgeFile = "",
        tile = true, edgeSize = 0, tileSize = 20,
        insets = {left = 0, right = 0, top = 0, bottom = 0}
    }
    STYLE.GuideBackdrop = {
        bgFile = WHITE_TEX, edgeFile = SKINSDIR .. "roundcorners",
        tile = true, edgeSize = 10, tileSize = 20,
        insets = {left = 10, right = 10, top = 10, bottom = 10}
    }
    STYLE.GuideBackdropColor = HTML("#0D1833FF")
    STYLE.GuideBackdropBorderColor = {0, 0, 0, 0}
    STYLE.GuideBackdropTopLeft = {80, 0}
    STYLE.GuideBackdropBottomRight = {-52, 0}
    STYLE.BugBackdrop = STYLE.SecBackdrop
    STYLE.BugBackdropColor = STYLE.SecBackdropColor
    STYLE.StepBackdrop = STYLE.NoEdgeBackdrop
    STYLE.StepBackdropColor = STYLE.BackgroundPanel
    STYLE.StepBackdropBorderColor = {0, 0, 0, 0}
    STYLE.StepLineBackBackdrop = {
        bgFile = WHITE_TEX, edgeFile = SKINSDIR .. "roundcorners",
        tile = true, edgeSize = 6, tileSize = 6,
        insets = {left = 6, right = 6, top = 6, bottom = 6}
    }
    STYLE.StepLineBackBackdropColor = STYLE.StepBackdropColor
    STYLE.StepLineBackBackdropBorderColor = STYLE.StepBackdropBorderColor
    STYLE.StepLineMarginX = 3
    STYLE.StepLineMarginY = 3
    STYLE.StepLineClickerBackdrop = STYLE.StepLineBackBackdrop
    STYLE.StepnumBackdrop = {bgFile = WHITE_TEX}
    STYLE.StepnumBackdropColor = HTML("#0D1833FF")
    STYLE.StepnumBackdropTopLeft = {20, 0}
    STYLE.StepnumBackdropBottomRight = {50, -20}
    STYLE.TabBackdrop = {bgFile = WHITE_TEX}
    STYLE.TabBackdropColor = HTML("#071126FF")
    STYLE.FloatMenuBackdrop = STYLE.PanelBackdrop
    STYLE.FloatMenuSmallBackdrop = STYLE.SmallBackdrop
    STYLE.SearchBackdrop = {
        bgFile = WHITE_TEX, edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 4, tileSize = 16,
        insets = {left = 4, right = 4, top = 4, bottom = 4}
    }

    -- Button System
    STYLE.GuideButtonSize = 20
    STYLE.ButtonBackdrop1 = {
        bgFile = SKINSDIR .. "button-bg", edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 8, tileSize = 32,
        insets = {left = 8, right = 8, top = 4, bottom = 4}
    }
    STYLE.ButtonColor1 = HTML("#1a2e4dff")
    STYLE.ButtonBorderColor1 = HTML("#00B7D6FF")
    STYLE.ButtonHighlightColor1 = HTML("#00D9FF33")
    STYLE.ButtonBackdrop2 = STYLE.ButtonBackdrop1
    STYLE.ButtonColor2 = HTML("#1a2e4dff")
    STYLE.ButtonHighlightColor2 = HTML("#00D9FF33")
    STYLE.ButtonTextColor1Over = HTML("#00D9FF77")
    STYLE.ButtonTextColor1Out = HTML("#FFFFFFFF")
    STYLE.ButtonBackdrop3 = {
        bgFile = SKINSDIR .. "button-bg", edgeFile = "",
        tile = true, edgeSize = 0, tileSize = 8,
        insets = {left = 2, right = 2, top = 2, bottom = 2}
    }

    -- Dropdown System
    STYLE.DropDownBackdrop1 = STYLE.PanelBackdrop
    STYLE.DropDownBackdrop1Color = STYLE.TriBackdropColor
    STYLE.DropDownBackdrop2 = STYLE.DropDownBackdrop1
    STYLE.DropDownBackdrop2Color = STYLE.DropDownBackdrop1Color
    STYLE.DropDownButtonBackdrop2 = STYLE.SecBackdrop
    STYLE.DropDownButtonBackdrop2Color = STYLE.DropDownBackdrop2Color
    STYLE.DropDownPulloutBackdrop = STYLE.MainBackdrop
    STYLE.DropDownPulloutColor = HTML("#0D1833E6")
    STYLE.DropDownPulloutBorderColor = STYLE.MainBackdropBorderColor
    STYLE.DropDownItemBackdrop = STYLE.SecBackdrop
    STYLE.DropDownItemColor = STYLE.TriBackdropColor
    STYLE.AceGUIDropDownBackdrop = STYLE.PanelBackdrop
    STYLE.AceGUIEditBackdrop = STYLE.SmallBackdrop
    STYLE.AceGUIEditBackdropMultiline = STYLE.PanelBackdrop
    STYLE.AceGUIButtonTexture = STYLE.ButtonBackdrop1

    -- Scrollbar System
    STYLE.ScrollBackColor = STYLE.TriBackdropColor
    STYLE.ScrollBarColor = HTML("#00B7D6FF")
    STYLE.ScrollBarButtonSize = {16, 16}
    STYLE.ScrollbarTexture = SKINSDIR .. "panel-bg"

    -- Progress Bar System
    STYLE.ProgressBarBackdrop = {
        bgFile = WHITE_TEX, edgeFile = WHITE_TEX,
        tile = true, edgeSize = 1, tileSize = 16,
        insets = {left = 1, right = 1, top = 1, bottom = 1}
    }
    STYLE.ProgressBarBackdropColor = HTML("#071126FF")
    STYLE.ProgressBarBackdropBorderColor = STYLE.DarkBorder
    STYLE.ProgressBarTexture = {
        SKINSDIR .. "progress-bar-fill", SKINSDIR .. "progress-bar-fill",
        SKINSDIR .. "progress-bar-fill", SKINSDIR .. "progress-bar-fill"
    }
    STYLE.ProgressBarBGTexture = {
        SKINSDIR .. "progress-bar-bg", SKINSDIR .. "progress-bar-bg",
        SKINSDIR .. "progress-bar-bg", SKINSDIR .. "progress-bar-bg"
    }
    STYLE.ProgressBarTextureHeight = 7
    STYLE.ProgressBarHeight = 18
    STYLE.ProgressBarInset = 5
    STYLE.ProgressBarColor = HTML("#00D9FFFF")
    STYLE.ProgressBarColor2 = HTML("#00B7D6FF")
    STYLE.ProgressBarDecorUse = 0

    -- Typography
    STYLE.FontFace = SKINSDIR .. "opensans.ttf"
    STYLE.FontFaceBold = SKINSDIR .. "opensansb.ttf"
    STYLE.FontFaceHeader = "Fonts\\MORPHEUS.TTF"
    STYLE.FontFaceMono = SKINSDIR .. "opensans.ttf"
    STYLE.FontSizeHeader = 16
    STYLE.FontSizeBody = 12
    STYLE.FontSizeSmall = 10
    STYLE.FontSizeLabel = 11
    STYLE.SectionTitleColor = STYLE.TextPrimary
    STYLE.SectionTitleFontSize = 11
    STYLE.StepNumFontSize = 12
    STYLE.StepNumWidth = 24

    -- Layout Dimensions
    STYLE.ViewerWidth = 360
    STYLE.ViewerHeight = 480
    STYLE.MenuWidth = 860
    STYLE.MenuHeight = 660
    STYLE.TitleBarHeight = 36
    STYLE.TabHeight = 26
    STYLE.ToolbarHeight = 32
    STYLE.SidebarWidth = 200
    STYLE.StepHeight = 56
    STYLE.FooterHeight = 42
    STYLE.InfoBarHeight = 28
    STYLE.WidgetPadding = 12
    STYLE.CardCornerRadius = 8
    STYLE.TitleButtonSize = 20
    STYLE.StepLineIconSize = 1.4

    -- Title Bar & Logo
    STYLE.TitleButtons = SKINSDIR .. "titlebuttons"
    STYLE.TitleLogo = SKINSDIR .. "logo2"
    STYLE.TitleLogoSize = {110, 110/4}

    -- Step Icons (individual files)
    STYLE.StepLineIcons = SKINSDIR .. "stepicon-"

    -- Step Icon Map
    STYLE.StepIconMap = {
        accept = "accept", turnin = "turnin", kill = "kill",
        collect = "collect", explore = "explore", reputation = "reputation",
        profession = "profession", gold = "gold", dailies = "dailies",
        achievement = "achievement", events = "events", titles = "titles",
        pets = "pets", favorites = "favorites", boss = "boss",
        interact = "interact", note = "note", travel = "travel",
        search = "search", settings = "settings", info = "info",
        menu = "menu", pin = "pin", trash = "trash",
    }

    -- Money Display
    STYLE.MoneyBackdrop = {
        bgFile = "", edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 14, tileSize = 128,
        insets = {left = 20, right = 20, top = 20, bottom = 20}
    }
    STYLE.MoneyBackdropColor = {1, 1, 1, 1}
    STYLE.MoneyBackdropBorderColor = {0, 0, 0, 1}

    -- Step Border Glow
    STYLE.StepBorderBackdrop = {
        bgFile = nil, edgeFile = SKINSDIR .. "border-glow",
        tile = true, edgeSize = 8, tileSize = 8,
        insets = {left = 8, right = 8, top = 8, bottom = 8}
    }
    STYLE.StepBackdropPersistentBorder = false
    STYLE.StepActiveLeftBorder = HTML("#00D9FFFF")
    STYLE.StepActiveGlowColor = HTML("#00D9FF44")

    -- Guide Menu Styles
    STYLE.GuideMenuMargin = 10
    STYLE.GuideMenuHeaderFooterBackground = {0, 0, 0, 0}
    STYLE.GuideMenuHeaderFooterBorder = {0, 0, 0, 0}
    STYLE.GuideMenuMenuBackground = HTML("#0D1833FF")
    STYLE.GuideMenuSectionBorder = {0, 0, 0, 1}
    STYLE.GuideMenuSearchEdit = HTML("#1a2e4dff")
    STYLE.GuideMenuContentBackground = HTML("#071126FF")
    STYLE.GuideMenuDetailsBackground = HTML("#0D1833FF")
    STYLE.GuideMenuFooterElementsOffset = 13
    STYLE.GuideMenuSmallIcons = SKINSDIR .. "guideicons-small"
    STYLE.GuideMenuSearchEditBackdrop = STYLE.WindowBackdrop
    STYLE.GuideMenuSearchEditBackdropColor = {1, 1, 1, 1}
    STYLE.GuideMenuSearchEditBorderColor = HTML("#00B7D6FF")
    STYLE.GuideMenuSearchEditTextColor = {0, 0, 0, 0}

    -- Auction Tools
    STYLE.AuctionToolsMargin = 10
    STYLE.AuctionToolsPriceIcons = SKINSDIR .. "goldpricestatusicons"
    STYLE.AuctionToolsHeaderFooterBackground = {0, 0, 0, 0}
    STYLE.AuctionToolsHeaderFooterBorder = {0, 0, 0, 0}

    -- Tab System
    STYLE.TabsMargin = 10
    STYLE.TabsHeight = 20
    STYLE.TabsIconSize = 12
    STYLE.TabsIcons = SKINSDIR .. "guideicons-big"
    STYLE.TabsBackdrop = STYLE.MainBackdrop
    STYLE.TabsBackdropActive = HTML("#0D1833FF")
    STYLE.TabsBackdropInactive = {0, 0, 0, 1}
    STYLE.TabsBorderColor = {0, 0, 0, 1}
    STYLE.TabsSeparatorColor = HTML("#00B7D6FF")
    STYLE.TabsSeparatorTexture = SKINSDIR .. "white"
    STYLE.TabsTextColor = STYLE.TextPrimary
    STYLE.TabsTextColorOver = HTML("#00D9FFFF")
    STYLE.TabsBusyIcon = SKINSDIR .. "loading"
    STYLE.TabsDecor = false
    STYLE.TabsDecorWidth = 8
    STYLE.TabsButtonsBackdropColor = {0, 0, 0, 0}
    STYLE.TabActiveTexture = SKINSDIR .. "tab-active"
    STYLE.TabInactiveTexture = SKINSDIR .. "tab-inactive"
    STYLE.TabActiveTextColor = STYLE.AccentColor
    STYLE.TabInactiveTextColor = STYLE.TextSecondary
    STYLE.TabContainerBackdropColor = STYLE.BackgroundDeep

    -- Notification System
    STYLE.NotificationBackdrop = STYLE.MainBackdrop
    STYLE.NotificationBackdropColor = STYLE.MainBackdropColor
    STYLE.NotificationBackdropBorderColor = STYLE.MainBackdropBorderColor

    -- Nav Bar
    STYLE.NavBarBackdropColor = STYLE.BackgroundDeep
    STYLE.NavButtonIconColor = STYLE.AccentColor

    -- Footer / Toolbar
    STYLE.FooterBackdropColor = STYLE.BackgroundDeep
    STYLE.FooterBackdropBorderColor = STYLE.BorderCyan

    -- Arrow / Waypoint
    STYLE.ArrowColor = STYLE.AccentColor
    STYLE.ArrowGlowColor = HTML("#00D9FF66")

    -- Sync Dot
    STYLE.SyncDotColor = STYLE.SyncDotGreen

    -- Widget / Dashboard Grid Cards
    STYLE.WidgetBackdrop = {
        bgFile = SKINSDIR .. "panel-bg", edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 4, tileSize = 64,
        insets = {left = 4, right = 4, top = 4, bottom = 4}
    }
    STYLE.WidgetBackdropColor = STYLE.BackgroundPanel
    STYLE.WidgetBackdropBorderColor = STYLE.BorderCyanSubtle

    -- Title Bar Background
    STYLE.TitleBarBackdrop = {
        bgFile = SKINSDIR .. "title-bar-bg", edgeFile = "",
        tile = true, edgeSize = 0, tileSize = 1,
        insets = {left = 0, right = 0, top = 0, bottom = 0}
    }
    STYLE.TitleBarBackdropColor = STYLE.BackgroundDeep
    STYLE.TitleBarBackdropBorderColor = {0, 0, 0, 0}

    -- Checkbox
    STYLE.CheckboxCheckedTexture = SKINSDIR .. "checkbox-checked"
    STYLE.CheckboxUncheckedTexture = SKINSDIR .. "white"

    -- Viewer Frame Special Backdrops
    STYLE.ViewerFrameBackdrop = {
        bgFile = SKINSDIR .. "viewer-bg", edgeFile = SKINSDIR .. "border",
        tile = true, edgeSize = 20, tileSize = 128,
        insets = {left = 20, right = 20, top = 20, bottom = 20}
    }
    STYLE.ViewerFrameBackdropColor = STYLE.BackgroundPanel
    STYLE.ViewerFrameBackdropBorderColor = STYLE.AccentColor

    STYLE.GlassBackdrop = {
        bgFile = SKINSDIR .. "backdrop-glass", edgeFile = SKINSDIR .. "border-glow",
        tile = true, edgeSize = 16, tileSize = 256,
        insets = {left = 16, right = 16, top = 16, bottom = 16}
    }
    STYLE.GlassBackdropColor = HTML("#0D1833AA")
    STYLE.GlassBackdropBorderColor = STYLE.AccentColor

    STYLE.GlassBackdropSmall = {
        bgFile = SKINSDIR .. "panel-bg", edgeFile = SKINSDIR .. "border-glow",
        tile = true, edgeSize = 8, tileSize = 64,
        insets = {left = 8, right = 8, top = 8, bottom = 8}
    }

    -- Override GetDir on the style to point to assets/
    STYLE.GetDir = function(self)
        return SKINSDIR
    end

    XP.InitStyleTables(STYLE)
end)
