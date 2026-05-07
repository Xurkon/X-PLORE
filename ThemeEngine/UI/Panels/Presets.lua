--[[
    Presets.lua
    Preset panel: list of built-in presets + user themes.
    Clicking a preset previews it; Clone button duplicates to a user theme.
]]
local XP = ...

XP.ThemePresets = {}

function XP.ThemePresets.Render(parent, context)
    local y = -10

    local presets = XP.ThemeDefines:GetAllPresets()
    for i, preset in ipairs(presets) do
        y = XP.ThemePresets.AddPresetRow(parent, preset, y, context)
    end

    -- Divider
    local div = parent:CreateTexture(nil, "ARTWORK")
    div:SetPoint("TOPLEFT", 10, y - 5)
    div:SetSize(400, 1)
    div:SetColorTexture(0.3, 0.3, 0.5, 0.8)
    y = y - 15

    -- User themes header
    local hdr = parent:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    hdr:SetPoint("TOPLEFT", 10, y)
    hdr:SetText("My Themes")
    hdr:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")
    y = y - 25

    local themes = context.loader:GetAllThemes()
    for i, themeInfo in ipairs(themes) do
        y = XP.ThemePresets.AddThemeRow(parent, themeInfo, y, context)
    end

    return y
end

function XP.ThemePresets.AddPresetRow(parent, preset, y, context)
    local row = CreateFrame("Frame", nil, parent)
    row:SetPoint("TOPLEFT", 10, y)
    row:SetSize(400, 40)

    local nameLbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    nameLbl:SetPoint("TOPLEFT")
    nameLbl:SetText(preset.name)
    nameLbl:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")

    local descLbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    descLbl:SetPoint("TOPLEFT", 0, -16)
    descLbl:SetText(preset.desc or "")
    descLbl:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    descLbl:SetTextColor(0.5, 0.55, 0.7, 1.0)

    -- Apply button
    local applyBtn = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
    applyBtn:SetPoint("TOPRIGHT", -60, 0)
    applyBtn:SetSize(55, 22)
    applyBtn:SetText("Apply")
    applyBtn:SetScript("OnClick", function()
        context:ApplyPreset(preset.id)
    end)

    -- Clone button
    local cloneBtn = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
    cloneBtn:SetPoint("TOPRIGHT", -2, 0)
    cloneBtn:SetSize(55, 22)
    cloneBtn:SetText("Clone")
    cloneBtn:SetScript("OnClick", function()
        local uid = context:ClonePreset(preset.id)
        -- Refresh current tab so the new clone appears in My Themes
        XP.ThemeUI.SwitchTab(context.editorFrame, context.editorFrame.activeTab)
    end)

    return y - 45
end

function XP.ThemePresets.AddThemeRow(parent, themeInfo, y, context)
    local row = CreateFrame("Frame", nil, parent)
    row:SetPoint("TOPLEFT", 10, y)
    row:SetSize(400, 36)

    local nameLbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    nameLbl:SetPoint("TOPLEFT")
    nameLbl:SetText(themeInfo.name)
    nameLbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")

    local dateLbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    dateLbl:SetPoint("TOPLEFT", 0, -14)
    dateLbl:SetText(date("%Y-%m-%d", themeInfo.modified))
    dateLbl:SetFont("Fonts\\MORPHEUS.TTF", 9, "OUTLINE")
    dateLbl:SetTextColor(0.4, 0.45, 0.6, 1.0)

    local applyBtn = CreateFrame("Button", nil, row, "UIPanelButtonTemplate")
    applyBtn:SetPoint("TOPRIGHT", -2, 2)
    applyBtn:SetSize(50, 20)
    applyBtn:SetText("Apply")
    applyBtn:SetScript("OnClick", function()
        context:LoadTheme(themeInfo.uid)
    end)

    return y - 40
end

-- Get preset base values (from ThemeDefines schema defaults merged with preset overrides)
function XP.ThemePresets:GetPresetValues(presetId)
    local preset = XP.ThemeDefines:GetPreset(presetId)
    if not preset then return {} end
    -- For built-in presets, values live in the Style.lua; return empty dict
    -- User themes always have explicit values
    return {}
end
