-- GuideMenu-View.lua
-- View/renderer functions for GuideMenu
-- Extracted from GuideMenu.lua

XP.GuideMenuView = {}

------------------------------------------------------------
function XP.GuideMenuView.RenderHome(parent)
    -- Title
    local homeTitle = parent:CreateFontString(nil, "OVERLAY")
    homeTitle:SetPoint("TOP", parent, "TOP", 0, -40)
    XP:ApplyFont(homeTitle, "header", "cyan")
    homeTitle:SetText("Welcome to X-Plore")

    -- Subtitle
    local homeSub = parent:CreateFontString(nil, "OVERLAY")
    homeSub:SetPoint("TOP", homeTitle, "BOTTOM", 0, -8)
    XP:ApplyFont(homeSub, "normal", "text_muted")
    homeSub:SetText("Select a category from the sidebar to browse guides.")

    -- Guide count
    local countText = parent:CreateFontString(nil, "OVERLAY")
    countText:SetPoint("TOP", homeSub, "BOTTOM", 0, -20)
    XP:ApplyFont(countText, "normal", "text_normal")
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
        local cat = XP:GetCategory(catID)
        if cat then
            local card = XP.CreateBackdropFrame("Button", nil, quickStart)
            card:SetSize(cardWidth, cardHeight)
            card:SetPoint("TOPLEFT", quickStart, "TOPLEFT", cardX, -cardY)
            XP:ApplyBackdrop(card, "panel", "bg_light", "border")

            local cardIcon = card:CreateTexture(nil, "ARTWORK")
            cardIcon:SetSize(24, 24)
            cardIcon:SetPoint("TOPLEFT", card, "TOPLEFT", 12, -12)
            local cPath, l, r, t, b = GetCategoryIconPath(cat)
            cardIcon:SetTexture(cPath)
            cardIcon:SetTexCoord(l, r, t, b)

            local cardTitle = card:CreateFontString(nil, "OVERLAY")
            cardTitle:SetPoint("TOPLEFT", cardIcon, "RIGHT", 8, 0)
            XP:ApplyFont(cardTitle, "bold", "text_bright")
            cardTitle:SetText(cat.name)

            local cardDesc = card:CreateFontString(nil, "OVERLAY")
            cardDesc:SetPoint("TOPLEFT", cardTitle, "BOTTOMLEFT", 0, -4)
            cardDesc:SetPoint("RIGHT", card, "RIGHT", -10, 0)
            cardDesc:SetJustifyH("LEFT")
            XP:ApplyFont(cardDesc, "small", "text_muted")
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

------------------------------------------------------------
function XP.GuideMenuView.RenderFeatured(parent)
    -- Title
    local title = parent:CreateFontString(nil, "OVERLAY")
    title:SetPoint("TOP", parent, "TOP", 0, -30)
    XP:ApplyFont(title, "header", "cyan")
    title:SetText("Featured Guides")

    -- Description
    local desc = parent:CreateFontString(nil, "OVERLAY")
    desc:SetPoint("TOP", title, "BOTTOM", 0, -8)
    XP:ApplyFont(desc, "small", "text_muted")
    desc:SetText("Curated guides for your current expansion")
    desc:SetWordWrap(true)

    -- Featured datasets dropdown
    local dropdown = XP:CreateDropDown(parent, {
        width = 200,
        label = "Featured Set",
        items = {
            { value = "leveling", text = "Leveling Guides" },
            { value = "dungeons", text = "Dungeon Guides" },
            { value = "professions", text = "Profession Guides" },
        },
        selected = "leveling",
        onChange = function(value)
            -- Refresh featured content when dropdown changes
            XP.GuideMenuView.PopulateFeatured(parent, value)
        end,
    })
    dropdown:SetPoint("TOP", desc, "BOTTOM", 0, -20)
    parent.FeaturedDropdown = dropdown

    -- Featured content scroll area
    local scrollW = 340
    local scrollH = 400
    local contentScroll = CreateFrame("ScrollFrame", nil, parent)
    contentScroll:SetPoint("TOPLEFT", parent, "TOPLEFT", 20, -150)
    contentScroll:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -40, 20)
    parent.FeaturedScroll = contentScroll

    local scrollChild = CreateFrame("Frame", nil, contentScroll)
    scrollChild:SetWidth(scrollW - 20)
    scrollChild:SetHeight(1)
    contentScroll:SetScrollChild(scrollChild)
    parent.FeaturedScrollChild = scrollChild

    -- Populate with initial featured content
    XP.GuideMenuView.PopulateFeatured(parent, "leveling")
end

------------------------------------------------------------
function XP.GuideMenuView.PopulateFeatured(parent, dataset)
    local scrollChild = parent.FeaturedScrollChild
    if not scrollChild then return end

    -- Clear existing content
    for _, child in ipairs({ scrollChild:GetChildren() }) do
        child:Hide()
        child:SetParent(nil)
    end

    local yOffset = 0
    local cardWidth = scrollChild:GetWidth() - 20
    local cardHeight = 60

    -- Get featured guides based on dataset
    local featuredGuides = {}
    if dataset == "leveling" then
        local count = 0
        for _, guide in pairs(XP.Guides) do
            if guide.category == "LEVELING" and count < 5 then
                table.insert(featuredGuides, guide)
                count = count + 1
            end
        end
    elseif dataset == "dungeons" then
        local count = 0
        for _, guide in pairs(XP.Guides) do
            if guide.category == "DUNGEONS" and count < 5 then
                table.insert(featuredGuides, guide)
                count = count + 1
            end
        end
    elseif dataset == "professions" then
        local count = 0
        for _, guide in pairs(XP.Guides) do
            if guide.category == "PROFESSIONS" and count < 5 then
                table.insert(featuredGuides, guide)
                count = count + 1
            end
        end
    end

    -- Create guide cards
    for i, guide in ipairs(featuredGuides) do
        local card = XP.CreateBackdropFrame("Button", nil, scrollChild)
        card:SetSize(cardWidth, cardHeight)
        card:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, -yOffset)
        XP:ApplyBackdrop(card, "panel", "bg_medium", "border")

        -- Guide icon
        local icon = card:CreateTexture(nil, "ARTWORK")
        icon:SetSize(24, 24)
        icon:SetPoint("LEFT", card, "LEFT", 10, 0)
        local cat = XP:GetCategory(guide.category)
        if cat then
            local iconPath, l, r, t, b = GetCategoryIconPath(cat)
            icon:SetTexture(iconPath)
            icon:SetTexCoord(l, r, t, b)
        end

        -- Guide title
        local title = card:CreateFontString(nil, "OVERLAY")
        title:SetPoint("LEFT", icon, "RIGHT", 10, 0)
        title:SetPoint("RIGHT", card, "RIGHT", -10, 0)
        XP:ApplyFont(title, "bold", "text_bright")
        title:SetText(guide.titleShort or guide.title or "Untitled")
        title:SetJustifyH("LEFT")

        -- Guide info
        local info = card:CreateFontString(nil, "OVERLAY")
        info:SetPoint("LEFT", icon, "RIGHT", 10, 0)
        info:SetPoint("TOP", title, "BOTTOM", 0, 2)
        XP:ApplyFont(info, "small", "text_muted")
        local infoText = guide.category or ""
        if guide.minLevel or guide.maxLevel then
            infoText = infoText .. " | " .. (guide.minLevel or "?") .. "-" .. (guide.maxLevel or "?")
        end
        info:SetText(infoText)

        -- Click to load guide
        card:SetScript("OnClick", function()
            XP.Tabs:LoadGuideToTab(guide.id)
            XP:Print("Loaded guide: " .. (guide.title or guide.id))
            if XP.MenuFrame then XP.MenuFrame:Hide() end
            if XP.ViewerFrame then XP.ViewerFrame:Show() end
        end)
        card:SetScript("OnEnter", function()
            if card.SetBackdropBorderColor then
                card:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
            end
        end)
        card:SetScript("OnLeave", function()
            if card.SetBackdropBorderColor then
                card:SetBackdropBorderColor(XP:ColorRGBA("border"))
            end
        end)

        yOffset = yOffset + cardHeight + 10
    end

    -- If no guides found, show placeholder
    if #featuredGuides == 0 then
        local placeholder = scrollChild:CreateFontString(nil, "OVERLAY")
        placeholder:SetPoint("TOP", scrollChild, "TOP", 0, -yOffset)
        XP:ApplyFont(placeholder, "small", "text_dim")
        placeholder:SetText("No featured guides available for this category.")
        yOffset = yOffset + 30
    end

    -- Update scroll child height
    scrollChild:SetHeight(math.max(yOffset, 1))
end

------------------------------------------------------------
function XP.GuideMenuView.RenderDetailPanel(parent)
    -- Empty state (shown by default — no guide selected)
    local emptyMsg = parent:CreateFontString(nil, "OVERLAY")
    emptyMsg:SetPoint("CENTER", parent, "CENTER", 0, 30)
    emptyMsg:SetPoint("LEFT",   parent, "LEFT",  16, 0)
    emptyMsg:SetPoint("RIGHT",  parent, "RIGHT", -16, 0)
    emptyMsg:SetJustifyH("CENTER")
    XP:ApplyFont(emptyMsg, "small", "text_dim")
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
    local dsbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
    XP.SetTexColor(dsbTrack, dsbtc[1], dsbtc[2], dsbtc[3], dsbtc[4])
    local dsbThumb = detailScrollBar:CreateTexture(nil, "OVERLAY")
    dsbThumb:SetWidth(sbW - 2)
    local dsbTex = XP:SD("ScrollBarTexture")
    if dsbTex then dsbThumb:SetTexture(dsbTex) end
    local dsbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
    XP.SetTexColor(dsbThumb, dsbcc[1], dsbcc[2], dsbcc[3], dsbcc[4])
    detailScrollBar:SetThumbTexture(dsbThumb)
    detailScrollBar:Hide()
    parent.DetailScrollTrack = dsbTrack
    parent.DetailScrollThumb = dsbThumb
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
    XP:ApplyFont(titleFS, "bold", "text_bright")
    parent.DetailTitle = titleFS

    -- Sub-info row (level range + faction)
    local infoFS = child:CreateFontString(nil, "OVERLAY")
    infoFS:SetPoint("TOPLEFT", guideIcon, "BOTTOMLEFT", 0, -8)
    infoFS:SetPoint("TOPRIGHT", child, "TOPRIGHT", 0, 0)
    infoFS:SetJustifyH("LEFT")
    XP:ApplyFont(infoFS, "small", "cyan")
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
    XP:ApplyFont(descFS, "small", "text_muted")
    parent.DetailDesc = descFS

    -- Steps count
    local stepsFS = child:CreateFontString(nil, "OVERLAY")
    stepsFS:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -160)
    XP:ApplyFont(stepsFS, "small", "text_dim")
    parent.DetailSteps = stepsFS

    -- Expansion label
    local expFS = child:CreateFontString(nil, "OVERLAY")
    expFS:SetPoint("TOPLEFT", child, "TOPLEFT", 0, -180)
    XP:ApplyFont(expFS, "small", "text_dim")
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
    XP:ApplyFont(loadLbl, "bold", "cyan")
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

------------------------------------------------------------
function XP.GuideMenuView.PopulateGuideList(guides)
    local listChild = XP.MenuFrame and XP.MenuFrame.ListChild
    if not listChild then return end

    -- Hide all rows first
    for _, row in ipairs(guideRows) do
        row:Hide()
    end

    local yOffset = 0
    local rowHeight = 26
    local visibleCount = 0

    for i, guide in ipairs(guides) do
        -- Faction filter: skip guides that don't match
        if not XP:GuidePassesFactionFilter(guide) then
            -- Update guide count badge to reflect filtered count
            -- (counted below after loop)
        end

        -- Show the guide only if it passes faction filter
        local showGuide = XP:GuidePassesFactionFilter(guide)
        if not showGuide then
            -- Still iterate to keep row indices aligned, but hide the row
        end

        local row = guideRows[visibleCount + 1]
        if not row then break end

        if showGuide then
            row:ClearAllPoints()
            row:SetPoint("TOPLEFT", listChild, "TOPLEFT", 0, -yOffset)
            row:SetPoint("TOPRIGHT", listChild, "TOPRIGHT", 0, -yOffset)

            -- Set icon
            local cat = XP:GetCategory(guide.category)
            local iconPath, l, r, t, b = GetCategoryIconPath(cat)
            row.Icon:SetTexture(iconPath)
            row.Icon:SetTexCoord(l, r, t, b)
            row.Icon:SetVertexColor(1, 1, 1, 1)  -- reset any folder tint

            -- Mark as guide row (not a folder row)
            row.isFolder = false
            row.guide = guide

            -- Set title
            row.Title:SetText(guide.title or guide.titleShort or "Untitled")

            -- Faction badge
            local badge = row.FactionBadge
            if badge then
                local gf = (guide.faction or ""):upper()
                if gf == "ALLIANCE" then
                    badge:SetTexture("Interface\\Icons\\INV_BannerPVP_01")  -- Alliance banner icon
                    badge:SetVertexColor(0.2, 0.4, 1.0, 1.0)  -- blue tint
                    badge:Show()
                elseif gf == "HORDE" then
                    badge:SetTexture("Interface\\Icons\\INV_BannerPVP_02")  -- Horde banner icon
                    badge:SetVertexColor(0.9, 0.2, 0.2, 1.0)  -- red tint
                    badge:Show()
                else
                    badge:Hide()
                end
            end

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
            if XP.CurrentGuide and XP.CurrentGuide.id == guide.id then
                XP:ApplyFont(row.Title, "normal", "cyan")
                row.LoadBtn:GetFontString():SetText("Active")
            else
                XP:ApplyFont(row.Title, "normal", "text_bright")
                row.LoadBtn:GetFontString():SetText("Load")
            end

            -- Update favourite star icon
            if row.FavBtn then
                local isFav = guide:IsFavourite()
                local tex = row.FavBtn:GetNormalTexture()
                if tex then
                    tex:SetDesaturated(not isFav)
                end
            end

            row:Show()
            yOffset = yOffset + rowHeight + 1
            visibleCount = visibleCount + 1
        else
            row:Hide()
            row:ClearAllPoints()
            row.isFolder = false
            row.guide = nil
        end
    end

    -- Update scroll child height
    listChild:SetHeight(math.max(yOffset, 1))
end
