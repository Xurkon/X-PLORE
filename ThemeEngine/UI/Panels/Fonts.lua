--[[
    Fonts.lua
    Font editing panel: header / body / mono font pickers with size and flag controls.
]]
local XP = ...

XP.ThemeFonts = {}

function XP.ThemeFonts.Render(parent, context, frame)
    local fonts = context:GetFonts()
    local y = -10

    for fontId, fontVal in pairs(fonts) do
        y = XP.ThemeFonts.AddFontRow(parent, fontId, fontVal, y, context)
    end

    return y
end

function XP.ThemeFonts.AddFontRow(parent, fontId, fontVal, y, context)
    local row = CreateFrame("Frame", nil, parent)
    row:SetPoint("TOPLEFT", 10, y)
    row:SetSize(400, 60)

    local lbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    lbl:SetPoint("TOPLEFT")
    lbl:SetText(fontId)
    lbl:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")

    -- Font path dropdown (simplified — shows a dropdown of known WoW fonts)
    local pathLbl = row:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    pathLbl:SetPoint("TOPLEFT", 0, -18)
    pathLbl:SetText("Font: " .. (fontVal.path or "unknown"))
    pathLbl:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")

    -- Size slider
    local sizeSlider = CreateFrame("Slider", nil, row, "OptionsSliderTemplate")
    sizeSlider:SetPoint("TOPLEFT", 0, -36)
    sizeSlider:SetSize(120, 16)
    sizeSlider:SetMinMaxValues(8, 24)
    sizeSlider:SetValue(fontVal.size or 12)
    sizeSlider:SetValueStep(1)
    local sizeTxt = sizeSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    sizeTxt:SetPoint("BOTTOM", sizeSlider, "TOP", 0, 2)
    sizeTxt:SetText("Size: " .. (fontVal.size or 12))
    sizeSlider:SetScript("OnValueChanged", function(self, val)
        val = math.floor(val + 0.5)
        fontVal.size = val
        sizeTxt:SetText("Size: " .. val)
        XP.ThemeUI.ApplyChange("fonts." .. fontId, "fonts")
    end)

    -- Flags: OUTLINE checkbox
    local flags = fontVal.flags or ""
    local outlineCkb = CreateFrame("CheckButton", nil, row, "UICheckButtonTemplate")
    outlineCkb:SetPoint("TOPLEFT", 140, -36)
    outlineCkb:SetChecked(flags:find("OUTLINE") ~= nil)
    local outlineLbl = outlineCkb:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    outlineLbl:SetPoint("LEFT", outlineCkb, "RIGHT", 4, 0)
    outlineLbl:SetText("OUTLINE")
    outlineLbl:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    outlineCkb:SetScript("OnClick", function(self)
        if self:GetChecked() then
            fontVal.flags = "OUTLINE"
        else
            fontVal.flags = ""
        end
        XP.ThemeUI.ApplyChange("fonts." .. fontId, "fonts")
    end)

    return y - 65
end
