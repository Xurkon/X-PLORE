-----------------------------------------------------------------------
-- X-Plore: GuideMenu.lua
-- The guide browser / menu popup.
-- Large frame for browsing, searching, and selecting guides.
-- Mirrors XP's GuideMenu system.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
local L = XP.L

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local DETAIL_WIDTH    = 219       -- width of the right detail panel (matches XP)
local OPTIONS_SIDEBAR_W = 200     -- width of the left sidebar in the options view (matches XP MenuOptions)

-----------------------------------------------------------------------
-- State
-----------------------------------------------------------------------
local currentView     = "home"     -- "home", "category", "folder", "guide"
local currentCategory = nil        -- selected category ID
local currentFolder   = nil        -- selected folder name (within a category)
local selectedGuideID = nil        -- guide shown in detail panel
local guideListData   = {}         -- filtered list for display
local guideRows       = {}         -- reusable row frames
local categoryButtons = {}         -- sidebar category buttons
local MAX_GUIDE_ROWS  = 100
local factionFilter   = "ALL"      -- "ALL", "ALLIANCE", or "HORDE"

-- Resolve icon name to full texture path (local or WoW built-in).
-- DEBUG: ENTER ResolveIconPath()
-- DEBUG: PARAM iconName = [iconName]
local function ResolveIconPath(iconName)
    if not iconName then return nil end
    if iconName:match("Interface") then
        return iconName
    end
    local p = XP.ICON_PATH .. iconName
    if not p:match("%.tga$") and not p:match("%.blp$") then
        p = p .. ".tga"
    end
    return p
-- DEBUG: EXIT ResolveIconPath()
end

-- Resolve a category's icon to sprite sheet path + texcoords.
-- Returns: path, left, right, top, bottom
-- DEBUG: ENTER GetCategoryIconPath()
-- DEBUG: PARAM cat = [cat]
local function GetCategoryIconPath(cat)
    if not cat then return nil end
    if cat.iconFull then
        return cat.icon, 0, 1, 0, 1
    end
    if type(cat.icon) == "table" then
        local col, row = cat.icon[1], cat.icon[2]
        local set = XP.IconSets.TabsIcons
        local l = (col - 1) / set.cols
        local r = col / set.cols
        local t = (row - 1) / set.rows
        local b = row / set.rows
        local path = set.getIconPath()
        return path, l, r, t, b
    end
    return ResolveIconPath(cat.icon), 0, 1, 0, 1
-- DEBUG: EXIT GetCategoryIconPath()
end

-----------------------------------------------------------------------
-- Create the Guide Menu Frame
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateGuideMenu()
function XP:CreateGuideMenu()
    if self.MenuFrame then return end

    local width  = self:Size("menu_width")
    local height = self:Size("menu_height")
    local sideW  = self:Size("sidebar_width")

    ---------------------------------------------------------------
    -- Main Frame
    ---------------------------------------------------------------
    local frame = XP.CreateBackdropFrame("Frame", "XPlore_GuideMenu", UIParent)
    frame:SetSize(width, height)
    frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
    frame:SetMovable(true)
    frame:SetClampedToScreen(true)
    frame:SetFrameStrata("DIALOG")
    frame:SetFrameLevel(100)
    frame:EnableMouse(true)
    frame:Hide()

    self:ApplyBackdrop(frame, "main", "bg_deep", "border_bright")

    self.MenuFrame = frame

    ---------------------------------------------------------------
    -- Header (top bar with tabs)
    ---------------------------------------------------------------
    local header = CreateFrame("Frame", nil, frame)
    header:SetHeight(40)
    header:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
    header:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0)
    header:EnableMouse(true)
    header:RegisterForDrag("LeftButton")
    header:SetScript("OnDragStart", function() frame:StartMoving() end)
    header:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
    frame.Header = header

    frame.HeaderBg = header:CreateTexture(nil, "BACKGROUND")
    frame.HeaderBg:SetAllPoints()
    XP.SetTexColor(frame.HeaderBg, XP:ColorRGBA("bg_deep"))

    -- Logo title text (no icon) — left side of header
    local logoText = header:CreateFontString(nil, "OVERLAY")
    logoText:SetPoint("LEFT", header, "LEFT", 14, 0)
    self:ApplyFont(logoText, "bold", "cyan")
    logoText:SetText("X-PLORE")
    frame.LogoText = logoText

    -- Header close button (using XP's titlebuttons-thin sprite sheet)
    local closeBtn = CreateFrame("Button", nil, header)
    closeBtn:SetSize(16, 16)
    closeBtn:SetPoint("RIGHT", header, "RIGHT", -10, 0)
    local closeNorm = closeBtn:CreateTexture(nil, "ARTWORK")
    closeNorm:SetSize(16, 16)
    closeNorm:SetPoint("CENTER", closeBtn, "CENTER", 0, 0)
    local titleBtnPath = "Interface\\AddOns\\" .. ADDON_NAME .. "\\Skins\\titlebuttons-thin"
    closeNorm:SetTexture(titleBtnPath)
    local padding = 1/16/64
    closeNorm:SetTexCoord(5/64 + padding, 6/64 - padding, 1/4 + padding, 1/2 - padding)
    closeBtn:SetNormalTexture(closeNorm)
    local closePushed = closeBtn:CreateTexture(nil, "ARTWORK")
    closePushed:SetSize(16, 16)
    closePushed:SetPoint("CENTER", closeBtn, "CENTER", 0, 0)
    closePushed:SetTexture(titleBtnPath)
    closePushed:SetTexCoord(5/64 + padding, 6/64 - padding, 2/4 + padding, 3/4 - padding)
    closeBtn:SetPushedTexture(closePushed)
    local hlTex = closeBtn:CreateTexture(nil, "HIGHLIGHT")
    hlTex:SetAllPoints()
    hlTex:SetTexture(titleBtnPath)
    hlTex:SetTexCoord(5/64 + padding, 6/64 - padding, 3/4 + padding, 1 - padding)
    hlTex:SetBlendMode("ADD")
    closeBtn:SetHighlightTexture(hlTex)
    closeBtn:SetScript("OnClick", function() frame:Hide() end)
    frame.CloseBtn = closeBtn

    -- Header Tab Buttons — anchored to RIGHT of logo text, not to header left edge
    -- Tabs are 70x24, starting right after logo, spaced by tab width + 1px separator
    local tabNames = { "Home", "Featured", "Current", "Recent" }
    local headerTabs = {}
    local tabX = 180  -- start tabs well after logo text (logo is ~80px at 14px bold + padding)
    for i, tabName in ipairs(tabNames) do
        local tab = CreateFrame("Button", nil, header)
        tab:SetSize(70, 24)
        tab:SetPoint("LEFT", header, "LEFT", tabX, 0)
        tab:SetNormalFontObject(GameFontNormalSmall)
        tab:SetText(tabName)
        tab:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))

        -- Active indicator (bottom line, width tracks text width + 6px padding)
        local indicator = tab:CreateTexture(nil, "ARTWORK")
        indicator:SetHeight(2)
        indicator:SetPoint("BOTTOM", tab, "BOTTOM", 0, 0)
        indicator:SetWidth(tab:GetFontString():GetStringWidth() + 6)
        XP.SetTexColor(indicator, XP:ColorRGBA("cyan"))
        indicator:Hide()
        tab.Indicator = indicator

        tab:SetScript("OnClick", function()
            XP:MenuNavigate(tabName:lower())
        end)
        tab:SetScript("OnEnter", function(btn)
            btn:GetFontString():SetTextColor(XP:ColorRGBA("cyan_light"))
        end)
        tab:SetScript("OnLeave", function(btn)
            if currentView ~= tabName:lower() then
                btn:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))
            end
        end)

        headerTabs[tabName:lower()] = tab
        tabX = tabX + 71  -- 70px tab + 1px gap
    end
    frame.HeaderTabs = headerTabs

    -- Header divider
    frame.HeaderDivider = self:CreateDivider(frame, -40, "border_bright")

    ---------------------------------------------------------------
    -- Sidebar (left panel with categories)
    ---------------------------------------------------------------
    local sidebar = CreateFrame("Frame", nil, frame)
    sidebar:SetWidth(sideW)
    sidebar:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -41)
    sidebar:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, 0)
    frame.Sidebar = sidebar

    frame.SidebarBg = sidebar:CreateTexture(nil, "BACKGROUND")
    frame.SidebarBg:SetAllPoints()
    local _sBgC = XP:SD("GuideMenuMenuBackground")
    if _sBgC then
        XP.SetTexColor(frame.SidebarBg, _sBgC[1], _sBgC[2], _sBgC[3], _sBgC[4])
    else
        XP.SetTexColor(frame.SidebarBg, 0.169, 0.169, 0.169, 0.95)
    end

    -- Search box — pill-shaped with solid dark background, no border
    -- Use a backdrop frame for the pill shape, EditBox inside for text input
    local searchFrame = XP.CreateBackdropFrame("Frame", nil, sidebar)
    searchFrame:SetSize(sideW - 24, 26)
    searchFrame:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 12, -8)
    local sBgColor = XP:SD("SearchEditBackdropColor") or {0.05, 0.05, 0.05, 1}
    if searchFrame.SetBackdrop then
        searchFrame:SetBackdrop(XP:Backdrop("none"))
        searchFrame:SetBackdropColor(sBgColor[1], sBgColor[2], sBgColor[3], sBgColor[4])
    end
    frame.SearchFrame = searchFrame

    local searchBox = CreateFrame("EditBox", "XPlore_GuideMenuSearch", searchFrame)
    searchBox:SetSize(sideW - 40, 26)
    searchBox:SetPoint("LEFT", searchFrame, "LEFT", 8, 0)
    searchBox:SetAutoFocus(false)
    searchBox:SetMaxLetters(50)
    self:ApplyFont(searchBox, "normal", "text_normal")
    searchBox:SetTextColor(XP:ColorRGBA("text_normal"))
    searchBox:SetScript("OnEscapePressed", function(self_eb) self_eb:ClearFocus() end)
    searchBox:SetScript("OnEnterPressed", function(self_eb)
        local text = self_eb:GetText()
        if text and text ~= "" then
            XP:MenuSearch(text)
        end
        self_eb:ClearFocus()
    end)

    -- Placeholder text ("Search" — XP uses short placeholder)
    searchBox:SetTextInsets(0, 24, 0, 0)
    local phText = searchFrame:CreateFontString(nil, "OVERLAY")
    phText:SetPoint("LEFT", searchBox, "LEFT", 2, 0)
    phText:SetPoint("RIGHT", searchBox, "RIGHT", 0, 0)
    self:ApplyFont(phText, "normal", "text_dim")
    phText:SetText("Search")
    phText:Show()
    searchBox.Placeholder = phText

    searchBox:SetScript("OnEditFocusGained", function()
        phText:Hide()
    end)
    searchBox:SetScript("OnEditFocusLost", function()
        if searchBox:GetText() == "" then
            phText:Show()
        end
    end)
    searchBox:SetScript("OnTextChanged", function()
        if searchBox:GetText() == "" then
            phText:Show()
        else
            phText:Hide()
        end
    end)
    frame.SearchBox = searchBox

    -- Magnifying glass icon (right side of search frame)
    local searchIcon = searchFrame:CreateTexture(nil, "OVERLAY")
    searchIcon:SetSize(14, 14)
    searchIcon:SetPoint("RIGHT", searchFrame, "RIGHT", -8, 0)
    searchIcon:SetTexture("Interface\\Common\\VoiceChat-Mic")
    searchIcon:SetVertexColor(XP:ColorRGBA("text_dim"))
    frame.SearchIcon = searchIcon

    -- Only show icon when user is typing
    searchBox:HookScript("OnEditFocusGained", function()
        searchIcon:Show()
    end)
    searchBox:HookScript("OnEditFocusLost", function()
        if searchBox:GetText() == "" then
            searchIcon:Hide()
        end
    end)
    searchBox:HookScript("OnTextChanged", function()
        if searchBox:GetText() == "" then
            searchIcon:Hide()
        else
            searchIcon:Show()
        end
    end)
    searchIcon:Hide()  -- start hidden (placeholder showing)

    -- Category buttons (populated dynamically)
    self:CreateCategoryButtons(sidebar)

    -- Sidebar border (right edge)
    local sidebarBorder = sidebar:CreateTexture(nil, "ARTWORK")
    sidebarBorder:SetWidth(1)
    sidebarBorder:SetPoint("TOPRIGHT", sidebar, "TOPRIGHT", 0, 0)
    sidebarBorder:SetPoint("BOTTOMRIGHT", sidebar, "BOTTOMRIGHT", 0, 0)
    XP.SetTexColor(sidebarBorder, XP:ColorRGBA("border_dim"))

    ---------------------------------------------------------------
    -- Center Column (guide list)
    ---------------------------------------------------------------
    local centerCol = CreateFrame("Frame", nil, frame)
    centerCol:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 1, 0)
    centerCol:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -(DETAIL_WIDTH + 1), 0)
    frame.CenterColumn = centerCol

    -- Center column background (darker than sidebar per XP)
    local centerBg = centerCol:CreateTexture(nil, "BACKGROUND")
    centerBg:SetAllPoints()
    local _cBgC = XP:SD("GuideMenuContentBackground")
    if _cBgC then
        XP.SetTexColor(centerBg, _cBgC[1], _cBgC[2], _cBgC[3], _cBgC[4])
    else
        XP.SetTexColor(centerBg, 0.125, 0.125, 0.125, 0.95)
    end
    frame.CenterBg = centerBg

    -- Section header (back arrow + category name)
    local sectionHeader = CreateFrame("Frame", nil, centerCol)
    sectionHeader:SetHeight(22)
    sectionHeader:SetPoint("TOPLEFT", centerCol, "TOPLEFT", 0, 0)
    sectionHeader:SetPoint("TOPRIGHT", centerCol, "TOPRIGHT", 0, 0)
    frame.SectionHeader = sectionHeader

    local sectionBg = sectionHeader:CreateTexture(nil, "BACKGROUND")
    sectionBg:SetAllPoints()
    XP.SetTexColor(sectionBg, XP:ColorRGBA("bg_deep"))
    frame.SectionHeaderBg = sectionBg

    -- Back button
    local backBtn = CreateFrame("Button", nil, sectionHeader)
    backBtn:SetSize(12, 12)
    backBtn:SetPoint("LEFT", sectionHeader, "LEFT", 10, 0)
    backBtn:SetNormalFontObject(GameFontNormalSmall)
    backBtn:SetText("<")
    backBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
    backBtn:SetScript("OnClick", function() XP:MenuNavigate("home") end)
    frame.BackBtn = backBtn

    -- Breadcrumb trail (shows navigation path)
    local breadcrumb = sectionHeader:CreateFontString(nil, "OVERLAY")
    breadcrumb:SetPoint("LEFT", backBtn, "RIGHT", 8, 0)
    breadcrumb:SetPoint("RIGHT", sectionHeader, "RIGHT", -60, 0)
    self:ApplyFont(breadcrumb, "small", "text_normal")
    breadcrumb:SetText("")
    breadcrumb:SetJustifyH("LEFT")
    breadcrumb:SetWordWrap(false)
    frame.Breadcrumb = breadcrumb

    -- Section name (clickable when in subcategory)
    local sectionName = sectionHeader:CreateFontString(nil, "OVERLAY")
    sectionName:SetPoint("LEFT", breadcrumb, "RIGHT", 0, 0)
    self:ApplyFont(sectionName, "bold", "text_bright")
    sectionName:SetText("")
    sectionName:SetJustifyH("LEFT")
    frame.SectionName = sectionName

    -- Make section header clickable for back navigation
    sectionHeader:EnableMouse(true)
    sectionHeader:SetScript("OnMouseUp", function(self_hdr, button)
        if button == "LeftButton" then
            -- If we have a back function, execute it
            if frame.BreadcrumbBackFunc then
                frame.BreadcrumbBackFunc()
            end
        end
    end)
    sectionHeader:SetScript("OnEnter", function()
        if frame.BreadcrumbBackFunc then
            frame.SectionName:SetTextColor(XP:ColorRGBA("cyan"))
        end
    end)
    sectionHeader:SetScript("OnLeave", function()
        frame.SectionName:SetTextColor(XP:ColorRGBA("text_bright"))
    end)

    -- Guide count
    local guideCount = sectionHeader:CreateFontString(nil, "OVERLAY")
    guideCount:SetPoint("RIGHT", sectionHeader, "RIGHT", -12, 0)
    self:ApplyFont(guideCount, "small", "text_dim")
    guideCount:SetText("")
    frame.GuideCount = guideCount

    -- Faction filter buttons (All | Alliance | Horde) — anchored to the right of guideCount
    local filterContainer = CreateFrame("Frame", nil, sectionHeader)
    filterContainer:SetHeight(18)
    filterContainer:SetPoint("RIGHT", guideCount, "LEFT", -8, 0)
    filterContainer:SetPoint("TOP", sectionHeader, "TOP", 0, 2)
    filterContainer:Hide()  -- shown only in category/folder views
    frame.FactionFilterContainer = filterContainer

    local function MakeFilterBtn(name, label)
        local btn = CreateFrame("Button", nil, filterContainer)
        btn:SetSize(50, 18)
        btn:SetNormalFontObject(GameFontNormalSmall)
        btn:SetText(label)
        btn:GetFontString():SetTextColor(XP:ColorRGBA("text_dim"))
        btn:SetScript("OnClick", function()
            XP:MenuSetFactionFilter(name)
        end)
        btn:SetScript("OnEnter", function(btn_)
            btn_:GetFontString():SetTextColor(XP:ColorRGBA("cyan_light"))
        end)
        btn:SetScript("OnLeave", function(btn_)
            local activeFilter = XP.GetFactionFilter and XP:GetFactionFilter() or "ALL"
            if name ~= activeFilter then
                btn_:GetFontString():SetTextColor(XP:ColorRGBA("text_dim"))
            end
        end)
        return btn
    end

    local btnAll = MakeFilterBtn("ALL", "All")
    btnAll:SetPoint("RIGHT", filterContainer, "RIGHT", 0, 0)
    local btnAlliance = MakeFilterBtn("ALLIANCE", "Alliance")
    btnAlliance:SetPoint("RIGHT", btnAll, "LEFT", -2, 0)
    local btnHorde = MakeFilterBtn("HORDE", "Horde")
    btnHorde:SetPoint("RIGHT", btnAlliance, "LEFT", -2, 0)
    filterContainer.BtnAll = btnAll
    filterContainer.BtnAlliance = btnAlliance
    filterContainer.BtnHorde = btnHorde

    -- Section divider
    local sectionDiv = centerCol:CreateTexture(nil, "ARTWORK")
    sectionDiv:SetHeight(1)
    sectionDiv:SetPoint("TOPLEFT", centerCol, "TOPLEFT", 0, -22)
    sectionDiv:SetPoint("TOPRIGHT", centerCol, "TOPRIGHT", 0, -22)
    XP.SetTexColor(sectionDiv, XP:ColorRGBA("border_dim"))
    frame.SectionDivider = sectionDiv

    ---------------------------------------------------------------
    -- Guide List Scroll Frame
    -- Use plain ScrollFrame + mousewheel (no UIPanelScrollFrameTemplate).
    ---------------------------------------------------------------
    local listScrollbarW = 12
    local listArea = CreateFrame("ScrollFrame", "XPlore_GuideMenuScroll", centerCol)
    listArea:SetPoint("TOPLEFT", centerCol, "TOPLEFT", 0, -23)
    listArea:SetPoint("BOTTOMRIGHT", centerCol, "BOTTOMRIGHT", -(listScrollbarW + 2), 0)
    frame.ListScroll = listArea

    listArea:EnableMouseWheel(true)
    listArea:SetScript("OnMouseWheel", function(sf, delta)
        local current = sf:GetVerticalScroll()
        local maxScroll = sf:GetVerticalScrollRange()
        local step = 30
        local new = current - delta * step
        if new < 0 then new = 0 end
        if new > maxScroll then new = maxScroll end
        sf:SetVerticalScroll(new)
        if sf.ScrollBar then
            sf.ScrollBar:SetValue(new)
        end
    end)

    local listScrollBar = CreateFrame("Slider", nil, centerCol)
    listScrollBar:SetWidth(listScrollbarW)
    listScrollBar:SetPoint("TOPRIGHT", centerCol, "TOPRIGHT", 0, -23)
    listScrollBar:SetPoint("BOTTOMRIGHT", centerCol, "BOTTOMRIGHT", 0, 0)
    listScrollBar:SetOrientation("VERTICAL")
    listScrollBar:SetMinMaxValues(0, 1)
    listScrollBar:SetValue(0)
    local lsbTrack = listScrollBar:CreateTexture(nil, "BACKGROUND")
    lsbTrack:SetAllPoints()
    local lsbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
    XP.SetTexColor(lsbTrack, lsbtc[1], lsbtc[2], lsbtc[3], lsbtc[4])
    local lsbThumb = listScrollBar:CreateTexture(nil, "OVERLAY")
    lsbThumb:SetWidth(listScrollbarW - 2)
    local lsbTex = XP:SD("ScrollBarTexture")
    if lsbTex then lsbThumb:SetTexture(lsbTex) end
    local lsbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
    XP.SetTexColor(lsbThumb, lsbcc[1], lsbcc[2], lsbcc[3], lsbcc[4])
    listScrollBar:SetThumbTexture(lsbThumb)
    listScrollBar:SetScript("OnValueChanged", function(sb, val)
        listArea:SetVerticalScroll(val)
    end)
    listArea.ScrollBar = listScrollBar
    frame.ListScrollTrack = lsbTrack
    frame.ListScrollThumb = lsbThumb
    frame.ListScrollBar = listScrollBar
    listArea:SetScript("OnScrollRangeChanged", function(sf, xRange, yRange)
        local maxScroll = yRange or sf:GetVerticalScrollRange()
        listScrollBar:SetMinMaxValues(0, math.max(0, maxScroll))
        if maxScroll <= 0 then listScrollBar:Hide() else listScrollBar:Show() end
    end)

    local listChild = CreateFrame("Frame", "XPlore_GuideMenuScrollChild", listArea)
    listChild:SetWidth(width - sideW - listScrollbarW - 2)
    listChild:SetHeight(1)
    listArea:SetScrollChild(listChild)
    frame.ListChild = listChild

    -- Keep listChild width in sync if centerCol ever changes size
    centerCol:SetScript("OnSizeChanged", function(self2)
        local w = self2:GetWidth()
        if w and w > 0 then
            listChild:SetWidth(w - listScrollbarW - 2)
        end
    end)

    -- Create reusable guide row frames
    self:CreateGuideRows(listChild)

    ---------------------------------------------------------------
    -- Home View (shown by default instead of guide list)
    ---------------------------------------------------------------
    local homeView = CreateFrame("Frame", nil, centerCol)
    homeView:SetAllPoints(centerCol)
    -- Solid bg so list/scrollbar beneath don't bleed through
    local homeViewBg = homeView:CreateTexture(nil, "BACKGROUND")
    homeViewBg:SetAllPoints()
    local _hBgC = XP:SD("GuideMenuContentBackground")
    if _hBgC then
        XP.SetTexColor(homeViewBg, _hBgC[1], _hBgC[2], _hBgC[3], _hBgC[4])
    else
        XP.SetTexColor(homeViewBg, 0.125, 0.125, 0.125, 0.95)
    end
    homeView.HomeViewBg = homeViewBg
    frame.HomeView = homeView

    self:CreateHomeView(homeView)

    ---------------------------------------------------------------
    -- Featured View (shows curated guide showcases)
    ---------------------------------------------------------------
    local featuredView = CreateFrame("Frame", nil, centerCol)
    featuredView:SetPoint("TOPLEFT", frame.SectionHeader, "BOTTOMLEFT", 0, -1)
    featuredView:SetPoint("BOTTOMRIGHT", centerCol, "BOTTOMRIGHT", 0, 0)
    featuredView:Hide()
    frame.FeaturedView = featuredView

    self:CreateFeaturedView(featuredView)

    ---------------------------------------------------------------
    -- Options View (inline, themed — shown when Options tab clicked)
    ---------------------------------------------------------------
    local optionsView = CreateFrame("Frame", nil, centerCol)
    -- Anchor below section header so it doesn't overlap the header bar
    optionsView:SetPoint("TOPLEFT", frame.SectionHeader, "BOTTOMLEFT", 0, -1)
    optionsView:SetPoint("BOTTOMRIGHT", centerCol, "BOTTOMRIGHT", 0, 0)
    optionsView:Hide()
    frame.OptionsView = optionsView

    self:CreateInlineOptions(optionsView)

    ---------------------------------------------------------------
    -- Right Detail Column
    ---------------------------------------------------------------
    local detailCol = CreateFrame("Frame", nil, frame)
    detailCol:SetWidth(DETAIL_WIDTH)
    detailCol:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -41)
    detailCol:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)
    frame.DetailColumn = detailCol

    local detailBorderL = detailCol:CreateTexture(nil, "BACKGROUND")
    detailBorderL:SetWidth(1)
    detailBorderL:SetPoint("TOPLEFT", detailCol, "TOPLEFT", 0, 0)
    detailBorderL:SetPoint("BOTTOMLEFT", detailCol, "BOTTOMLEFT", 0, 0)
    XP.SetTexColor(detailBorderL, XP:ColorRGBA("border_dim"))
    detailCol.DetailBorderL = detailBorderL

    local detailBg = detailCol:CreateTexture(nil, "BACKGROUND")
    detailBg:SetAllPoints()
    local _dBgC = XP:SD("GuideMenuMenuBackground")
    if _dBgC then
        XP.SetTexColor(detailBg, _dBgC[1], _dBgC[2], _dBgC[3], _dBgC[4])
    else
        XP.SetTexColor(detailBg, 0.169, 0.169, 0.169, 0.95)
    end
    detailCol.DetailBg = detailBg

    self:CreateDetailPanel(detailCol)

    ---------------------------------------------------------------
    -- Skin application function
    ---------------------------------------------------------------
    -- DEBUG: ENTER ApplySkinFunc()
    -- DEBUG: PARAM f = [f]
    local function ApplySkinFunc(f)
        if not f then return end

        -- Main frame backdrop
        XP:ApplyBackdrop(f, "main", "bg_deep", "border_bright")

        -- Header background
        if f.HeaderBg then
            XP.SetTexColor(f.HeaderBg, XP:ColorRGBA("bg_deep"))
        end

        -- Header divider
        if f.HeaderDivider then
            XP.SetTexColor(f.HeaderDivider, XP:ColorRGBA("border_bright"))
        end

        -- Sidebar background
        if f.SidebarBg then
            local sBgC = XP:SD("GuideMenuMenuBackground") or {XP:ColorRGBA("bg_deep")}
            XP.SetTexColor(f.SidebarBg, sBgC[1], sBgC[2], sBgC[3], sBgC[4])
        end

        -- Center column background
        if f.CenterBg then
            local cBgC = XP:SD("GuideMenuContentBackground") or {XP:ColorRGBA("bg_medium")}
            XP.SetTexColor(f.CenterBg, cBgC[1], cBgC[2], cBgC[3], cBgC[4])
        end

        -- Home view background
        if f.HomeView and f.HomeView.HomeViewBg then
            local hBgC = XP:SD("GuideMenuContentBackground") or {XP:ColorRGBA("bg_medium")}
            XP.SetTexColor(f.HomeView.HomeViewBg, hBgC[1], hBgC[2], hBgC[3], hBgC[4])
        end

        -- Detail column border, background, scrollbar, and panel elements
        local dc = f.DetailColumn
        if dc then
            if dc.DetailBorderL then
                XP.SetTexColor(dc.DetailBorderL, XP:ColorRGBA("border_dim"))
            end
            if dc.DetailBg then
                local dBgC = XP:SD("GuideMenuMenuBackground") or {XP:ColorRGBA("bg_medium")}
                XP.SetTexColor(dc.DetailBg, dBgC[1], dBgC[2], dBgC[3], dBgC[4])
            end
            if dc.DetailScrollTrack then
                local dsbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
                XP.SetTexColor(dc.DetailScrollTrack, dsbtc[1], dsbtc[2], dsbtc[3], dsbtc[4])
            end
            if dc.DetailScrollThumb then
                local dsbTex = XP:SD("ScrollBarTexture")
                if dsbTex then dc.DetailScrollThumb:SetTexture(dsbTex) end
                local dsbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
                XP.SetTexColor(dc.DetailScrollThumb, dsbcc[1], dsbcc[2], dsbcc[3], dsbcc[4])
            end
            if dc.EmptyMsg        then XP:ApplyFont(dc.EmptyMsg,      "small", "text_dim")    end
            if dc.DetailTitle     then XP:ApplyFont(dc.DetailTitle,   "bold",  "text_bright") end
            if dc.DetailInfo      then XP:ApplyFont(dc.DetailInfo,    "small", "cyan")        end
            if dc.DetailDesc      then XP:ApplyFont(dc.DetailDesc,    "small", "text_muted")  end
            if dc.DetailSteps     then XP:ApplyFont(dc.DetailSteps,   "small", "text_dim")    end
            if dc.DetailExpansion then XP:ApplyFont(dc.DetailExpansion, "small", "text_dim")  end
            if dc.DetailLoadBtn   then
                if dc.DetailLoadBtn.SetBackdropColor then
                    dc.DetailLoadBtn:SetBackdropColor(XP:ColorRGBA("bg_light"))
                    dc.DetailLoadBtn:SetBackdropBorderColor(XP:ColorRGBA("border"))
                end
                if dc.DetailLoadBtn.Label then
                    XP:ApplyFont(dc.DetailLoadBtn.Label, "bold", "cyan")
                end
            end
        end
        if f.LogoText then
            XP:ApplyFont(f.LogoText, "bold", "cyan")
        end

        -- Close button (uses WoW's built-in textures, no custom coloring needed)

        -- Search frame background - use solid backdrop instead of nil
        if f.SearchFrame then
            local sBgColor = XP:SD("SearchEditBackdropColor") or {0.05, 0.05, 0.05, 1}
            XP:ApplyBackdrop(f.SearchFrame, "none")
            f.SearchFrame:SetBackdropColor(sBgColor[1], sBgColor[2], sBgColor[3], sBgColor[4])
        end

        -- Options button
        if f.OptionsBtn then
            local optBtnColor = XP:SD("ButtonColor1") or {0.2, 0.2, 0.2, 1}
            XP:ApplyBackdrop(f.OptionsBtn, "none")
            f.OptionsBtn:SetBackdropColor(optBtnColor[1], optBtnColor[2], optBtnColor[3], optBtnColor[4])
            if f.OptionsBtnLabel then
                XP:ApplyFont(f.OptionsBtnLabel, "normal", "text_normal")
            end
        end
        -- Hide old SearchBg texture (orphaned after search bar redesign)
        if f.SearchBg then
            f.SearchBg:Hide()
        end
        if f.SearchBorder then
            f.SearchBorder:Hide()
        end

        -- Header: tab indicators
        if f.HeaderTabs then
            for _, tab in pairs(f.HeaderTabs) do
                if tab and tab:GetFontString() then
                    tab:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))
                end
                if tab and tab.Indicator then
                    XP.SetTexColor(tab.Indicator, XP:ColorRGBA("cyan"))
                end
            end
        end

        -- Back button
        if f.BackBtn and f.BackBtn:GetFontString() then
            f.BackBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        end

        -- Section header fonts
        if f.SectionName then
            XP:ApplyFont(f.SectionName, "bold", "text_bright")
        end
        if f.GuideCount then
            XP:ApplyFont(f.GuideCount, "small", "text_dim")
        end
    -- DEBUG: EXIT ApplySkinFunc()
    end

    XP.ApplySkin = ApplySkinFunc

    ---------------------------------------------------------------
    -- Initial state: show home
    ---------------------------------------------------------------
    self:MenuNavigate("home")

    -- Apply skin to the newly created frame
    XP.ApplySkin(XP.MenuFrame)

    ---------------------------------------------------------------
    -- Runtime re-skin subscriber
    -- Called by XP:SetSkin() when the player changes skin in options.
    ---------------------------------------------------------------
    XP:RegisterSkinSubscriber(function()
        XP.ApplySkin(XP.MenuFrame)
        -- Re-navigate to refresh current view
        XP:MenuNavigate(currentView or "home")
    end)
-- DEBUG: EXIT XP:CreateGuideMenu()
end

-----------------------------------------------------------------------
-- Category Buttons (sidebar)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateCategoryButtons()
-- DEBUG: PARAM sidebar = [sidebar]
function XP:CreateCategoryButtons(sidebar)
    local categories = self:GetCategories()
    local yOffset = -55  -- below search box

    for i, cat in ipairs(categories) do
        local btn = XP.CreateBackdropFrame("Button", nil, sidebar)
        btn:SetSize(self:Size("sidebar_width"), self:Size("category_height"))
        btn:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 0, yOffset)

        -- Background (transparent by default)
        self:ApplyBackdrop(btn, "none", "bg_deep")

        -- Category icon (sprite sheet — apply SetTexCoord)
        local icon = btn:CreateTexture(nil, "ARTWORK")
        icon:SetSize(16, 16)
        icon:SetPoint("LEFT", btn, "LEFT", 11, 0)
        local iconPath, l, r, t, b = GetCategoryIconPath(cat)
        icon:SetTexture(iconPath)
        icon:SetTexCoord(l, r, t, b)
        btn.Icon = icon

        -- Category name (normal font, not small)
        local text = btn:CreateFontString(nil, "OVERLAY")
        text:SetPoint("LEFT", icon, "RIGHT", 8, 0)
        self:ApplyFont(text, "normal", "text_normal")
        text:SetText(cat.name)
        btn.Text = text

        -- Guide count badge
        local countBadge = btn:CreateFontString(nil, "OVERLAY")
        countBadge:SetPoint("RIGHT", btn, "RIGHT", -10, 0)
        self:ApplyFont(countBadge, "small", "text_dim")
        btn.CountBadge = countBadge

        -- LeftDecor: 2px vertical bar on left edge (shown when active category)
        local leftDecor = btn:CreateTexture(nil, "OVERLAY")
        leftDecor:SetWidth(2)
        leftDecor:SetPoint("TOPLEFT", btn, "TOPLEFT", 0, 0)
        leftDecor:SetPoint("BOTTOMLEFT", btn, "BOTTOMLEFT", 0, 0)
        XP.SetTexColor(leftDecor, XP:ColorRGBA("cyan"))
        leftDecor:Hide()
        btn.LeftDecor = leftDecor

        -- Hover highlight: solid medium-gray backdrop (XP style — no gradient/texture)
        btn:SetScript("OnEnter", function(self_btn)
            if currentCategory ~= cat.id then
                if self_btn.SetBackdropColor then
                    self_btn:SetBackdropColor(XP:ColorRGBA("bg_hover"))
                end
                self_btn.Text:SetTextColor(1, 1, 1, 1)  -- white on hover
            end
        end)
        btn:SetScript("OnLeave", function(self_btn)
            if currentCategory ~= cat.id then
                if self_btn.SetBackdropColor then
                    self_btn:SetBackdropColor(0, 0, 0, 0)  -- transparent when not hovered
                end
                self_btn.Text:SetTextColor(XP:ColorRGBA("text_normal"))
            end
        end)

        -- Click handler
        btn:SetScript("OnClick", function()
            if cat.id == "FAVOURITES" then
                XP:MenuNavigate("favourites")
            else
                XP:MenuNavigate("category", cat.id)
            end
        end)

        btn.categoryID = cat.id
        categoryButtons[cat.id] = btn
        yOffset = yOffset - self:Size("category_height")
    end

    -- Bottom section: Divider + Options button
    local bottomY = 10

    -- Divider above Options (separates options from category list)
    local optDiv = sidebar:CreateTexture(nil, "ARTWORK")
    optDiv:SetHeight(1)
    optDiv:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 0, bottomY + self:Size("category_height") + 4)
    optDiv:SetPoint("BOTTOMRIGHT", sidebar, "BOTTOMRIGHT", 0, bottomY + self:Size("category_height") + 4)
    XP.SetTexColor(optDiv, XP:ColorRGBA("border_dim"))

    -- Options button
    local optBtn = XP.CreateBackdropFrame("Button", nil, sidebar)
    optBtn:SetSize(self:Size("sidebar_width"), self:Size("category_height"))
    optBtn:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 0, bottomY)
    local optBtnColor = self:SD("ButtonColor1") or {0.2, 0.2, 0.2, 1}
    if optBtn.SetBackdrop then
        optBtn:SetBackdrop(XP:Backdrop("none"))
        optBtn:SetBackdropColor(optBtnColor[1], optBtnColor[2], optBtnColor[3], optBtnColor[4])
    end
    local optIcon = optBtn:CreateTexture(nil, "ARTWORK")
    optIcon:SetSize(16, 16)
    optIcon:SetPoint("LEFT", optBtn, "LEFT", 12, 0)
    optIcon:SetTexture("Interface\\Icons\\INV_Misc_Gear_01")
    local optText = optBtn:CreateFontString(nil, "OVERLAY")
    optText:SetPoint("LEFT", optIcon, "RIGHT", 8, 0)
    self:ApplyFont(optText, "normal", "text_normal")
    optText:SetText("Options")
    optBtn:SetScript("OnEnter", function(btn)
        if btn.SetBackdropColor then btn:SetBackdropColor(XP:ColorRGBA("bg_hover")) end
        optText:SetTextColor(1, 1, 1, 1)
    end)
    optBtn:SetScript("OnLeave", function(btn)
        if btn.SetBackdropColor then
            local c = XP:SD("ButtonColor1") or {0.2, 0.2, 0.2, 1}
            btn:SetBackdropColor(c[1], c[2], c[3], c[4])
        end
        optText:SetTextColor(XP:ColorRGBA("text_normal"))
    end)
    optBtn:SetScript("OnClick", function()
        XP:MenuNavigate("options")
    end)
    XP.MenuFrame.OptionsBtn = optBtn
    XP.MenuFrame.OptionsBtnLabel = optText
-- DEBUG: EXIT XP:CreateCategoryButtons()
end

-----------------------------------------------------------------------
-- Guide Rows (reusable list items in center column)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateGuideRows()
-- DEBUG: PARAM parent = [parent]
function XP:CreateGuideRows(parent)
    for i = 1, MAX_GUIDE_ROWS do
        local row = XP.CreateBackdropFrame("Button", nil, parent)
        row:SetHeight(26)
        row:Hide()

        -- Guide rows are fully transparent — clear any default backdrop
        if row.SetBackdrop then row:SetBackdrop(nil) end

        -- Selection/hover highlight texture
        local selHl = row:CreateTexture(nil, "OVERLAY")
        selHl:SetAllPoints()
        XP.SetTexColor(selHl, 1, 1, 1, 0.08)  -- subtle light-grey hover (cross-version safe)
        selHl:Hide()
        row.SelectionHighlight = selHl

        -- Icon (15x15, bottom-aligned, matching XP)
        local icon = row:CreateTexture(nil, "ARTWORK")
        icon:SetSize(15, 15)
        icon:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 12, 5)
        row.Icon = icon

        -- Title (vertically centered, no subtitle below)
        local title = row:CreateFontString(nil, "OVERLAY")
        title:SetPoint("LEFT", icon, "RIGHT", 8, 0)
        title:SetPoint("RIGHT", row, "RIGHT", -70, 0)
        title:SetJustifyH("LEFT")
        self:ApplyFont(title, "normal", "text_bright")
        row.Title = title

        -- Load button (hidden by default, shown on hover)
        local loadBtn = CreateFrame("Button", nil, row)
        loadBtn:SetSize(60, 20)
        loadBtn:SetPoint("RIGHT", row, "RIGHT", -10, 0)
        loadBtn:SetNormalFontObject(GameFontNormalSmall)
        loadBtn:SetText("Load")
        loadBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        loadBtn:SetScript("OnEnter", function(btn)
            btn:GetFontString():SetTextColor(XP:ColorRGBA("cyan_light"))
        end)
        loadBtn:SetScript("OnLeave", function(btn)
            btn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        end)
        loadBtn:Hide()
        row.LoadBtn = loadBtn

        -- Favourite star button (shown on hover)
        local favBtn = CreateFrame("Button", nil, row)
        favBtn:SetSize(18, 18)
        favBtn:SetPoint("RIGHT", loadBtn, "LEFT", -5, 0)
        favBtn:Hide()
        row.FavBtn = favBtn

        local favTex = favBtn:CreateTexture(nil, "ARTWORK")
        favTex:SetAllPoints()
        local starIcon = XP.IconSets.GuideIconsSmall
        if starIcon and starIcon.file then
            favTex:SetTexture(starIcon.file)
            local col, row_idx = starIcon.STAR[1], starIcon.STAR[2]
            local uSize = 1 / starIcon.cols
            local vSize = 1 / starIcon.rows
            favTex:SetTexCoord(
                (col - 1) * uSize, col * uSize,
                (row_idx - 1) * vSize, row_idx * vSize
            )
        end
        favTex:SetDesaturated(true)
        favBtn:SetNormalTexture(favTex)

        favBtn:SetScript("OnClick", function(self_btn)
            local guide = self_btn:GetParent().guide
            if guide then
                guide:ToggleFavourite()
                local tex = self_btn:GetNormalTexture()
                if tex then
                    tex:SetDesaturated(not guide:IsFavourite())
                end
            end
        end)
        favBtn:SetScript("OnEnter", function(self_btn)
            GameTooltip:SetOwner(self_btn, "ANCHOR_LEFT")
            GameTooltip:SetText("Toggle Favorite")
            GameTooltip:Show()
        end)
        favBtn:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)

        -- Hover: show selection highlight + load button + fav button (not for folder rows)
        row:SetScript("OnEnter", function(self_row)
            if self_row.SelectionHighlight then self_row.SelectionHighlight:Show() end
            if not self_row.isFolder then
                if self_row.LoadBtn then self_row.LoadBtn:Show() end
                if self_row.FavBtn then self_row.FavBtn:Show() end
            end
        end)
        row:SetScript("OnLeave", function(self_row)
            if self_row.SelectionHighlight then self_row.SelectionHighlight:Hide() end
            if self_row.LoadBtn then self_row.LoadBtn:Hide() end
            if self_row.FavBtn then self_row.FavBtn:Hide() end
        end)

        -- Divider
        local div = row:CreateTexture(nil, "ARTWORK")
        div:SetHeight(1)
        div:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 0, 0)
        div:SetPoint("BOTTOMRIGHT", row, "BOTTOMRIGHT", 0, 0)
        XP.SetTexColor(div, XP:ColorRGBA("border_dim"))

        -- Faction badge (top-right corner, shown when guide has a specific faction)
        local factionBadge = row:CreateTexture(nil, "OVERLAY")
        factionBadge:SetSize(14, 14)
        factionBadge:SetPoint("TOPRIGHT", row, "TOPRIGHT", -8, -3)
        factionBadge:Hide()
        row.FactionBadge = factionBadge

        guideRows[i] = row
    end
-- DEBUG: EXIT XP:CreateGuideRows()
end

-----------------------------------------------------------------------
-- Home View (welcome/overview when no category selected)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateHomeView()
-- DEBUG: PARAM parent = [parent]
function XP:CreateHomeView(parent)
    XP.GuideMenuView.RenderHome(parent)
-- DEBUG: EXIT XP:CreateHomeView()
end

--------------------------------------------------------------------
-- Featured View (shows curated guide showcases)
--------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateFeaturedView()
-- DEBUG: PARAM parent = [parent]
function XP:CreateFeaturedView(parent)
    XP.GuideMenuView.RenderFeatured(parent)
-- DEBUG: EXIT XP:CreateFeaturedView()
end

-- DEBUG: ENTER XP:PopulateFeaturedView()
-- DEBUG: PARAM parent = [parent]
-- DEBUG: PARAM dataset = [dataset]
function XP:PopulateFeaturedView(parent, dataset)
    XP.GuideMenuView.PopulateFeatured(parent, dataset)
-- DEBUG: EXIT XP:PopulateFeaturedView()
end

-----------------------------------------------------------------------
-- Inline Options Panel (rendered inside the center column)
-- Replaces the external AceConfigDialog popup with a themed panel.
-- Uses tabbed interface matching XP's style.
-----------------------------------------------------------------------
local OPTIONS_TABS = {
    { id = "display",      name = "Display" },
    { id = "arrow",        name = "Waypoint Arrow" },
    { id = "stepdisplay",  name = "Step Display" },
    { id = "maps",         name = "Maps" },
    { id = "behavior",     name = "Behaviour" },
    { id = "automation",   name = "Automation" },
    { id = "gear",         name = "Gear" },
    { id = "itemscore",    name = "Item Score" },
    { id = "gold",         name = "Gold" },
    { id = "notification", name = "Notification" },
    { id = "extras",       name = "Extras" },
    { id = "theme",        name = "Theme" },
    { id = "about",        name = "About" },
}

-- DEBUG: ENTER XP:CreateInlineOptions()
-- DEBUG: PARAM parent = [parent]
function XP:CreateInlineOptions(parent)
    -- XP-style layout: left sidebar of icon tabs, content area to the right.
    -- Sidebar fills the left portion of parent; content area fills the rest.

    -- ===== SIDEBAR (icon button list) =====
    local sidebar = CreateFrame("Frame", nil, parent)
    sidebar:SetWidth(OPTIONS_SIDEBAR_W)
    sidebar:SetPoint("TOPLEFT", parent, "TOPLEFT", 0, 0)
    sidebar:SetPoint("BOTTOMLEFT", parent, "BOTTOMLEFT", 0, 0)
    parent.Sidebar = sidebar

    -- Store tab buttons for highlight management
    local tabButtons = {}

    -- ===== CONTENT AREA (replaces the old inline panel entirely) =====
    local contentArea = CreateFrame("Frame", nil, parent)
    contentArea:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 0, 0)
    contentArea:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", 0, 0)
    parent.ContentArea = contentArea

    -- ===== SECTION HEADER inside content area =====
    local sectionHeader = CreateFrame("Frame", nil, contentArea)
    sectionHeader:SetHeight(22)
    sectionHeader:SetPoint("TOPLEFT", contentArea, "TOPLEFT", 0, 0)
    sectionHeader:SetPoint("TOPRIGHT", contentArea, "TOPRIGHT", 0, 0)
    sectionHeader:EnableMouse(true)
    sectionHeader:SetScript("OnMouseUp", function() end)  -- no back nav in options
    parent.OptionsSectionHeader = sectionHeader

    local shBg = sectionHeader:CreateTexture(nil, "BACKGROUND")
    shBg:SetAllPoints()
    XP.SetTexColor(shBg, XP:ColorRGBA("bg_deep"))

    local shText = sectionHeader:CreateFontString(nil, "OVERLAY")
    shText:SetPoint("LEFT", sectionHeader, "LEFT", 12, 0)
    XP:ApplyFont(shText, "normal", "text_bright")
    shText:SetJustifyH("LEFT")
    shText:SetText("Options")
    parent.OptionsSectionName = shText

    local shDivider = sectionHeader:CreateTexture(nil, "ARTWORK")
    shDivider:SetHeight(1)
    shDivider:SetPoint("BOTTOMLEFT", sectionHeader, "BOTTOMLEFT", 0, 0)
    shDivider:SetPoint("BOTTOMRIGHT", sectionHeader, "BOTTOMRIGHT", 0, 0)
    XP.SetTexColor(shDivider, XP:ColorRGBA("border_dim"))

    -- ===== CONTENT SCROLL FRAME =====
    local contentScrollW = 440
    local contentScroll = CreateFrame("ScrollFrame", nil, contentArea)
    contentScroll:SetPoint("TOPLEFT", sectionHeader, "BOTTOMLEFT", 0, -1)
    contentScroll:SetPoint("BOTTOMLEFT", contentArea, "BOTTOMLEFT", 0, 10)
    contentScroll:SetPoint("BOTTOMRIGHT", contentArea, "BOTTOMRIGHT", -20, 10)
    contentScroll:EnableMouseWheel(true)
    parent.ContentScroll = contentScroll

    contentScroll:SetScript("OnMouseWheel", function(sf, delta)
        local cur = sf:GetVerticalScroll()
        local maxS = sf:GetVerticalScrollRange()
        local new = cur - delta * 30
        if new < 0 then new = 0 end
        if new > maxS then new = maxS end
        sf:SetVerticalScroll(new)
    end)

    local scrollChild = CreateFrame("Frame", nil, contentScroll)
    scrollChild:SetWidth(contentScrollW - 20)
    scrollChild:SetHeight(50)
    contentScroll:SetScrollChild(scrollChild)
    parent.ContentChild = scrollChild

    -- Scrollbar
    local contentScrollBar = CreateFrame("Slider", nil, contentArea)
    contentScrollBar:SetWidth(12)
    contentScrollBar:SetPoint("TOPRIGHT", contentArea, "TOPRIGHT", -8, -31)
    contentScrollBar:SetPoint("BOTTOMRIGHT", contentArea, "BOTTOMRIGHT", -8, 58)
    contentScrollBar:SetOrientation("VERTICAL")
    contentScrollBar:SetMinMaxValues(0, 1)
    contentScrollBar:SetValue(0)
    local csbTrack = contentScrollBar:CreateTexture(nil, "BACKGROUND")
    csbTrack:SetAllPoints()
    local csbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
    XP.SetTexColor(csbTrack, csbtc[1], csbtc[2], csbtc[3], csbtc[4])
    local csbThumb = contentScrollBar:CreateTexture(nil, "OVERLAY")
    csbThumb:SetWidth(10)
    local csbTex = XP:SD("ScrollBarTexture")
    if csbTex then csbThumb:SetTexture(csbTex) end
    local csbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
    XP.SetTexColor(csbThumb, csbcc[1], csbcc[2], csbcc[3], csbcc[4])
    contentScrollBar:SetThumbTexture(csbThumb)
    contentScrollBar:SetScript("OnValueChanged", function(sb, val)
        contentScroll:SetVerticalScroll(val)
    end)
    parent.ContentScrollBar = contentScrollBar

    -- No-op stub so existing callers (controls, skin preview) don't break
    -- DEBUG: ENTER MarkPendingChange()
    XP.MarkPendingChange = function() end

    -- ===== SIDEBAR ICON BUTTONS =====
    -- Icon mapping: tab id -> { icon = path, label = display name }
    local tabIconMap = {
        display      = { icon = "Interface\\Icons\\INV_Misc_Eye_02",          label = "Display" },
        arrow        = { icon = "Interface\\Icons\\INV_Misc_Compass_02",       label = "Arrow" },
        stepdisplay  = { icon = "Interface\\Icons\\INV_Letter_X_02",           label = "Steps" },
        maps         = { icon = "Interface\\Icons\\INV_Misc_Map02",             label = "Maps" },
        behavior     = { icon = "Interface\\Icons\\INV_Misc_Gear_01",          label = "Behaviour" },
        automation   = { icon = "Interface\\Icons\\INV_Misc_Wrench_01",         label = "Automation" },
        gear         = { icon = "Interface\\Icons\\INV_Chest_Chain_16",         label = "Gear" },
        itemscore    = { icon = "Interface\\Icons\\INV_Misc_Rabbit_02",         label = "Item Score" },
        gold         = { icon = "Interface\\Icons\\INV_Misc_Coin_01",           label = "Gold" },
        notification = { icon = "Interface\\Icons\\INV_Misc_Bell_01",           label = "Notification" },
        extras       = { icon = "Interface\\Icons\\INV_Misc_ArmorKit_02",      label = "Extras" },
        theme        = { icon = "Interface\\Icons\\INV_PaintSwatch_01",          label = "Theme" },
        about        = { icon = "Interface\\Icons\\INV_Misc_Info_01",          label = "About" },
    }

    local activeTab = "display"
    XP.ActiveOptionsTab = activeTab

    local tabButtons = {}
    local previous_button = nil
    for i, tabInfo in ipairs(OPTIONS_TABS) do
        local tabId = tabInfo.id  -- capture loop var NOW to avoid closure aliasing bug
        local iconData = tabIconMap[tabInfo.id] or {}
        local btn = CreateFrame("Button", nil, sidebar)
        btn:SetSize(OPTIONS_SIDEBAR_W - 16, 36)
        if previous_button then
            btn:SetPoint("TOPLEFT", previous_button, "BOTTOMLEFT", 0, -6)
        else
            btn:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 8, -10)
        end
        btn.tabID = tabInfo.id

        -- Background
        local bg = btn:CreateTexture(nil, "BACKGROUND")
        bg:SetAllPoints()
        XP.SetTexColor(bg, XP:ColorRGBA("bg_deep"))

        -- LeftDecor: 2px bar on left (shown when active)
        local leftDecor = btn:CreateTexture(nil, "OVERLAY")
        leftDecor:SetWidth(2)
        leftDecor:SetPoint("TOPLEFT", btn, "TOPLEFT", 0, 0)
        leftDecor:SetPoint("BOTTOMLEFT", btn, "BOTTOMLEFT", 0, 0)
        XP.SetTexColor(leftDecor, XP:ColorRGBA("cyan"))
        leftDecor:Hide()
        btn.LeftDecor = leftDecor

        -- Icon
        local icon = btn:CreateTexture(nil, "ARTWORK")
        icon:SetSize(16, 16)
        icon:SetPoint("LEFT", btn, "LEFT", 12, 0)
        icon:SetTexture(iconData.icon or "Interface\\Icons\\INV_Misc_QuestionMark")
        btn.Icon = icon

        -- Label
        local label = btn:CreateFontString(nil, "OVERLAY")
        label:SetPoint("LEFT", icon, "RIGHT", 8, 0)
        label:SetPoint("RIGHT", btn, "RIGHT", -8, 0)
        XP:ApplyFont(label, "normal", "text_normal")
        label:SetJustifyH("LEFT")
        label:SetJustifyV("MIDDLE")
        label:SetText(iconData.label or tabInfo.name)
        btn.Label = label

        btn:SetScript("OnClick", function()
            activeTab = tabId
            XP.ActiveOptionsTab = tabId
            XP:RefreshOptionsTab(parent, activeTab)
            XP:HighlightOptionButtons(tabButtons, tabId)
            -- Update section header name
            local info = nil
            for _, t in ipairs(OPTIONS_TABS) do
                if t.id == tabId then info = t; break end
            end
            if info then shText:SetText(info.name) end
        end)

        btn:SetScript("OnEnter", function()
            if btn.tabID ~= activeTab then
                bg:SetTexture(XP:ColorRGBA("bg_hover"))
                label:SetTextColor(1, 1, 1, 1)
            end
        end)

        btn:SetScript("OnLeave", function()
            if btn.tabID ~= activeTab then
                XP.SetTexColor(bg, XP:ColorRGBA("bg_deep"))
                label:SetTextColor(XP:ColorRGBA("text_normal"))
            end
        end)

        tabButtons[tabInfo.id] = btn
        previous_button = btn
    -- DEBUG: EXIT MarkPendingChange()
    end

    -- Initial highlight
    XP:HighlightOptionButtons(tabButtons, activeTab)

    -- Load initial tab content
    XP:RefreshOptionsTab(parent, activeTab)
    shText:SetText("Display")

    -- Store for external access
    parent.TabButtons = tabButtons
-- DEBUG: EXIT XP:CreateInlineOptions()
end

-- Highlight the active option button, dim the rest
-- DEBUG: ENTER XP:HighlightOptionButtons()
-- DEBUG: PARAM tabButtons = [tabButtons]
-- DEBUG: PARAM activeTabId = [activeTabId]
function XP:HighlightOptionButtons(tabButtons, activeTabId)
    for id, btn in pairs(tabButtons) do
        local isActive = (id == activeTabId)
        btn.LeftDecor:SetShown(isActive)
        if isActive then
            btn:LockHighlight()
        else
            btn:UnlockHighlight()
        end
        if isActive then
            btn.Label:SetTextColor(XP:ColorRGBA("cyan"))
        else
            btn.Label:SetTextColor(XP:ColorRGBA("text_normal"))
        end
    end
-- DEBUG: EXIT XP:HighlightOptionButtons()
end

-- Helper to add a section heading
-- DEBUG: ENTER AddHeading()
-- DEBUG: PARAM contentFrame = [contentFrame]
-- DEBUG: PARAM yOffset = [yOffset]
-- DEBUG: PARAM text = [text]
local function AddHeading(contentFrame, yOffset, text)
    local h = contentFrame:CreateFontString(nil, "OVERLAY")
    h:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
    XP:ApplyFont(h, "bold", "cyan")
    h:SetText(text)
    yOffset = yOffset - 24
    return yOffset
-- DEBUG: EXIT AddHeading()
end

-- Helper to add a horizontal separator line within a tab content frame
-- DEBUG: ENTER AddSeparator()
-- DEBUG: PARAM contentFrame = [contentFrame]
-- DEBUG: PARAM yOffset = [yOffset]
local function AddSeparator(contentFrame, yOffset)
    local sep = CreateFrame("Frame", nil, contentFrame)
    sep:SetHeight(8)
    sep:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
    sep:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
    yOffset = yOffset - 12

    local line = sep:CreateTexture(nil, "OVERLAY")
    line:SetHeight(1)
    line:SetPoint("BOTTOMLEFT", sep, "BOTTOMLEFT", 0, 0)
    line:SetPoint("BOTTOMRIGHT", sep, "BOTTOMRIGHT", 0, 0)
    XP.SetTexColor(line, 0.3, 0.3, 0.3, 0.5)

    return yOffset
-- DEBUG: EXIT AddSeparator()
end

-- Helper to add vertical spacing within a tab content frame
-- DEBUG: ENTER AddSpace()
-- DEBUG: PARAM contentFrame = [contentFrame]
-- DEBUG: PARAM yOffset = [yOffset]
-- DEBUG: PARAM amount = [amount]
local function AddSpace(contentFrame, yOffset, amount)
    return yOffset - (amount or 8)
-- DEBUG: EXIT AddSpace()
end
-- Helper to add a checkbox option within a tab content frame
-- DEBUG: ENTER AddCheckbox()
-- DEBUG: PARAM contentFrame = [contentFrame]
-- DEBUG: PARAM yOffset = [yOffset]
-- DEBUG: PARAM labelText = [labelText]
-- DEBUG: PARAM dbKey = [dbKey]
-- DEBUG: PARAM subKey = [subKey]
local function AddCheckbox(contentFrame, yOffset, labelText, dbKey, subKey)
    local row = CreateFrame("Frame", nil, contentFrame)
    row:SetHeight(26)
    row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
    row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
    yOffset = yOffset - 28

    local cb = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
    cb:SetSize(20, 20)
    cb:SetPoint("LEFT", row, "LEFT", 0, 0)

    local lbl = row:CreateFontString(nil, "OVERLAY")
    lbl:SetPoint("LEFT", cb, "RIGHT", 6, 0)
    XP:ApplyFont(lbl, "normal", "text_normal")
    lbl:SetText(labelText)

    -- DEBUG: ENTER GetVal()
    local function GetVal()
        if subKey then
            return XP.db.profile[dbKey] and XP.db.profile[dbKey][subKey]
        end
        return XP.db.profile[dbKey]
    -- DEBUG: EXIT GetVal()
    end
    -- DEBUG: ENTER SetVal()
    -- DEBUG: PARAM v = [v]
    local function SetVal(v)
        if subKey then
            if XP.db.profile[dbKey] == nil then XP.db.profile[dbKey] = {} end
            XP.db.profile[dbKey][subKey] = v
        else
            XP.db.profile[dbKey] = v
        end
    -- DEBUG: EXIT SetVal()
    end

    cb:SetChecked(GetVal() and true or false)
    cb:SetScript("OnClick", function(self_cb)
        SetVal(self_cb:GetChecked() and true or false)
        if XP.MarkPendingChange then XP:MarkPendingChange() end
    end)

    return yOffset
-- DEBUG: EXIT AddCheckbox()
end

-- Helper to add a slider option within a tab content frame
-- DEBUG: ENTER AddSlider()
-- DEBUG: PARAM contentFrame = [contentFrame]
-- DEBUG: PARAM yOffset = [yOffset]
-- DEBUG: PARAM labelText = [labelText]
-- DEBUG: PARAM dbKey = [dbKey]
-- DEBUG: PARAM subKey = [subKey]
-- DEBUG: PARAM minVal = [minVal]
-- DEBUG: PARAM maxVal = [maxVal]
-- DEBUG: PARAM step = [step]
-- DEBUG: PARAM fmt = [fmt]
local function AddSlider(contentFrame, yOffset, labelText, dbKey, subKey, minVal, maxVal, step, fmt)
    local row = CreateFrame("Frame", nil, contentFrame)
    row:SetHeight(40)
    row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
    row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
    yOffset = yOffset - 44

    local lbl = row:CreateFontString(nil, "OVERLAY")
    lbl:SetPoint("TOPLEFT", row, "TOPLEFT", 0, 0)
    XP:ApplyFont(lbl, "small", "text_normal")
    lbl:SetText(labelText)

    local slider = CreateFrame("Slider", nil, row, "OptionsSliderTemplate")
    slider:SetWidth(160)
    slider:SetPoint("TOPLEFT", lbl, "BOTTOMLEFT", 0, -4)
    slider:SetMinMaxValues(minVal, maxVal)
    slider:SetValueStep(step or 0.05)

    -- DEBUG: ENTER GetVal()
    local function GetVal()
        if subKey then
            return (XP.db.profile[dbKey] and XP.db.profile[dbKey][subKey]) or minVal
        end
        return XP.db.profile[dbKey] or minVal
    -- DEBUG: EXIT GetVal()
    end
    slider:SetValue(GetVal())

    local valText = row:CreateFontString(nil, "OVERLAY")
    valText:SetPoint("LEFT", slider, "RIGHT", 8, 0)
    XP:ApplyFont(valText, "small", "cyan")
    -- DEBUG: ENTER RefreshText()
    -- DEBUG: PARAM v = [v]
    local function RefreshText(v)
        if fmt then
            valText:SetText(string.format(fmt, v))
        else
            valText:SetText(string.format("%.2f", v))
        end
    -- DEBUG: EXIT RefreshText()
    end
    RefreshText(GetVal())

    slider:SetScript("OnValueChanged", function(self_sl, val)
        if subKey then
            if XP.db.profile[dbKey] == nil then XP.db.profile[dbKey] = {} end
            XP.db.profile[dbKey][subKey] = val
        else
            XP.db.profile[dbKey] = val
        end
        RefreshText(val)
        if XP.MarkPendingChange then XP:MarkPendingChange() end
    end)
    if slider.Low  then slider.Low:SetText("")  end
    if slider.High then slider.High:SetText("") end

    return yOffset
-- DEBUG: EXIT AddSlider()
end

-- Populate options for a specific tab
-- DEBUG: ENTER XP:RefreshOptionsTab()
-- DEBUG: PARAM parent = [parent]
-- DEBUG: PARAM tabId = [tabId]
function XP:RefreshOptionsTab(parent, tabId)
    local contentFrame = parent.ContentChild
    if not contentFrame then return end

    -- Destroy ALL existing content children completely (not just Hide+SetParent)
    -- This prevents stray textures, fontstrings, and orphaned frames from previous tabs
    for _, child in ipairs({ contentFrame:GetChildren() }) do
        child:Hide()
        child:SetParent(nil)
    end

    local yOffset = 10

    if tabId == "display" then
        yOffset = AddHeading(contentFrame, yOffset, "Display")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Viewer on Login", "viewer", "shown")
        yOffset = AddCheckbox(contentFrame, yOffset, "Lock Viewer Position", "viewer", "locked")
        yOffset = AddSlider(contentFrame, yOffset, "Viewer Scale", "viewer", "scale", 0.5, 2.0, 0.05, "%.2f×")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Minimap Button", "showMinimapButton", nil)

        yOffset = AddSpace(contentFrame, yOffset, 10)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Frame Scale
        yOffset = AddSlider(contentFrame, yOffset, "Frame Scale", "frameScale", nil, 0.625, 1.75, 0.125, "%.3f×")

        -- Font Size
        yOffset = AddSlider(contentFrame, yOffset, "Font Size", "fontSize", nil, 7, 17, 1, "%.0fpx")

        yOffset = AddSpace(contentFrame, yOffset, 10)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Hide in Dungeons/Raids
        yOffset = AddCheckbox(contentFrame, yOffset, "Hide viewer when entering dungeons/raids", "hideInDungeon", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Show viewer again when leaving", "showAfterDungeon", nil)
        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Hide in Combat
        yOffset = AddCheckbox(contentFrame, yOffset, "Hide viewer in combat", "hideInCombat", nil)

        yOffset = AddSpace(contentFrame, yOffset, 10)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Reposition on Scale Change
        yOffset = AddCheckbox(contentFrame, yOffset, "Reposition viewer when scaling", "repositionViewer", nil)

        -- Show Map Button
        yOffset = AddCheckbox(contentFrame, yOffset, "Show map button", "showMapButton", nil)

    elseif tabId == "arrow" then
        yOffset = AddHeading(contentFrame, yOffset, "Waypoint Arrow")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Arrow", "arrow", "enabled")
        yOffset = AddCheckbox(contentFrame, yOffset, "Lock Arrow Position", "arrow", "locked")

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Size & Scale section
        yOffset = AddHeading(contentFrame, yOffset, "Size & Scale")
        yOffset = AddSlider(contentFrame, yOffset, "Arrow Scale", "arrow", "scale", 0.5, 2.0, 0.05, "%.2f×")
        yOffset = AddSlider(contentFrame, yOffset, "Font Scale", "arrow", "fontScale", 0.5, 2.0, 0.05, "%.2f×")

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Display section
        yOffset = AddHeading(contentFrame, yOffset, "Display")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Distance", "arrow", "showDistance")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show ETA", "arrow", "showETA")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Icon", "arrow", "showIcon")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Zone Text", "arrow", "showZone")
        yOffset = AddCheckbox(contentFrame, yOffset, "Color Distance by Progress", "arrow", "colorDist")

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Audio section
        yOffset = AddHeading(contentFrame, yOffset, "Audio")
        yOffset = AddCheckbox(contentFrame, yOffset, "Play Sound on Arrival", "arrow", "soundOnArrival")
        yOffset = AddCheckbox(contentFrame, yOffset, "Play Turn Alerts", "arrow", "soundTurn")

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Ant Trail section
        yOffset = AddHeading(contentFrame, yOffset, "Ant Trail")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Ant Trail", "arrow", "showAntTrail")
        yOffset = AddCheckbox(contentFrame, yOffset, "Solid Trail Line", "arrow", "solidTrail")

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Advanced section
        yOffset = AddHeading(contentFrame, yOffset, "Advanced")
        yOffset = AddCheckbox(contentFrame, yOffset, "Click to Set Waypoint", "arrow", "clickToSet")
        yOffset = AddCheckbox(contentFrame, yOffset, "Blink When Close", "arrow", "blinkNear")
        yOffset = AddCheckbox(contentFrame, yOffset, "Use Metric Units", "arrow", "metricUnits")

    elseif tabId == "stepdisplay" then
        yOffset = AddHeading(contentFrame, yOffset, "Step Display")
        yOffset = AddCheckbox(contentFrame, yOffset, "Fixed Step Height", "fixedheight", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Skip Home Steps", "skiphome", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Skip Taxi Steps", "skiptaxi", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Inline Travel", "showinlinetravel", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Show All Dungeon Roles", "showallroles", nil)

        -- Visible steps count selector
        local stepsRow = CreateFrame("Frame", nil, contentFrame)
        stepsRow:SetHeight(26)
        stepsRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        stepsRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28

        local stepsLbl = stepsRow:CreateFontString(nil, "OVERLAY")
        stepsLbl:SetPoint("LEFT", stepsRow, "LEFT", 0, 0)
        XP:ApplyFont(stepsLbl, "small", "text_normal")
        stepsLbl:SetText("Visible Steps Count")

        local stepsDD = CreateFrame("Frame", nil, stepsRow, "UIDropDownMenuTemplate")
        stepsDD:SetWidth(100)
        stepsDD:SetPoint("RIGHT", stepsRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(stepsDD, 80)
        local showCountVal = XP.db.profile.showcountsteps
        if showCountVal and showCountVal >= 1 and showCountVal <= 5 then
            UIDropDownMenu_SetSelectedID(stepsDD, showCountVal)
        end
        UIDropDownMenu_Initialize(stepsDD, function()
            for i = 1, 5 do
                UIDropDownMenu_AddButton({
                    text = tostring(i),
                    -- DEBUG: ENTER func()
                    func = function()
                        XP.db.profile.showcountsteps = i
                        UIDropDownMenu_SetSelectedID(stepsDD, i)
                        if XP.Viewer and XP.Viewer.UpdateSteps then XP.Viewer:UpdateSteps() end
                        if XP.MarkPendingChange then XP:MarkPendingChange() end
                    end,
                })
            end
        end)

        -- Sync settings
        yOffset = yOffset - 12
        yOffset = AddHeading(contentFrame, yOffset, "Sync")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Step Sync", "sync_enabled", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Snap to Shared Steps", "sync_snap", nil)

    elseif tabId == "maps" then
        yOffset = AddHeading(contentFrame, yOffset, "Maps")

        -- Ant Trail section
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Ant Trail", "maplines_enabled", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Ant Trail Style: Dashed (Ants)", "maplines", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Waypoint Icons section
        yOffset = AddHeading(contentFrame, yOffset, "Waypoint Icons")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Waypoint Icons on Map", "mapicons", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Foglight section (world map fog toggle)
        yOffset = AddHeading(contentFrame, yOffset, "World Map")
        yOffset = AddCheckbox(contentFrame, yOffset, "Reveal Explored Areas (Foglight)", "foglight", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Taxi/Flights section
        yOffset = AddHeading(contentFrame, yOffset, "Taxi / Flights")
        yOffset = AddCheckbox(contentFrame, yOffset, "Highlight Taxi Nodes on Map", "highlighttaxi", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Dungeon Preview section
        yOffset = AddHeading(contentFrame, yOffset, "Dungeon Preview")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Dungeon Map Preview", "preview", nil)

        -- Preview scale slider
        yOffset = AddSpace(contentFrame, yOffset, 4)
        local previewScales = {0.5, 0.7, 1.0, 1.2}
        local previewScaleLabels = {[0.5] = "Small", [0.7] = "Normal", [1.0] = "Large", [1.2] = "Full"}
        -- DEBUG: ENTER GetPreviewScaleIdx()
        local function GetPreviewScaleIdx()
            local scale = XP.db.profile.preview_scale or 1.0
            for k, v in ipairs(previewScales) do if v == scale then return k end end
            return 2
        -- DEBUG: EXIT GetPreviewScaleIdx()
        end
        -- DEBUG: ENTER AddPreviewScaleDropdown()
        local function AddPreviewScaleDropdown()
            local row = CreateFrame("Frame", nil, contentFrame)
            row:SetHeight(26)
            row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
            row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
            yOffset = yOffset - 28
            local lbl = row:CreateFontString(nil, "OVERLAY")
            lbl:SetPoint("LEFT", row, "LEFT", 0, 0)
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText("Preview Scale")
            local dd = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate")
            dd:SetWidth(120)
            dd:SetPoint("RIGHT", row, "RIGHT", 0, 0)
            UIDropDownMenu_SetWidth(dd, 100)
            UIDropDownMenu_SetSelectedID(dd, GetPreviewScaleIdx())
            UIDropDownMenu_Initialize(dd, function()
                for i, scale in ipairs(previewScales) do
                    UIDropDownMenu_AddButton({
                        text = previewScaleLabels[scale] or tostring(scale),
                        -- DEBUG: ENTER func()
                        func = function()
                            XP.db.profile.preview_scale = scale
                            UIDropDownMenu_SetSelectedID(dd, i)
                            if XP.MarkPendingChange then XP:MarkPendingChange() end
                        end,
                    })
                end
            end)
            return yOffset
        -- DEBUG: EXIT AddPreviewScaleDropdown()
        end
        -- DEBUG: ENTER IsPreviewOn()
        local function IsPreviewOn()
            return XP.db.profile.preview == true
        -- DEBUG: EXIT IsPreviewOn()
        end
        yOffset = AddPreviewScaleDropdown()

        -- Preview alpha slider
        yOffset = AddSpace(contentFrame, yOffset, 4)
        local previewAlphas = {0.5, 0.7, 0.9, 1.0}
        local previewAlphaLabels = {[0.5] = "Low", [0.7] = "Normal", [0.9] = "High", [1.0] = "Opaque"}
        -- DEBUG: ENTER GetPreviewAlphaIdx()
        local function GetPreviewAlphaIdx()
            local alpha = XP.db.profile.preview_alpha or 0.7
            for k, v in ipairs(previewAlphas) do if v == alpha then return k end end
            return 2
        -- DEBUG: EXIT GetPreviewAlphaIdx()
        end
        -- DEBUG: ENTER AddPreviewAlphaDropdown()
        local function AddPreviewAlphaDropdown()
            local row = CreateFrame("Frame", nil, contentFrame)
            row:SetHeight(26)
            row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
            row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
            yOffset = yOffset - 28
            local lbl = row:CreateFontString(nil, "OVERLAY")
            lbl:SetPoint("LEFT", row, "LEFT", 0, 0)
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText("Preview Opacity")
            local dd = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate")
            dd:SetWidth(120)
            dd:SetPoint("RIGHT", row, "RIGHT", 0, 0)
            UIDropDownMenu_SetWidth(dd, 100)
            UIDropDownMenu_SetSelectedID(dd, GetPreviewAlphaIdx())
            UIDropDownMenu_Initialize(dd, function()
                for i, alpha in ipairs(previewAlphas) do
                    UIDropDownMenu_AddButton({
                        text = previewAlphaLabels[alpha] or tostring(alpha),
                        -- DEBUG: ENTER func()
                        func = function()
                            XP.db.profile.preview_alpha = alpha
                            UIDropDownMenu_SetSelectedID(dd, i)
                            if XP.MarkPendingChange then XP:MarkPendingChange() end
                        end,
                    })
                end
            end)
            return yOffset
        -- DEBUG: EXIT AddPreviewAlphaDropdown()
        end
        yOffset = AddPreviewAlphaDropdown()

        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Preview duration dropdown
        local previewDurations = { [0] = "Permanent", [3] = "3 sec", [5] = "5 sec", [10] = "10 sec" }
        -- DEBUG: ENTER AddPreviewDurationDropdown()
        local function AddPreviewDurationDropdown()
            local row = CreateFrame("Frame", nil, contentFrame)
            row:SetHeight(26)
            row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
            row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
            yOffset = yOffset - 28
            local lbl = row:CreateFontString(nil, "OVERLAY")
            lbl:SetPoint("LEFT", row, "LEFT", 0, 0)
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText("Preview Duration")
            local dd = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate")
            dd:SetWidth(120)
            dd:SetPoint("RIGHT", row, "RIGHT", 0, 0)
            UIDropDownMenu_SetWidth(dd, 100)
            local durVal = XP.db.profile.preview_duration or 0
            local selected = 1
            for i, v in ipairs({0, 3, 5, 10}) do if v == durVal then selected = i break end end
            UIDropDownMenu_SetSelectedID(dd, selected)
            UIDropDownMenu_Initialize(dd, function()
                for i, duration in ipairs({0, 3, 5, 10}) do
                    UIDropDownMenu_AddButton({
                        text = previewDurations[duration] or tostring(duration),
                        -- DEBUG: ENTER func()
                        func = function()
                            XP.db.profile.preview_duration = duration
                            UIDropDownMenu_SetSelectedID(dd, i)
                            if XP.MarkPendingChange then XP:MarkPendingChange() end
                        end,
                    })
                end
            end)
            return yOffset
        -- DEBUG: EXIT AddPreviewDurationDropdown()
        end
        yOffset = AddPreviewDurationDropdown()

        -- Preview control mode dropdown
        local previewControls = { manual = "Manual", step = "Auto-Step" }
        -- DEBUG: ENTER AddPreviewControlDropdown()
        local function AddPreviewControlDropdown()
            local row = CreateFrame("Frame", nil, contentFrame)
            row:SetHeight(26)
            row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
            row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
            yOffset = yOffset - 28
            local lbl = row:CreateFontString(nil, "OVERLAY")
            lbl:SetPoint("LEFT", row, "LEFT", 0, 0)
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText("Preview Control")
            local dd = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate")
            dd:SetWidth(120)
            dd:SetPoint("RIGHT", row, "RIGHT", 0, 0)
            UIDropDownMenu_SetWidth(dd, 100)
            local ctrlVal = XP.db.profile.preview_control or "manual"
            local selected = 1
            local ctrlList = {"manual", "step"}
            for i, v in ipairs(ctrlList) do if v == ctrlVal then selected = i break end end
            UIDropDownMenu_SetSelectedID(dd, selected)
            UIDropDownMenu_Initialize(dd, function()
                for i, ctrl in ipairs(ctrlList) do
                    UIDropDownMenu_AddButton({
                        text = previewControls[ctrl] or ctrl,
                        -- DEBUG: ENTER func()
                        func = function()
                            XP.db.profile.preview_control = ctrl
                            UIDropDownMenu_SetSelectedID(dd, i)
                            if XP.MarkPendingChange then XP:MarkPendingChange() end
                        end,
                    })
                end
            end)
            return yOffset
        -- DEBUG: EXIT AddPreviewControlDropdown()
        end
        yOffset = AddPreviewControlDropdown()

    elseif tabId == "behavior" then
        yOffset = AddHeading(contentFrame, yOffset, "Behaviour")
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Advance Steps", "autoAdvance", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Skip Completed Steps", "autoSkipCompleted", nil)

    elseif tabId == "automation" then
        -- Quest Automation
        yOffset = AddHeading(contentFrame, yOffset, "Quest Automation")
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Accept & Turn-In Quests", "autoacceptturnin", nil)

        -- Indented sub-option for autoacceptturninall
        local subRow = CreateFrame("Frame", nil, contentFrame)
        subRow:SetHeight(26)
        subRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 36, yOffset)
        subRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local subCb = CreateFrame("CheckButton", nil, subRow, "UICheckButtonTemplate")
        subCb:SetSize(20, 20)
        subCb:SetPoint("LEFT", subRow, "LEFT", 0, 0)
        local subLbl = subRow:CreateFontString(nil, "OVERLAY")
        subLbl:SetPoint("LEFT", subCb, "RIGHT", 6, 0)
        XP:ApplyFont(subLbl, "small", "text_normal")
        subLbl:SetText("Accept All Quests & Turn-Ins")
        -- DEBUG: ENTER IsAutoAcceptOn()
        local function IsAutoAcceptOn()
            return XP.db.profile.autoacceptturnin == true
        -- DEBUG: EXIT IsAutoAcceptOn()
        end
        subCb:SetChecked(XP.db.profile.autoacceptturninall == true)
        subCb:SetScript("OnClick", function()
            XP.db.profile.autoacceptturninall = subCb:GetChecked() and true or false
            if XP.MarkPendingChange then XP:MarkPendingChange() end
        end)
        subCb:SetScript("OnShow", function()
            subCb:SetEnabled(IsAutoAcceptOn())
            subCb:SetChecked(XP.db.profile.autoacceptturninall == true)
            if not IsAutoAcceptOn() then
                subLbl:SetTextColor(XP:ColorRGBA("text_dim"))
            else
                subLbl:SetTextColor(XP:ColorRGBA("text_normal"))
            end
        end)
        -- Initial state
        subCb:SetEnabled(IsAutoAcceptOn())
        if not IsAutoAcceptOn() then
            subLbl:SetTextColor(XP:ColorRGBA("text_dim"))
        end

        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Select Gossip", "autogossip", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Travel Automation
        yOffset = AddHeading(contentFrame, yOffset, "Travel Automation")
        -- autotaxi is disabled when pathfinding is off
        -- DEBUG: ENTER IsPathfindingOn()
        local function IsPathfindingOn()
            return XP.db.profile.pathfinding == true
        -- DEBUG: EXIT IsPathfindingOn()
        end
        local taxiRow = CreateFrame("Frame", nil, contentFrame)
        taxiRow:SetHeight(26)
        taxiRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        taxiRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local taxiCb = CreateFrame("CheckButton", nil, taxiRow, "UICheckButtonTemplate")
        taxiCb:SetSize(20, 20)
        taxiCb:SetPoint("LEFT", taxiRow, "LEFT", 0, 0)
        local taxiLbl = taxiRow:CreateFontString(nil, "OVERLAY")
        taxiLbl:SetPoint("LEFT", taxiCb, "RIGHT", 6, 0)
        XP:ApplyFont(taxiLbl, "small", "text_normal")
        taxiLbl:SetText("Auto-Take Flights (Taxi)")
        taxiCb:SetChecked(XP.db.profile.autotaxi == true)
        taxiCb:SetScript("OnClick", function()
            XP.db.profile.autotaxi = taxiCb:GetChecked() and true or false
        end)
        taxiCb:SetScript("OnShow", function()
            taxiCb:SetEnabled(IsPathfindingOn())
            taxiCb:SetChecked(XP.db.profile.autotaxi == true)
            if not IsPathfindingOn() then
                taxiLbl:SetTextColor(XP:ColorRGBA("text_dim"))
            else
                taxiLbl:SetTextColor(XP:ColorRGBA("text_normal"))
            end
        end)
        -- Initial state
        taxiCb:SetEnabled(IsPathfindingOn())
        if not IsPathfindingOn() then
            taxiLbl:SetTextColor(XP:ColorRGBA("text_dim"))
        end

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Inventory Automation
        yOffset = AddHeading(contentFrame, yOffset, "Inventory Automation")
        -- autobuy, showgreysellbutton, autosell all disabled when vendor_tools off
        -- DEBUG: ENTER IsVendorToolsOn()
        local function IsVendorToolsOn()
            return XP.db.profile.enable_vendor_tools == true
        -- DEBUG: EXIT IsVendorToolsOn()
        end
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Buy Guide Items", "autobuy", nil)
        -- Show grey sell button uses a special setter that also updates the button
        -- DEBUG: ENTER AddGreySellCheckbox()
        local function AddGreySellCheckbox()
            local row = CreateFrame("Frame", nil, contentFrame)
            row:SetHeight(26)
            row:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
            row:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
            yOffset = yOffset - 28
            local cb = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
            cb:SetSize(20, 20)
            cb:SetPoint("LEFT", row, "LEFT", 0, 0)
            local lbl = row:CreateFontString(nil, "OVERLAY")
            lbl:SetPoint("LEFT", cb, "RIGHT", 6, 0)
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText("Show Grey Sell Button")
            -- DEBUG: ENTER RefreshGreySell()
            local function RefreshGreySell()
                local enabled = IsVendorToolsOn()
                cb:SetEnabled(enabled)
                if not enabled then
                    lbl:SetTextColor(XP:ColorRGBA("text_dim"))
                else
                    lbl:SetTextColor(XP:ColorRGBA("text_normal"))
                end
                cb:SetChecked(XP.db.profile.showgreysellbutton == true)
            -- DEBUG: EXIT RefreshGreySell()
            end
            cb:SetChecked(XP.db.profile.showgreysellbutton == true)
            cb:SetScript("OnClick", function()
                XP.db.profile.showgreysellbutton = cb:GetChecked() and true or false
            end)
            cb:SetScript("OnShow", RefreshGreySell)
            RefreshGreySell()
            return yOffset
        -- DEBUG: EXIT AddGreySellCheckbox()
        end
        yOffset = AddGreySellCheckbox()
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Sell Grey Items", "autosell", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Repair
        yOffset = AddHeading(contentFrame, yOffset, "Repair")

        local repairRow = CreateFrame("Frame", nil, contentFrame)
        repairRow:SetHeight(26)
        repairRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        repairRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28

        local repairLbl = repairRow:CreateFontString(nil, "OVERLAY")
        repairLbl:SetPoint("LEFT", repairRow, "LEFT", 0, 0)
        XP:ApplyFont(repairLbl, "small", "text_normal")
        repairLbl:SetText("Auto-Repair")

        local repairDD = CreateFrame("Frame", nil, repairRow, "UIDropDownMenuTemplate")
        repairDD:SetWidth(200)
        repairDD:SetPoint("RIGHT", repairRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(repairDD, 180)

        -- Repair options: 1=Manual, 2=Own Only, 3=Guild+Own(if not classic), 4=Own+Guild(if not classic)
        local repairOptions = {
            "Manual (Do Not Auto-Repair)",
            "Use Own Gold Only",
        }
        -- Only add guild options if not Classic
        local isClassic = XP.IsClassic or false
        if not isClassic then
            table.insert(repairOptions, "Guild Bank if Possible, Else Own")
            table.insert(repairOptions, "Own Gold if Possible, Else Guild")
        end

        -- DEBUG: ENTER GetRepairSelected()
        local function GetRepairSelected()
            return XP.db.profile.autorepair or 1
        -- DEBUG: EXIT GetRepairSelected()
        end

        UIDropDownMenu_SetSelectedID(repairDD, GetRepairSelected())

        UIDropDownMenu_Initialize(repairDD, function()
            for i, text in ipairs(repairOptions) do
                UIDropDownMenu_AddButton({
                    text = text,
                    -- DEBUG: ENTER func()
                    func = function()
                        XP.db.profile.autorepair = i
                        UIDropDownMenu_SetSelectedID(repairDD, i)
                    end,
                })
            end
        end)

        -- Warning: Not in guild
        -- DEBUG: ENTER AddWarningLabel()
        -- DEBUG: PARAM contentFrame = [contentFrame]
        -- DEBUG: PARAM yOffset = [yOffset]
        -- DEBUG: PARAM text = [text]
        -- DEBUG: PARAM colorKey = [colorKey]
        local function AddWarningLabel(contentFrame, yOffset, text, colorKey)
            local warnRow = CreateFrame("Frame", nil, contentFrame)
            warnRow:SetHeight(20)
            warnRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
            warnRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
            yOffset = yOffset - 22
            local warnLbl = warnRow:CreateFontString(nil, "OVERLAY")
            warnLbl:SetPoint("LEFT", warnRow, "LEFT", 0, 0)
            XP:ApplyFont(warnLbl, "small", colorKey or "red")
            warnLbl:SetText(text)
            return yOffset
        -- DEBUG: EXIT AddWarningLabel()
        end

        -- Show warning if not in guild and guild repair selected
        local inGuild = IsInGuild and IsInGuild() or false
        local repairSelected = GetRepairSelected()
        if not inGuild and repairSelected > 2 and not isClassic then
            yOffset = AddWarningLabel(contentFrame, yOffset, "You are not in a guild. Guild repair unavailable.", "red")
        end
        -- Show warning if in guild but no permission
        if inGuild and repairSelected > 2 and not isClassic then
            local canGuildRepair = (CanGuildBankRepair and CanGuildBankRepair()) or false
            if not canGuildRepair then
                yOffset = AddWarningLabel(contentFrame, yOffset, "You do not have permission to use Guild Bank for repairs.", "red")
            end
        end

    elseif tabId == "gear" then
        -- Gear Finder settings (ItemScore/GearFinder integration)
        yOffset = AddHeading(contentFrame, yOffset, "Gear")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Auto-Gear", "autogear", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Max Level Only", "autogear_max", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Gear Popup", "autogearpopup", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Quest Item Selector", "questitemselector", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Select Quest Items", "autoselectitem", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Select Best Gear", "autogearauto", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Keep Heirlooms", "autogear_keepheirlooms", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Gear Finder
        yOffset = AddHeading(contentFrame, yOffset, "Gear Finder")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Gear Finder", "autogear_finder", nil)
        yOffset = AddSpace(contentFrame, yOffset, 4)
        yOffset = AddCheckbox(contentFrame, yOffset, "Normal Dungeons", "gear_1", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Heroic Dungeons", "gear_2", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Raid Finder", "gear_17", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Normal Raids", "gear_17", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Item Score Tooltips
        yOffset = AddHeading(contentFrame, yOffset, "Item Score")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Item Score in Tooltips", "itemscore_tooltips", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Mark Upgrades in Bags", "markupgrades", nil)

        -- Upgrade filter
        local upgradeRow = CreateFrame("Frame", nil, contentFrame)
        upgradeRow:SetHeight(26)
        upgradeRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        upgradeRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local upgradeLbl = upgradeRow:CreateFontString(nil, "OVERLAY")
        upgradeLbl:SetPoint("LEFT", upgradeRow, "LEFT", 0, 0)
        XP:ApplyFont(upgradeLbl, "small", "text_normal")
        upgradeLbl:SetText("Upgrade Filter")
        local upgradeDD = CreateFrame("Frame", nil, upgradeRow, "UIDropDownMenuTemplate")
        upgradeDD:SetWidth(160)
        upgradeDD:SetPoint("RIGHT", upgradeRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(upgradeDD, 140)
        local upgradeVal = XP.db.profile.upgradebest and 2 or 1
        UIDropDownMenu_SetSelectedID(upgradeDD, upgradeVal)
        UIDropDownMenu_Initialize(upgradeDD, function()
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "All Upgrades", func = function()
                XP.db.profile.upgradebest = false
                UIDropDownMenu_SetSelectedID(upgradeDD, 1)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Best in Slot", func = function()
                XP.db.profile.upgradebest = true
                UIDropDownMenu_SetSelectedID(upgradeDD, 2)
            end })
        end)

    elseif tabId == "itemscore" then
        -- Item Score configuration
        yOffset = AddHeading(contentFrame, yOffset, "Item Score")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Auto-Gear", "autogear", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Class selection
        yOffset = AddHeading(contentFrame, yOffset, "Gear Score")
        local classRow = CreateFrame("Frame", nil, contentFrame)
        classRow:SetHeight(26)
        classRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        classRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local classLbl = classRow:CreateFontString(nil, "OVERLAY")
        classLbl:SetPoint("LEFT", classRow, "LEFT", 0, 0)
        XP:ApplyFont(classLbl, "small", "text_normal")
        classLbl:SetText("Class")
        local classDD = CreateFrame("Frame", nil, classRow, "UIDropDownMenuTemplate")
        classDD:SetWidth(160)
        classDD:SetPoint("RIGHT", classRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(classDD, 140)
        local _, classTag = UnitClass("player")
        local playerClassId = select(3, UnitClass("player"))
        -- DEBUG: ENTER GetSelectedClassId()
        local function GetSelectedClassId()
            return XP.db.char.gear_selected_class or playerClassId or 1
        -- DEBUG: EXIT GetSelectedClassId()
        end
        UIDropDownMenu_SetSelectedID(classDD, GetSelectedClassId())
        UIDropDownMenu_Initialize(classDD, function()
            for i = 1, GetNumClasses() do
                local name, tag, id = GetClassInfo(i)
                -- DEBUG: ENTER func()
                -- DEBUG: PARAM { text = [{ text]
                -- DEBUG: PARAM func = [func]
                UIDropDownMenu_AddButton({ text = name, func = function()
                    XP.db.char.gear_selected_class = id
                    UIDropDownMenu_SetSelectedID(classDD, i)
                end })
            -- DEBUG: EXIT func()
            end
        end)

        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Spec selection
        local specRow = CreateFrame("Frame", nil, contentFrame)
        specRow:SetHeight(26)
        specRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        specRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local specLbl = specRow:CreateFontString(nil, "OVERLAY")
        specLbl:SetPoint("LEFT", specRow, "LEFT", 0, 0)
        XP:ApplyFont(specLbl, "small", "text_normal")
        specLbl:SetText("Specialization")
        local specDD = CreateFrame("Frame", nil, specRow, "UIDropDownMenuTemplate")
        specDD:SetWidth(160)
        specDD:SetPoint("RIGHT", specRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(specDD, 140)
        -- DEBUG: ENTER GetSelectedSpec()
        local function GetSelectedSpec()
            return XP.db.char.gear_selected_spec or 1
        -- DEBUG: EXIT GetSelectedSpec()
        end
        UIDropDownMenu_SetSelectedID(specDD, GetSelectedSpec())
        UIDropDownMenu_Initialize(specDD, function()
            local cid = GetSelectedClassId()
            if cid then
                local _, tag = GetClassInfo(cid)
                local maxSpecs = GetNumSpecializations() or 4
                for specNum = 1, maxSpecs do
                    local specName = GetSpecializationName(specNum)
                    if specName then
                        -- DEBUG: ENTER func()
                        -- DEBUG: PARAM { text = [{ text]
                        -- DEBUG: PARAM func = [func]
                        UIDropDownMenu_AddButton({ text = specName, func = function()
                            XP.db.char.gear_selected_spec = specNum
                            UIDropDownMenu_SetSelectedID(specDD, specNum)
                        end })
                    end
                end
            -- DEBUG: EXIT func()
            end
        end)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Gem quality filter
        local gemRow = CreateFrame("Frame", nil, contentFrame)
        gemRow:SetHeight(26)
        gemRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        gemRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local gemLbl = gemRow:CreateFontString(nil, "OVERLAY")
        gemLbl:SetPoint("LEFT", gemRow, "LEFT", 0, 0)
        XP:ApplyFont(gemLbl, "small", "text_normal")
        gemLbl:SetText("Max Gem Quality")
        local gemDD = CreateFrame("Frame", nil, gemRow, "UIDropDownMenuTemplate")
        gemDD:SetWidth(160)
        gemDD:SetPoint("RIGHT", gemRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(gemDD, 140)
        local gemLabels = { [0] = "None", [2] = "Uncommon", [3] = "Rare", [4] = "Epic" }
        local gemVal = XP.db.profile.gear_maxGem or 0
        local gemSelected = 1
        for i, v in ipairs({0, 2, 3, 4}) do if v == gemVal then gemSelected = i break end end
        UIDropDownMenu_SetSelectedID(gemDD, gemSelected)
        UIDropDownMenu_Initialize(gemDD, function()
            for i, quality in ipairs({0, 2, 3, 4}) do
                -- DEBUG: ENTER func()
                -- DEBUG: PARAM { text = [{ text]
                -- DEBUG: PARAM func = [func]
                UIDropDownMenu_AddButton({ text = gemLabels[quality], func = function()
                    XP.db.profile.gear_maxGem = quality
                    UIDropDownMenu_SetSelectedID(gemDD, i)
                end })
            end
        end)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        yOffset = AddCheckbox(contentFrame, yOffset, "Show All Stats", "gearshowallstats", nil)

    elseif tabId == "gold" then
        -- Gold tracker settings
        yOffset = AddHeading(contentFrame, yOffset, "Gold Tracker")

        -- Gold format
        local goldFormatRow = CreateFrame("Frame", nil, contentFrame)
        goldFormatRow:SetHeight(26)
        goldFormatRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        goldFormatRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local goldFmtLbl = goldFormatRow:CreateFontString(nil, "OVERLAY")
        goldFmtLbl:SetPoint("LEFT", goldFormatRow, "LEFT", 0, 0)
        XP:ApplyFont(goldFmtLbl, "small", "text_normal")
        goldFmtLbl:SetText("Gold Format")
        local goldFmtDD = CreateFrame("Frame", nil, goldFormatRow, "UIDropDownMenuTemplate")
        goldFmtDD:SetWidth(160)
        goldFmtDD:SetPoint("RIGHT", goldFormatRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(goldFmtDD, 140)
        local goldFmtVal = XP.db.profile.gold_format or 1
        UIDropDownMenu_SetSelectedID(goldFmtDD, goldFmtVal)
        UIDropDownMenu_Initialize(goldFmtDD, function()
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM 234g 56s 78c" = [234g 56s 78c"]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "1,234g 56s 78c", func = function()
                XP.db.profile.gold_format = 1
                UIDropDownMenu_SetSelectedID(goldFmtDD, 1)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM 234.56g" = [234.56g"]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "1,234.56g", func = function()
                XP.db.profile.gold_format = 2
                UIDropDownMenu_SetSelectedID(goldFmtDD, 2)
            end })
        end)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Auction House section
        yOffset = AddHeading(contentFrame, yOffset, "Auction House")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Auction Appraiser", "auction_enable", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Auto-Scan at Login", "autoscan", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Quick Scan", "quickscan", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Scan intensity
        local scanRow = CreateFrame("Frame", nil, contentFrame)
        scanRow:SetHeight(26)
        scanRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        scanRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local scanLbl = scanRow:CreateFontString(nil, "OVERLAY")
        scanLbl:SetPoint("LEFT", scanRow, "LEFT", 0, 0)
        XP:ApplyFont(scanLbl, "small", "text_normal")
        scanLbl:SetText("Scan Intensity")
        local scanDD = CreateFrame("Frame", nil, scanRow, "UIDropDownMenuTemplate")
        scanDD:SetWidth(160)
        scanDD:SetPoint("RIGHT", scanRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(scanDD, 140)
        local scanVal = XP.db.profile.ahscanintensity or 5000
        local scanSelected = 2
        for i, v in ipairs({2000, 5000, 10000}) do if v == scanVal then scanSelected = i break end end
        UIDropDownMenu_SetSelectedID(scanDD, scanSelected)
        UIDropDownMenu_Initialize(scanDD, function()
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            UIDropDownMenu_AddButton({ text = "Low (2000)", func = function()
                XP.db.profile.ahscanintensity = 2000
                UIDropDownMenu_SetSelectedID(scanDD, 1)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            UIDropDownMenu_AddButton({ text = "Default (5000)", func = function()
                XP.db.profile.ahscanintensity = 5000
                UIDropDownMenu_SetSelectedID(scanDD, 2)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            UIDropDownMenu_AddButton({ text = "High (10000)", func = function()
                XP.db.profile.ahscanintensity = 10000
                UIDropDownMenu_SetSelectedID(scanDD, 3)
            end })
        end)

        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Reset hidden items button
        local resetRow = CreateFrame("Frame", nil, contentFrame)
        resetRow:SetHeight(26)
        resetRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        resetRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local resetBtn = CreateFrame("Button", nil, resetRow, "UIPanelButtonTemplate")
        resetBtn:SetSize(140, 22)
        resetBtn:SetPoint("LEFT", resetRow, "LEFT", 0, 0)
        resetBtn:SetText("Reset Hidden Items")
        XP:ApplyFont(resetBtn, "small", "text_normal")
        resetBtn:SetScript("OnClick", function()
            -- Placeholder: feature not yet implemented in X-PLORE
            XP:Print("Reset Hidden Items clicked (Gold feature not yet active)")
        end)

    elseif tabId == "notification" then
        -- Notification Center settings
        yOffset = AddHeading(contentFrame, yOffset, "Notification Center")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Notifications", "nc_enable", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Size
        local ncSizeRow = CreateFrame("Frame", nil, contentFrame)
        ncSizeRow:SetHeight(26)
        ncSizeRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        ncSizeRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local ncSizeLbl = ncSizeRow:CreateFontString(nil, "OVERLAY")
        ncSizeLbl:SetPoint("LEFT", ncSizeRow, "LEFT", 0, 0)
        XP:ApplyFont(ncSizeLbl, "small", "text_normal")
        ncSizeLbl:SetText("Size")
        local ncSizeDD = CreateFrame("Frame", nil, ncSizeRow, "UIDropDownMenuTemplate")
        ncSizeDD:SetWidth(140)
        ncSizeDD:SetPoint("RIGHT", ncSizeRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(ncSizeDD, 120)
        local ncSizeVal = XP.db.profile.nc_size or 2
        UIDropDownMenu_SetSelectedID(ncSizeDD, ncSizeVal)
        UIDropDownMenu_Initialize(ncSizeDD, function()
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Compact", func = function()
                XP.db.profile.nc_size = 1
                UIDropDownMenu_SetSelectedID(ncSizeDD, 1)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Detailed", func = function()
                XP.db.profile.nc_size = 2
                UIDropDownMenu_SetSelectedID(ncSizeDD, 2)
            end })
        end)

        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Duration
        local ncDurRow = CreateFrame("Frame", nil, contentFrame)
        ncDurRow:SetHeight(26)
        ncDurRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        ncDurRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local ncDurLbl = ncDurRow:CreateFontString(nil, "OVERLAY")
        ncDurLbl:SetPoint("LEFT", ncDurRow, "LEFT", 0, 0)
        XP:ApplyFont(ncDurLbl, "small", "text_normal")
        ncDurLbl:SetText("Duration")
        local ncDurDD = CreateFrame("Frame", nil, ncDurRow, "UIDropDownMenuTemplate")
        ncDurDD:SetWidth(140)
        ncDurDD:SetPoint("RIGHT", ncDurRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(ncDurDD, 120)
        local ncDurVal = XP.db.profile.nc_duration or 5
        local durList = {2, 5, 10, 15, 20, 25, 30}
        local durSelected = 2
        for i, v in ipairs(durList) do if v == ncDurVal then durSelected = i break end end
        UIDropDownMenu_SetSelectedID(ncDurDD, durSelected)
        UIDropDownMenu_Initialize(ncDurDD, function()
            for i, dur in ipairs(durList) do
                -- DEBUG: ENTER func()
                -- DEBUG: PARAM { text = [{ text]
                -- DEBUG: PARAM func = [func]
                UIDropDownMenu_AddButton({ text = dur .. "s", func = function()
                    XP.db.profile.nc_duration = dur
                    UIDropDownMenu_SetSelectedID(ncDurDD, i)
                end })
            -- DEBUG: EXIT func()
            end
        end)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Position
        local ncPosRow = CreateFrame("Frame", nil, contentFrame)
        ncPosRow:SetHeight(26)
        ncPosRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        ncPosRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28
        local ncPosLbl = ncPosRow:CreateFontString(nil, "OVERLAY")
        ncPosLbl:SetPoint("LEFT", ncPosRow, "LEFT", 0, 0)
        XP:ApplyFont(ncPosLbl, "small", "text_normal")
        ncPosLbl:SetText("Position")
        local ncPosDD = CreateFrame("Frame", nil, ncPosRow, "UIDropDownMenuTemplate")
        ncPosDD:SetWidth(140)
        ncPosDD:SetPoint("RIGHT", ncPosRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(ncPosDD, 120)
        local ncPosVal = XP.db.profile.nc_position or 1
        UIDropDownMenu_SetSelectedID(ncPosDD, ncPosVal)
        UIDropDownMenu_Initialize(ncPosDD, function()
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Left", func = function()
                XP.db.profile.nc_position = 1
                UIDropDownMenu_SetSelectedID(ncPosDD, 1)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Right", func = function()
                XP.db.profile.nc_position = 2
                UIDropDownMenu_SetSelectedID(ncPosDD, 2)
            end })
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Last Position", func = function()
                XP.db.profile.nc_position = 3
                UIDropDownMenu_SetSelectedID(ncPosDD, 3)
            end })
        end)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        yOffset = AddCheckbox(contentFrame, yOffset, "Send to Notification Center", "nc_sendtonc", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Mark Seen Automatically", "nc_markseen", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Hide When Closed", "nc_hidewhenclosed", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Advanced options toggle
        yOffset = AddCheckbox(contentFrame, yOffset, "Show All Notification Types", "nc_showall", nil)

    elseif tabId == "extras" then
        -- Extras / miscellaneous features
        yOffset = AddHeading(contentFrame, yOffset, "Chat & Sound")
        yOffset = AddCheckbox(contentFrame, yOffset, "Noisy Mode (Verbose)", "noisy", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Analyze Reps", "analyzereps", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Pet Battle
        yOffset = AddHeading(contentFrame, yOffset, "Pet Battle")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Pet Battle Frame", "petbattleframe", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Talent Advisor", "talenton", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Level Up announcements
        yOffset = AddHeading(contentFrame, yOffset, "Level Up Announcements")
        yOffset = AddCheckbox(contentFrame, yOffset, "Announce Level Up", "spam_levelup", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "  - to General Chat", "spam_levelup_emote", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "  - to Party", "spam_levelup_party", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "  - to Guild", "spam_levelup_guild", nil)

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 6)

        -- Guide Rating
        yOffset = AddHeading(contentFrame, yOffset, "Guide Rating")
        yOffset = AddCheckbox(contentFrame, yOffset, "Show Guide Rating", "ratings", nil)

    elseif tabId == "actionbuttons" then
        yOffset = AddHeading(contentFrame, yOffset, "Action Buttons")
        yOffset = AddCheckbox(contentFrame, yOffset, "Enable Action Bar Highlighting", "actionBar", "enabled")
        yOffset = AddCheckbox(contentFrame, yOffset, "Pulse Animation", "actionBar", "pulse")
        yOffset = AddSpace(contentFrame, yOffset, 8)

        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Direction
        local dirRow = CreateFrame("Frame", nil, contentFrame)
        dirRow:SetHeight(26)
        dirRow:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        dirRow:SetPoint("TOPRIGHT", contentFrame, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28

        local dirLbl = dirRow:CreateFontString(nil, "OVERLAY")
        dirLbl:SetPoint("LEFT", dirRow, "LEFT", 0, 0)
        XP:ApplyFont(dirLbl, "small", "text_normal")
        dirLbl:SetText("Button Direction")

        local dirDD = CreateFrame("Frame", nil, dirRow, "UIDropDownMenuTemplate")
        dirDD:SetWidth(120)
        dirDD:SetPoint("RIGHT", dirRow, "RIGHT", 0, 0)
        UIDropDownMenu_SetWidth(dirDD, 100)
        local dirVal = XP.db.profile.actionbar_direction or 2
        UIDropDownMenu_SetSelectedID(dirDD, dirVal)
        UIDropDownMenu_Initialize(dirDD, function()
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Left", func = function()
                XP.db.profile.actionbar_direction = 1
                UIDropDownMenu_SetSelectedID(dirDD, 1)
            end})
            -- DEBUG: ENTER func()
            -- DEBUG: PARAM { text = [{ text]
            -- DEBUG: PARAM func = [func]
            UIDropDownMenu_AddButton({ text = "Right", func = function()
                XP.db.profile.actionbar_direction = 2
                UIDropDownMenu_SetSelectedID(dirDD, 2)
            end})
        end)

        yOffset = AddSpace(contentFrame, yOffset, 8)

        -- Scale
        local framescales = {0.625, 0.750, 0.875, 1.000, 1.125, 1.250, 1.375, 1.500, 1.625, 1.750}
        -- DEBUG: ENTER GetActionbarScaleIdx()
        local function GetActionbarScaleIdx()
            local scale = XP.db.profile.actionbar_scale or 1.0
            for k, v in ipairs(framescales) do if v == scale then return k end end
            return 4
        -- DEBUG: EXIT GetActionbarScaleIdx()
        end
        yOffset = AddSlider(contentFrame, yOffset, "Action Bar Scale", "actionbar_scale", nil, 1, 10, 1, "%.3f×")
        -- Override the slider's GetVal to use index-based lookup
        for _, child in ipairs({ contentFrame:GetChildren() }) do
            for _, subchild in ipairs({ child:GetChildren() }) do
                if subchild:IsObjectType("Slider") then
                    local slider = subchild
                    -- DEBUG: ENTER RefreshActionbarScale()
                    local function RefreshActionbarScale()
                        local idx = GetActionbarScaleIdx()
                        slider:SetValue(idx)
                        for _, sc2 in ipairs({ child:GetChildren() }) do
                            if sc2:IsObjectType("FontString") and sc2:GetText():match("%d") then
                                sc2:SetText(string.format("%.3f×", framescales[idx] or 1.0))
                            end
                        end
                    -- DEBUG: EXIT RefreshActionbarScale()
                    end
                    slider:SetScript("OnValueChanged", function(self_sl, val)
                        local scale = framescales[val] or 1.0
                        XP.db.profile.actionbar_scale = scale
                        RefreshActionbarScale()
                    end)
                    RefreshActionbarScale()
                end
            -- DEBUG: EXIT func()
            end
        end

        yOffset = AddSpace(contentFrame, yOffset, 8)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 4)

        yOffset = AddHeading(contentFrame, yOffset, "Button Types")
        yOffset = AddCheckbox(contentFrame, yOffset, "Quest Objectives", "actionbar_quest", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "NPC Dialogue", "actionbar_talk", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Kill Targets", "actionbar_kill", nil)
        yOffset = AddCheckbox(contentFrame, yOffset, "Trash Mobs", "actionbar_trash", nil)

    elseif tabId == "theme" then
        yOffset = AddHeading(contentFrame, yOffset, "Theme")

        local skinList = XP:GetSkinList()
        local btnWidth = 90
        local btnHeight = 22
        local btnSpacing = 6
        local startX = 16

        -- Pending skin: stored on parent so it survives tab switches (RefreshOptionsTab
        -- re-runs the entire theme branch on every call, resetting local closures).
        local skinButtons = {}

        -- DEBUG: ENTER RefreshSkinButtons()
        local function RefreshSkinButtons()
            local active = (XP.db and XP.db.profile.skin) or "default"
            for _, btn in ipairs(skinButtons) do
                if btn.skinID == active then
                    if btn.SetBackdropBorderColor then
                        btn:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
                    end
                    btn.Text:SetTextColor(XP:ColorRGBA("cyan"))
                else
                    if btn.SetBackdropBorderColor then
                        btn:SetBackdropBorderColor(XP:ColorRGBA("border"))
                    end
                    btn.Text:SetTextColor(XP:ColorRGBA("text_muted"))
                end
            end
        -- DEBUG: EXIT RefreshSkinButtons()
        end

        for i, entry in ipairs(skinList) do
            local btn = XP.CreateBackdropFrame("Button", nil, contentFrame)
            if btn.SetBackdrop then
                btn:SetBackdrop(XP:Backdrop("panel"))
                btn:SetBackdropColor(XP:ColorRGBA("bg_medium"))
                btn:SetBackdropBorderColor(XP:ColorRGBA("border"))
            end
            btn:SetSize(btnWidth, btnHeight)
            btn:SetPoint("TOPLEFT", contentFrame, "TOPLEFT",
                startX + ((i - 1) % 4) * (btnWidth + btnSpacing),
                yOffset - math.floor((i - 1) / 4) * (btnHeight + btnSpacing))

            local lbl = btn:CreateFontString(nil, "OVERLAY")
            lbl:SetAllPoints()
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText(entry.name)
            lbl:SetJustifyH("CENTER")
            btn.Text = lbl
            btn.skinID = entry.id

            -- Apply skin immediately on click
            btn:SetScript("OnClick", function()
                XP.db.profile.skin = entry.id
                XP:SetSkin(entry.id)
                RefreshSkinButtons()
            end)
            btn:SetScript("OnEnter", function()
                if btn.SetBackdropBorderColor then
                    btn:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
                end
            end)
            btn:SetScript("OnLeave", function()
                RefreshSkinButtons()
            end)

            table.insert(skinButtons, btn)
        end

        RefreshSkinButtons()
        local numRows = math.ceil(#skinList / 4)
        yOffset = yOffset - (numRows * (btnHeight + btnSpacing)) + btnSpacing

    elseif tabId == "about" then
        -- About section
        yOffset = AddHeading(contentFrame, yOffset, L["opt_group_about"] or "About")

        local aboutText = contentFrame:CreateFontString(nil, "OVERLAY")
        aboutText:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        aboutText:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        XP:ApplyFont(aboutText, "small", "text_muted")
        aboutText:SetText("X-Plore v" .. XP.version .. "  (built on !X-Libs)")
        aboutText:SetJustifyH("LEFT")
        yOffset = yOffset - 22

        local descText = contentFrame:CreateFontString(nil, "OVERLAY")
        descText:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        descText:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        XP:ApplyFont(descText, "small", "text_dim")
        descText:SetText(L["opt_about_desc"] or "Guide viewer for World of Warcraft (all versions)")
        descText:SetJustifyH("LEFT")
        yOffset = yOffset - 22

        local copyrightText = contentFrame:CreateFontString(nil, "OVERLAY")
        copyrightText:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        copyrightText:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        XP:ApplyFont(copyrightText, "small", "text_dim")
        copyrightText:SetText(L["opt_about_copyright"] or "All Rights Reserved.")
        copyrightText:SetJustifyH("LEFT")
        yOffset = yOffset - 32

        yOffset = AddSpace(contentFrame, yOffset, 4)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Need Help? section
        yOffset = AddHeading(contentFrame, yOffset, L["opt_about_need_help"] or "Need Help?")

        local helpText = contentFrame:CreateFontString(nil, "OVERLAY")
        helpText:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        helpText:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        XP:ApplyFont(helpText, "small", "text_dim")
        helpText:SetText(L["opt_about_need_help_desc"] or "Stuck? Need help? Visit the project page or open a ticket.")
        helpText:SetJustifyH("LEFT")
        yOffset = yOffset - 22

        -- Support link button
        local supportLink = CreateFrame("Frame", nil, contentFrame)
        supportLink:SetHeight(20)
        supportLink:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        supportLink:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        supportLink:EnableMouse(true)
        local supportText = supportLink:CreateFontString(nil, "OVERLAY")
        supportText:SetPoint("LEFT", supportLink, "LEFT", 0, 0)
        XP:ApplyFont(supportText, "small", "cyan")
        supportText:SetText(L["opt_about_get_support"] or "Get Support  >")
        supportLink:SetScript("OnMouseUp", function(self, button)
            if button == "LeftButton" then
                XP:OpenURL("https://github.com/kance-l/x-plore/issues")
            end
        end)
        supportLink:SetScript("OnEnter", function(self)
            supportText:SetTextColor(XP:ColorRGBA("cyan_light"))
        end)
        supportLink:SetScript("OnLeave", function(self)
            supportText:SetTextColor(XP:ColorRGBA("cyan"))
        end)
        yOffset = yOffset - 28

        yOffset = AddSpace(contentFrame, yOffset, 4)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Links section
        yOffset = AddHeading(contentFrame, yOffset, L["opt_about_links"] or "Links")

        -- Changelog link
        local changelogLink = CreateFrame("Frame", nil, contentFrame)
        changelogLink:SetHeight(20)
        changelogLink:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        changelogLink:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        changelogLink:EnableMouse(true)
        local changelogText = changelogLink:CreateFontString(nil, "OVERLAY")
        changelogText:SetPoint("LEFT", changelogLink, "LEFT", 0, 0)
        XP:ApplyFont(changelogText, "small", "cyan")
        changelogText:SetText(L["opt_about_view_changelog"] or "View Changelog  >")
        changelogLink:SetScript("OnMouseUp", function(self, button)
            if button == "LeftButton" then
                XP:OpenURL("https://github.com/kance-l/x-plore/blob/main/CHANGELOG.md")
            end
        end)
        changelogLink:SetScript("OnEnter", function(self)
            changelogText:SetTextColor(XP:ColorRGBA("cyan_light"))
        end)
        changelogLink:SetScript("OnLeave", function(self)
            changelogText:SetTextColor(XP:ColorRGBA("cyan"))
        end)
        yOffset = yOffset - 28

        -- License link
        local licenseLink = CreateFrame("Frame", nil, contentFrame)
        licenseLink:SetHeight(20)
        licenseLink:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        licenseLink:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        licenseLink:EnableMouse(true)
        local licenseText = licenseLink:CreateFontString(nil, "OVERLAY")
        licenseText:SetPoint("LEFT", licenseLink, "LEFT", 0, 0)
        XP:ApplyFont(licenseText, "small", "cyan")
        licenseText:SetText(L["opt_about_license"] or "License  >")
        licenseLink:SetScript("OnMouseUp", function(self, button)
            if button == "LeftButton" then
                XP:OpenURL("https://github.com/kance-l/x-plore/blob/main/LICENSE")
            end
        end)
        licenseLink:SetScript("OnEnter", function(self)
            licenseText:SetTextColor(XP:ColorRGBA("cyan_light"))
        end)
        licenseLink:SetScript("OnLeave", function(self)
            licenseText:SetTextColor(XP:ColorRGBA("cyan"))
        end)
        yOffset = yOffset - 28

        yOffset = AddSpace(contentFrame, yOffset, 4)
        yOffset = AddSeparator(contentFrame, yOffset)
        yOffset = AddSpace(contentFrame, yOffset, 4)

        -- Credits section
        yOffset = AddHeading(contentFrame, yOffset, L["opt_about_credits"] or "Credits")

        local creditsText = contentFrame:CreateFontString(nil, "OVERLAY")
        creditsText:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        creditsText:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        XP:ApplyFont(creditsText, "small", "text_dim")
        creditsText:SetText(L["opt_about_built_on"] or "Built on |cff00e5ff!X-Libs|r framework")
        creditsText:SetJustifyH("LEFT")
        yOffset = yOffset - 22

        local cmdText = contentFrame:CreateFontString(nil, "OVERLAY")
        cmdText:SetPoint("TOPLEFT", contentFrame, "TOPLEFT", 16, yOffset)
        cmdText:SetPoint("RIGHT", contentFrame, "RIGHT", -16, 0)
        XP:ApplyFont(cmdText, "small", "text_dim")
        cmdText:SetText(L["opt_about_type_cmd"] or "Type |cff00e5ff/xp|r for commands")
        cmdText:SetJustifyH("LEFT")
    end

    -- Dynamically resize scrollChild to fit actual content height (prevents dead space below options)
    local totalContentHeight = math.abs(yOffset) + 20
    parent.ContentChild:SetHeight(totalContentHeight)

    -- Update scrollbar thumb range to reflect actual scrollable content height
    parent.ContentScroll:SetVerticalScroll(0)
    -- DEBUG: ENTER UpdateScrollRange()
    local function UpdateScrollRange()
        local viewH = parent.ContentScroll:GetHeight() or 1
        local contentH = parent.ContentChild:GetHeight() or 1
        local scrollRange = math.max(0, contentH - viewH)
        -- Update the Slider scrollbar's min/max so the thumb size reflects content
        parent.ContentScrollBar:SetMinMaxValues(0, math.max(1, scrollRange))
        parent.ContentScrollBar:SetValue(0)
    -- DEBUG: EXIT UpdateScrollRange()
    end
    UpdateScrollRange()
    -- Hook OnSizeChanged to recalculate scroll range if content area resizes
    parent.ContentScroll:HookScript("OnSizeChanged", UpdateScrollRange)
-- DEBUG: EXIT XP:RefreshOptionsTab()
end

-----------------------------------------------------------------------
-- Right Detail Panel
-- Shows guide title, description, level range, faction, expansion,
-- and estimated step count when a guide row is selected.
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateDetailPanel()
-- DEBUG: PARAM parent = [parent]
function XP:CreateDetailPanel(parent)
    XP.GuideMenuView.RenderDetailPanel(parent)
-- DEBUG: EXIT XP:CreateDetailPanel()
end

-- Show guide info in the right detail panel.
-- DEBUG: ENTER XP:ShowGuideDetail()
-- DEBUG: PARAM guideID = [guideID]
function XP:ShowGuideDetail(guideID)
    local frame = self.MenuFrame
    if not frame or not frame.DetailColumn then return end

    local panel = frame.DetailColumn
    selectedGuideID = guideID

    if not guideID then
        -- Clear detail view
        if panel.EmptyMsg    then panel.EmptyMsg:Show()    end
        if panel.DetailScroll then panel.DetailScroll:Hide() end
        if panel.DetailLoadBtn then panel.DetailLoadBtn:Hide() end
        return
    end

    local guide = self.Guides and self.Guides[guideID]
    if not guide then
        if panel.EmptyMsg    then panel.EmptyMsg:Show()    end
        if panel.DetailScroll then panel.DetailScroll:Hide() end
        if panel.DetailLoadBtn then panel.DetailLoadBtn:Hide() end
        return
    end

    -- Hide empty message, show content
    if panel.EmptyMsg    then panel.EmptyMsg:Hide()    end
    if panel.DetailScroll then panel.DetailScroll:Show() end
    if panel.DetailLoadBtn then panel.DetailLoadBtn:Show() end

    -- Icon
    local cat = self:GetCategory(guide.category)
    if panel.DetailIcon and cat then
        local iconPath, l, r, t, b = GetCategoryIconPath(cat)
        panel.DetailIcon:SetTexture(iconPath)
        panel.DetailIcon:SetTexCoord(l, r, t, b)
    end

    -- Title
    if panel.DetailTitle then
        panel.DetailTitle:SetText(guide.title or guide.titleShort or "Untitled")
    end

    -- Info line: level range + faction + category
    local infoParts = {}
    if guide.minLevel or guide.maxLevel then
        local lvlStr = "Level "
        if guide.minLevel and guide.maxLevel then
            lvlStr = lvlStr .. guide.minLevel .. "-" .. guide.maxLevel
        elseif guide.minLevel then
            lvlStr = lvlStr .. guide.minLevel .. "+"
        end
        table.insert(infoParts, lvlStr)
    end
    if guide.faction and guide.faction ~= "" then
        table.insert(infoParts, guide.faction)
    end
    if cat then
        table.insert(infoParts, cat.name)
    end
    if panel.DetailInfo then
        panel.DetailInfo:SetText(table.concat(infoParts, "  ·  "))
    end

    -- Description
    if panel.DetailDesc then
        local desc = guide.description or guide.desc or ""
        if desc == "" then
            desc = "No description available."
        end
        panel.DetailDesc:SetText(desc)
    end

    -- Step count (lazy — triggers parse only if cheap)
    if panel.DetailSteps then
        local numSteps = guide.numSteps or 0
        if numSteps == 0 and guide._rawText then
            numSteps = select(2, guide._rawText:gsub("\nstep%s", "\nstep ")) or 0
        end
        if numSteps > 0 then
            panel.DetailSteps:SetText(numSteps .. " steps")
        else
            panel.DetailSteps:SetText("")
        end
    end

    -- Expansion
    if panel.DetailExpansion then
        local exp = guide.expansion or ""
        if exp ~= "" then
            panel.DetailExpansion:SetText("Expansion: " .. exp)
        else
            panel.DetailExpansion:SetText("")
        end
    end

    -- Reset scroll
    if panel.DetailScroll then
        panel.DetailScroll:SetVerticalScroll(0)
    end

    -- Update load button label (show "Active" if this is the current guide)
    if panel.DetailLoadBtn then
        if self.CurrentGuide and self.CurrentGuide.id == guideID then
            panel.DetailLoadBtn.Label:SetText("Active Guide")
            panel.DetailLoadBtn.Label:SetTextColor(XP:ColorRGBA("green"))
        else
            panel.DetailLoadBtn.Label:SetText("Load Guide")
            panel.DetailLoadBtn.Label:SetTextColor(XP:ColorRGBA("cyan"))
        end
    end
-- DEBUG: EXIT XP:ShowGuideDetail()
end

-----------------------------------------------------------------------
-- Folder Grouping Helpers
-----------------------------------------------------------------------

-- Returns a list of folder-info tables and a list of bare guides (no folder).
-- folder-info: { name, count, guides[] }
function XP:GetFoldersForCategory(catID)
    local guides = self:GetGuidesForCategory(catID)
    local folderMap   = {}
    local folderOrder = {}
    local bareGuides  = {}

    for _, guide in ipairs(guides) do
        local fn = guide.folder
        if fn then
            if not folderMap[fn] then
                folderMap[fn] = { name = fn, count = 0, guides = {} }
                table.insert(folderOrder, fn)
            end
            folderMap[fn].count = folderMap[fn].count + 1
            table.insert(folderMap[fn].guides, guide)
        else
            table.insert(bareGuides, guide)
        end
    end

    local folders = {}
    for _, name in ipairs(folderOrder) do
        table.insert(folders, folderMap[name])
    end
    return folders, bareGuides
end

-- Populate center list with folder rows (and any bare guides below them).
function XP:PopulateFolderList(folders, bareGuides)
    local listChild = self.MenuFrame and self.MenuFrame.ListChild
    if not listChild then return end

    for _, row in ipairs(guideRows) do row:Hide() end

    local yOffset   = 0
    local rowHeight = 26
    local rowIdx    = 1
    local catID     = currentCategory

    for _, folder in ipairs(folders) do
        if rowIdx > MAX_GUIDE_ROWS then break end
        local row = guideRows[rowIdx]
        if not row then break end

        row:ClearAllPoints()
        row:SetPoint("TOPLEFT", listChild, "TOPLEFT", 0, -yOffset)
        row:SetPoint("TOPRIGHT", listChild, "TOPRIGHT", 0, -yOffset)

        -- Folder icon (yellow-tinted note icon as folder stand-in)
        row.Icon:SetTexture("Interface\\Icons\\INV_Misc_Note_02")
        row.Icon:SetTexCoord(0, 1, 0, 1)
        row.Icon:SetVertexColor(1, 0.75, 0.1, 1)

        row.Title:SetText(folder.name)
        self:ApplyFont(row.Title, "normal", "text_bright")

        row.isFolder = true
        row.guide    = nil

        if row.LoadBtn then row.LoadBtn:Hide() row.LoadBtn:SetScript("OnClick", nil) end
        if row.FavBtn  then row.FavBtn:Hide()  end

        local fn = folder.name  -- upvalue capture
        row:SetScript("OnClick", function()
            XP:MenuNavigate("folder", catID, fn)
        end)

        row:Show()
        yOffset = yOffset + rowHeight + 1
        rowIdx  = rowIdx + 1
    end

    -- Bare guides (no parent folder) listed after all folder rows
    for _, guide in ipairs(bareGuides or {}) do
        if rowIdx > MAX_GUIDE_ROWS then break end

        -- Faction filter: skip guides that don't match
        if not self:GuidePassesFactionFilter(guide) then
            -- still iterate but don't show
        end

        local showGuide = self:GuidePassesFactionFilter(guide)
        if not showGuide then
            -- iterate rowIdx but hide the row
            rowIdx = rowIdx + 1
        else
            local row = guideRows[rowIdx]
            if not row then break end

            row:ClearAllPoints()
            row:SetPoint("TOPLEFT", listChild, "TOPLEFT", 0, -yOffset)
            row:SetPoint("TOPRIGHT", listChild, "TOPRIGHT", 0, -yOffset)

            local cat = self:GetCategory(guide.category)
            local iconPath, l, r, t, b = GetCategoryIconPath(cat)
            row.Icon:SetTexture(iconPath)
            row.Icon:SetTexCoord(l, r, t, b)
            row.Icon:SetVertexColor(1, 1, 1, 1)

            row.isFolder = false
            row.guide    = guide
            row.Title:SetText(guide.title or guide.titleShort or "Untitled")
            self:ApplyFont(row.Title, "normal", "text_bright")

            -- Faction badge
            local badge = row.FactionBadge
            if badge then
                local gf = (guide.faction or ""):upper()
                if gf == "ALLIANCE" then
                    badge:SetTexture("Interface\\Icons\\INV_BannerPVP_01")
                    badge:SetVertexColor(0.2, 0.4, 1.0, 1.0)
                    badge:Show()
                elseif gf == "HORDE" then
                    badge:SetTexture("Interface\\Icons\\INV_BannerPVP_02")
                    badge:SetVertexColor(0.9, 0.2, 0.2, 1.0)
                    badge:Show()
                else
                    badge:Hide()
                end
            end

            if row.LoadBtn then
                row.LoadBtn:Show()
                row.LoadBtn:GetFontString():SetText("Load")
                row.LoadBtn:SetScript("OnClick", function()
                    XP.Tabs:LoadGuideToTab(guide.id)
                    if XP.MenuFrame then XP.MenuFrame:Hide() end
                    if XP.ViewerFrame then XP.ViewerFrame:Show() end
                end)
            end
            if row.FavBtn then row.FavBtn:Show() end
            row:SetScript("OnClick", function() XP:ShowGuideDetail(guide.id) end)

            row:Show()
            yOffset = yOffset + rowHeight + 1
            rowIdx  = rowIdx + 1
        end
    end

    listChild:SetHeight(math.max(yOffset, 1))
-- DEBUG: EXIT XP:PopulateFolderList()

-----------------------------------------------------------------------
-- Navigation
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:MenuNavigate()
-- DEBUG: PARAM view = [view]
-- DEBUG: PARAM param = [param]
function XP:MenuNavigate(view, param, param2)
    if not self.MenuFrame then return end
    local frame = self.MenuFrame

    currentView = view or "home"

    -- Update header tab indicators
    for name, tab in pairs(frame.HeaderTabs or {}) do
        if name == currentView then
            tab.Indicator:Show()
            tab:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        else
            tab.Indicator:Hide()
            tab:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))
        end
    end

    -- Update faction filter visibility and button highlights
    self:UpdateFactionFilterVisibility()
    self:UpdateFactionFilterButtons()

    -- Hide everything first
    if frame.HomeView    then frame.HomeView:Hide()    end
    if frame.SectionHeader then frame.SectionHeader:Hide() end
    if frame.ListScroll    then frame.ListScroll:Hide()    end
    if frame.ListScrollBar then frame.ListScrollBar:Hide() end
    if frame.OptionsView   then frame.OptionsView:Hide()   end
    if frame.AboutView     then frame.AboutView:Hide()     end

    -- Options/About/Home take full width — hide detail column and expand center
    local fullWidth = (view == "options" or view == "about" or view == "home")
    if frame.DetailColumn then
        if fullWidth then
            frame.DetailColumn:Hide()
        else
            frame.DetailColumn:Show()
        end
    end
    if frame.CenterColumn then
        frame.CenterColumn:ClearAllPoints()
        local sidebar = frame.Sidebar or frame.SideBar
        if sidebar then
            frame.CenterColumn:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 1, 0)
        else
            frame.CenterColumn:SetPoint("TOPLEFT", frame, "TOPLEFT", (XP:SD("SidebarWidth") or 222) + 1, -41)
        end
        if fullWidth then
            frame.CenterColumn:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)
        else
            frame.CenterColumn:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -(DETAIL_WIDTH + 1), 0)
        end
    end

    -- Update sidebar highlight (solid gray backdrop for active, LeftDecor cyan bar)
    for id, btn in pairs(categoryButtons) do
        if id == param then
            if btn.SetBackdropColor then btn:SetBackdropColor(XP:ColorRGBA("bg_hover")) end
            btn.Text:SetTextColor(1, 1, 1, 1)  -- white for active
            btn.LeftDecor:Show()
        else
            if btn.SetBackdropColor then btn:SetBackdropColor(0, 0, 0, 0) end
            btn.LeftDecor:Hide()
            btn.Text:SetTextColor(XP:ColorRGBA("text_normal"))
        end
    end

    if view == "featured" then
        -- Show Featured view
        currentCategory = nil
        if frame.HomeView then frame.HomeView:Hide() end
        if frame.FeaturedView then frame.FeaturedView:Show() end
        if frame.SectionHeader then frame.SectionHeader:Hide() end
        if frame.ListScroll then frame.ListScroll:Hide() end
        if frame.ListScrollBar then frame.ListScrollBar:Hide() end
        frame.Breadcrumb:SetText("")
        frame.SectionName:SetText("Featured Guides")
        frame.BreadcrumbBackFunc = nil

    elseif view == "home" then
        currentCategory = nil
        currentFolder   = nil
        if frame.HomeView then frame.HomeView:Show() end
        if frame.FeaturedView then frame.FeaturedView:Hide() end
        -- Update guide count on home
        if frame.HomeView.CountText then
            local count = self:GetGuideCount()
            frame.HomeView.CountText:SetText(count .. " guides available")
        end
        -- Clear breadcrumb for home
        frame.Breadcrumb:SetText("")
        frame.SectionName:SetText("All Guides")
        frame.BreadcrumbBackFunc = nil

    elseif view == "category" then
        currentCategory = param
        currentFolder   = nil
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        if frame.ListScrollBar then frame.ListScrollBar:Show() end
        frame.HomeView:Hide()

        local cat = self:GetCategory(param)
        frame.Breadcrumb:SetText("All Guides >")
        frame.Breadcrumb:SetTextColor(XP:ColorRGBA("text_dim"))
        frame.SectionName:SetText(cat and cat.name or param)
        frame.SectionName:SetTextColor(XP:ColorRGBA("text_bright"))
        frame.BreadcrumbBackFunc = function() XP:MenuNavigate("home") end

        local folders, bareGuides = self:GetFoldersForCategory(param)
        local totalGuides = self:GetGuidesForCategory(param)
        -- Count guides that pass the current faction filter
        local filteredCount = 0
        for _, g in ipairs(bareGuides) do
            if self:GuidePassesFactionFilter(g) then filteredCount = filteredCount + 1 end
        end
        frame.GuideCount:SetText(filteredCount .. " / " .. #totalGuides .. " guides")

        if #folders > 0 then
            -- Show folder list; guides inside each folder shown on drill-down
            -- At category level show ONLY folder rows (no individual guides mixed in)
            self:PopulateFolderList(folders, {})
        else
            -- No folder grouping — show guides flat
            self:PopulateGuideList(bareGuides)
        end

    elseif view == "folder" then
        -- param = catID, param2 = folderName
        local catID      = param
        local folderName = param2
        currentCategory  = catID
        currentFolder    = folderName
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        if frame.ListScrollBar then frame.ListScrollBar:Show() end
        frame.HomeView:Hide()

        local cat = self:GetCategory(catID)
        local catName = (cat and cat.name) or catID
        frame.Breadcrumb:SetText("All Guides > " .. catName .. " >")
        frame.Breadcrumb:SetTextColor(XP:ColorRGBA("text_dim"))
        frame.SectionName:SetText(folderName or "")
        frame.SectionName:SetTextColor(XP:ColorRGBA("text_bright"))
        frame.BreadcrumbBackFunc = function() XP:MenuNavigate("category", catID) end

        -- Find the folder's guides
        local folders, _ = self:GetFoldersForCategory(catID)
        local folderData = nil
        for _, f in ipairs(folders) do
            if f.name == folderName then folderData = f; break end
        end

        local folderGuides = folderData and folderData.guides or {}
        -- Count guides that pass the current faction filter
        local filteredCount = 0
        for _, g in ipairs(folderGuides) do
            if self:GuidePassesFactionFilter(g) then filteredCount = filteredCount + 1 end
        end
        frame.GuideCount:SetText(filteredCount .. " / " .. #folderGuides .. " guides")
        self:PopulateGuideList(folderGuides)

    elseif view == "current" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        if frame.ListScrollBar then frame.ListScrollBar:Show() end
        frame.HomeView:Hide()
        frame.Breadcrumb:SetText("")
        frame.SectionName:SetText("Current Guide")
        frame.BreadcrumbBackFunc = nil

        -- Show current guide if any
        local guides = {}
        if self.CurrentGuide then
            table.insert(guides, self.CurrentGuide)
        -- DEBUG: EXIT BreadcrumbBackFunc()
        end
        -- Count guides that pass the current faction filter
        local filteredCount = 0
        for _, g in ipairs(guides) do
            if self:GuidePassesFactionFilter(g) then filteredCount = filteredCount + 1 end
        end
        frame.GuideCount:SetText(filteredCount .. " / " .. #guides .. " guides")
        self:PopulateGuideList(guides)

    elseif view == "recent" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        if frame.ListScrollBar then frame.ListScrollBar:Show() end
        frame.HomeView:Hide()
        frame.Breadcrumb:SetText("")
        frame.SectionName:SetText("Recent Guides")
        frame.BreadcrumbBackFunc = nil
        frame.GuideCount:SetText("0 guides")
        self:PopulateGuideList({})

    elseif view == "favourites" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        if frame.ListScrollBar then frame.ListScrollBar:Show() end
        frame.HomeView:Hide()
        frame.Breadcrumb:SetText("")
        frame.SectionName:SetText("Favourites")
        frame.BreadcrumbBackFunc = nil
        local guides = self:GetFavouriteGuides()
        -- Count guides that pass the current faction filter
        local filteredCount = 0
        for _, g in ipairs(guides) do
            if self:GuidePassesFactionFilter(g) then filteredCount = filteredCount + 1 end
        end
        frame.GuideCount:SetText(filteredCount .. " / " .. #guides .. " guides")
        self:PopulateGuideList(guides)

    elseif view == "options" then
        currentCategory = nil
        -- Hide the main frame's section header/list scroll — OptionsView has its own header inside content area
        frame.SectionHeader:Hide()
        frame.ListScroll:Hide()
        if frame.ListScrollBar then frame.ListScrollBar:Hide() end
        frame.HomeView:Hide()
        frame.FeaturedView:Hide()
        frame.Breadcrumb:SetText("")
        frame.SectionName:SetText("Options")
        frame.BreadcrumbBackFunc = nil
        frame.GuideCount:SetText("")
        -- Show inline themed options panel (not an external AceConfigDialog)
        if frame.OptionsView then
            frame.OptionsView:Show()
        end
    end
-- DEBUG: EXIT XP:MenuNavigate()
end

-----------------------------------------------------------------------
-- Populate Guide List
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:PopulateGuideList()
-- DEBUG: PARAM guides = [guides]
function XP:PopulateGuideList(guides)
    XP.GuideMenuView.PopulateGuideList(guides)
-- DEBUG: EXIT XP:PopulateGuideList()
end

-----------------------------------------------------------------------
-- Search
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:MenuSearch()
-- DEBUG: PARAM query = [query]
function XP:MenuSearch(query)
    if not query or query == "" then
        self:MenuNavigate("home")
        return
    end

    query = query:lower()
    local results = {}

    for id, guide in pairs(self.Guides) do
        local title = (guide.title or ""):lower()
        local cat   = (guide.category or ""):lower()
        if title:find(query, 1, true) or cat:find(query, 1, true) or
           (guide.faction and guide.faction:lower():find(query, 1, true)) then
            table.insert(results, guide)
        end
    end

    -- Show results as a category view
    if self.MenuFrame then
        self.MenuFrame.HomeView:Hide()
        self.MenuFrame.SectionHeader:Show()
        self.MenuFrame.ListScroll:Show()
        self.MenuFrame.SectionName:SetText("Search: " .. query)
        self.MenuFrame.GuideCount:SetText(#results .. " results")
    end

    currentView = "search"
    currentCategory = nil
    self:PopulateGuideList(results)
-- DEBUG: EXIT XP:MenuSearch()
end

-----------------------------------------------------------------------
-- Update Menu (refresh counts, etc.)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:UpdateMenu()
function XP:UpdateMenu()
    if not self.MenuFrame then return end

    -- Update category counts
    local counts = self:GetGuideCounts()
    for id, btn in pairs(categoryButtons) do
        local count = counts[id] or 0
        if btn.CountBadge then
            btn.CountBadge:SetText(count > 0 and tostring(count) or "")
        end
    end

    -- If we're on a view, refresh it
    if currentView == "home" then
        self:MenuNavigate("home")
    elseif currentView == "category" and currentCategory then
        self:MenuNavigate("category", currentCategory)
    end
-- DEBUG: EXIT XP:UpdateMenu()
end

-----------------------------------------------------------------------
-- Faction Filtering
-----------------------------------------------------------------------

-- Returns the player's current faction group ("Alliance", "Horde", or nil).
function XP:GetPlayerFaction()
    return UnitFactionGroup("player")
end

-- Returns the active faction filter ("ALL", "ALLIANCE", or "HORDE").
function XP:GetFactionFilter()
    return factionFilter
end

-- Set the active faction filter and refresh the current view.
-- DEBUG: ENTER XP:MenuSetFactionFilter()
-- DEBUG: PARAM filter = [filter]
function XP:MenuSetFactionFilter(filter)
    factionFilter = filter or "ALL"
    XP:UpdateFactionFilterButtons()
    XP:RefreshCurrentViewWithFilter()
-- DEBUG: EXIT XP:MenuSetFactionFilter()
end

-- Update faction filter button colors to reflect the active filter.
function XP:UpdateFactionFilterButtons()
    local frame = self.MenuFrame
    if not frame or not frame.FactionFilterContainer then return end
    local c = frame.FactionFilterContainer
    local active = factionFilter

    local function SetBtnColor(btn, name)
        if name == active then
            btn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        else
            btn:GetFontString():SetTextColor(XP:ColorRGBA("text_dim"))
        end
    end
    SetBtnColor(c.BtnAll, "ALL")
    SetBtnColor(c.BtnAlliance, "ALLIANCE")
    SetBtnColor(c.BtnHorde, "HORDE")
end

-- Refresh the current view, re-applying the faction filter.
function XP:RefreshCurrentViewWithFilter()
    if currentView == "category" and currentCategory then
        self:MenuNavigate("category", currentCategory)
    elseif currentView == "folder" and currentCategory then
        self:MenuNavigate("folder", currentCategory, currentFolder)
    elseif currentView == "favourites" then
        self:MenuNavigate("favourites")
    elseif currentView == "current" then
        self:MenuNavigate("current")
    elseif currentView == "recent" then
        self:MenuNavigate("recent")
    end
end

-- Returns true if a guide passes the current faction filter.
-- guide.faction: "ALLIANCE", "HORDE", or "NEUTRAL"/"ALL"/""
function XP:GuidePassesFactionFilter(guide)
    local filter = factionFilter
    if filter == "ALL" then return true end

    local gf = (guide.faction or ""):upper()
    if gf == "ALLIANCE" then
        return filter == "ALLIANCE"
    elseif gf == "HORDE" then
        return filter == "HORDE"
    else
        -- NEUTRAL or empty = visible to all
        return true
    end
end

-- Show/hide faction filter buttons based on view type.
function XP:UpdateFactionFilterVisibility()
    local frame = self.MenuFrame
    if not frame or not frame.FactionFilterContainer then return end
    local show = (currentView == "category" or currentView == "folder" or
                  currentView == "favourites" or currentView == "current" or
                  currentView == "recent")
    if show then
        frame.FactionFilterContainer:Show()
    else
        frame.FactionFilterContainer:Hide()
    end
end

-----------------------------------------------------------------------
-- Apply skin to menu frame
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:ApplySkinToGuideMenu()
function XP:ApplySkinToGuideMenu(f)
    if not f then return end
    XP.UpdateFactionFilterButtons(XP)
-- DEBUG: EXIT XP:ApplySkinToGuideMenu()
end
