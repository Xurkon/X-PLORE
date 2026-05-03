-----------------------------------------------------------------------
-- X-Plore: UiWidgets.lua
-- Skinned UI widget factory helpers.
-- All widgets are programmatic Lua, using the active X-Plore skin.
-- Compatible with WotLK 3.3.5a and Retail.
--
-- Public API (all methods on XP):
--   XP:CreateButton(parent, options)       → Button frame
--   XP:CreateToggle(parent, options)       → CheckButton frame
--   XP:CreateDropDown(parent, options)     → Dropdown frame
--   XP:CreateSlider(parent, options)       → Slider frame
--   XP:CreateProgressBar(parent, options)  → StatusBar frame
--   XP:CreateSectionHeader(parent, text)   → FontString label
--   XP:CreateTextInput(parent, options)    → EditBox frame
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Button
-- options = {
--   width, height, text, onClick, icon, iconSize,
--   normalColor, highlightColor, disabledColor
-- }
-----------------------------------------------------------------------
function XP:CreateButton(parent, options)
    options = options or {}
    local w = options.width  or 120
    local h = options.height or 24

    local btn = XP.CreateBackdropFrame("Button", options.name, parent)
    btn:SetSize(w, h)

    XP:ApplyBackdrop(btn, "panel", "bg_medium", "border")

    -- Optional icon on the left
    if options.icon then
        local iconSize = options.iconSize or 16
        local icon = btn:CreateTexture(nil, "ARTWORK")
        icon:SetSize(iconSize, iconSize)
        icon:SetPoint("LEFT", btn, "LEFT", 5, 0)
        icon:SetTexture(options.icon)
        btn.Icon = icon
    end

    -- Label
    local label = btn:CreateFontString(nil, "OVERLAY")
    label:SetPoint("CENTER", btn, "CENTER", 0, 0)
    XP:ApplyFont(label, "small", options.normalColor or "text_bright")
    if options.text then label:SetText(options.text) end
    btn.Label = label

    -- Hover / press states
    local normalBorder  = options.borderColor or "border"
    local highlightBorder = "border_bright"

    btn:SetScript("OnEnter", function(self_btn)
        if self_btn.SetBackdropBorderColor then
            self_btn:SetBackdropBorderColor(XP:ColorRGBA(highlightBorder))
        end
        label:SetTextColor(XP:ColorRGBA(options.highlightColor or "cyan_light"))
    end)
    btn:SetScript("OnLeave", function(self_btn)
        if self_btn.SetBackdropBorderColor then
            self_btn:SetBackdropBorderColor(XP:ColorRGBA(normalBorder))
        end
        label:SetTextColor(XP:ColorRGBA(options.normalColor or "text_bright"))
    end)

    btn:SetScript("OnMouseDown", function(self_btn)
        if self_btn.SetBackdropColor then
            self_btn:SetBackdropColor(XP:ColorRGBA("bg_deep"))
        end
    end)
    btn:SetScript("OnMouseUp", function(self_btn)
        if self_btn.SetBackdropColor then
            self_btn:SetBackdropColor(XP:ColorRGBA("bg_medium"))
        end
    end)

    if options.onClick then
        btn:SetScript("OnClick", options.onClick)
    end

    -- Public helpers
    function btn:SetLabel(text) label:SetText(text or "") end
    function btn:Disable()
        btn:EnableMouse(false)
        label:SetTextColor(XP:ColorRGBA(options.disabledColor or "text_dim"))
    end
    function btn:Enable()
        btn:EnableMouse(true)
        label:SetTextColor(XP:ColorRGBA(options.normalColor or "text_bright"))
    end

    return btn
end

-----------------------------------------------------------------------
-- Toggle (CheckButton)
-- options = {
--   width, height, label, checked, onChange
-- }
-----------------------------------------------------------------------
function XP:CreateToggle(parent, options)
    options = options or {}
    local h = options.height or 22

    local row = CreateFrame("Frame", options.name, parent)
    row:SetHeight(h)
    row:SetWidth(options.width or 200)

    -- Check box
    local chk = CreateFrame("CheckButton", nil, row)
    chk:SetSize(h, h)
    chk:SetPoint("LEFT", row, "LEFT", 0, 0)

    -- Use WoW's built-in check textures (works on all versions)
    chk:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up")
    chk:SetPushedTexture("Interface\\Buttons\\UI-CheckBox-Down")
    chk:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight", "ADD")
    chk:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")

    if options.checked then chk:SetChecked(true) end

    -- Tint the checkbox to skin accent color
    local nt = chk:GetNormalTexture()
    if nt then nt:SetVertexColor(XP:ColorRGBA("cyan_dark")) end
    local ct = chk:GetCheckedTexture()
    if ct then ct:SetVertexColor(XP:ColorRGBA("cyan")) end

    -- Label text to the right of the box
    local label = row:CreateFontString(nil, "OVERLAY")
    label:SetPoint("LEFT", chk, "RIGHT", 6, 0)
    label:SetPoint("RIGHT", row, "RIGHT", 0, 0)
    label:SetJustifyH("LEFT")
    XP:ApplyFont(label, "small", "text_normal")
    if options.label then label:SetText(options.label) end
    row.Label = label

    -- Clicking the label also toggles
    row:EnableMouse(true)
    row:SetScript("OnMouseUp", function()
        chk:SetChecked(not chk:GetChecked())
        if options.onChange then options.onChange(chk:GetChecked()) end
    end)
    chk:SetScript("OnClick", function()
        if options.onChange then options.onChange(chk:GetChecked()) end
    end)

    row.CheckButton = chk

    function row:GetValue() return chk:GetChecked() and true or false end
    function row:SetValue(v) chk:SetChecked(v and true or false) end

    return row
end

-----------------------------------------------------------------------
-- DropDown
-- options = {
--   width, height, label, items, selected, onChange
-- }
-- items = array of { value, text } tables
-----------------------------------------------------------------------
function XP:CreateDropDown(parent, options)
    options = options or {}
    local w = options.width  or 180
    local h = options.height or 24

    local container = CreateFrame("Frame", options.name, parent)
    container:SetSize(w, h)

    -- Label above (optional)
    local headerLabel
    if options.label then
        headerLabel = container:CreateFontString(nil, "OVERLAY")
        headerLabel:SetPoint("BOTTOMLEFT", container, "TOPLEFT", 0, 2)
        XP:ApplyFont(headerLabel, "small", "text_muted")
        headerLabel:SetText(options.label)
        container.HeaderLabel = headerLabel
    end

    -- Main button showing current selection
    local mainBtn = XP.CreateBackdropFrame("Button", nil, container)
    mainBtn:SetAllPoints()
    XP:ApplyBackdrop(mainBtn, "panel", "bg_medium", "border")

    local selectedText = mainBtn:CreateFontString(nil, "OVERLAY")
    selectedText:SetPoint("LEFT", mainBtn, "LEFT", 8, 0)
    selectedText:SetPoint("RIGHT", mainBtn, "RIGHT", -20, 0)
    selectedText:SetJustifyH("LEFT")
    XP:ApplyFont(selectedText, "small", "text_bright")

    -- Arrow indicator
    local arrow = mainBtn:CreateTexture(nil, "OVERLAY")
    arrow:SetSize(12, 12)
    arrow:SetPoint("RIGHT", mainBtn, "RIGHT", -5, 0)
    arrow:SetTexture("Interface\\ChatFrame\\ChatFrameExpandArrow")
    XP.SetTexColor(arrow, XP:ColorRGBA("border_bright"))

    container.SelectedText = selectedText
    container.MainButton    = mainBtn

    -- Track items and current selection
    local items   = options.items or {}
    local current = options.selected

    local function SetSelected(value, text)
        current = value
        selectedText:SetText(text or value or "")
        if options.onChange then options.onChange(value) end
    end

    if current then
        for _, item in ipairs(items) do
            if item.value == current then
                selectedText:SetText(item.text or item.value or "")
                break
            end
        end
    end

    -- Popup frame (shown on click)
    local popup = CreateFrame("Frame", nil, UIParent)
    popup:SetFrameStrata("TOOLTIP")
    popup:SetWidth(w)
    popup:Hide()
    XP:ApplyBackdrop(popup, "panel", "bg_deep", "border_bright")
    container.Popup = popup

    -- Populate popup items
    local function BuildPopup()
        -- Remove old buttons
        for _, child in ipairs({ popup:GetChildren() }) do
            child:Hide()
            child:SetParent(nil)
        end

        local rowH = 20
        local totalH = 0
        for i, item in ipairs(items) do
            local row = CreateFrame("Button", nil, popup)
            row:SetHeight(rowH)
            row:SetPoint("TOPLEFT",  popup, "TOPLEFT",  1, -totalH - 1)
            row:SetPoint("TOPRIGHT", popup, "TOPRIGHT", -1, -totalH - 1)

            local rowText = row:CreateFontString(nil, "OVERLAY")
            rowText:SetPoint("LEFT", row, "LEFT", 8, 0)
            XP:ApplyFont(rowText, "small",
                (item.value == current) and "cyan" or "text_normal")
            rowText:SetText(item.text or item.value or "")
            row.Label = rowText

            row:SetScript("OnEnter", function()
                rowText:SetTextColor(XP:ColorRGBA("cyan_light"))
            end)
            row:SetScript("OnLeave", function()
                rowText:SetTextColor(XP:ColorRGBA(
                    (item.value == current) and "cyan" or "text_normal"))
            end)
            row:SetScript("OnClick", function()
                SetSelected(item.value, item.text)
                popup:Hide()
                BuildPopup()  -- refresh check marks
            end)
            totalH = totalH + rowH
        end
        popup:SetHeight(totalH + 2)
    end

    mainBtn:SetScript("OnClick", function()
        if popup:IsShown() then
            popup:Hide()
        else
            BuildPopup()
            popup:ClearAllPoints()
            popup:SetPoint("TOPLEFT", container, "BOTTOMLEFT", 0, -2)
            popup:Show()
        end
    end)

    -- Close popup when clicking away
    popup:SetScript("OnHide", function() end)

    -- Public API
    function container:SetItems(newItems)
        items = newItems
        current = nil
        selectedText:SetText("")
    end
    function container:GetValue()  return current end
    function container:SetValue(v)
        for _, item in ipairs(items) do
            if item.value == v then
                SetSelected(v, item.text)
                return
            end
        end
    end

    return container
end

-----------------------------------------------------------------------
-- Slider
-- options = {
--   width, height, label, min, max, step, value, onChange,
--   showValue, valueFormat (format string, default "%d")
-- }
-----------------------------------------------------------------------
function XP:CreateSlider(parent, options)
    options = options or {}
    local w = options.width  or 200
    local h = options.height or 16

    local container = CreateFrame("Frame", options.name, parent)
    container:SetWidth(w)
    -- total height = optional label (14px) + slider (h) + optional value (14px)
    local totalH = h
    if options.label     then totalH = totalH + 14 end
    if options.showValue then totalH = totalH + 14 end
    container:SetHeight(totalH)

    local yOff = 0

    -- Optional label above
    if options.label then
        local lbl = container:CreateFontString(nil, "OVERLAY")
        lbl:SetPoint("TOPLEFT", container, "TOPLEFT", 0, 0)
        XP:ApplyFont(lbl, "small", "text_muted")
        lbl:SetText(options.label)
        container.HeaderLabel = lbl
        yOff = -14
    end

    -- Slider
    local slider = CreateFrame("Slider", nil, container)
    slider:SetWidth(w)
    slider:SetHeight(h)
    slider:SetPoint("TOPLEFT", container, "TOPLEFT", 0, yOff)
    slider:SetOrientation("HORIZONTAL")
    slider:SetMinMaxValues(options.min or 0, options.max or 100)
    slider:SetValueStep(options.step or 1)
    slider:SetObeyStepOnDrag(true)

    -- Track texture
    local track = slider:CreateTexture(nil, "BACKGROUND")
    track:SetHeight(4)
    track:SetPoint("LEFT",  slider, "LEFT",  0,  0)
    track:SetPoint("RIGHT", slider, "RIGHT", 0,  0)
    track:SetPoint("TOP",   slider, "CENTER", 0, 2)
    XP.SetTexColor(track, XP:ColorRGBA("bg_light"))

    -- Filled portion (left of thumb) — track overlay approximation
    local fill = slider:CreateTexture(nil, "ARTWORK")
    fill:SetHeight(4)
    XP.SetTexColor(fill, XP:ColorRGBA("cyan_dark"))

    -- Thumb
    local thumb = slider:CreateTexture(nil, "OVERLAY")
    thumb:SetSize(12, 20)
    XP.SetTexColor(thumb, XP:ColorRGBA("cyan"))
    slider:SetThumbTexture(thumb)

    if options.value then
        slider:SetValue(options.value)
    end
    container.Slider = slider

    -- Optional value display below
    local valueText
    if options.showValue then
        valueText = container:CreateFontString(nil, "OVERLAY")
        local fmt = options.valueFormat or "%d"
        valueText:SetPoint("TOPLEFT", slider, "BOTTOMLEFT", 0, -2)
        XP:ApplyFont(valueText, "small", "cyan")
        local v = options.value or (options.min or 0)
        valueText:SetText(string.format(fmt, v))
        container.ValueText = valueText
    end

    slider:SetScript("OnValueChanged", function(self_sl, val)
        if valueText then
            local fmt = options.valueFormat or "%d"
            valueText:SetText(string.format(fmt, val))
        end
        -- Update fill texture width (proportional)
        local lo, hi = self_sl:GetMinMaxValues()
        if hi > lo then
            local pct = (val - lo) / (hi - lo)
            fill:SetWidth(math.max(1, self_sl:GetWidth() * pct))
            fill:SetPoint("LEFT", slider, "LEFT", 0, 0)
        end
        if options.onChange then options.onChange(val) end
    end)

    function container:GetValue() return slider:GetValue() end
    function container:SetValue(v) slider:SetValue(v) end

    return container
end

-----------------------------------------------------------------------
-- ProgressBar
-- options = {
--   width, height, min, max, value,
--   fillColor, bgColor, showText, textFormat
-- }
-----------------------------------------------------------------------
function XP:CreateProgressBar(parent, options)
    options = options or {}
    local w = options.width  or 200
    local h = options.height or 12

    local bar = CreateFrame("StatusBar", options.name, parent)
    bar:SetSize(w, h)
    bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    bar:SetStatusBarColor(XP:ColorRGBA(options.fillColor or "cyan"))
    bar:SetMinMaxValues(options.min or 0, options.max or 100)
    bar:SetValue(options.value or 0)

    -- Background
    local bg = bar:CreateTexture(nil, "BACKGROUND")
    bg:SetAllPoints()
    XP.SetTexColor(bg, XP:ColorRGBA(options.bgColor or "bg_deep"))

    bar.BG = bg

    -- Optional text overlay
    if options.showText then
        local txt = bar:CreateFontString(nil, "OVERLAY")
        txt:SetAllPoints()
        txt:SetJustifyH("CENTER")
        XP:ApplyFont(txt, "small", "text_bright")
        bar.Label = txt

        bar:SetScript("OnValueChanged", function(self_bar, val)
            local lo, hi = self_bar:GetMinMaxValues()
            if options.textFormat then
                txt:SetText(string.format(options.textFormat, val, hi))
            else
                local pct = hi > lo and math.floor((val - lo) / (hi - lo) * 100) or 0
                txt:SetText(pct .. "%")
            end
        end)
    end

    -- Public API
    function bar:SetFillColor(colorName)
        bar:SetStatusBarColor(XP:ColorRGBA(colorName))
    end
    function bar:SetProgress(val)
        bar:SetValue(val)
    end

    return bar
end

-----------------------------------------------------------------------
-- SectionHeader
-- Simple styled section label (used in options panels etc.)
-----------------------------------------------------------------------
function XP:CreateSectionHeader(parent, text, yOffset)
    local container = CreateFrame("Frame", nil, parent)
    container:SetHeight(20)

    -- Left divider line
    local lineL = container:CreateTexture(nil, "ARTWORK")
    lineL:SetHeight(1)
    lineL:SetPoint("LEFT", container, "LEFT", 0, 0)
    lineL:SetWidth(10)
    XP.SetTexColor(lineL, XP:ColorRGBA("border"))

    -- Label
    local lbl = container:CreateFontString(nil, "OVERLAY")
    lbl:SetPoint("LEFT", lineL, "RIGHT", 6, 0)
    XP:ApplyFont(lbl, "bold", "cyan_dark")
    lbl:SetText(text or "")
    container.Label = lbl

    -- Right divider line fills remaining space
    local lineR = container:CreateTexture(nil, "ARTWORK")
    lineR:SetHeight(1)
    lineR:SetPoint("LEFT",  lbl,       "RIGHT",        6, 0)
    lineR:SetPoint("RIGHT", container, "RIGHT",        0, 0)
    XP.SetTexColor(lineR, XP:ColorRGBA("border"))

    if yOffset then
        container:SetPoint("TOP", parent, "TOP", 0, yOffset)
    end

    return container
end

-----------------------------------------------------------------------
-- TextInput (single-line EditBox)
-- options = {
--   width, height, label, placeholder, maxLetters, onChange, onEnter
-- }
-----------------------------------------------------------------------
function XP:CreateTextInput(parent, options)
    options = options or {}
    local w = options.width  or 180
    local h = options.height or 22

    local container = CreateFrame("Frame", options.name, parent)
    container:SetWidth(w)
    local totalH = h
    if options.label then totalH = totalH + 14 end
    container:SetHeight(totalH)

    local yOff = 0

    -- Optional label above
    if options.label then
        local lbl = container:CreateFontString(nil, "OVERLAY")
        lbl:SetPoint("TOPLEFT", container, "TOPLEFT", 0, 0)
        XP:ApplyFont(lbl, "small", "text_muted")
        lbl:SetText(options.label)
        container.HeaderLabel = lbl
        yOff = -14
    end

    -- EditBox
    local eb = CreateFrame("EditBox", nil, container, "InputBoxTemplate")
    eb:SetSize(w, h)
    eb:SetPoint("TOPLEFT", container, "TOPLEFT", 0, yOff)
    eb:SetAutoFocus(false)
    eb:SetMaxLetters(options.maxLetters or 100)
    XP:ApplyFont(eb, "small", "text_bright")

    if options.placeholder then
        -- Fake placeholder via hint text (works on both versions)
        local hint = container:CreateFontString(nil, "OVERLAY")
        hint:SetPoint("TOPLEFT", eb, "TOPLEFT", 5, 0)
        hint:SetPoint("BOTTOMRIGHT", eb, "BOTTOMRIGHT", -5, 0)
        hint:SetJustifyH("LEFT")
        XP:ApplyFont(hint, "small", "text_dim")
        hint:SetText(options.placeholder)
        eb:SetScript("OnTextChanged", function(self_eb)
            hint:SetShown(self_eb:GetText() == "")
            if options.onChange then options.onChange(self_eb:GetText()) end
        end)
    elseif options.onChange then
        eb:SetScript("OnTextChanged", function(self_eb)
            options.onChange(self_eb:GetText())
        end)
    end

    if options.onEnter then
        eb:SetScript("OnEnterPressed", function(self_eb)
            options.onEnter(self_eb:GetText())
            self_eb:ClearFocus()
        end)
    end

    eb:SetScript("OnEscapePressed", function(self_eb) self_eb:ClearFocus() end)

    container.EditBox = eb

    function container:GetValue() return eb:GetText() end
    function container:SetValue(v) eb:SetText(v or "") end
    function container:SetFocus()  eb:SetFocus() end

    return container
end
