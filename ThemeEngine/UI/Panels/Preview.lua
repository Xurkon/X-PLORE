--[[
    Preview.lua
    Live preview panel: shows a mini step-card with the current theme applied in real-time.
    The mini-card is updated by XP.ThemeUI.RefreshLivePreview() on every debounced change.

    Mini-card structure (named for RefreshLivePreview targeting):
      scrollChild.miniPreview
        .bg         — backdrop fill texture
        .border     — backdrop border texture
        .titleBar   — header bar texture
        .titleTxt   — header fontstring
        .step1.bg   — first step highlight bg texture
        .step1.lbl  — first step fontstring
        .step2.lbl
        .step3.lbl
        .step4.lbl
        .step5.lbl
]]
local XP = ...

XP.ThemePreview = {}

function XP.ThemePreview.Render(parent, context, frame)
    local y = -10

    local desc = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    desc:SetPoint("TOPLEFT", 10, y)
    desc:SetText("Live preview — changes apply automatically")
    desc:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    desc:SetTextColor(0.5, 0.55, 0.7, 1.0)
    y = y - 22

    -- Mini step-card preview
    local mini = CreateFrame("Frame", "XPLORE_ThemePreview_Mini", parent)
    mini:SetPoint("TOPLEFT", 10, y)
    mini:SetSize(390, 240)
    mini:SetBackdrop({
        bgFile   = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
        tile     = true, tileSize = 16, edgeSize = 1,
        insets   = { left = 0, right = 0, top = 0, bottom = 0 },
    })
    parent.miniPreview = mini

    -- Backdrop fill
    local bg = mini:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    mini.bg = bg

    -- Backdrop border
    local border = mini:CreateTexture(nil, "BORDER")
    border:SetAllPoints()
    border:SetColorTexture(0.2, 0.2, 0.4, 1)
    border:SetBlendMode("BLEND")
    mini.border = border

    -- Header bar
    local titleBar = mini:CreateTexture(nil, "ARTWORK")
    titleBar:SetPoint("TOPLEFT", 1, -1)
    titleBar:SetPoint("TOPRIGHT", -1, 1)
    titleBar:SetHeight(30)
    titleBar:SetColorTexture(0.0, 0.6, 0.8, 0.9)
    mini.titleBar = titleBar

    -- Header text
    local titleTxt = mini:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    titleTxt:SetPoint("TOPLEFT", titleBar, "TOPLEFT", 10, -7)
    titleTxt:SetText("Sample Guide")
    titleTxt:SetFont("Fonts\\MORPHEUS.TTF", 13, "OUTLINE")
    titleTxt:SetTextColor(0.85, 0.9, 1.0, 1)
    mini.titleTxt = titleTxt

    -- Divider under header
    local divider = mini:CreateTexture(nil, "ARTWORK")
    divider:SetPoint("TOPLEFT", 1, -31)
    divider:SetPoint("TOPRIGHT", -1, -31)
    divider:SetHeight(1)
    divider:SetColorTexture(0.2, 0.2, 0.4, 0.8)

    -- Step rows
    local steps = {
        "Accept Quest from NPC",
        "Kill Target Enemy",
        "Collect 5 Herbs",
        "Return to NPC",
        "Complete!",
    }

    for i, stepText in ipairs(steps) do
        local rowY = -38 - (i - 1) * 30
        local row = CreateFrame("Frame", nil, mini)
        row:SetPoint("TOPLEFT", 4, rowY)
        row:SetPoint("TOPRIGHT", -4, rowY - 26)
        row:SetHeight(26)

        local rowBg
        if i == 1 then
            -- Active step highlight
            rowBg = row:CreateTexture(nil, "ARTWORK")
            rowBg:SetAllPoints()
            rowBg:SetColorTexture(0.0, 0.5, 0.8, 0.12)
            rowBg:SetBlendMode("BLEND")
        end

        local dot = row:CreateTexture(nil, "ARTWORK")
        dot:SetPoint("LEFT", 8, 0)
        dot:SetSize(6, 6)
        dot:SetColorTexture(0.0, 0.75, 1.0, 0.9)
        dot:SetBlendMode("ADD")

        local lbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        lbl:SetPoint("LEFT", dot, "RIGHT", 8, 0)
        lbl:SetPoint("RIGHT", -8, 0)
        lbl:SetJustifyH("LEFT")
        lbl:SetText(stepText)
        lbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")
        lbl:SetTextColor(0.85, 0.9, 1.0, 1)

        mini["step" .. i] = { lbl = lbl, bg = rowBg }
    end

    y = y - 255

    -- Apply to X-PLORE button
    local applyBtn = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    applyBtn:SetPoint("TOPLEFT", 10, y)
    applyBtn:SetSize(160, 26)
    applyBtn:SetText("Apply Theme to X-PLORE")
    applyBtn:SetScript("OnClick", function()
        XP.ThemeUI.ApplyChanges(frame, frame.themeEngine)
    end)

    y = y - 32

    return y
end
