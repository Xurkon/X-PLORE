--[[
    Export.lua
    Export/Import panel: generate share string, copy to clipboard, import from string.
    Uses Base64 for web-safe sharing; optional LibDeflate compression if available.
]]
local XP = ...

XP.ThemeExport = {}

function XP.ThemeExport.Render(parent, context, frame)
    local y = -10

    ------------------------------------------------
    -- Export section
    ------------------------------------------------
    local expHdr = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    expHdr:SetPoint("TOPLEFT", 10, y)
    expHdr:SetText("Export Theme")
    expHdr:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")
    y = y - 25

    local expDesc = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    expDesc:SetPoint("TOPLEFT", 10, y)
    expDesc:SetText("Generate a shareable code for your theme.")
    expDesc:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    expDesc:SetTextColor(0.5, 0.55, 0.7, 1.0)
    y = y - 25

    local exportEdit = CreateFrame("EditBox", nil, parent)
    exportEdit:SetPoint("TOPLEFT", 10, y)
    exportEdit:SetSize(380, 60)
    exportEdit:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    exportEdit:SetText("")
    exportEdit:SetTextInsets(4, 4, 4, 4)
    exportEdit:SetMultiLine(true)
    exportEdit:SetAutoFocus(false)
    exportEdit:EnableMouse(true)
    exportEdit:SetBackdrop({
        bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
        tile = true, tileSize = 16, edgeSize = 1,
    })
    exportEdit:SetBackdropColor(0.05, 0.05, 0.15, 0.9)
    exportEdit:SetBackdropBorderColor(0.2, 0.2, 0.4, 0.8)
    parent.exportEditBox = exportEdit

    local exportStatus = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    exportStatus:SetPoint("TOPLEFT", 10, y - 18)
    exportStatus:SetSize(300, 14)
    exportStatus:SetFont("Fonts\\MORPHEUS.TTF", 9, "OUTLINE")
    exportStatus:SetTextColor(0.3, 0.7, 0.4, 1.0)
    parent.exportStatus = exportStatus

    local exportBtn = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    exportBtn:SetPoint("TOPLEFT", 400, y + 15)
    exportBtn:SetSize(80, 24)
    exportBtn:SetText("Copy Code")
    exportBtn:SetScript("OnClick", function()
        local code = XP.ThemeExporter:Encode(context.theme)
        if code then
            exportEdit:SetText(code)
            exportEdit:HighlightText()
            exportEdit:SetFocus()
            exportStatus:SetText("Code generated — Ctrl+A then Ctrl+C to copy")
            exportStatus:SetTextColor(0.5, 0.65, 0.8, 1.0)
        else
            exportStatus:SetText("Nothing to export")
            exportStatus:SetTextColor(0.9, 0.3, 0.3, 1.0)
        end
    end)

    y = y - 100

    ------------------------------------------------
    -- Divider
    ------------------------------------------------
    local div = parent:CreateTexture(nil, "ARTWORK")
    div:SetPoint("TOPLEFT", 10, y)
    div:SetSize(400, 1)
    div:SetColorTexture(0.3, 0.3, 0.5, 0.8)
    y = y - 15

    ------------------------------------------------
    -- Import section
    ------------------------------------------------
    local impHdr = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    impHdr:SetPoint("TOPLEFT", 10, y)
    impHdr:SetText("Import Theme")
    impHdr:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")
    y = y - 25

    local impDesc = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    impDesc:SetPoint("TOPLEFT", 10, y)
    impDesc:SetText("Paste a theme code below and click Import.")
    impDesc:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    impDesc:SetTextColor(0.5, 0.55, 0.7, 1.0)
    y = y - 25

    local importEdit = CreateFrame("EditBox", nil, parent)
    importEdit:SetPoint("TOPLEFT", 10, y)
    importEdit:SetSize(380, 60)
    importEdit:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    importEdit:SetText("")
    importEdit:SetTextInsets(4, 4, 4, 4)
    importEdit:SetMultiLine(true)
    importEdit:SetAutoFocus(false)
    importEdit:EnableMouse(true)
    importEdit:SetBackdrop({
        bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
        tile = true, tileSize = 16, edgeSize = 1,
    })
    importEdit:SetBackdropColor(0.05, 0.05, 0.15, 0.9)
    importEdit:SetBackdropBorderColor(0.2, 0.2, 0.4, 0.8)
    parent.importEditBox = importEdit

    local importStatus = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    importStatus:SetPoint("TOPLEFT", 10, y - 18)
    importStatus:SetSize(300, 14)
    importStatus:SetFont("Fonts\\MORPHEUS.TTF", 9, "OUTLINE")
    parent.importStatus = importStatus

    local importBtn = CreateFrame("Button", nil, parent, "UIPanelButtonTemplate")
    importBtn:SetPoint("TOPLEFT", 400, y + 15)
    importBtn:SetSize(80, 24)
    importBtn:SetText("Import")
    importBtn:SetScript("OnClick", function()
        local code = importEdit:GetText()
        if code and code ~= "" then
            local uid, err = context:ImportTheme(code)
            if uid then
                importEdit:SetText("")
                importStatus:SetText("Theme imported successfully!")
                importStatus:SetTextColor(0.3, 0.9, 0.5, 1.0)
            else
                importStatus:SetText("Import failed: " .. (err or "unknown error"))
                importStatus:SetTextColor(0.9, 0.3, 0.3, 1.0)
            end
        else
            importStatus:SetText("Paste a theme code first")
            importStatus:SetTextColor(0.9, 0.7, 0.2, 1.0)
        end
    end)

    y = y - 65

    ------------------------------------------------
    -- Help text
    ------------------------------------------------
    local helpTxt = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    helpTxt:SetPoint("TOPLEFT", 10, y)
    helpTxt:SetSize(390, 40)
    helpTxt:SetText(
        "Tip: Share your theme by copying the code above and sending it to friends. " ..
        "They can import it using the Import section below."
    )
    helpTxt:SetFont("Fonts\\MORPHEUS.TTF", 9, "OUTLINE")
    helpTxt:SetTextColor(0.4, 0.45, 0.6, 1.0)
    helpTxt:SetJustifyH("LEFT")

    y = y - 45

    return y
end
