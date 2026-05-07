--[[
    Layout.lua
    Layout panel: scale, padding, alpha, rounded corners, glow, gradient toggles.
    Also includes texture/backdrop field editors.
]]
local XP = ...

XP.ThemeLayout = {}

function XP.ThemeLayout.Render(parent, context, frame)
    local layout = context:GetLayout()
    local y = -10

    -- Scale
    y = y - 30
    local scaleLbl = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    scaleLbl:SetPoint("TOPLEFT", 10, y)
    scaleLbl:SetText("Scale")
    scaleLbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")

    local scaleSlider = CreateFrame("Slider", nil, parent, "OptionsSliderTemplate")
    scaleSlider:SetPoint("TOPLEFT", 120, y)
    scaleSlider:SetSize(200, 16)
    scaleSlider:SetMinMaxValues(0.5, 1.5)
    scaleSlider:SetValue(layout.scale or 1.0)
    scaleSlider:SetValueStep(0.05)
    local scaleTxt = scaleSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    scaleTxt:SetPoint("BOTTOM", scaleSlider, "TOP", 0, 2)
    scaleTxt:SetText(tostring(layout.scale or 1.0))
    scaleSlider:SetScript("OnValueChanged", function(self, val)
        val = math.floor(val * 100 + 0.5) / 100
        layout.scale = val
        scaleTxt:SetText(tostring(val))
        XP.ThemeUI.ApplyChange("layout.scale", "layout")
    end)

    -- Alpha
    y = y - 30
    local alphaLbl = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    alphaLbl:SetPoint("TOPLEFT", 10, y)
    alphaLbl:SetText("Alpha")
    alphaLbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")

    local alphaSlider = CreateFrame("Slider", nil, parent, "OptionsSliderTemplate")
    alphaSlider:SetPoint("TOPLEFT", 120, y)
    alphaSlider:SetSize(200, 16)
    alphaSlider:SetMinMaxValues(0.3, 1.0)
    alphaSlider:SetValue(layout.alpha or 1.0)
    alphaSlider:SetValueStep(0.05)
    local alphaTxt = alphaSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    alphaTxt:SetPoint("BOTTOM", alphaSlider, "TOP", 0, 2)
    alphaTxt:SetText(tostring(layout.alpha or 1.0))
    alphaSlider:SetScript("OnValueChanged", function(self, val)
        val = math.floor(val * 100 + 0.5) / 100
        layout.alpha = val
        alphaTxt:SetText(tostring(val))
        XP.ThemeUI.ApplyChange("layout.alpha", "layout")
    end)

    -- Padding
    y = y - 30
    local padLbl = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    padLbl:SetPoint("TOPLEFT", 10, y)
    padLbl:SetText("Padding")
    padLbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")

    local padSlider = CreateFrame("Slider", nil, parent, "OptionsSliderTemplate")
    padSlider:SetPoint("TOPLEFT", 120, y)
    padSlider:SetSize(200, 16)
    padSlider:SetMinMaxValues(0, 16)
    padSlider:SetValue(layout.padding or 4)
    padSlider:SetValueStep(1)
    local padTxt = padSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    padTxt:SetPoint("BOTTOM", padSlider, "TOP", 0, 2)
    padTxt:SetText(tostring(layout.padding or 4))
    padSlider:SetScript("OnValueChanged", function(self, val)
        val = math.floor(val + 0.5)
        layout.padding = val
        padTxt:SetText(tostring(val))
        XP.ThemeUI.ApplyChange("layout.padding", "layout")
    end)

    -- Rounded corners
    y = y - 30
    local rndCkb = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    rndCkb:SetPoint("TOPLEFT", 10, y)
    rndCkb:SetChecked(layout.rounded ~= false)
    local rndLbl = rndCkb:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    rndLbl:SetPoint("LEFT", rndCkb, "RIGHT", 4, 0)
    rndLbl:SetText("Rounded Corners")
    rndLbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")
    rndCkb:SetScript("OnClick", function(self)
        layout.rounded = self:GetChecked() and true or false
        XP.ThemeUI.ApplyChange("layout.rounded", "layout")
    end)

    -- Glow
    y = y - 30
    local glowCkb = CreateFrame("CheckButton", nil, parent, "UICheckButtonTemplate")
    glowCkb:SetPoint("TOPLEFT", 10, y)
    local misc = context:GetMisc()
    glowCkb:SetChecked(misc.glow ~= false)
    local glowLbl = glowCkb:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    glowLbl:SetPoint("LEFT", glowCkb, "RIGHT", 4, 0)
    glowLbl:SetText("Border Glow")
    glowLbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")
    glowCkb:SetScript("OnClick", function(self)
        misc.glow = self:GetChecked() and true or false
        XP.ThemeUI.ApplyChange("misc.glow", "misc")
    end)

    -- Divider
    y = y - 25
    local div = parent:CreateTexture(nil, "ARTWORK")
    div:SetPoint("TOPLEFT", 10, y)
    div:SetSize(360, 1)
    div:SetColorTexture(0.3, 0.3, 0.5, 0.5)

    -- Section header: Textures
    y = y - 20
    local texHdr = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    texHdr:SetPoint("TOPLEFT", 10, y)
    texHdr:SetText("Textures")
    texHdr:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")
    texHdr:SetTextColor(0.7, 0.9, 1.0, 1.0)

    -- Backdrop bgFile picker
    y = y - 25
    local backdrops = context:GetBackdrops()
    y = XP.ThemeLayout.AddTextureRow(parent, "Backdrop BG", backdrops, "bgFile",
        "Background fill texture (white = solid color)", y, context)

    -- Backdrop edgeFile picker
    y = y - 25
    y = XP.ThemeLayout.AddTextureRow(parent, "Border Edge", backdrops, "edgeFile",
        "Border edge texture", y, context)

    return y - 20
end

--[[
    AddTextureRow(parent, label, tbl, key, tooltip, y, context)
    Creates a label + read-only path display + "Change" button that opens
    a file picker popout for texture asset paths.
]]
function XP.ThemeLayout.AddTextureRow(parent, label, tbl, key, tooltip, y, context)
    local row = CreateFrame("Frame", nil, parent)
    row:SetPoint("TOPLEFT", 10, y)
    row:SetSize(380, 24)

    local lbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    lbl:SetPoint("LEFT")
    lbl:SetText(label)
    lbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")

    local val = tbl and tbl[key]
    local valLbl = row:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    valLbl:SetPoint("LEFT", lbl, "RIGHT", 8, 0)
    valLbl:SetSize(200, 14)
    valLbl:SetJustifyH("LEFT")
    valLbl:SetText(val or "(default)")
    valLbl:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")

    -- Tooltip on hover
    if tooltip then
        row:SetScript("OnEnter", function(self)
            GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
            GameTooltip:SetText(tooltip, 1, 0.9, 0.7, true)
            GameTooltip:Show()
        end)
        row:SetScript("OnLeave", function()
            GameTooltip:Hide()
        end)
    end

    local changeBtn = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
    changeBtn:SetPoint("RIGHT", 0, 0)
    changeBtn:SetSize(70, 22)
    changeBtn:SetText("Change")
    changeBtn:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    changeBtn:SetNormalFontObject(GameFontNormalSmall)
    changeBtn:SetScript("OnClick", function()
        XP.ThemeLayout.OpenTexturePickerPopout(changeBtn, tbl, key, function(newPath)
            tbl[key] = newPath
            valLbl:SetText(newPath or "(default)")
            XP.ThemeUI.ApplyChange("backdrops." .. key, "backdrops")
        end)
    end)

    local resetBtn = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
    resetBtn:SetPoint("RIGHT", changeBtn, "LEFT", -4, 0)
    resetBtn:SetSize(40, 22)
    resetBtn:SetText("Reset")
    resetBtn:SetFont("Fonts\\MORPHEUS.TTF", 9, "OUTLINE")
    resetBtn:SetNormalFontObject(GameFontNormalSmall)
    resetBtn:SetScript("OnClick", function()
        tbl[key] = nil
        valLbl:SetText("(default)")
        XP.ThemeUI.ApplyChange("backdrops." .. key, "backdrops")
    end)

    return y - 24
end

--
-- OpenTexturePickerPopout(anchorFrame, tbl, key, onChange)
-- A simple popout listing common WoW texture paths with a search filter.
-- Clicking an item sets tbl[key] = path and calls onChange(path).
function XP.ThemeLayout.OpenTexturePickerPopout(anchorFrame, tbl, key, onChange)
    if XP._texturePickerPopout then
        XP._texturePickerPopout:Hide()
        XP._texturePickerPopout = nil
    end

    local ITEM_HEIGHT = 26
    local LIST_HEIGHT = 8 * ITEM_HEIGHT
    local SEARCH_HEIGHT = 26

    local popout = CreateFrame("Frame", nil, UIParent)
    popout:SetSize(300, SEARCH_HEIGHT + LIST_HEIGHT + 16)
    popout:SetFrameStrata("FULLSCREEN_DIALOG")
    popout:SetFrameLevel(500)
    popout:SetBackdrop({
        bgFile   = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile     = true,
        tileSize = 16,
        edgeSize = 12,
        insets   = { left = 4, right = 4, top = 4, bottom = 4 },
    })
    popout:SetBackdropColor(0.08, 0.08, 0.18, 0.97)
    popout:SetPoint("LEFT", anchorFrame, "RIGHT", 10, 0)

    local title = popout:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    title:SetPoint("TOP", popout, "TOP", 0, -6)
    title:SetText("Select Texture")
    title:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")
    title:SetTextColor(0.9, 0.95, 1.0, 1.0)

    local search = CreateFrame("EditBox", nil, popout, "InputBoxTemplate")
    search:SetPoint("TOPLEFT", popout, "TOPLEFT", 12, -22)
    search:SetSize(276, 20)
    search:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    search:SetTextColor(0.7, 0.9, 1.0, 1.0)
    search:SetMaxLetters(60)
    search:SetTextInsets(4, 4, 0, 0)

    local searchLbl = popout:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
    searchLbl:SetPoint("BOTTOMLEFT", search, "TOPLEFT", 2, 1)
    searchLbl:SetText("Search")
    searchLbl:SetFont("Fonts\\MORPHEUS.TTF", 8, "OUTLINE")

    search:SetScript("OnEnterPressed", function(self) self:ClearFocus() end)
    search:SetScript("OnEscapePressed", function(self) self:ClearFocus() end)

    local scrollFrame = CreateFrame("ScrollFrame", nil, popout, "UIPanelScrollFrameTemplate")
    scrollFrame:SetPoint("TOPLEFT", search, "BOTTOMLEFT", 4, -6)
    scrollFrame:SetSize(276, LIST_HEIGHT)

    local scrollChild = CreateFrame("Frame", nil, scrollFrame)
    scrollChild:SetSize(276, LIST_HEIGHT)
    scrollFrame.scrollChild = scrollChild
    scrollFrame:UpdateScrollChildRect()

    local scrollTex = scrollFrame:CreateTexture(nil, "ARTWORK")
    scrollTex:SetAllPoints()
    scrollTex:SetColorTexture(0, 0, 0, 0)

    local itemButtons = {}

    -- Fetch all LibSharedMedia-3.0 registered backgrounds for the popout.
    -- This includes WoW default textures AND all mMT textures automatically.
    local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)
    local lsmBackgrounds = {}
    if LSM then
        local bgList = LSM:List(LSM.MediaType.BACKGROUND) or {}
        for i = 1, #bgList do
            local key = bgList[i]
            lsmBackgrounds[#lsmBackgrounds + 1] = {
                id = LSM:Fetch(LSM.MediaType.BACKGROUND, key) or key,
                key = key,
                label = key,
            }
        end
    end

    -- Common WoW UI texture paths (fallback / always shown first)
    local commonTextures = {
        { id = "",                    label = "(default / none)" },
        { id = "Interface\\ChatFrame\\ChatFrameBackground", label = "ChatFrame Background" },
        { id = "Interface\\DialogFrame\\UI-DialogBox-Border", label = "Dialog Box Border" },
        { id = "Interface\\DialogFrame\\UI-DialogBox-Background", label = "Dialog Box Background" },
        { id = "Interface\\Tooltips\\UI-Tooltip-Background", label = "Tooltip Background" },
        { id = "Interface\\Tooltips\\UI-Tooltip-Border", label = "Tooltip Border" },
        { id = "Interface\\Buttons\\UI-Panel-Button-Background", label = "Panel Button BG" },
        { id = "Interface\\Buttons\\UI-Panel-Button-Border", label = "Panel Button Border" },
        { id = "Interface\\Common\\UI-Frame", label = "Common UI Frame" },
        { id = "Interface\\Common\\UI-Dialog-Active", label = "Common Dialog Active" },
        { id = "Interface\\PaperDollInfoFrame\\UI-Character-ExpBar", label = "Exp Bar Fill" },
        { id = "Interface\\PaperDollInfoFrame\\UI-Character-ReputationBar", label = "Rep Bar Fill" },
        { id = "Interface\\AuctionHouseUI\\AuctionHouse-Browse-FilterBackground", label = "Auction Browse BG" },
        { id = "Interface\\AuctionHouseUI\\AuctionHouse-Bid-FilterBackground", label = "Auction Bid BG" },
        { id = "WHITE_TEX", label = "Solid White (fills with color)" },
    }

    local RefreshList do
        local RefreshList = function()
            local filter = search:GetText():lower()
            local count = 0
            local yOff = 0

            for _, btn in ipairs(itemButtons) do
                btn:Hide()
            end

            -- Helper to add a texture entry
            local function considerEntry(texInfo)
                if filter == "" or texInfo.label:lower():find(filter, 1, true)
                    or texInfo.id:lower():find(filter, 1, true)
                    or (texInfo.key and texInfo.key:lower():find(filter, 1, true)) then
                    count = count + 1

                    local btn = itemButtons[count]
                    if not btn then
                        btn = CreateFrame("Button", nil, scrollChild)
                        btn:SetSize(260, ITEM_HEIGHT - 2)

                        btn.text = btn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
                        btn.text:SetPoint("LEFT", 8, 0)
                        btn.text:SetJustifyH("LEFT")
                        btn.text:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")

                        btn.path = btn:CreateFontString(nil, "ARTWORK", "GameFontHighlightSmall")
                        btn.path:SetPoint("RIGHT", -8, 0)
                        btn.path:SetJustifyH("RIGHT")
                        btn.path:SetFont("Fonts\\MORPHEUS.TTF", 8, "OUTLINE")
                        btn.path:SetTextColor(0.5, 0.6, 0.8, 0.8)

                        itemButtons[count] = btn
                    end

                    btn:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, -yOff)
                    btn.text:SetText(texInfo.label)
                    btn.path:SetText(texInfo.id)
                    btn:Show()

                    yOff = yOff + ITEM_HEIGHT
                end
            end

            -- Common textures first
            for _, texInfo in ipairs(commonTextures) do
                considerEntry(texInfo)
            end

            -- Then LSM-registered backgrounds (skip duplicates by id)
            local seen = {}
            for _, texInfo in ipairs(commonTextures) do
                seen[texInfo.id] = true
            end
            for _, texInfo in ipairs(lsmBackgrounds) do
                if not seen[texInfo.id] then
                    seen[texInfo.id] = true
                    considerEntry(texInfo)
                end
            end

            scrollChild:SetHeight(math.max(yOff, LIST_HEIGHT))
            scrollFrame:UpdateScrollChildRect()
        end
        -- expose for OnTextChanged
        search:SetScript("OnTextChanged", function()
            RefreshList()
        end)
        -- initial fill
        RefreshList()
    end

    scrollFrame:EnableMouse(true)
    scrollFrame:RegisterForClicks("LeftButtonUp", "RightButtonUp")

    scrollFrame:SetScript("OnClick", function(self, button)
        local mx, my = GetCursorPosition()
        local scale = self:GetEffectiveScale()
        local sx, sy = self:GetCenter()
        sx, sy = sx * scale, sy * scale

        for _, btn in ipairs(itemButtons) do
            if btn:IsShown() then
                local bs = btn:GetEffectiveScale()
                local bx, by = btn:GetCenter()
                bx, by = bx * bs, by * bs
                local bleft = bx - 130 * bs
                local bright = bx + 130 * bs
                local btop = by + (ITEM_HEIGHT / 2 - 1) * bs
                local bbottom = by - (ITEM_HEIGHT / 2 - 1) * bs

                if mx >= bleft and mx <= bright and my <= btop and my >= bbottom then
                    local idx = ((bx - 0) / (2 * 130)) -- not used
                    local idx2 = 0
                    for j, b in ipairs(itemButtons) do
                        if b == btn then idx2 = j; break end
                    end
                    local texInfo = XP.ThemeLayout.CommonTextures[idx2]
                    if texInfo then
                        onChange(texInfo.id == "" and nil or texInfo.id)
                        popout:Hide()
                        XP._texturePickerPopout = nil
                    end
                    break
                end
            end
        end
    end)

    popout:SetScript("OnHide", function()
        if XP._texturePickerPopout == popout then
            XP._texturePickerPopout = nil
        end
    end)

    popout:EnableMouse(true)
    popout:RegisterForClicks("AnyUp")

    XP._texturePickerPopout = popout
    popout:Show()
end
