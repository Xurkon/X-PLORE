--[[
    Layout.lua
    Layout panel: scale, padding, alpha, rounded corners, glow, gradient toggles.
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

    return y - 30
end
