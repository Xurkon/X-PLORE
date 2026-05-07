--[[
    Colors.lua
    Color editing panel: displays all theme colors as swatch + slider rows + hex input.
    Reads from ThemeContext's active theme values.
    Changes are debounced and propagate to the live mini-preview via XP.ThemeUI.ApplyChange.
]]
local XP = ...

XP.ThemeColors = {}

-- Convert {r,g,b,a} to "#RRGGBB" hex string
local function ColorToHex(color)
    local r = math.floor((color.r or 0) * 255 + 0.5)
    local g = math.floor((color.g or 0) * 255 + 0.5)
    local b = math.floor((color.b or 0) * 255 + 0.5)
    return string.format("%02X%02X%02X", r, g, b)
end

-- Parse "#RRGGBB" or "#RRGGBBAA" to {r,g,b,a}
local function HexToColor(hex)
    if not hex or #hex < 6 then return nil end
    local r = tonumber(hex:sub(1, 2), 16)
    local g = tonumber(hex:sub(3, 4), 16)
    local b = tonumber(hex:sub(5, 6), 16)
    local a = #hex >= 8 and tonumber(hex:sub(7, 8), 16) or 255
    if not r then return nil end
    return { r = r / 255, g = g / 255, b = b / 255, a = a / 255 }
end

function XP.ThemeColors.Render(parent, context, frame)
    local colors = context:GetColors()
    local y = -10

    for colorId, colorVal in pairs(colors) do
        y = y - 34
        XP.ThemeColors.AddColorRow(parent, colorId, colorVal, y, context)
    end

    return y
end

function XP.ThemeColors.AddColorRow(parent, colorId, colorVal, y, context)
    -- Color swatch (updates live)
    local swatch = CreateFrame("Frame", nil, parent)
    swatch:SetPoint("TOPLEFT", 10, y)
    swatch:SetSize(24, 24)
    swatch:SetBackdrop({
        bgFile   = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
        tile     = true, tileSize = 16, edgeSize = 1,
    })
    swatch:SetBackdropColor(colorVal.r or 1, colorVal.g or 1, colorVal.b or 1, colorVal.a or 1)
    swatch:SetBackdropBorderColor(0.3, 0.3, 0.5, 1.0)

    -- Label
    local lbl = swatch:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    lbl:SetPoint("LEFT", swatch, "RIGHT", 8, 0)
    lbl:SetText(colorId)
    lbl:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")

    -- Update swatch color immediately (UI feedback)
    local function UpdateSwatch()
        swatch:SetBackdropColor(colorVal.r, colorVal.g, colorVal.b, colorVal.a)
    end

    -- R slider
    XP.ThemeColors.AddSlider(parent, -230, y, "R", colorVal.r, function(val)
        colorVal.r = val
        UpdateSwatch()
        XP.ThemeUI.ApplyChange("colors." .. colorId, "colors")
    end)

    -- G slider
    XP.ThemeColors.AddSlider(parent, -130, y, "G", colorVal.g, function(val)
        colorVal.g = val
        UpdateSwatch()
        XP.ThemeUI.ApplyChange("colors." .. colorId, "colors")
    end)

    -- B slider
    XP.ThemeColors.AddSlider(parent, -30, y, "B", colorVal.b, function(val)
        colorVal.b = val
        UpdateSwatch()
        XP.ThemeUI.ApplyChange("colors." .. colorId, "colors")
    end)

    -- Hex input
    local hexEdit = CreateFrame("EditBox", nil, parent, "InputBoxTemplate")
    hexEdit:SetPoint("TOPLEFT", 460, y - 2)
    hexEdit:SetSize(60, 20)
    hexEdit:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    hexEdit:SetTextColor(0.7, 0.9, 1.0, 1.0)
    hexEdit:SetText("#" .. ColorToHex(colorVal))
    hexEdit:SetMaxLetters(8)
    hexEdit:SetCursorPosition(0)

    hexEdit:HookScript("OnEnterPressed", function(self)
        local text = self:GetText()
        -- Strip leading # if present
        text = text:gsub("^#", "")
        local c = HexToColor(text)
        if c then
            colorVal.r = c.r
            colorVal.g = c.g
            colorVal.b = c.b
            colorVal.a = c.a
            UpdateSwatch()
            XP.ThemeUI.ApplyChange("colors." .. colorId, "colors")
            self:ClearFocus()
        end
    end)

    hexEdit:HookScript("OnEscapePressed", function(self)
        self:SetText("#" .. ColorToHex(colorVal))
        self:ClearFocus()
    end)

    -- Tooltip on swatch hover showing hex
    local tooltipText = "#" .. ColorToHex(colorVal)
    swatch:SetScript("OnEnter", function()
        GameTooltip:SetOwner(swatch, "ANCHOR_RIGHT")
        GameTooltip:SetText(tooltipText, 1, 1, 1)
        GameTooltip:Show()
    end)
    swatch:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
end

function XP.ThemeColors.AddSlider(parent, xOff, y, label, value, onChange)
    local slider = CreateFrame("Slider", nil, parent, "OptionsSliderTemplate")
    slider:SetPoint("TOPLEFT", 200 + xOff, y)
    slider:SetSize(90, 16)
    slider:SetMinMaxValues(0, 1)
    slider:SetValue(value or 0)
    slider:SetValueStep(0.01)
    slider:SetObeyStepOnMouseDrag(true)

    local txt = slider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    txt:SetPoint("BOTTOM", slider, "TOP", 0, 2)
    txt:SetText(label)
    txt:SetFont("Fonts\\MORPHEUS.TTF", 9, "OUTLINE")

    slider:SetScript("OnValueChanged", function(self, val)
        val = math.floor(val * 255 + 0.5) / 255
        onChange(val)
    end)
end
