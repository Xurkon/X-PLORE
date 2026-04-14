-----------------------------------------------------------------------
-- X-Plore: GuideMenu.lua
-- The guide browser / menu popup.
-- Large frame for browsing, searching, and selecting guides.
-- Mirrors Zygor's GuideMenu system.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local DETAIL_WIDTH    = 260       -- width of the right detail panel

-----------------------------------------------------------------------
-- State
-----------------------------------------------------------------------
local currentView     = "home"     -- "home", "category", "guide"
local currentCategory = nil        -- selected category ID
local selectedGuideID = nil        -- guide shown in detail panel
local guideListData   = {}         -- filtered list for display
local guideRows       = {}         -- reusable row frames
local categoryButtons = {}         -- sidebar category buttons
local MAX_GUIDE_ROWS  = 20

-- Resolve icon name to full texture path (local or WoW built-in).
local function ResolveIconPath(iconName)
    if not iconName then return nil end
    if iconName:match("Interface") then
        return iconName
    end
    return "Interface\\AddOns\\X-Plore\\textures\\icons\\" .. iconName .. ".tga"
end

-- Resolve a category's icon to a full texture path.
local function GetCategoryIconPath(cat)
    if not cat then return nil end
    if cat.iconFull then
        return cat.icon
    end
    return ResolveIconPath(cat.icon)
end

-----------------------------------------------------------------------
-- Create the Guide Menu Frame
-----------------------------------------------------------------------
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

    local headerBg = header:CreateTexture(nil, "BACKGROUND")
    headerBg:SetAllPoints()
    XP.SetTexColor(headerBg, 0.02, 0.04, 0.08, 1.0)

    -- Logo
    local logoIcon = header:CreateTexture(nil, "ARTWORK")
    logoIcon:SetSize(20, 20)
    logoIcon:SetPoint("LEFT", header, "LEFT", 12, 0)
    XP.SetTexColor(logoIcon, XP:ColorRGBA("cyan"))

    local logoText = header:CreateFontString(nil, "OVERLAY")
    logoText:SetPoint("LEFT", logoIcon, "RIGHT", 8, 0)
    self:ApplyFont(logoText, "bold", "cyan")
    logoText:SetText("X-PLORE")

    -- Header close button
    local closeBtn = CreateFrame("Button", nil, header)
    closeBtn:SetSize(24, 24)
    closeBtn:SetPoint("RIGHT", header, "RIGHT", -10, 0)
    closeBtn:SetNormalFontObject(GameFontNormalSmall)
    closeBtn:SetText("x")
    closeBtn:GetFontString():SetTextColor(XP:ColorRGBA("red"))
    closeBtn:SetScript("OnClick", function() frame:Hide() end)
    closeBtn:SetScript("OnEnter", function(btn) btn:GetFontString():SetTextColor(1, 0.5, 0.5) end)
    closeBtn:SetScript("OnLeave", function(btn) btn:GetFontString():SetTextColor(XP:ColorRGBA("red")) end)

    -- Header Tab Buttons (Options lives in sidebar, not here)
    local tabNames = { "Home", "Current", "Recent" }
    local headerTabs = {}
    local tabX = 120
    for i, tabName in ipairs(tabNames) do
        local tab = CreateFrame("Button", nil, header)
        tab:SetSize(80, 40)
        tab:SetPoint("LEFT", header, "LEFT", tabX, 0)
        tab:SetNormalFontObject(GameFontNormalSmall)
        tab:SetText(tabName)
        tab:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))

        -- Active indicator (bottom line)
        local indicator = tab:CreateTexture(nil, "ARTWORK")
        indicator:SetHeight(2)
        indicator:SetPoint("BOTTOMLEFT", tab, "BOTTOMLEFT", 4, 0)
        indicator:SetPoint("BOTTOMRIGHT", tab, "BOTTOMRIGHT", -4, 0)
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
        tabX = tabX + 85
    end
    frame.HeaderTabs = headerTabs

    -- Header divider
    self:CreateDivider(frame, -40, "border_bright")

    ---------------------------------------------------------------
    -- Sidebar (left panel with categories)
    ---------------------------------------------------------------
    local sidebar = CreateFrame("Frame", nil, frame)
    sidebar:SetWidth(sideW)
    sidebar:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -41)
    sidebar:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, 0)
    frame.Sidebar = sidebar

    local sidebarBg = sidebar:CreateTexture(nil, "BACKGROUND")
    sidebarBg:SetAllPoints()
    XP.SetTexColor(sidebarBg, 0.03, 0.05, 0.10, 0.95)

    -- Search box
    local searchBox = CreateFrame("EditBox", "XPlore_GuideMenuSearch", sidebar, "InputBoxTemplate")
    searchBox:SetSize(sideW - 8, 22)
    searchBox:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 4, -13)
    searchBox:SetAutoFocus(false)
    searchBox:SetMaxLetters(50)
    self:ApplyFont(searchBox, "small", "text_normal")
    searchBox:SetScript("OnEscapePressed", function(self_eb) self_eb:ClearFocus() end)
    searchBox:SetScript("OnEnterPressed", function(self_eb)
        local text = self_eb:GetText()
        if text and text ~= "" then
            XP:MenuSearch(text)
        end
        self_eb:ClearFocus()
    end)
    frame.SearchBox = searchBox

    -- Search divider
    local searchDivider = sidebar:CreateTexture(nil, "ARTWORK")
    searchDivider:SetHeight(1)
    searchDivider:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 0, -48)
    searchDivider:SetPoint("TOPRIGHT", sidebar, "TOPRIGHT", 0, -48)
    XP.SetTexColor(searchDivider, XP:ColorRGBA("border_dim"))

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

    -- Section header (back arrow + category name)
    local sectionHeader = CreateFrame("Frame", nil, centerCol)
    sectionHeader:SetHeight(36)
    sectionHeader:SetPoint("TOPLEFT", centerCol, "TOPLEFT", 0, 0)
    sectionHeader:SetPoint("TOPRIGHT", centerCol, "TOPRIGHT", 0, 0)
    frame.SectionHeader = sectionHeader

    local sectionBg = sectionHeader:CreateTexture(nil, "BACKGROUND")
    sectionBg:SetAllPoints()
    XP.SetTexColor(sectionBg, XP:ColorRGBA("bg_medium"))

    -- Back button
    local backBtn = CreateFrame("Button", nil, sectionHeader)
    backBtn:SetSize(24, 24)
    backBtn:SetPoint("LEFT", sectionHeader, "LEFT", 8, 0)
    backBtn:SetNormalFontObject(GameFontNormalSmall)
    backBtn:SetText("<")
    backBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
    backBtn:SetScript("OnClick", function() XP:MenuNavigate("home") end)
    frame.BackBtn = backBtn

    -- Section name
    local sectionName = sectionHeader:CreateFontString(nil, "OVERLAY")
    sectionName:SetPoint("LEFT", backBtn, "RIGHT", 8, 0)
    self:ApplyFont(sectionName, "bold", "text_bright")
    sectionName:SetText("All Guides")
    frame.SectionName = sectionName

    -- Guide count
    local guideCount = sectionHeader:CreateFontString(nil, "OVERLAY")
    guideCount:SetPoint("RIGHT", sectionHeader, "RIGHT", -12, 0)
    self:ApplyFont(guideCount, "small", "text_dim")
    guideCount:SetText("")
    frame.GuideCount = guideCount

    -- Section divider
    local sectionDiv = centerCol:CreateTexture(nil, "ARTWORK")
    sectionDiv:SetHeight(1)
    sectionDiv:SetPoint("TOPLEFT", centerCol, "TOPLEFT", 0, -36)
    sectionDiv:SetPoint("TOPRIGHT", centerCol, "TOPRIGHT", 0, -36)
    XP.SetTexColor(sectionDiv, XP:ColorRGBA("border_dim"))

    ---------------------------------------------------------------
    -- Guide List Scroll Frame
    -- Use plain ScrollFrame + mousewheel (no UIPanelScrollFrameTemplate).
    ---------------------------------------------------------------
    local listScrollbarW = 12
    local listArea = CreateFrame("ScrollFrame", "XPlore_GuideMenuScroll", centerCol)
    listArea:SetPoint("TOPLEFT", centerCol, "TOPLEFT", 0, -37)
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
    listScrollBar:SetPoint("TOPRIGHT", centerCol, "TOPRIGHT", 0, -37)
    listScrollBar:SetPoint("BOTTOMRIGHT", centerCol, "BOTTOMRIGHT", 0, 0)
    listScrollBar:SetOrientation("VERTICAL")
    listScrollBar:SetMinMaxValues(0, 1)
    listScrollBar:SetValue(0)
    local lsbTrack = listScrollBar:CreateTexture(nil, "BACKGROUND")
    lsbTrack:SetAllPoints()
    XP.SetTexColor(lsbTrack, 0, 0, 0, 0.3)
    local lsbThumb = listScrollBar:CreateTexture(nil, "OVERLAY")
    lsbThumb:SetWidth(listScrollbarW - 2)
    XP.SetTexColor(lsbThumb, XP:ColorRGBA("border"))
    listScrollBar:SetThumbTexture(lsbThumb)
    listScrollBar:SetScript("OnValueChanged", function(sb, val)
        listArea:SetVerticalScroll(val)
    end)
    listArea.ScrollBar = listScrollBar
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
    frame.HomeView = homeView

    self:CreateHomeView(homeView)

    ---------------------------------------------------------------
    -- Options View (inline, themed — shown when Options tab clicked)
    ---------------------------------------------------------------
    local optionsView = CreateFrame("Frame", nil, centerCol)
    optionsView:SetAllPoints(centerCol)
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

    local detailBg = detailCol:CreateTexture(nil, "BACKGROUND")
    detailBg:SetAllPoints()
    XP.SetTexColor(detailBg, XP:ColorRGBA("bg_medium"))

    self:CreateDetailPanel(detailCol)

    ---------------------------------------------------------------
    -- Initial state: show home
    ---------------------------------------------------------------
    self:MenuNavigate("home")

    ---------------------------------------------------------------
    -- Runtime re-skin subscriber
    -- Called by XP:SetSkin() when the player changes skin in options.
    ---------------------------------------------------------------
    XP:RegisterSkinSubscriber(function()
        local f = XP.MenuFrame
        if not f then return end

        -- Main frame backdrop
        XP:ApplyBackdrop(f, "main", "bg_deep", "border_bright")

        -- Header: logo, close button, tab indicators
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

        -- List scrollbar thumb
        if f.ListScroll and f.ListScroll.ScrollBar then
            local thumb = f.ListScroll.ScrollBar:GetThumbTexture()
            if thumb then
                XP.SetTexColor(thumb, XP:ColorRGBA("border"))
            end
        end

        -- Category buttons (live in categoryButtons table)
        for _, btn in pairs(categoryButtons) do
            if btn then
                XP:ApplyBackdrop(btn, "none", "bg_deep")
                if btn.Text then
                    XP:ApplyFont(btn.Text, "small", "text_normal")
                end
                if btn.CountBadge then
                    XP:ApplyFont(btn.CountBadge, "small", "text_dim")
                end
            end
        end

        -- Guide rows (live in guideRows table)
        for _, row in pairs(guideRows) do
            if row then
                XP:ApplyBackdrop(row, "panel", "bg_medium", "border_dim")
                if row.Title then
                    XP:ApplyFont(row.Title, "small", "text_bright")
                end
                if row.Sub then
                    XP:ApplyFont(row.Sub, "tiny", "text_dim")
                end
                if row.LevelRange then
                    XP:ApplyFont(row.LevelRange, "tiny", "cyan_dark")
                end
            end
        end

        -- Re-navigate to refresh current view
        XP:MenuNavigate(currentView or "home")
    end)
end

-----------------------------------------------------------------------
-- Category Buttons (sidebar)
-----------------------------------------------------------------------
function XP:CreateCategoryButtons(sidebar)
    local categories = self:GetCategories()
    local yOffset = -55  -- below search box

    for i, cat in ipairs(categories) do
        local btn = XP.CreateBackdropFrame("Button", nil, sidebar)
        btn:SetSize(self:Size("sidebar_width"), self:Size("category_height"))
        btn:SetPoint("TOPLEFT", sidebar, "TOPLEFT", 0, yOffset)

        -- Background (transparent by default)
        self:ApplyBackdrop(btn, "none", "bg_deep")

        -- Category icon
        local icon = btn:CreateTexture(nil, "ARTWORK")
        icon:SetSize(16, 16)
        icon:SetPoint("LEFT", btn, "LEFT", 12, 0)
        icon:SetTexture(GetCategoryIconPath(cat))
        btn.Icon = icon

        -- Category name
        local text = btn:CreateFontString(nil, "OVERLAY")
        text:SetPoint("LEFT", icon, "RIGHT", 8, 0)
        self:ApplyFont(text, "small", "text_normal")
        text:SetText(cat.name)
        btn.Text = text

        -- Guide count badge
        local countBadge = btn:CreateFontString(nil, "OVERLAY")
        countBadge:SetPoint("RIGHT", btn, "RIGHT", -10, 0)
        self:ApplyFont(countBadge, "small", "text_dim")
        btn.CountBadge = countBadge

        -- Hover highlight
        btn:SetScript("OnEnter", function(self_btn)
            if currentCategory ~= cat.id then
                self_btn:SetBackdropColor(XP:ColorRGBA("bg_hover"))
                self_btn.Text:SetTextColor(XP:ColorRGBA("cyan_light"))
            end
        end)
        btn:SetScript("OnLeave", function(self_btn)
            if currentCategory ~= cat.id then
                self_btn:SetBackdropColor(XP:ColorRGBA("bg_deep"))
                self_btn.Text:SetTextColor(XP:ColorRGBA("text_normal"))
            end
        end)

        -- Click handler
        btn:SetScript("OnClick", function()
            XP:MenuNavigate("category", cat.id)
        end)

        btn.categoryID = cat.id
        categoryButtons[cat.id] = btn
        yOffset = yOffset - self:Size("category_height") - 1
    end

    -- Bottom section: Options & About
    local bottomY = 10

    -- About button
    local aboutBtn = XP.CreateBackdropFrame("Button", nil, sidebar)
    aboutBtn:SetSize(self:Size("sidebar_width"), self:Size("category_height"))
    aboutBtn:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 0, bottomY)
    self:ApplyBackdrop(aboutBtn, "none", "bg_deep")
    local aboutIcon = aboutBtn:CreateTexture(nil, "ARTWORK")
    aboutIcon:SetSize(16, 16)
    aboutIcon:SetPoint("LEFT", aboutBtn, "LEFT", 12, 0)
    aboutIcon:SetTexture("Interface\\Icons\\INV_Misc_QuestionMark")
    local aboutText = aboutBtn:CreateFontString(nil, "OVERLAY")
    aboutText:SetPoint("LEFT", aboutIcon, "RIGHT", 8, 0)
    self:ApplyFont(aboutText, "small", "text_dim")
    aboutText:SetText("About")
    aboutBtn:SetScript("OnEnter", function(btn) aboutText:SetTextColor(XP:ColorRGBA("cyan_light")) end)
    aboutBtn:SetScript("OnLeave", function(btn) aboutText:SetTextColor(XP:ColorRGBA("text_dim")) end)
    aboutBtn:SetScript("OnClick", function()
        XP:MenuNavigate("about")
    end)

    -- Options button
    local optBtn = XP.CreateBackdropFrame("Button", nil, sidebar)
    optBtn:SetSize(self:Size("sidebar_width"), self:Size("category_height"))
    optBtn:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 0, bottomY + self:Size("category_height") + 1)
    self:ApplyBackdrop(optBtn, "none", "bg_deep")
    local optIcon = optBtn:CreateTexture(nil, "ARTWORK")
    optIcon:SetSize(16, 16)
    optIcon:SetPoint("LEFT", optBtn, "LEFT", 12, 0)
    optIcon:SetTexture("Interface\\Icons\\INV_Misc_Gear_01")
    local optText = optBtn:CreateFontString(nil, "OVERLAY")
    optText:SetPoint("LEFT", optIcon, "RIGHT", 8, 0)
    self:ApplyFont(optText, "small", "text_normal")
    optText:SetText("Options")
    optBtn:SetScript("OnClick", function()
        XP:MenuNavigate("options")
    end)
    optBtn:SetScript("OnEnter", function(btn) optText:SetTextColor(XP:ColorRGBA("cyan_light")) end)
    optBtn:SetScript("OnLeave", function(btn) optText:SetTextColor(XP:ColorRGBA("text_normal")) end)

    -- Divider above Options
    local optDiv = sidebar:CreateTexture(nil, "ARTWORK")
    optDiv:SetHeight(1)
    optDiv:SetPoint("BOTTOMLEFT", sidebar, "BOTTOMLEFT", 0, bottomY + (self:Size("category_height") + 1) * 2 + 4)
    optDiv:SetPoint("BOTTOMRIGHT", sidebar, "BOTTOMRIGHT", 0, bottomY + (self:Size("category_height") + 1) * 2 + 4)
    XP.SetTexColor(optDiv, XP:ColorRGBA("border_dim"))
end

-----------------------------------------------------------------------
-- Guide Rows (reusable list items in center column)
-----------------------------------------------------------------------
function XP:CreateGuideRows(parent)
    for i = 1, MAX_GUIDE_ROWS do
        local row = XP.CreateBackdropFrame("Button", nil, parent)
        row:SetHeight(36)
        row:Hide()

        self:ApplyBackdrop(row, "none", "bg_deep")

        -- Icon
        local icon = row:CreateTexture(nil, "ARTWORK")
        icon:SetSize(20, 20)
        icon:SetPoint("LEFT", row, "LEFT", 12, 0)
        row.Icon = icon

        -- Title
        local title = row:CreateFontString(nil, "OVERLAY")
        title:SetPoint("LEFT", icon, "RIGHT", 10, 2)
        title:SetPoint("RIGHT", row, "RIGHT", -80, 2)
        title:SetJustifyH("LEFT")
        self:ApplyFont(title, "normal", "text_bright")
        row.Title = title

        -- Subtitle (faction, expansion)
        local subtitle = row:CreateFontString(nil, "OVERLAY")
        subtitle:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -1)
        subtitle:SetJustifyH("LEFT")
        self:ApplyFont(subtitle, "small", "text_dim")
        row.Subtitle = subtitle

        -- Load button
        local loadBtn = CreateFrame("Button", nil, row)
        loadBtn:SetSize(60, 22)
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
        row.LoadBtn = loadBtn

        -- Hover
        row:SetScript("OnEnter", function(self_row)
            self_row:SetBackdropColor(XP:ColorRGBA("bg_hover"))
        end)
        row:SetScript("OnLeave", function(self_row)
            self_row:SetBackdropColor(XP:ColorRGBA("bg_deep"))
        end)

        -- Divider
        local div = row:CreateTexture(nil, "ARTWORK")
        div:SetHeight(1)
        div:SetPoint("BOTTOMLEFT", row, "BOTTOMLEFT", 0, 0)
        div:SetPoint("BOTTOMRIGHT", row, "BOTTOMRIGHT", 0, 0)
        XP.SetTexColor(div, XP:ColorRGBA("border_dim"))

        guideRows[i] = row
    end
end

-----------------------------------------------------------------------
-- Home View (welcome/overview when no category selected)
-----------------------------------------------------------------------
function XP:CreateHomeView(parent)
    -- Title
    local homeTitle = parent:CreateFontString(nil, "OVERLAY")
    homeTitle:SetPoint("TOP", parent, "TOP", 0, -40)
    self:ApplyFont(homeTitle, "header", "cyan")
    homeTitle:SetText("Welcome to X-Plore")

    -- Subtitle
    local homeSub = parent:CreateFontString(nil, "OVERLAY")
    homeSub:SetPoint("TOP", homeTitle, "BOTTOM", 0, -8)
    self:ApplyFont(homeSub, "normal", "text_muted")
    homeSub:SetText("Select a category from the sidebar to browse guides.")

    -- Guide count
    local countText = parent:CreateFontString(nil, "OVERLAY")
    countText:SetPoint("TOP", homeSub, "BOTTOM", 0, -20)
    self:ApplyFont(countText, "normal", "text_normal")
    parent.CountText = countText

    -- Quick-start buttons (create as a grid)
    local quickStart = CreateFrame("Frame", nil, parent)
    quickStart:SetSize(400, 200)
    quickStart:SetPoint("TOP", countText, "BOTTOM", 0, -20)
    parent.QuickStart = quickStart

    -- Create quick-start category cards
    local cardCategories = { "LEVELING", "DUNGEONS", "PROFESSIONS", "DAILIES" }
    local cardX, cardY = 0, 0
    local cardWidth, cardHeight = 190, 80
    local cardGap = 10

    for i, catID in ipairs(cardCategories) do
        local cat = self:GetCategory(catID)
        if cat then
            local card = XP.CreateBackdropFrame("Button", nil, quickStart)
            card:SetSize(cardWidth, cardHeight)
            card:SetPoint("TOPLEFT", quickStart, "TOPLEFT", cardX, -cardY)
            self:ApplyBackdrop(card, "panel", "bg_light", "border")

            local cardIcon = card:CreateTexture(nil, "ARTWORK")
            cardIcon:SetSize(24, 24)
            cardIcon:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -12)
            cardIcon:SetTexture(GetCategoryIconPath(cat))

            local cardTitle = card:CreateFontString(nil, "OVERLAY")
            cardTitle:SetPoint("TOPLEFT", cardIcon, "TOPRIGHT", 8, 0)
            self:ApplyFont(cardTitle, "bold", "text_bright")
            cardTitle:SetText(cat.name)

            local cardDesc = card:CreateFontString(nil, "OVERLAY")
            cardDesc:SetPoint("TOPLEFT", cardTitle, "BOTTOMLEFT", 0, -4)
            cardDesc:SetPoint("RIGHT", card, "RIGHT", -10, 0)
            cardDesc:SetJustifyH("LEFT")
            self:ApplyFont(cardDesc, "small", "text_muted")
            cardDesc:SetText("Browse " .. cat.name:lower() .. " guides")

            -- Click to open category
            card:SetScript("OnClick", function()
                XP:MenuNavigate("category", catID)
            end)
            card:SetScript("OnEnter", function(c)
                c:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
            end)
            card:SetScript("OnLeave", function(c)
                c:SetBackdropBorderColor(XP:ColorRGBA("border"))
            end)

            -- Grid layout: 2 columns
            cardX = cardX + cardWidth + cardGap
            if cardX + cardWidth > 400 then
                cardX = 0
                cardY = cardY + cardHeight + cardGap
            end
        end
    end
end

-----------------------------------------------------------------------
-- Inline Options Panel (rendered inside the center column)
-- Replaces the external AceConfigDialog popup with a themed panel.
-----------------------------------------------------------------------
function XP:CreateInlineOptions(parent)
    local yOffset = -50

    -- Helper to add a section heading
    local function AddHeading(text)
        local h = parent:CreateFontString(nil, "OVERLAY")
        h:SetPoint("TOPLEFT", parent, "TOPLEFT", 16, yOffset)
        XP:ApplyFont(h, "bold", "cyan")
        h:SetText(text)
        yOffset = yOffset - 24

        -- thin divider under heading
        local div = parent:CreateTexture(nil, "ARTWORK")
        div:SetHeight(1)
        div:SetPoint("TOPLEFT", parent, "TOPLEFT", 16, yOffset)
        div:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -16, yOffset)
        XP.SetTexColor(div, XP:ColorRGBA("border_dim"))
        yOffset = yOffset - 10
    end

    -- Helper to add a checkbox option
    local function AddCheckbox(labelText, dbKey, subKey)
        local row = CreateFrame("Frame", nil, parent)
        row:SetHeight(26)
        row:SetPoint("TOPLEFT", parent, "TOPLEFT", 16, yOffset)
        row:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -16, yOffset)
        yOffset = yOffset - 28

        local cb = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
        cb:SetSize(20, 20)
        cb:SetPoint("LEFT", row, "LEFT", 0, 0)

        local lbl = row:CreateFontString(nil, "OVERLAY")
        lbl:SetPoint("LEFT", cb, "RIGHT", 6, 0)
        XP:ApplyFont(lbl, "normal", "text_normal")
        lbl:SetText(labelText)

        -- Load current value
        local function GetVal()
            if subKey then
                return XP.db.profile[dbKey] and XP.db.profile[dbKey][subKey]
            end
            return XP.db.profile[dbKey]
        end
        local function SetVal(v)
            if subKey then
                if XP.db.profile[dbKey] == nil then XP.db.profile[dbKey] = {} end
                XP.db.profile[dbKey][subKey] = v
            else
                XP.db.profile[dbKey] = v
            end
        end

        cb:SetChecked(GetVal() and true or false)
        cb:SetScript("OnClick", function(self_cb)
            SetVal(self_cb:GetChecked() and true or false)
        end)
        -- Store reference so RefreshInlineOptions can update it
        cb.dbKey = dbKey
        cb.dbSubKey = subKey
        cb.GetVal = GetVal
    end

    -- Helper: slider row
    local function AddSlider(labelText, dbKey, subKey, minVal, maxVal, step, fmt)
        local row = CreateFrame("Frame", nil, parent)
        row:SetHeight(40)
        row:SetPoint("TOPLEFT", parent, "TOPLEFT", 16, yOffset)
        row:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -16, yOffset)
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

        local function GetVal()
            if subKey then
                return (XP.db.profile[dbKey] and XP.db.profile[dbKey][subKey]) or minVal
            end
            return XP.db.profile[dbKey] or minVal
        end
        slider:SetValue(GetVal())

        local valText = row:CreateFontString(nil, "OVERLAY")
        valText:SetPoint("LEFT", slider, "RIGHT", 8, 0)
        XP:ApplyFont(valText, "small", "cyan")
        local function RefreshText(v)
            if fmt then
                valText:SetText(string.format(fmt, v))
            else
                valText:SetText(string.format("%.2f", v))
            end
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
        end)
        -- Hide auto-generated labels from OptionsSliderTemplate
        if slider.Low  then slider.Low:SetText("")  end
        if slider.High then slider.High:SetText("") end
    end

    -- ── Display ──────────────────────────────────────────────────
    AddHeading("Display")
    AddCheckbox("Show Viewer on Login",         "viewer",      "shown")
    AddCheckbox("Lock Viewer Position",         "viewer",      "locked")
    AddSlider("Viewer Scale", "viewer", "scale", 0.5, 2.0, 0.05, "%.2f×")

    -- ── Behaviour ────────────────────────────────────────────────
    yOffset = yOffset - 8
    AddHeading("Behaviour")
    AddCheckbox("Auto-Advance Steps",           "autoAdvance", nil)
    AddCheckbox("Show Waypoint Arrow",          "showArrow",   nil)

    -- ── Theme ────────────────────────────────────────────────────
    yOffset = yOffset - 8
    AddHeading("Theme")

    -- Segmented skin selector: one button per registered skin
    do
        local skinList = XP:GetSkinList()  -- [{id, name}, ...]
        local btnWidth = 90
        local btnHeight = 22
        local btnSpacing = 6
        local startX = 16

        local skinButtons = {}

        local function RefreshSkinButtons()
            local active = XP.db and XP.db.profile.skin or "default"
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
        end

        for i, entry in ipairs(skinList) do
            local btn = XP.CreateBackdropFrame("Button", nil, parent)
            if btn.SetBackdrop then
                btn:SetBackdrop(XP:Backdrop("panel"))
                btn:SetBackdropColor(XP:ColorRGBA("bg_medium"))
                btn:SetBackdropBorderColor(XP:ColorRGBA("border"))
            end
            btn:SetSize(btnWidth, btnHeight)
            btn:SetPoint("TOPLEFT", parent, "TOPLEFT",
                startX + (i - 1) * (btnWidth + btnSpacing), yOffset)

            local lbl = btn:CreateFontString(nil, "OVERLAY")
            lbl:SetAllPoints()
            XP:ApplyFont(lbl, "small", "text_normal")
            lbl:SetText(entry.name)
            lbl:SetJustifyH("CENTER")
            btn.Text = lbl
            btn.skinID = entry.id

            btn:SetScript("OnClick", function()
                XP:SetSkin(entry.id)
                if XP.db then XP.db.profile.skin = entry.id end
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
        yOffset = yOffset - (btnHeight + 12)
    end

    -- ── About ────────────────────────────────────────────────────
    yOffset = yOffset - 8
    AddHeading("About")
    local aboutText = parent:CreateFontString(nil, "OVERLAY")
    aboutText:SetPoint("TOPLEFT", parent, "TOPLEFT", 16, yOffset)
    XP:ApplyFont(aboutText, "small", "text_muted")
    aboutText:SetText("X-Plore v" .. XP.version .. "  |  Guide viewer for World of Warcraft (all versions)")
    yOffset = yOffset - 20

    local authorText = parent:CreateFontString(nil, "OVERLAY")
    authorText:SetPoint("TOPLEFT", parent, "TOPLEFT", 16, yOffset)
    XP:ApplyFont(authorText, "small", "text_dim")
    authorText:SetText("Built on !X-Libs  |  Type |cff00e5ff/xp|r for commands")
end

-----------------------------------------------------------------------
-- Right Detail Panel
-- Shows guide title, description, level range, faction, expansion,
-- and estimated step count when a guide row is selected.
-----------------------------------------------------------------------
function XP:CreateDetailPanel(parent)
    -- Empty state (shown by default — no guide selected)
    local emptyMsg = parent:CreateFontString(nil, "OVERLAY")
    emptyMsg:SetPoint("CENTER", parent, "CENTER", 0, 30)
    emptyMsg:SetPoint("LEFT",   parent, "LEFT",  16, 0)
    emptyMsg:SetPoint("RIGHT",  parent, "RIGHT", -16, 0)
    emptyMsg:SetJustifyH("CENTER")
    self:ApplyFont(emptyMsg, "small", "text_dim")
    emptyMsg:SetText("Select a guide to view details")
    emptyMsg:SetWordWrap(true)
    parent.EmptyMsg = emptyMsg

    -- Scrollable content area for when a guide IS selected
    local scroll = CreateFrame("ScrollFrame", nil, parent)
    scroll:SetPoint("TOPLEFT",     parent, "TOPLEFT",  8,  -8)
    scroll:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -8, 50)
    scroll:EnableMouseWheel(true)
    scroll:SetScript("OnMouseWheel", function(sf, delta)
        local cur = sf:GetVerticalScroll()
        local maxS = sf:GetVerticalScrollRange()
        local new = cur - delta * 24
        if new < 0 then new = 0 end
        if new > maxS then new = maxS end
        sf:SetVerticalScroll(new)
    end)
    scroll:Hide()
    parent.DetailScroll = scroll

    local child = CreateFrame("Frame", nil, scroll)
    child:SetWidth(DETAIL_WIDTH - 16)
    child:SetHeight(1)
    scroll:SetScrollChild(child)
    parent.DetailChild = child

    -- Detail scrollbar skin
    local detailScrollBar = CreateFrame("Slider", nil, parent)
    local sbW = 10
    detailScrollBar:SetWidth(sbW)
    detailScrollBar:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -8, -8)
    detailScrollBar:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -8, 50)
    detailScrollBar:SetOrientation("VERTICAL")
    detailScrollBar:SetMinMaxValues(0, 1)
    detailScrollBar:SetValue(0)
    local dsbTrack = detailScrollBar:CreateTexture(nil, "BACKGROUND")
    dsbTrack:SetAllPoints()
    XP.SetTexColor(dsbTrack, 0, 0, 0, 0.3)
    local dsbThumb = detailScrollBar:CreateTexture(nil, "OVERLAY")
    dsbThumb:SetWidth(sbW - 2)
    XP.SetTexColor(dsbThumb, XP:ColorRGBA("border"))
    detailScrollBar:SetThumbTexture(dsbThumb)
    detailScrollBar:Hide()
    detailScrollBar:SetScript("OnValueChanged", function(sb, val)
        scroll:SetVerticalScroll(val)
    end)
    scroll.scrollBar = detailScrollBar

    -- Guide icon (large)
    local guideIcon = child:CreateTexture(nil, "ARTWORK")
    guideIcon:SetSize(36, 36)
    guideIcon:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -4)
    parent.DetailIcon = guideIcon

    -- Guide title
    local titleFS = child:CreateFontString(nil, "OVERLAY")
    titleFS:SetPoint("TOPLEFT", guideIcon, "TOPRIGHT", 8, 0)
    titleFS:SetPoint("TOPRIGHT", child, "TOPRIGHT", 0, 0)
    titleFS:SetJustifyH("LEFT")
    titleFS:SetJustifyV("TOP")
    titleFS:SetWordWrap(true)
    self:ApplyFont(titleFS, "bold", "text_bright")
    parent.DetailTitle = titleFS

    -- Sub-info row (level range + faction)
    local infoFS = child:CreateFontString(nil, "OVERLAY")
    infoFS:SetPoint("TOPLEFT", guideIcon, "BOTTOMLEFT", 0, -8)
    infoFS:SetPoint("TOPRIGHT", child, "TOPRIGHT", 0, 0)
    infoFS:SetJustifyH("LEFT")
    self:ApplyFont(infoFS, "small", "cyan")
    parent.DetailInfo = infoFS

    -- Divider under info row
    local divFS = child:CreateTexture(nil, "ARTWORK")
    divFS:SetHeight(1)
    divFS:SetPoint("TOPLEFT",  child, "TOPLEFT",  0, -60)
    divFS:SetPoint("TOPRIGHT", child, "TOPRIGHT", 0, -60)
    XP.SetTexColor(divFS, XP:ColorRGBA("border_dim"))

    -- Description
    local descFS = child:CreateFontString(nil, "OVERLAY")
    descFS:SetPoint("TOPLEFT",  child, "TOPLEFT",  0, -68)
    descFS:SetPoint("TOPRIGHT", child, "TOPRIGHT", 0, -68)
    descFS:SetJustifyH("LEFT")
    descFS:SetWordWrap(true)
    self:ApplyFont(descFS, "small", "text_muted")
    parent.DetailDesc = descFS

    -- Steps count
    local stepsFS = child:CreateFontString(nil, "OVERLAY")
    stepsFS:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -160)
    self:ApplyFont(stepsFS, "small", "text_dim")
    parent.DetailSteps = stepsFS

    -- Expansion label
    local expFS = child:CreateFontString(nil, "OVERLAY")
    expFS:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -180)
    self:ApplyFont(expFS, "small", "text_dim")
    parent.DetailExpansion = expFS

    -- Load button (anchored to bottom of panel)
    local loadBtn = XP.CreateBackdropFrame("Button", nil, parent)
    loadBtn:SetSize(DETAIL_WIDTH - 24, 28)
    loadBtn:SetPoint("BOTTOMLEFT",  parent, "BOTTOMLEFT",  12, 12)
    loadBtn:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -12, 12)
    if loadBtn.SetBackdrop then
        loadBtn:SetBackdrop(XP:Backdrop("panel"))
        loadBtn:SetBackdropColor(XP:ColorRGBA("bg_light"))
        loadBtn:SetBackdropBorderColor(XP:ColorRGBA("border"))
    end

    local loadLbl = loadBtn:CreateFontString(nil, "OVERLAY")
    loadLbl:SetAllPoints()
    self:ApplyFont(loadLbl, "bold", "cyan")
    loadLbl:SetText("Load Guide")
    loadLbl:SetJustifyH("CENTER")
    loadBtn.Label = loadLbl

    loadBtn:SetScript("OnClick", function()
        if selectedGuideID then
            XP.Tabs:LoadGuideToTab(selectedGuideID)
            XP:Print("Loaded guide: " .. selectedGuideID)
            if XP.MenuFrame then XP.MenuFrame:Hide() end
            if XP.ViewerFrame then XP.ViewerFrame:Show() end
        end
    end)
    loadBtn:SetScript("OnEnter", function()
        if loadBtn.SetBackdropBorderColor then
            loadBtn:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
        end
        loadLbl:SetTextColor(XP:ColorRGBA("cyan_light"))
    end)
    loadBtn:SetScript("OnLeave", function()
        if loadBtn.SetBackdropBorderColor then
            loadBtn:SetBackdropBorderColor(XP:ColorRGBA("border"))
        end
        loadLbl:SetTextColor(XP:ColorRGBA("cyan"))
    end)
    loadBtn:Hide()
    parent.DetailLoadBtn = loadBtn
end

-- Show guide info in the right detail panel.
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
    local iconPath
    if cat then
        iconPath = GetCategoryIconPath(cat)
    end
    if panel.DetailIcon and iconPath then
        panel.DetailIcon:SetTexture(iconPath)
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
end

-----------------------------------------------------------------------
-- Navigation
-----------------------------------------------------------------------
function XP:MenuNavigate(view, param)
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

    -- Hide everything first
    if frame.HomeView    then frame.HomeView:Hide()    end
    if frame.SectionHeader then frame.SectionHeader:Hide() end
    if frame.ListScroll  then frame.ListScroll:Hide()  end
    if frame.OptionsView then frame.OptionsView:Hide() end
    if frame.AboutView   then frame.AboutView:Hide()   end

    -- Update sidebar highlight
    for id, btn in pairs(categoryButtons) do
        if id == param then
            btn:SetBackdropColor(XP:ColorRGBA("bg_hover"))
            btn.Text:SetTextColor(XP:ColorRGBA("cyan"))
        else
            btn:SetBackdropColor(XP:ColorRGBA("bg_deep"))
            btn.Text:SetTextColor(XP:ColorRGBA("text_normal"))
        end
    end

    if view == "home" then
        currentCategory = nil
        frame.HomeView:Show()
        -- Update guide count on home
        if frame.HomeView.CountText then
            local count = self:GetGuideCount()
            frame.HomeView.CountText:SetText(count .. " guides available")
        end

    elseif view == "category" then
        currentCategory = param
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        frame.HomeView:Hide()

        local cat = self:GetCategory(param)
        frame.SectionName:SetText(cat and cat.name or param)

        -- Get guides for this category
        local guides = self:GetGuidesForCategory(param)
        frame.GuideCount:SetText(#guides .. " guides")

        self:PopulateGuideList(guides)

    elseif view == "current" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        frame.HomeView:Hide()
        frame.SectionName:SetText("Current Guide")

        -- Show current guide if any
        local guides = {}
        if self.CurrentGuide then
            table.insert(guides, self.CurrentGuide)
        end
        frame.GuideCount:SetText(#guides .. " guides")
        self:PopulateGuideList(guides)

    elseif view == "recent" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.ListScroll:Show()
        frame.HomeView:Hide()
        frame.SectionName:SetText("Recent Guides")
        frame.GuideCount:SetText("0 guides")
        self:PopulateGuideList({})

    elseif view == "options" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.SectionName:SetText("Options")
        frame.GuideCount:SetText("")
        -- Show inline themed options panel (not an external AceConfigDialog)
        if frame.OptionsView then
            frame.OptionsView:Show()
        end

    elseif view == "about" then
        currentCategory = nil
        frame.SectionHeader:Show()
        frame.SectionName:SetText("About X-Plore")
        frame.GuideCount:SetText("")
        -- Create on first access
        if not frame.AboutView then
            local av = CreateFrame("Frame", nil, frame.CenterColumn)
            av:SetPoint("TOPLEFT", frame.CenterColumn, "TOPLEFT", 0, -37)
            av:SetPoint("BOTTOMRIGHT", frame.CenterColumn, "BOTTOMRIGHT", 0, 0)
            frame.AboutView = av

            local title = av:CreateFontString(nil, "OVERLAY")
            title:SetPoint("TOP", av, "TOP", 0, -30)
            XP:ApplyFont(title, "header", "cyan")
            title:SetText("X-PLORE")

            local ver = av:CreateFontString(nil, "OVERLAY")
            ver:SetPoint("TOP", title, "BOTTOM", 0, -8)
            XP:ApplyFont(ver, "normal", "text_muted")
            ver:SetText("Version " .. (XP.version or "1.0"))

            local desc = av:CreateFontString(nil, "OVERLAY")
            desc:SetPoint("TOP", ver, "BOTTOM", 0, -16)
            desc:SetPoint("LEFT", av, "LEFT", 24, 0)
            desc:SetPoint("RIGHT", av, "RIGHT", -24, 0)
            desc:SetJustifyH("CENTER")
            XP:ApplyFont(desc, "normal", "text_normal")
            desc:SetText("A guide viewer for World of Warcraft.\nSupports all WoW versions (Vanilla through Retail).\nCompatible with Zygor guide format.")

            local credit = av:CreateFontString(nil, "OVERLAY")
            credit:SetPoint("BOTTOM", av, "BOTTOM", 0, 24)
            XP:ApplyFont(credit, "small", "text_dim")
            credit:SetText("Powered by !X-Libs")
        end
        frame.AboutView:Show()
    end
end

-----------------------------------------------------------------------
-- Populate Guide List
-----------------------------------------------------------------------
function XP:PopulateGuideList(guides)
    local listChild = self.MenuFrame and self.MenuFrame.ListChild
    if not listChild then return end

    -- Hide all rows first
    for _, row in ipairs(guideRows) do
        row:Hide()
    end

    local yOffset = 0
    local rowHeight = 36

    for i, guide in ipairs(guides) do
        if i > MAX_GUIDE_ROWS then break end

        local row = guideRows[i]
        if not row then break end

        row:ClearAllPoints()
        row:SetPoint("TOPLEFT", listChild, "TOPLEFT", 0, -yOffset)
        row:SetPoint("TOPRIGHT", listChild, "TOPRIGHT", 0, -yOffset)

        -- Set icon
        local cat = self:GetCategory(guide.category)
        row.Icon:SetTexture(GetCategoryIconPath(cat))

        -- Set title
        row.Title:SetText(guide.title or guide.titleShort or "Untitled")

        -- Set subtitle
        local parts = {}
        if guide.faction then table.insert(parts, guide.faction) end
        if guide.expansion then table.insert(parts, guide.expansion) end
        row.Subtitle:SetText(table.concat(parts, " - "))

        -- Load button handler: route through Tabs system
        row.LoadBtn:SetScript("OnClick", function()
            XP.Tabs:LoadGuideToTab(guide.id)
            XP:Print("Loaded guide: " .. (guide.title or guide.id))
            if XP.MenuFrame then XP.MenuFrame:Hide() end
            if XP.ViewerFrame then XP.ViewerFrame:Show() end
        end)

        -- Row click = show detail panel on the right
        row:SetScript("OnClick", function()
            XP:ShowGuideDetail(guide.id)
        end)

        -- Highlight current guide
        if self.CurrentGuide and self.CurrentGuide.id == guide.id then
            self:ApplyFont(row.Title, "normal", "cyan")
            row.LoadBtn:GetFontString():SetText("Active")
        else
            self:ApplyFont(row.Title, "normal", "text_bright")
            row.LoadBtn:GetFontString():SetText("Load")
        end

        row:Show()
        yOffset = yOffset + rowHeight + 1
    end

    -- Update scroll child height
    listChild:SetHeight(math.max(yOffset, 1))
end

-----------------------------------------------------------------------
-- Search
-----------------------------------------------------------------------
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
end

-----------------------------------------------------------------------
-- Update Menu (refresh counts, etc.)
-----------------------------------------------------------------------
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
end
