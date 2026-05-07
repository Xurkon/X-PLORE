--[[
    UI.lua
    Theme Designer main editor frame.
    Wires all 6 panel modules into tabbed interface with Apply/Revert.
]]
local XP = ...

XP.ThemeUI = {}

-- Debounce table: key → timer handle
XP.ThemeUI._debounce = {}

-- Debounce: coalesce rapid changes, call ApplyChange once after delay
-- delay = 0 → immediate
function XP.ThemeUI.Debounce(key, delay, fn)
    local d = XP.ThemeUI._debounce[key]
    if d then
        d:Cancel()
    end
    local t
    if delay == 0 then
        t = C_Timer.NewTimer(0, fn)
    else
        t = C_Timer.NewTimer(delay, fn)
    end
    XP.ThemeUI._debounce[key] = t
end

-- Apply a change to the live theme context and schedule a live preview refresh.
-- key: arbitrary label for debounce grouping (e.g. "colors.accent" or "layout.scale")
-- section: "colors" | "fonts" | "layout" | "misc"
-- onChange: optional extra callback after debounce fires
function XP.ThemeUI.ApplyChange(key, section, onChange)
    local frame = XP.ThemeUI._activeEditor
    if not frame then return end
    local ctx = frame.themeEngine.context
    if not ctx then return end

    -- Extra onChange fires immediately (for UI-side updates like swatch color)
    if onChange then onChange() end

    -- Live preview refresh debounced to 80ms
    XP.ThemeUI.Debounce("live_preview", 0.08, function()
        XP.ThemeUI.RefreshLivePreview()
    end)
end

-- Refresh the mini preview inside the Preview panel's scroll child.
-- Finds the XPLORE_ThemePreview_Mini frame and updates its backdrop/textures/fonts.
function XP.ThemeUI.RefreshLivePreview()
    local frame = XP.ThemeUI._activeEditor
    if not frame then return end

    local mini = frame.scrollChild and frame.scrollChild.miniPreview
    if not mini then return end

    local ctx = frame.themeEngine.context
    if not ctx then return end

    local colors = ctx:GetColors()
    local fonts  = ctx:GetFonts()
    local layout = ctx:GetLayout()

    -- Background
    if mini.bg then
        if colors.background then
            mini.bg:SetColorTexture(colors.background.r, colors.background.g, colors.background.b, colors.background.a or 1)
        end
    end

    -- Border
    if mini.border then
        if colors.border then
            mini.border:SetColorTexture(colors.border.r, colors.border.g, colors.border.b, colors.border.a or 1)
        end
    end

    -- Title bar
    if mini.titleBar then
        if colors.main then
            mini.titleBar:SetColorTexture(colors.main.r, colors.main.g, colors.main.b, 0.9)
        end
    end

    -- Title text
    if mini.titleTxt then
        local hf = fonts.header or {}
        mini.titleTxt:SetFont(hf.path or "Fonts\\MORPHEUS.TTF", (hf.size or 13) * (layout.scale or 1), hf.flags or "OUTLINE")
        if colors.text then
            mini.titleTxt:SetTextColor(colors.text.r, colors.text.g, colors.text.b, colors.text.a or 1)
        end
    end

    -- Step texts
    for i = 1, 5 do
        local row = mini["step" .. i]
        if row then
            local bf = fonts.body or {}
            row.lbl:SetFont(bf.path or "Fonts\\MORPHEUS.TTF", (bf.size or 11) * (layout.scale or 1), bf.flags or "OUTLINE")
            if colors.text then
                row.lbl:SetTextColor(colors.text.r, colors.text.g, colors.text.b, colors.text.a or 1)
            end
            if row.bg then
                if i == 1 and colors.accent then
                    row.bg:SetColorTexture(colors.accent.r, colors.accent.g, colors.accent.b, 0.15)
                else
                    row.bg:SetColorTexture(0, 0, 0, 0)
                end
            end
        end
    end
end

-- Panel definitions in display order
local PANELS = {
    { id = "colors",  label = "Colors",   module = "ThemeColors"  },
    { id = "fonts",   label = "Fonts",    module = "ThemeFonts"   },
    { id = "layout",  label = "Layout",   module = "ThemeLayout"  },
    { id = "presets", label = "Presets",  module = "ThemePresets" },
    { id = "preview", label = "Preview",  module = "ThemePreview" },
    { id = "export",  label = "Export",   module = "ThemeExport"  },
}

function XP.ThemeUI.CreateMainFrame(themeEngine)
    local f = CreateFrame("Frame", "XPLORE_ThemeEditor", UIParent)
    f:SetSize(820, 580)
    f:SetPoint("CENTER")
    f:SetFrameStrata("HIGH")
    f:EnableMouse(true)
    f:SetMovable(true)
    f:SetToplevel(true)

    -- Dark glass backdrop
    f:SetBackdrop({
        bgFile   = "Interface\\ChatFrame\\ChatFrameBackground",
        edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
        tile     = true,
        tileSize = 16,
        edgeSize = 1,
        insets   = { left = 0, right = 0, top = 0, bottom = 0 },
    })
    f:SetBackdropColor(0.04, 0.04, 0.12, 0.98)
    f:SetBackdropBorderColor(0.2, 0.2, 0.4, 1.0)

    -- Title bar
    local titleBar = CreateFrame("Frame", nil, f)
    titleBar:SetPoint("TOPLEFT", 0, 0)
    titleBar:SetPoint("TOPRIGHT", 0, 0)
    titleBar:SetHeight(36)
    titleBar:EnableMouse(true)
    titleBar:SetMovable(true)
    titleBar:RegisterForDrag("LeftButton")
    titleBar:SetScript("OnDragStart", function(self)
        self:GetParent():StartMoving()
    end)
    titleBar:SetScript("OnDragStop", function(self)
        self:GetParent():StopMovingOrSizing()
    end)

    -- Title text
    local title = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    title:SetPoint("LEFT", titleBar, "LEFT", 12, 0)
    title:SetText("Theme Designer")
    title:SetFont("Fonts\\MORPHEUS.TTF", 15, "OUTLINE")
    title:SetTextColor(0.75, 0.9, 1.0, 1.0)

    -- Theme name (updates as user edits)
    f.themeNameText = f:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    f.themeNameText:SetPoint("CENTER", titleBar, "CENTER", 0, 0)
    f.themeNameText:SetFont("Fonts\\MORPHEUS.TTF", 11, "OUTLINE")
    f.themeNameText:SetTextColor(0.45, 0.55, 0.75, 1.0)

    -- Close button
    local close = CreateFrame("Button", nil, f, "UIPanelCloseButton")
    close:SetPoint("TOPRIGHT", titleBar, "TOPRIGHT", -4, -2)
    close:SetScript("OnClick", function()
        f:Hide()
        themeEngine.visible = false
        XP.ThemeUI._activeEditor = nil
    end)

    ---------------------------------------------------------------
    -- Sidebar tabs
    ---------------------------------------------------------------
    local sidebar = CreateFrame("Frame", nil, f)
    sidebar:SetPoint("TOPLEFT", titleBar, "BOTTOMLEFT", 0, -2)
    sidebar:SetPoint("BOTTOMLEFT", 0, 42)
    sidebar:SetWidth(130)

    f.tabButtons = {}
    f.activeTab  = nil

    for i, panel in ipairs(PANELS) do
        local btn = CreateFrame("Button", nil, sidebar)
        btn:SetPoint("TOP", 0, -(i - 1) * 36)
        btn:SetSize(124, 30)
        btn.panelId = panel.id

        btn:SetBackdrop({
            bgFile   = "Interface\\ChatFrame\\ChatFrameBackground",
            edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
            tile     = true, tileSize = 16, edgeSize = 1,
        })
        btn:SetBackdropColor(0.06, 0.06, 0.15, 0.7)
        btn:SetBackdropBorderColor(0.25, 0.25, 0.45, 0.6)
        btn:EnableMouse(true)

        local txt = btn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        txt:SetPoint("CENTER")
        txt:SetText(panel.label)
        txt:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")
        txt:SetTextColor(0.55, 0.65, 0.85, 1.0)
        btn:SetNormalFontString(txt)

        local hlTxt = btn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
        hlTxt:SetPoint("CENTER")
        hlTxt:SetText(panel.label)
        hlTxt:SetFont("Fonts\\MORPHEUS.TTF", 12, "OUTLINE")
        hlTxt:SetTextColor(0.0, 0.85, 1.0, 1.0)
        btn:SetHighlightFontString(hlTxt)

        btn:SetScript("OnClick", function()
            XP.ThemeUI.SwitchTab(f, panel.id)
        end)

        f.tabButtons[panel.id] = btn
    end

    ---------------------------------------------------------------
    -- Content scrollframe
    ---------------------------------------------------------------
    local scrollFrame = CreateFrame("ScrollFrame", "XPLORE_ThemeEditor_Scroll", f)
    scrollFrame:SetPoint("TOPLEFT", sidebar, "TOPRIGHT", 6, -2)
    scrollFrame:SetPoint("BOTTOMLEFT", 0, 42)
    scrollFrame:SetPoint("RIGHT", -8, 0)

    local scrollChild = CreateFrame("Frame", nil, scrollFrame)
    scrollChild:SetWidth(scrollFrame:GetWidth())
    scrollChild:SetHeight(2000)  -- will be resized by panel Render
    scrollFrame:SetScrollChild(scrollChild)
    f.scrollChild = scrollChild
    f.scrollFrame = scrollFrame

    -- Resize scroll child height after each Render
    f.contentHeight = 200

    ---------------------------------------------------------------
    -- Bottom bar: Revert | Theme Name | Apply
    ---------------------------------------------------------------
    local bottomBar = CreateFrame("Frame", nil, f)
    bottomBar:SetPoint("BOTTOMLEFT", 0, 0)
    bottomBar:SetPoint("BOTTOMRIGHT", 0, 0)
    bottomBar:SetHeight(38)

    local bottomBg = bottomBar:CreateTexture(nil, "ARTWORK")
    bottomBg:SetAllPoints()
    bottomBg:SetColorTexture(0.03, 0.03, 0.1, 0.95)

    local bottomBorder = bottomBar:CreateTexture(nil, "ARTWORK")
    bottomBorder:SetPoint("TOPLEFT")
    bottomBorder:SetPoint("TOPRIGHT")
    bottomBorder:SetHeight(1)
    bottomBorder:SetColorTexture(0.2, 0.2, 0.4, 0.8)

    -- Revert button
    local revertBtn = CreateFrame("Button", nil, bottomBar, "UIPanelButtonTemplate")
    revertBtn:SetPoint("LEFT", 8, 0)
    revertBtn:SetSize(80, 24)
    revertBtn:SetText("Revert")
    revertBtn:SetScript("OnClick", function()
        XP.ThemeUI.RevertChanges(f, themeEngine)
    end)
    f.revertBtn = revertBtn

    -- Apply button
    local applyBtn = CreateFrame("Button", nil, bottomBar, "UIPanelButtonTemplate")
    applyBtn:SetPoint("RIGHT", -8, 0)
    applyBtn:SetSize(80, 24)
    applyBtn:SetText("Apply")
    applyBtn:SetScript("OnClick", function()
        XP.ThemeUI.ApplyChanges(f, themeEngine)
    end)
    f.applyBtn = applyBtn

    -- Dirty indicator
    f.dirtyIndicator = bottomBar:CreateFontString(nil, "ARTWORK", "GameFontNormal")
    f.dirtyIndicator:SetPoint("CENTER")
    f.dirtyIndicator:SetFont("Fonts\\MORPHEUS.TTF", 10, "OUTLINE")
    f.dirtyIndicator:SetTextColor(0.5, 0.55, 0.7, 0.8)

    ---------------------------------------------------------------
    -- Track state
    -- Link context → editor frame (for MarkDirty callback)
    f.MarkDirty = XP.ThemeUI.MarkDirty  -- attach method so context can call frame:MarkDirty()
    if themeEngine.context then
        themeEngine.context.editorFrame = f
    end
    f.themeEngine = themeEngine
    f.dirty = false
    XP.ThemeUI._activeEditor = f

    -- Switch to first tab
    XP.ThemeUI.SwitchTab(f, "colors")

    return f
end

-- Switch active tab, re-render panel
function XP.ThemeUI.SwitchTab(frame, tabId)
    -- Highlight active tab, dim others
    for id, btn in pairs(frame.tabButtons) do
        if id == tabId then
            btn:SetBackdropColor(0.08, 0.1, 0.25, 0.85)
            btn:SetBackdropBorderColor(0.0, 0.7, 0.95, 0.7)
        else
            btn:SetBackdropColor(0.06, 0.06, 0.15, 0.7)
            btn:SetBackdropBorderColor(0.25, 0.25, 0.45, 0.6)
        end
    end

    frame.activeTab = tabId

    -- Clear old content
    for _, child in pairs({frame.scrollChild:GetChildren()}) do
        child:Hide()
    end

    -- Find panel config
    local panelCfg = nil
    for _, p in ipairs(PANELS) do
        if p.id == tabId then panelCfg = p; break end
    end
    if not panelCfg then return end

    -- Call panel Render into scrollChild
    local ctx = frame.themeEngine.context
    local mod = XP[panelCfg.module]
    if mod and mod.Render then
        local y = mod.Render(frame.scrollChild, ctx, frame)
        frame.contentHeight = math.max(200, -y + 20)
        frame.scrollChild:SetHeight(frame.contentHeight)
    end

    -- Scroll to top
    frame.scrollFrame:SetVerticalScroll(0)
end

-- MarkDirty as a frame method (called by context:MarkDirty())
function XP.ThemeUI.MarkDirty(self)
    if not self.dirty then
        self.dirty = true
        self.dirtyIndicator:SetText("* unsaved")
        self.applyBtn:Enable()
        self.revertBtn:Enable()
    end
end

function XP.ThemeUI.ApplyChanges(frame, themeEngine)
    local ctx = themeEngine.context
    if not ctx or not ctx.theme then return end

    ctx:Save()  -- _RefreshEditor is called inside Save()

    -- Apply theme to actual XP frames
    local uid = ctx.theme.uid
    themeEngine:ApplyTheme(uid)
end

function XP.ThemeUI.RevertChanges(frame, themeEngine)
    local ctx = themeEngine.context
    if not ctx or not ctx.theme then return end

    -- Reload from saved. LoadTheme now calls _RefreshEditor internally.
    ctx:LoadTheme(ctx.theme.uid)
end

-- Called by panels when a value changes
function XP.ThemeUI.OnPanelChanged(frame)
    XP.ThemeUI.MarkDirty(frame)
end
