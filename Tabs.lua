-----------------------------------------------------------------------
-- X-Plore: Tabs.lua
-- Tab management for the Viewer frame.
-- Allows multiple guides to be open simultaneously with clickable tabs.
-- Modeled after Zygor's Tabs.lua architecture:
--   Pool of tab objects, each with a Button + Icon + Close button.
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

-----------------------------------------------------------------------
-- Initialize: called from XP:OnEnable()
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:InitTabs()
function XP:InitTabs()
    -- Ensure ViewerFrame exists
    if not self.ViewerFrame then return end
    if not self.ViewerFrame.TabContainer then return end

    Tabs.container = self.ViewerFrame.TabContainer

    -- Create the "+" (add tab) button
    local addBtn = CreateFrame("Button", nil, Tabs.container)
    addBtn:SetSize(20, self:Size("tab_height") - 4)
    addBtn:SetPoint("RIGHT", Tabs.container, "RIGHT", -4, 0)
    addBtn:SetNormalFontObject(GameFontNormalSmall)
    addBtn:SetText("+")
    addBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan_dark"))
    addBtn:SetScript("OnClick", function()
        XP:ToggleMenu()
    end)
    addBtn:SetScript("OnEnter", function(self_btn)
        self_btn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        GameTooltip:SetOwner(self_btn, "ANCHOR_BOTTOMLEFT")
        GameTooltip:SetText("Open a new guide")
        GameTooltip:Show()
    end)
    addBtn:SetScript("OnLeave", function(self_btn)
        self_btn:GetFontString():SetTextColor(XP:ColorRGBA("cyan_dark"))
        GameTooltip:Hide()
    end)
    Tabs.AddButton = addBtn

    -- Create two static tabs (like Zygor's Tab1 "Guides" / Tab2 "Spots")
    -- STEPS tab: mirrors Zygor's "Guides" tab — shows step content
    local stepsTab = XP.CreateBackdropFrame("Button", "XPlore_StepsTab", Tabs.container)
    stepsTab:SetSize(50, XP:Size("tab_height") - 2)
    stepsTab:SetPoint("LEFT", Tabs.container, "LEFT", 2, 0)
    stepsTab:SetNormalFontObject(GameFontNormalSmall)
    stepsTab:SetText("STEPS")
    stepsTab:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))
    XP:ApplyBackdrop(stepsTab, "panel", "bg_medium", "border_dim")
    stepsTab:SetScript("OnClick", function()
        XP:SetDisplayMode("guide")
    end)
    stepsTab:SetScript("OnEnter", function(self_btn)
        GameTooltip:SetOwner(self_btn, "ANCHOR_BOTTOMLEFT")
        GameTooltip:SetText("View guide steps")
        GameTooltip:Show()
    end)
    stepsTab:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    Tabs.StepsTab = stepsTab

    -- LEVELING GUIDES tab: opens the guide selector / menu
    local levelingTab = XP.CreateBackdropFrame("Button", "XPlore_LevelingTab", Tabs.container)
    levelingTab:SetSize(90, XP:Size("tab_height") - 2)
    levelingTab:SetPoint("LEFT", stepsTab, "RIGHT", 1, 0)
    levelingTab:SetNormalFontObject(GameFontNormalSmall)
    levelingTab:SetText("LEVELING GUIDES")
    levelingTab:GetFontString():SetTextColor(XP:ColorRGBA("text_muted"))
    XP:ApplyBackdrop(levelingTab, "panel", "bg_medium", "border_dim")
    levelingTab:SetScript("OnClick", function()
        XP:ToggleMenu()
    end)
    levelingTab:SetScript("OnEnter", function(self_btn)
        GameTooltip:SetOwner(self_btn, "ANCHOR_BOTTOMLEFT")
        GameTooltip:SetText("Open leveling guide selector")
        GameTooltip:Show()
    end)
    levelingTab:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)
    Tabs.LevelingTab = levelingTab

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

    -- Create tab menu dropdown frame (like Zygor's Tabs.TabMenuFrame)
    local tabMenuFrame = CreateFrame("Frame", "XPlore_TabMenuFrame", Tabs.container, "UIDropDownForkTemplate")
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
    local tabHeight = XP:Size("tab_height") - 2
    local index = #Pool + 1

    local tab = {}

    -- Main clickable button
    local btn = XP.CreateBackdropFrame("Button", "XPlore_Tab" .. index, Tabs.container)
    btn:SetSize(100, tabHeight)
    btn:SetMovable(true)
    btn:RegisterForDrag("LeftButton")
    btn:EnableMouse(true)
    btn:Hide()

    XP:ApplyBackdrop(btn, "panel", "bg_medium", "border_dim")

    -- Tab text
    local text = btn:CreateFontString(nil, "OVERLAY")
    text:SetPoint("LEFT", btn, "LEFT", 22, 0)
    text:SetPoint("RIGHT", btn, "RIGHT", -18, 0)
    text:SetJustifyH("LEFT")
    text:SetWordWrap(false)
    XP:ApplyFont(text, "small", "text_muted")
    text:SetText("Guide")
    tab.Text = text

    -- Small guide-type icon (left side)
    local icon = btn:CreateTexture(nil, "ARTWORK")
    icon:SetSize(14, 14)
    icon:SetPoint("LEFT", btn, "LEFT", 4, 0)
    XP.SetTexColor(icon, XP:ColorRGBA("cyan_dark"))
    tab.Icon = icon

    -- Close button (right side)
    local closeBtn = CreateFrame("Button", nil, btn)
    closeBtn:SetSize(14, 14)
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

    self.Text:SetText(self.title)

    -- Set icon based on guide category
    local cat = guide.category or "LEVELING"
    local iconMap = {
        LEVELING      = { 0.0,  0.90, 1.0 },  -- cyan
        DUNGEONS      = { 0.61, 0.19, 1.0 },  -- purple
        GEAR          = { 1.0,  0.82, 0.0 },  -- yellow
        QUESTS        = { 0.29, 0.87, 0.50 }, -- green
        DAILIES       = { 0.0,  0.59, 0.65 }, -- teal
        EVENTS        = { 1.0,  0.50, 0.0 },  -- orange
        REPUTATIONS   = { 0.4,  0.4,  0.9 },  -- blue
        GOLD          = { 1.0,  0.82, 0.0 },  -- gold
        PROFESSIONS   = { 0.7,  0.5,  0.3 },  -- brown
        PETS_MOUNTS   = { 0.9,  0.4,  0.6 },  -- pink
        TITLES        = { 0.8,  0.8,  0.8 },  -- silver
        ACHIEVEMENTS  = { 0.9,  0.7,  0.0 },  -- achievement gold
        MACROS        = { 0.6,  0.6,  0.6 },  -- gray
        FAVOURITES    = { 1.0,  0.3,  0.3 },  -- red
    }
    local rgb = iconMap[cat] or { 0.0, 0.90, 1.0 }
    XP.SetTexColor(self.Icon, rgb[1], rgb[2], rgb[3], 1.0)

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
        XP:ApplyBackdrop(Tabs.ActiveTab.Button, "panel", "bg_medium", "border_dim")
        Tabs.ActiveTab.Text:SetTextColor(XP:ColorRGBA("text_muted"))
    end

    Tabs.ActiveTab = self
    self.isActive = true
    XP:ApplyBackdrop(self.Button, "panel", "bg_light", "cyan")
    self.Text:SetTextColor(XP:ColorRGBA("text_bright"))
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
-- Build and display the tab context menu (Zygor-style)
--------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ShowTabMenu()
function Tabs:ShowTabMenu()
    local menu = {}
    local active = {}
    for i, v in ipairs(XP.db and XP.db.char and XP.db.char.tabGuides or {}) do
        active[v.title] = true
    end

    -- Recent guides section
    table.insert(menu, {
        text = "Recent Guides",  -- Would be L["tabsmenu_recent"] in Zygor
        isTitle = true,
    })

    local used = 0
    local history = XP.db and XP.db.char and XP.db.char.guides_history or {}
    for i, v in ipairs(history) do
        if not active[v.title] and used < 3 then
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
        active[v.title] = true
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
-- Hover interaction: show close button, lighten border
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ShowInteraction()
function Tabs:ShowInteraction()
    if self.CloseBtn then
        self.CloseBtn:Show()
    end
    if self.Button and self.Button.SetBackdropBorderColor then
        self.Button:SetBackdropBorderColor(XP:ColorRGBA("border_bright"))
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
    if self.CloseBtn then
        self.CloseBtn:Hide()
    end
    if self.Button and self.Button.SetBackdropBorderColor then
        if self.isActive then
            self.Button:SetBackdropBorderColor(XP:ColorRGBA("cyan"))
        else
            self.Button:SetBackdropBorderColor(XP:ColorRGBA("border_dim"))
        end
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

-----------------------------------------------------------------------
-- Layout: reposition and resize all visible tabs
-----------------------------------------------------------------------
-- DEBUG: ENTER Tabs:ReanchorTabs()
function Tabs:ReanchorTabs()
    if not Tabs.container then return end

    local count = 0
    for _, tab in ipairs(Pool) do
        if tab.guideID then count = count + 1 end
    end

    if count == 0 then
        -- No tabs: position add button after the static STEPS + LEVELING tabs
        if Tabs.AddButton then
            local staticTabsWidth = 50 + 1 + 90 + 4  -- StepsTab + gap + LevelingTab + gap
            Tabs.AddButton:ClearAllPoints()
            Tabs.AddButton:SetPoint("LEFT", Tabs.container, "LEFT", staticTabsWidth, 0)
        end
        return
    end

    local containerWidth = Tabs.container:GetWidth()
    local addBtnWidth = Tabs.AddButton and Tabs.AddButton:GetWidth() or 24
    -- Deduct static tabs (StepsTab 50px + LevelingTab 90px + 3 gaps ~144px) + add button
    local staticTabsWidth = 50 + 1 + 90 + 4  -- StepsTab + gap + LevelingTab + gap
    local availWidth = containerWidth - staticTabsWidth - addBtnWidth - 8 -- margins
    local tabWidth = math.min(availWidth / 2, math.max(80, (availWidth - count) / count))
    local tabHeight = XP:Size("tab_height") - 2

    local prev = nil
    local visibleCount = 0

    for _, tab in ipairs(Pool) do
        if tab.guideID then
            visibleCount = visibleCount + 1

            tab.Button:ClearAllPoints()
            tab.Button:SetSize(tabWidth, tabHeight)

            if prev then
                tab.Button:SetPoint("LEFT", prev, "RIGHT", 1, 0)
            else
                -- First Pool tab starts after LEVELING tab
                tab.Button:SetPoint("LEFT", Tabs.LevelingTab, "RIGHT", 4, 0)
            end

            tab.Button:Show()
            prev = tab.Button
        else
            tab.Button:Hide()
        end
    end

    -- Position add button after last tab
    if Tabs.AddButton and prev then
        Tabs.AddButton:ClearAllPoints()
        Tabs.AddButton:SetPoint("LEFT", prev, "RIGHT", 4, 0)
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
