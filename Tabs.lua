-----------------------------------------------------------------------
-- X-Plore: Tabs.lua
-- Tab management for the Viewer frame.
-- Allows multiple guides to be open simultaneously with clickable tabs.
-- Modeled after XP's Tabs.lua architecture:
--   Pool of tab objects, each with a tab Button + Close button.
--   Active tab drives XP.CurrentGuide / XP.CurrentStep.
--   Tabs saved/restored via AceDB char.tabGuides.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-- GLOBAL EasyFork,CloseDropDownForks,UIDropDownFork_separatorInfo,UIDropDownFork_SetAnchor

-----------------------------------------------------------------------
-- Local refs
-----------------------------------------------------------------------
local Tabs = XP.Tabs      -- XP.Tabs table created in Init.lua
local Pool = {}            -- Array of tab objects (reusable)
local MAX_TABS = 8         -- Hard limit on open tabs

-----------------------------------------------------------------------
-- Module-level state
-----------------------------------------------------------------------
Tabs.Pool      = Pool
Tabs.ActiveTab = nil       -- Currently active tab object (or nil)
Tabs.Dragging  = nil       -- Tab currently being dragged (or nil)

local function GetTabButtonHeight()
    local barHeight = XP:Size("tab_height")
    if not barHeight or barHeight <= 0 then
        barHeight = 20
    end
    return math.max(15, barHeight - 5)
end

local function ApplyZygorTabFont(fontString)
    if not fontString then return end
    fontString:SetFont(GameFontNormal:GetFont(), 9, "")
    fontString:SetTextColor(1, 1, 1, 1)
end

-- Returns the NoEdgeBackdrop table for tab/utility buttons (no file I/O, safe to call often)
local function TabBackdrop()
    return {bgFile = "Interface\\AddOns\\" .. ADDON_NAME .. "\\Skins\\white", tile = true, tileSize = 8}
end

local function SetTabInactive(button)
    if not button then return end
    if button.SetBackdrop then
        button:SetBackdrop(TabBackdrop())
        local c = XP:SD("TabsBackdropInactive") or {0, 0, 0, 0}
        button:SetBackdropColor(c[1] or 0, c[2] or 0, c[3] or 0, c[4] or 0)
    end
end

local function SetTabActive(button)
    if not button then return end
    if button.SetBackdrop then
        button:SetBackdrop(TabBackdrop())
        local c = XP:SD("TabsBackdropActive") or {0.125, 0.125, 0.125, 1}
        button:SetBackdropColor(c[1] or 0.125, c[2] or 0.125, c[3] or 0.125, c[4] or 1)
    end
end

local function SkinTabButton(button, text)
    if not button then return end
    -- Plain buttons (no UIPanelButtonTemplate) need a font string created explicitly
    if not button:GetFontString() then
        local fs = button:CreateFontString(nil, "OVERLAY")
        fs:SetAllPoints()
        button:SetFontString(fs)
    end
    button:SetText(text or "")
    -- Remove WoW native button textures if present
    if button.SetNormalTexture then button:SetNormalTexture("") end
    if button.SetPushedTexture then button:SetPushedTexture("") end
    if button.SetHighlightTexture then button:SetHighlightTexture("") end
    if button.SetDisabledTexture then button:SetDisabledTexture("") end
    -- Apply skin-aware inactive appearance
    SetTabInactive(button)
    ApplyZygorTabFont(button:GetFontString())
end

-----------------------------------------------------------------------
-- Initialize: called from XP:OnEnable()
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:InitTabs()
function XP:InitTabs()
    -- Ensure ViewerFrame exists
    if not self.ViewerFrame then return end
    if not self.ViewerFrame.TabContainer then return end

    Tabs.container = self.ViewerFrame.TabContainer

    -- Create the "+" (add tab) button — skinned like XP's classic tabs
    local addBtn = XP.CreateBackdropFrame("Button", nil, Tabs.container)
    addBtn:SetSize(20, GetTabButtonHeight())
    SkinTabButton(addBtn, "+")
    addBtn:SetScript("OnClick", function()
        XP:ToggleMenu()
    end)
    addBtn:SetScript("OnEnter", function(self_btn)
        GameTooltip:SetOwner(self_btn, "ANCHOR_BOTTOMLEFT")
        GameTooltip:SetText("Open a new guide")
        GameTooltip:Show()
    end)
    addBtn:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    Tabs.AddButton = addBtn

    -- Create the ">" (overflow) button — uses the same native panel-button styling
    local overflowBtn = XP.CreateBackdropFrame("Button", nil, Tabs.container)
    overflowBtn:SetSize(20, GetTabButtonHeight())
    SkinTabButton(overflowBtn, ">")
    overflowBtn:SetScript("OnClick", function()
        Tabs:ToggleOverflowMenu()
    end)
    overflowBtn:SetScript("OnEnter", function(self_btn)
        GameTooltip:SetOwner(self_btn, "ANCHOR_BOTTOMLEFT")
        GameTooltip:SetText("More guides")
        GameTooltip:Show()
    end)
    overflowBtn:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    overflowBtn:Hide()
    Tabs.OverflowButton = overflowBtn

    -- Restore saved tabs from DB
    local saved = self.db and self.db.char and self.db.char.tabGuides
    if saved then
        -- Trim to max
        while #saved > MAX_TABS do
            table.remove(saved, #saved)
        end

        for i, data in ipairs(saved) do
            if data.guideID and self.Guides[data.guideID] then
                local tab = Tabs:GetTabFromPool()
                tab:AssignGuide(data.guideID, data.step)
                -- If this matches the last-active guide, mark it current
                if data.guideID == (self.db.char.currentGuide or "") then
                    tab:SetAsCurrent()
                end
            end
        end
    end

    -- If nothing was restored, and we have a current guide, create one tab
    if not Tabs.ActiveTab and self.CurrentGuide then
        local tab = Tabs:GetTabFromPool()
        tab:AssignGuide(self.CurrentGuide.id, self.CurrentStep or 1)
        tab:SetAsCurrent()
    end

    Tabs:ReanchorTabs()

    -- Create tab menu dropdown frame (like XP's Tabs.TabMenuFrame)
    local tabMenuFrame = CreateFrame("Frame", "XPlore_TabMenuFrame", Tabs.container)
    tabMenuFrame:SetPoint("LEFT", Tabs.container, "LEFT", 100, 0)  -- Will be repositioned when shown
    tabMenuFrame:Hide()
    Tabs.TabMenuFrame = tabMenuFrame

    -- Listen for guide changes to keep tabs in sync
    self:RegisterMessage("XP_GUIDE_LOADED", function(_, guide)
        Tabs:UpdateCurrentTab(guide)
    end)
    self:RegisterMessage("XP_STEP_CHANGED", function(_, step)
        if Tabs.ActiveTab then
            Tabs.ActiveTab.step = step
            Tabs:SaveTabState()
        end
    end)
-- DEBUG: EXIT XP:InitTabs()
end

-----------------------------------------------------------------------
-- Pool management
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:GetTabFromPool()
function Tabs:GetTabFromPool()
    for _, tab in ipairs(Pool) do
        if not tab.guideID then
            return tab
        end
    end
    -- None free? Create a new one (up to limit)
    if #Pool >= MAX_TABS then
        XP:Print("|cffff0000Tab limit reached.|r")
        return Pool[#Pool] -- reuse last
    end
    return Tabs:CreateTab()
-- DEBUG: EXIT Tabs:GetTabFromPool()
end

-----------------------------------------------------------------------
-- Create a single tab (Button + Icon + Close + text)
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:CreateTab()
function Tabs:CreateTab()
    local tabHeight = GetTabButtonHeight()
    local index = #Pool + 1

    local tab = {}

    -- Main clickable button
    local btn = XP.CreateBackdropFrame("Button", "XPlore_Tab" .. index, Tabs.container)
    btn:SetSize(100, tabHeight)
    btn:SetMovable(true)
    btn:RegisterForDrag("LeftButton")
    btn:EnableMouse(true)
    btn:Hide()
    SkinTabButton(btn, "Guide")

    local text = btn:GetFontString()
    if text then
        text:ClearAllPoints()
        text:SetPoint("LEFT", btn, "LEFT", 4, 0)
        text:SetPoint("RIGHT", btn, "RIGHT", -14, 0)
        text:SetJustifyH("CENTER")
        text:SetWordWrap(false)
        ApplyZygorTabFont(text)
    end
    tab.Text = text

    -- XP's classic viewer tabs are text-only.
    local icon = btn:CreateTexture(nil, "ARTWORK")
    icon:Hide()
    tab.Icon = icon

    -- Close button (right side)
    local closeBtn = CreateFrame("Button", nil, btn)
    closeBtn:SetSize(12, 12)
    closeBtn:SetPoint("RIGHT", btn, "RIGHT", -2, 0)
    closeBtn:SetNormalFontObject(GameFontNormalSmall)
    closeBtn:SetText("x")
    closeBtn:GetFontString():SetTextColor(XP:ColorRGBA("text_dim"))
    closeBtn:SetScript("OnClick", function() tab:RemoveTab() end)
    closeBtn:SetScript("OnEnter", function(self_btn)
        self_btn:GetFontString():SetTextColor(XP:ColorRGBA("red"))
    end)
    closeBtn:SetScript("OnLeave", function(self_btn)
        self_btn:GetFontString():SetTextColor(XP:ColorRGBA("text_dim"))
    end)
    closeBtn:Hide() -- Only show on hover
    tab.CloseBtn = closeBtn

    -- Wire up events
    btn:SetScript("OnMouseUp", function(_, button)
        if button == "LeftButton" then
            tab:HandleClick()
        elseif button == "RightButton" then
            tab:ShowContextMenu()
        end
    end)
    btn:SetScript("OnEnter", function()
        tab:ShowInteraction()
    end)
    btn:SetScript("OnLeave", function()
        tab:HideInteraction()
    end)
    btn:SetScript("OnDragStart", function()
        tab:OnDragStart()
    end)
    btn:SetScript("OnDragStop", function()
        tab:OnDragStop()
    end)

    tab.Button = btn
    tab.Num = index
    tab.guideID = nil
    tab.title   = nil
    tab.step    = nil
    tab.isActive = false

    -- Inherit methods from Tabs (metatable)
    setmetatable(tab, { __index = Tabs })

    Pool[index] = tab
    return tab
-- DEBUG: EXIT Tabs:CreateTab()
end

-----------------------------------------------------------------------
-- Assign a guide to this tab
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:AssignGuide()
-- DEBUG: PARAM guideID = [guideID]
-- DEBUG: PARAM step = [step]
function Tabs:AssignGuide(guideID, step)
    local guide = XP.Guides[guideID]
    if not guide then
        -- Guide doesn't exist; clear this tab
        self.guideID = nil
        self.title   = nil
        self.step    = nil
        self.Button:Hide()
        Tabs:ReanchorTabs()
        return
    end

    self.guideID = guideID
    self.guide   = guide
    self.title   = guide.titleShort or guide.title or guideID
    self.step    = step or 1

    self.Button:SetText(self.title)
    if self.Text then
        ApplyZygorTabFont(self.Text)
    end

    if self.Icon then
        self.Icon:SetTexture(nil)
        self.Icon:Hide()
    end

    Tabs:SaveTabState()
    Tabs:ReanchorTabs()
-- DEBUG: EXIT Tabs:AssignGuide()
end

-----------------------------------------------------------------------
-- Activate this tab: make it the current guide
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ActivateGuide()
function Tabs:ActivateGuide()
    self:SetAsCurrent()
    if self.guideID then
        -- Load the guide through the main flow but skip re-tabbing
        Tabs._loading = true
        XP:LoadGuide(self.guideID)
        if self.step and self.step > 1 then
            XP:GoToStep(self.step)
        end
        Tabs._loading = false
    end
-- DEBUG: EXIT Tabs:ActivateGuide()
end

-----------------------------------------------------------------------
-- Set as visually current tab (highlight + deactivate previous)
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:SetAsCurrent()
function Tabs:SetAsCurrent()
    -- Deactivate previous
    if Tabs.ActiveTab and Tabs.ActiveTab ~= self then
        Tabs.ActiveTab.isActive = false
        SetTabInactive(Tabs.ActiveTab.Button)
        if Tabs.ActiveTab.Text then
            ApplyZygorTabFont(Tabs.ActiveTab.Text)
        end
    end

    Tabs.ActiveTab = self
    self.isActive = true
    SetTabActive(self.Button)
    if self.Text then
        ApplyZygorTabFont(self.Text)
    end
-- DEBUG: EXIT Tabs:SetAsCurrent()
end

-----------------------------------------------------------------------
-- Handle a click on this tab
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:HandleClick()
function Tabs:HandleClick()
    if self.isActive then
        -- If dropdown is already open, close it
        if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown == Tabs.TabMenuFrame then
            CloseDropDownForks()
            return
        end
        GameTooltip:Hide()

        -- Build the context menu (same as ShowContextMenu)
        self:ShowTabMenu()
    else
        self:ActivateGuide()
    end
-- DEBUG: EXIT Tabs:HandleClick()
end

--------------------------------------------------------------------
-- Build and display the tab context menu (XP-style)
--------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ShowTabMenu()
function Tabs:ShowTabMenu()
    local menu = {}
    local active = {}
    for i, v in ipairs(XP.db and XP.db.char and XP.db.char.tabGuides or {}) do
        if v and v.title then active[v.title] = true end
    end

    -- Recent guides section
    table.insert(menu, {
        text = "Recent Guides",  -- Would be L["tabsmenu_recent"] in XP
        isTitle = true,
    })

    local used = 0
    local history = XP.db and XP.db.char and XP.db.char.guides_history or {}
    for i, v in ipairs(history) do
        if v.title and not active[v.title] and used < 3 then
            local guide = XP.Guides[v.title]
            if guide then
                table.insert(menu, {
                    text = guide.titleShort or guide.title or v.title,
                    -- DEBUG: ENTER func()
                    func = function()
                        self:AssignGuide(v.title)
                        self:ActivateGuide()
                    end,
                    notCheckable = 1,
                })
                used = used + 1
            end
        end
        if v and v.title then active[v.title] = true end
    end

    table.insert(menu, UIDropDownFork_separatorInfo)

    -- Suggested guides section (LEVELING type with SUGGESTED status)
    local suggested = {}
    for i, guide in pairs(XP.Guides) do
        local cat = guide.category or "LEVELING"
        if cat == "LEVELING" and not active[guide.title] then
            local status = guide.status
            if status == "SUGGESTED" then
                table.insert(suggested, guide)
            end
        end
    end

    if #suggested > 0 then
        table.sort(suggested, function(a, b)
            return (a.condition_suggested_exclusive and 1 or 0) > (b.condition_suggested_exclusive and 1 or 0)
        end)

        table.insert(menu, {
            text = "Suggested",
            isTitle = true,
        })

        for i = 1, math.min(2, #suggested) do
            local guide = suggested[i]
            if guide then
                table.insert(menu, {
                    text = guide.titleShort or guide.title or guide.id,
                    -- DEBUG: ENTER func()
                    func = function()
                        self:AssignGuide(guide.id)
                        self:ActivateGuide()
                    end,
                    notCheckable = 1,
                })
            end
        end

        table.insert(menu, UIDropDownFork_separatorInfo)
    end

    -- New guide option
    table.insert(menu, {
        text = "Open New Guide",
        -- DEBUG: ENTER func()
        func = function()
            XP:ToggleMenu()
        end,
        notCheckable = 1,
    })

    -- Position and show the dropdown
    UIDropDownFork_SetAnchor(Tabs.TabMenuFrame, 0, 0, "TOPLEFT", self.Button, "BOTTOMLEFT")
    EasyFork(menu, Tabs.TabMenuFrame, nil, 0, 0, "MENU", 10)
-- DEBUG: EXIT Tabs:ShowTabMenu()
end

--------------------------------------------------------------------
-- Show a basic right-click context menu
--------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ShowContextMenu()
function Tabs:ShowContextMenu()
    -- Right-click on inactive tab removes it
    if not self.isActive then
        self:RemoveTab()
        return
    end
    -- Right-click on active tab shows the tab menu
    self:ShowTabMenu()
-- DEBUG: EXIT Tabs:ShowContextMenu()
end

-----------------------------------------------------------------------
-- Hover interaction: show close button and tooltip
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ShowInteraction()
function Tabs:ShowInteraction()
    if self.CloseBtn then
        self.CloseBtn:Show()
    end

    -- Hover colour: dim the backdrop slightly (match XP's hover cue)
    if not self.isActive and self.Button then
        local c = XP:SD("TabsBackdropActive") or {0.125, 0.125, 0.125, 1}
        if self.Button.SetBackdropColor then
            self.Button:SetBackdropColor(c[1] or 0, c[2] or 0, c[3] or 0, (c[4] or 1) * 0.5)
        end
        if self.Text then
            local oc = XP:SD("TabsTextColorOver") or {1, 1, 1, 0.47}
            self.Text:SetTextColor(oc[1] or 1, oc[2] or 1, oc[3] or 1, oc[4] or 0.47)
        end
    end

    -- Tooltip
    if self.title then
        GameTooltip:SetOwner(self.Button, "ANCHOR_BOTTOMLEFT")
        GameTooltip:SetText(self.title)
        if self.guideID and XP.Guides[self.guideID] then
            local g = XP.Guides[self.guideID]
            if g.category then
                GameTooltip:AddLine(g.category, 0.58, 0.72, 0.83)
            end
        end
        GameTooltip:Show()
    end
-- DEBUG: EXIT Tabs:ShowInteraction()
end

-- DEBUG: ENTER Tabs:HideInteraction()
function Tabs:HideInteraction()
    -- Guard: if mouse is still over the button area (e.g. hovering the close btn child),
    -- keep everything visible to prevent the X flickering when moving onto it.
    if self.Button and self.Button:IsMouseOver() then return end

    if self.CloseBtn then
        self.CloseBtn:Hide()
    end

    -- Restore normal appearance on leave
    if not self.isActive then
        SetTabInactive(self.Button)
        if self.Text then ApplyZygorTabFont(self.Text) end
    end

    GameTooltip:Hide()
-- DEBUG: EXIT Tabs:HideInteraction()
end

-----------------------------------------------------------------------
-- Remove (close) this tab
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:RemoveTab()
function Tabs:RemoveTab()
    self.Button:Hide()

    local wasActive = self.isActive
    self.guideID  = nil
    self.guide    = nil
    self.title    = nil
    self.step     = nil
    self.isActive = false

    if wasActive then
        -- Find another tab to activate
        local found = false
        -- Try next tabs
        for i = self.Num + 1, #Pool do
            if Pool[i].guideID then
                Pool[i]:ActivateGuide()
                found = true
                break
            end
        end
        if not found then
            -- Try previous tabs
            for i = self.Num - 1, 1, -1 do
                if Pool[i].guideID then
                    Pool[i]:ActivateGuide()
                    found = true
                    break
                end
            end
        end
        if not found then
            -- No tabs left: clear the current guide state
            Tabs.ActiveTab = nil
            XP.CurrentGuide = nil
            XP.CurrentStep  = nil
            if XP.db then
                XP.db.char.currentGuide = nil
                XP.db.char.currentStep  = 1
            end
            XP:UpdateViewer()
        end
    end

    -- Shift this tab to end of pool (freed tabs go to the back)
    local temp = table.remove(Pool, self.Num)
    table.insert(Pool, temp)

    -- Renumber
    for i, tab in ipairs(Pool) do
        tab.Num = i
    end

    Tabs:SaveTabState()
    Tabs:ReanchorTabs()
-- DEBUG: EXIT Tabs:RemoveTab()
end

-----------------------------------------------------------------------
-- Drag support (reorder tabs)
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:OnDragStart()
function Tabs:OnDragStart()
    Tabs.Dragging = self
    self.Button:SetAlpha(0.5)
    self:HideInteraction()
-- DEBUG: EXIT Tabs:OnDragStart()
end

-- DEBUG: ENTER Tabs:OnDragStop()
function Tabs:OnDragStop()
    if not Tabs.Dragging then return end

    local dragTab = Tabs.Dragging
    Tabs.Dragging = nil
    dragTab.Button:SetAlpha(1.0)

    -- Find which tab the cursor is over, swap positions
    local cx = GetCursorPosition()
    local scale = Tabs.container:GetEffectiveScale()
    cx = cx / scale

    for i, tab in ipairs(Pool) do
        if tab.guideID and tab ~= dragTab and tab.Button:IsShown() then
            local left = tab.Button:GetLeft()
            local right = tab.Button:GetRight()
            if left and right and cx >= left and cx <= right then
                -- Swap positions in Pool
                local dragIdx = dragTab.Num
                local targetIdx = tab.Num
                Pool[dragIdx], Pool[targetIdx] = Pool[targetIdx], Pool[dragIdx]
                Pool[dragIdx].Num = dragIdx
                Pool[targetIdx].Num = targetIdx
                break
            end
        end
    end

    Tabs:SaveTabState()
    Tabs:ReanchorTabs()
-- DEBUG: EXIT Tabs:OnDragStop()
end

---------------------------------------------------------------------
-- Overflow menu: show/hide the overflow dropdown
---------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ToggleOverflowMenu()
function Tabs:ToggleOverflowMenu()
    if Tabs.OverflowMenu and Tabs.OverflowMenu:IsShown() then
        Tabs:HideOverflowMenu()
    else
        Tabs:ShowOverflowMenu()
    end
-- DEBUG: EXIT Tabs:ToggleOverflowMenu()
end

-- DEBUG: ENTER Tabs:ShowOverflowMenu()
function Tabs:ShowOverflowMenu()
    -- Collect overflowed tabs
    local overflowTabs = {}
    for _, tab in ipairs(Pool) do
        if tab.guideID and tab.isOverflowed then
            table.insert(overflowTabs, tab)
        end
    end
    if #overflowTabs == 0 then return end

    -- Build the dropdown frame once (reused across calls)
    if not Tabs.OverflowMenu then
        local menu = XP.CreateBackdropFrame("Frame", "XPlore_OverflowMenu", UIParent)
        menu:SetFrameStrata("TOOLTIP")
        menu:SetFrameLevel(100)
        menu:EnableMouse(true)
        menu:Hide()
        menu.rows = {}
        Tabs.OverflowMenu = menu

        -- Fullscreen click-catcher to close menu when clicking outside
        local catcher = CreateFrame("Frame", nil, UIParent)
        catcher:SetAllPoints(UIParent)
        catcher:SetFrameStrata("DIALOG")
        catcher:SetFrameLevel(50)
        catcher:EnableMouse(true)
        catcher:Hide()
        catcher:SetScript("OnMouseDown", function() Tabs:HideOverflowMenu() end)
        Tabs.OverflowMenuCatcher = catcher
    end

    local menu = Tabs.OverflowMenu
    XP:ApplyBackdrop(menu, "FloatMenuBackdrop", "bg_deep", "border")

    -- Hide existing rows before rebuilding
    for _, row in ipairs(menu.rows) do row:Hide() end
    menu.rows = {}

    local rowH     = 18
    local padV     = 6
    local padH     = 8
    local maxTextW = 0

    for i, tab in ipairs(overflowTabs) do
        local row = CreateFrame("Button", nil, menu)
        row:SetHeight(rowH)
        row:SetPoint("TOPLEFT", menu, "TOPLEFT", padH, -(padV + (i - 1) * rowH))

        local label = row:CreateFontString(nil, "OVERLAY")
        label:SetPoint("LEFT", row, "LEFT", 0, 0)
        label:SetJustifyH("LEFT")
        ApplyZygorTabFont(label)
        label:SetText(tab.title or tab.guideID or "")
        row.Label = label

        local capturedTab = tab
        row:SetScript("OnClick", function()
            Tabs:HideOverflowMenu()
            capturedTab:ActivateGuide()
        end)
        row:SetScript("OnEnter", function()
            label:SetTextColor(1, 1, 1, 1)
        end)
        row:SetScript("OnLeave", function()
            ApplyZygorTabFont(label)
        end)

        row:Show()
        menu.rows[i] = row

        local tw = label:GetStringWidth() + padH * 2
        if tw > maxTextW then maxTextW = tw end
    end

    local dropW = math.max(160, maxTextW)
    local dropH = #overflowTabs * rowH + padV * 2
    menu:SetSize(dropW, dropH)
    for _, row in ipairs(menu.rows) do
        row:SetWidth(dropW - padH * 2)
    end

    menu:ClearAllPoints()
    menu:SetPoint("TOPRIGHT", Tabs.OverflowButton, "BOTTOMRIGHT", 0, -2)
    Tabs.OverflowMenuCatcher:Show()
    menu:Show()
-- DEBUG: EXIT Tabs:ShowOverflowMenu()
end

-- DEBUG: ENTER Tabs:HideOverflowMenu()
function Tabs:HideOverflowMenu()
    if Tabs.OverflowMenu then
        Tabs.OverflowMenu:Hide()
    end
    if Tabs.OverflowMenuCatcher then
        Tabs.OverflowMenuCatcher:Hide()
    end
-- DEBUG: EXIT Tabs:HideOverflowMenu()
end

---------------------------------------------------------------------
-- Layout: reposition and resize all visible tabs with overflow
---------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ReanchorTabs()
function Tabs:ReanchorTabs()
    if not Tabs.container then return end

    local count = 0
    for _, tab in ipairs(Pool) do
        if tab.guideID then count = count + 1 end
    end

    local addBtn = Tabs.AddButton
    local overflowBtn = Tabs.OverflowButton

    if count == 0 then
        -- No tabs: position add button at LEFT of tab bar
        if addBtn then
            addBtn:ClearAllPoints()
            addBtn:SetPoint("LEFT", Tabs.container, "LEFT", 4, 0)
        end
        if overflowBtn then overflowBtn:Hide() end
        return
    end

    local containerWidth = Tabs.container:GetWidth()
    local leftMargin = 4
    local rightMargin = 4
    local tabSpacing = 1
    local addBtnWidth = 20
    local overflowBtnWidth = 20
    local addBtnGap = 4
    local overflowBtnGap = 4

    -- Start by hiding all tabs, then reveal only those that fit
    for _, tab in ipairs(Pool) do
        if tab.guideID then
            tab.Button:Hide()
            tab.isOverflowed = true
        end
    end

    -- Count visible slots available: addBtn + overflowBtn take space on the right
    local availWidth = containerWidth - leftMargin - rightMargin - addBtnWidth - overflowBtnWidth - addBtnGap - overflowBtnGap
    local tabWidth = math.max(40, math.floor(availWidth / count))
    local tabHeight = GetTabButtonHeight()

    local prev = nil
    local visibleCount = 0
    local currentX = leftMargin

    for _, tab in ipairs(Pool) do
        if tab.guideID then
            local tabRightEdge = currentX + tabWidth
            -- Check if this tab fits before the overflow button zone
            if tabRightEdge <= containerWidth - rightMargin - overflowBtnWidth - overflowBtnGap - addBtnWidth - addBtnGap then
                tab.Button:ClearAllPoints()
                tab.Button:SetSize(tabWidth, tabHeight)
                if prev then
                    tab.Button:SetPoint("LEFT", prev, "RIGHT", tabSpacing, 0)
                else
                    tab.Button:SetPoint("LEFT", Tabs.container, "LEFT", leftMargin, 0)
                end
                tab.Button:Show()
                tab.isOverflowed = false
                prev = tab.Button
                currentX = tabRightEdge + tabSpacing
                visibleCount = visibleCount + 1
            end
        end
    end

    -- Show overflow button if there are overflowed tabs; position at far right (XP: [tabs][+][>])
    local hasOverflowed = false
    if overflowBtn then
        for _, tab in ipairs(Pool) do
            if tab.guideID and tab.isOverflowed then
                hasOverflowed = true
                break
            end
        end
        if hasOverflowed then
            overflowBtn:Show()
            overflowBtn:ClearAllPoints()
            overflowBtn:SetPoint("RIGHT", Tabs.container, "RIGHT", -rightMargin, 0)
        else
            overflowBtn:Hide()
        end
    end

    -- Add "+" button: left of ">" when overflow shown, far right when no overflow (XP style)
    if addBtn then
        addBtn:ClearAllPoints()
        if hasOverflowed then
            addBtn:SetPoint("RIGHT", Tabs.container, "RIGHT", -rightMargin - overflowBtnWidth - overflowBtnGap - addBtnGap, 0)
        else
            addBtn:SetPoint("RIGHT", Tabs.container, "RIGHT", -rightMargin, 0)
        end
    end

    -- If only one tab, hide its close button
    if count == 1 then
        for _, tab in ipairs(Pool) do
            if tab.guideID and tab.CloseBtn then
                tab.CloseBtn.singleTab = true
            end
        end
    else
        for _, tab in ipairs(Pool) do
            if tab.guideID and tab.CloseBtn then
                tab.CloseBtn.singleTab = false
            end
        end
    end
-- DEBUG: EXIT Tabs:ReanchorTabs()
end

-----------------------------------------------------------------------
-- Update current tab when guide changes externally
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:UpdateCurrentTab()
-- DEBUG: PARAM guide = [guide]
function Tabs:UpdateCurrentTab(guide)
    if Tabs._loading then return end -- Prevent re-entrant loop
    if not guide then return end

    -- Check if any tab already has this guide
    for _, tab in ipairs(Pool) do
        if tab.guideID == guide.id then
            tab:SetAsCurrent()
            return
        end
    end

    -- If active tab exists, reassign it
    if Tabs.ActiveTab and Tabs.ActiveTab.guideID then
        Tabs.ActiveTab:AssignGuide(guide.id, XP.CurrentStep or 1)
        return
    end

    -- Otherwise create a new tab
    local tab = Tabs:GetTabFromPool()
    tab:AssignGuide(guide.id, XP.CurrentStep or 1)
    tab:SetAsCurrent()
-- DEBUG: EXIT Tabs:UpdateCurrentTab()
end

-----------------------------------------------------------------------
-- Load a guide into a tab (public API called by GuideMenu)
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:LoadGuideToTab()
-- DEBUG: PARAM guideID = [guideID]
-- DEBUG: PARAM step = [step]
function Tabs:LoadGuideToTab(guideID, step)
    -- Check if already open
    for _, tab in ipairs(Pool) do
        if tab.guideID == guideID then
            tab.step = step or tab.step
            tab:ActivateGuide()
            return
        end
    end

    -- Not open: get a free tab
    local tab = Tabs:GetTabFromPool()
    tab:AssignGuide(guideID, step or 1)

    -- Restore persisted goal completions for this guide (Item 10)
    XP.CurrentGuide = XP.Guides[guideID]
    XP:LoadGoalState(guideID)

    tab:ActivateGuide()
-- DEBUG: EXIT Tabs:LoadGuideToTab()
end

-----------------------------------------------------------------------
-- Check if a guide is already in a tab
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:IsGuideTabbed()
-- DEBUG: PARAM guideID = [guideID]
function Tabs:IsGuideTabbed(guideID)
    for _, tab in ipairs(Pool) do
        if tab.guideID == guideID then
            return true
        end
    end
    return false
-- DEBUG: EXIT Tabs:IsGuideTabbed()
end

-----------------------------------------------------------------------
-- Persist tab state to AceDB
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:SaveTabState()
function Tabs:SaveTabState()
    if not XP.db then return end
    local saved = {}
    for _, tab in ipairs(Pool) do
        if tab.guideID then
            table.insert(saved, {
                guideID = tab.guideID,
                step    = tab.step or 1,
            })
        end
    end
    XP.db.char.tabGuides = saved
-- DEBUG: EXIT Tabs:SaveTabState()
end

-----------------------------------------------------------------------
-- Check inactive tabs for step completion (called periodically)
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:CheckForStepCompletion()
function Tabs:CheckForStepCompletion()
    for _, tab in ipairs(Pool) do
        if tab.guideID and not tab.isActive then
            -- TODO: check if the step has been completed and notify the user
        end
    end
-- DEBUG: EXIT Tabs:CheckForStepCompletion()
end
