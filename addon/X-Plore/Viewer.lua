-----------------------------------------------------------------------
-- X-Plore: Viewer.lua
-- The compact step-by-step guide viewer frame.
-- This is the always-visible frame showing current guide progress.
-- Mirrors Zygor's main viewer (ZygorGuidesViewerFrame).
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local OK_CHAR = "\228\149\157"  -- UTF-8 checkmark
local MAX_VISIBLE_STEPS = 8
local STEP_LINE_HEIGHT  = 22

-----------------------------------------------------------------------
-- Step Line Pool (reusable step line frames)
-----------------------------------------------------------------------
local stepLinePool = {}
local activeStepLines = {}

-----------------------------------------------------------------------
-- Create the Viewer Frame
-----------------------------------------------------------------------
function XP:CreateViewerFrame()
    if self.ViewerFrame then return end

    local width  = self:Size("viewer_width")
    local height = self:Size("viewer_height")

    ---------------------------------------------------------------
    -- Main Frame
    ---------------------------------------------------------------
    local frame = XP.CreateBackdropFrame("Frame", "XPlore_ViewerFrame", UIParent)
    frame:SetSize(width, height)
    frame:SetPoint("RIGHT", UIParent, "RIGHT", -50, 0)
    frame:SetMovable(true)
    frame:SetClampedToScreen(true)
    frame:SetFrameStrata("MEDIUM")
    frame:SetFrameLevel(10)
    frame:EnableMouse(true)

    -- Apply skin backdrop
    self:ApplyBackdrop(frame, "main", "bg_deep", "border")

    self.ViewerFrame = frame

    ---------------------------------------------------------------
    -- Title Bar
    ---------------------------------------------------------------
    local titleBar = CreateFrame("Frame", nil, frame)
    titleBar:SetHeight(self:Size("titlebar_height"))
    titleBar:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, 0)
    titleBar:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0)
    titleBar:EnableMouse(true)
    titleBar:RegisterForDrag("LeftButton")
    titleBar:SetScript("OnDragStart", function()
        if not XP.db.profile.viewer.locked then frame:StartMoving() end
    end)
    titleBar:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
    frame.TitleBar = titleBar

    -- Logo icon
    local logoIcon = titleBar:CreateTexture(nil, "ARTWORK")
    logoIcon:SetSize(16, 16)
    logoIcon:SetPoint("LEFT", titleBar, "LEFT", 8, 0)
    logoIcon:SetTexture("Interface\\AddOns\\X-Plore\\textures\\logo")
    frame.LogoIcon = logoIcon

    -- Title text
    local titleText = titleBar:CreateFontString(nil, "OVERLAY")
    titleText:SetPoint("LEFT", logoIcon, "RIGHT", 6, 0)
    self:ApplyFont(titleText, "bold", "cyan")
    titleText:SetText("X-PLORE")
    frame.TitleText = titleText

    -- Close button (15x15 icon texture from TitleButtonsTexture skin asset)
    local closeBtn = CreateFrame("Button", nil, titleBar)
    closeBtn:SetSize(15, 15)
    closeBtn:SetPoint("RIGHT", titleBar, "RIGHT", -6, 0)
    local closeTex = closeBtn:CreateTexture(nil, "ARTWORK")
    closeTex:SetAllPoints()
    closeTex:SetTexture(XP:SD("TitleButtonsTexture"))
    closeTex:SetTexCoord(0, 0.25, 0, 0.5)  -- close sprite (row 1, col 1)
    closeBtn.CloseTex = closeTex
    closeBtn:SetScript("OnClick", function() frame:Hide() end)
    closeBtn:SetScript("OnEnter", function(btn) XP.SetTexColor(btn.CloseTex, XP:ColorRGBA("red_light")) end)
    closeBtn:SetScript("OnLeave", function(btn) XP.SetTexColor(btn.CloseTex, 1, 1, 1, 1) end)
    frame.CloseBtn = closeBtn

    -- Menu button (opens guide browser)
    local menuBtn = CreateFrame("Button", nil, titleBar)
    menuBtn:SetSize(20, 20)
    menuBtn:SetPoint("RIGHT", closeBtn, "LEFT", -4, 0)
    menuBtn:SetNormalTexture("Interface\\Icons\\INV_Misc_Map_01")
    menuBtn:GetNormalTexture():SetVertexColor(XP:ColorRGBA("cyan_dark"))
    menuBtn:SetScript("OnClick", function() XP:ToggleMenu() end)
    menuBtn:SetScript("OnEnter", function(self_btn)
        self_btn:GetNormalTexture():SetVertexColor(XP:ColorRGBA("cyan"))
    end)
    menuBtn:SetScript("OnLeave", function(self_btn)
        self_btn:GetNormalTexture():SetVertexColor(XP:ColorRGBA("cyan_dark"))
    end)
    frame.MenuBtn = menuBtn

    -- Title divider
    frame.TitleDivider = self:CreateDivider(frame, -self:Size("titlebar_height"), "border")

    ---------------------------------------------------------------
    -- Tab Container (under title bar)
    ---------------------------------------------------------------
    local tabContainer = CreateFrame("Frame", nil, frame)
    tabContainer:SetHeight(self:Size("tab_height"))
    tabContainer:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -self:Size("titlebar_height") - 1)
    tabContainer:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, -self:Size("titlebar_height") - 1)

    frame.TabBg = tabContainer:CreateTexture(nil, "BACKGROUND")
    frame.TabBg:SetAllPoints()
    XP.SetTexColor(frame.TabBg, XP:ColorRGBA("bg_medium"))

    -- Tab decoration overlay (viewer8-tabs.tga) — shown when skin TabsDecor == true
    local tabDecorTex = tabContainer:CreateTexture(nil, "ARTWORK")
    tabDecorTex:SetAllPoints()
    local _tabDecorPath = XP:SD("TabsDecorTexture")
    if _tabDecorPath then
        tabDecorTex:SetTexture(_tabDecorPath)
    end
    if XP:SD("TabsDecor") then
        tabDecorTex:Show()
    else
        tabDecorTex:Hide()
    end
    frame.TabDecorTex = tabDecorTex

    frame.TabContainer = tabContainer

    -- Tab divider
    local tabDivY = -(self:Size("titlebar_height") + self:Size("tab_height") + 1)
    frame.TabDivider = self:CreateDivider(frame, tabDivY, "border_dim")

    ---------------------------------------------------------------
    -- Toolbar (step navigation)
    ---------------------------------------------------------------
    local toolbarY = tabDivY - 1
    local toolbar = CreateFrame("Frame", nil, frame)
    toolbar:SetHeight(self:Size("toolbar_height"))
    toolbar:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, toolbarY)
    toolbar:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, toolbarY)
    frame.Toolbar = toolbar

    frame.ToolbarBg = toolbar:CreateTexture(nil, "BACKGROUND")
    frame.ToolbarBg:SetAllPoints()
    XP.SetTexColor(frame.ToolbarBg, XP:ColorRGBA("bg_medium"))

    -- Prev button
    local prevBtn = CreateFrame("Button", nil, toolbar)
    prevBtn:SetSize(24, 20)
    prevBtn:SetPoint("LEFT", toolbar, "LEFT", 8, 0)
    prevBtn:SetNormalFontObject(GameFontNormalSmall)
    prevBtn:SetText("<")
    prevBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
    prevBtn:SetScript("OnClick", function() XP:PrevStep() end)
    frame.PrevBtn = prevBtn

    -- Next button
    local nextBtn = CreateFrame("Button", nil, toolbar)
    nextBtn:SetSize(24, 20)
    nextBtn:SetPoint("RIGHT", toolbar, "RIGHT", -8, 0)
    nextBtn:SetNormalFontObject(GameFontNormalSmall)
    nextBtn:SetText(">")
    nextBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
    nextBtn:SetScript("OnClick", function() XP:NextStep() end)
    frame.NextBtn = nextBtn

    -- Step counter
    local stepNum = toolbar:CreateFontString(nil, "OVERLAY")
    stepNum:SetPoint("CENTER", toolbar, "CENTER", 0, 0)
    self:ApplyFont(stepNum, "bold", "text_bright")
    stepNum:SetText("Step 1 / 1")
    frame.StepNum = stepNum

    -- Guide name (left of step counter)
    local guideName = toolbar:CreateFontString(nil, "OVERLAY")
    guideName:SetPoint("LEFT", prevBtn, "RIGHT", 8, 0)
    guideName:SetPoint("RIGHT", stepNum, "LEFT", -8, 0)
    guideName:SetJustifyH("LEFT")
    self:ApplyFont(guideName, "small", "cyan_dark")
    guideName:SetText("")
    frame.GuideName = guideName

    -- Toolbar divider
    frame.ToolbarDivider = self:CreateDivider(frame, toolbarY - self:Size("toolbar_height"), "border_dim")

    ---------------------------------------------------------------
    -- Step Scroll Area
    -- Use a plain ScrollFrame + mousewheel — UIPanelScrollFrameTemplate
    -- adds scroll-arrow buttons that bleed outside the frame on WotLK.
    ---------------------------------------------------------------
    local scrollTop    = toolbarY - self:Size("toolbar_height") - 1
    local progressH    = 12   -- progress bar area height (between scroll and footer)
    local footerH      = self:Size("footer_height")
    local scrollbarW    = 12  -- narrow internal scrollbar

    -- ScrollFrame fills the content area (no right overhang)
    local scrollFrame = CreateFrame("ScrollFrame", "XPlore_ViewerScroll", frame)
    scrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, scrollTop)
    scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -(scrollbarW + 2), footerH + progressH)
    frame.ScrollFrame = scrollFrame

    -- Mousewheel scrolling
    scrollFrame:EnableMouseWheel(true)
    scrollFrame:SetScript("OnMouseWheel", function(sf, delta)
        local current = sf:GetVerticalScroll()
        local maxScroll = sf:GetVerticalScrollRange()
        local step = 30
        local new = current - delta * step
        if new < 0 then new = 0 end
        if new > maxScroll then new = maxScroll end
        sf:SetVerticalScroll(new)
        -- sync scrollbar thumb
        if sf.ScrollBar then
            local range = maxScroll
            if range > 0 then
                sf.ScrollBar:SetValue(new)
            end
        end
    end)

    -- Thin scrollbar track (purely cosmetic, also draggable)
    local scrollBar = CreateFrame("Slider", nil, frame)
    scrollBar:SetWidth(scrollbarW)
    scrollBar:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, scrollTop)
    scrollBar:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, footerH + progressH)
    scrollBar:SetOrientation("VERTICAL")
    scrollBar:SetMinMaxValues(0, 1)
    scrollBar:SetValue(0)

    local sbTrack = scrollBar:CreateTexture(nil, "BACKGROUND")
    sbTrack:SetAllPoints()
    local sbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
    XP.SetTexColor(sbTrack, sbtc[1], sbtc[2], sbtc[3], sbtc[4])
    frame.ScrollTrack = sbTrack

    local sbThumb = scrollBar:CreateTexture(nil, "OVERLAY")
    sbThumb:SetWidth(scrollbarW - 2)
    local sbTex = XP:SD("ScrollBarTexture")
    if sbTex then sbThumb:SetTexture(sbTex) end
    local sbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
    XP.SetTexColor(sbThumb, sbcc[1], sbcc[2], sbcc[3], sbcc[4])
    scrollBar:SetThumbTexture(sbThumb)
    frame.ScrollThumb = sbThumb

    -- Wire scrollbar drag → scroll frame
    scrollBar:SetScript("OnValueChanged", function(sb, val)
        scrollFrame:SetVerticalScroll(val)
    end)

    frame.ScrollBar = scrollBar
    scrollFrame.ScrollBar = scrollBar

    -- Keep scrollbar range updated when content changes
    scrollFrame:SetScript("OnScrollRangeChanged", function(sf, xRange, yRange)
        local maxScroll = yRange or sf:GetVerticalScrollRange()
        scrollBar:SetMinMaxValues(0, math.max(0, maxScroll))
        -- hide bar when no scrolling needed
        if maxScroll <= 0 then
            scrollBar:Hide()
        else
            scrollBar:Show()
        end
    end)

    local scrollChild = CreateFrame("Frame", "XPlore_ViewerScrollChild", scrollFrame)
    scrollChild:SetSize(width - scrollbarW - 2, 1)  -- Height set dynamically
    scrollFrame:SetScrollChild(scrollChild)
    frame.ScrollChild = scrollChild

    ---------------------------------------------------------------
    -- Progress Area (between scroll content and footer bar)
    ---------------------------------------------------------------
    local progressArea = CreateFrame("Frame", nil, frame)
    progressArea:SetHeight(progressH)
    progressArea:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, footerH)
    progressArea:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, footerH)
    frame.ProgressArea = progressArea

    -- Progress bar (spans full width of progress area, vertically centered)
    local progressBar = CreateFrame("StatusBar", nil, progressArea)
    progressBar:SetHeight(4)
    progressBar:SetPoint("LEFT", progressArea, "LEFT", 10, 0)
    progressBar:SetPoint("RIGHT", progressArea, "RIGHT", -10, 0)
    progressBar:SetPoint("CENTER", progressArea, "CENTER", 0, 0)
    local pbarTex = XP:SD("ProgressBarTextureFile")
    if pbarTex then
        progressBar:SetStatusBarTexture(pbarTex)
    else
        progressBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
    end
    local pbarColor = XP:SD("ProgressBarTextureColor")
    if pbarColor then
        progressBar:SetStatusBarColor(pbarColor[1], pbarColor[2], pbarColor[3], pbarColor[4])
    else
        progressBar:SetStatusBarColor(XP:ColorRGBA("cyan"))
    end
    progressBar:SetMinMaxValues(0, 100)
    progressBar:SetValue(0)
    frame.ProgressBar = progressBar

    -- Progress bar background
    local pbarBg = progressBar:CreateTexture(nil, "BACKGROUND")
    pbarBg:SetAllPoints()
    local pbarBgColor = XP:SD("ProgressBarBackdropColor") or {0, 0, 0, 0.4}
    XP.SetTexColor(pbarBg, pbarBgColor[1], pbarBgColor[2], pbarBgColor[3], pbarBgColor[4])
    frame.ProgressBarBg = pbarBg

    -- Progress percent (right side of progress area)
    local pctText = progressArea:CreateFontString(nil, "OVERLAY")
    pctText:SetPoint("RIGHT", progressArea, "RIGHT", -8, 0)
    self:ApplyFont(pctText, "small", "cyan_dark")
    pctText:SetText("0%")
    frame.ProgressPercent = pctText

    ---------------------------------------------------------------
    -- Footer (minimal — sync indicator only)
    ---------------------------------------------------------------
    local footer = CreateFrame("Frame", nil, frame)
    footer:SetHeight(footerH)
    footer:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, 0)
    footer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)
    frame.Footer = footer

    frame.FooterBg = footer:CreateTexture(nil, "BACKGROUND")
    frame.FooterBg:SetAllPoints()
    XP.SetTexColor(frame.FooterBg, XP:ColorRGBA("bg_medium"))

    -- Auto-sync indicator (centered in footer)
    local syncDot = footer:CreateTexture(nil, "OVERLAY")
    syncDot:SetSize(6, 6)
    syncDot:SetPoint("CENTER", footer, "CENTER", -16, 0)
    XP.SetTexColor(syncDot, XP:ColorRGBA("green"))
    frame.SyncDot = syncDot

    local syncText = footer:CreateFontString(nil, "OVERLAY")
    syncText:SetPoint("LEFT", syncDot, "RIGHT", 4, 0)
    self:ApplyFont(syncText, "small", "cyan_dark")
    syncText:SetText("AUTO")
    frame.SyncText = syncText

    ---------------------------------------------------------------
    -- Apply saved settings
    ---------------------------------------------------------------
    frame:SetScale(self.db.profile.viewer.scale or 1.0)
    frame:SetMovable(not self.db.profile.viewer.locked)

    if not self.db.profile.viewer.shown then
        frame:Hide()
    end

    ---------------------------------------------------------------
    -- Runtime re-skin subscriber
    -- Called by XP:SetSkin() when the player changes skin in options.
    ---------------------------------------------------------------
    XP:RegisterSkinSubscriber(function()
        local f = XP.ViewerFrame
        if not f then return end

        -- Main frame backdrop
        XP:ApplyBackdrop(f, "main", "bg_deep", "border")

        -- Tab bar background
        if f.TabBg then
            XP.SetTexColor(f.TabBg, XP:ColorRGBA("bg_medium"))
        end

        -- Tab decoration texture (skin-specific TGA, shown when TabsDecor == true)
        if f.TabDecorTex then
            local tdPath = XP:SD("TabsDecorTexture")
            if tdPath then f.TabDecorTex:SetTexture(tdPath) end
            if XP:SD("TabsDecor") then
                f.TabDecorTex:Show()
            else
                f.TabDecorTex:Hide()
            end
        end

        -- Toolbar background
        if f.ToolbarBg then
            XP.SetTexColor(f.ToolbarBg, XP:ColorRGBA("bg_medium"))
        end

        -- Footer background
        if f.FooterBg then
            XP.SetTexColor(f.FooterBg, XP:ColorRGBA("bg_medium"))
        end

        -- Title bar elements
        if f.LogoIcon then
            -- Logo uses TGA directly — no tint needed
        end
        if f.TitleText then
            XP:ApplyFont(f.TitleText, "bold", "cyan")
        end
        if f.CloseBtn and f.CloseBtn.CloseTex then
            XP.SetTexColor(f.CloseBtn.CloseTex, 1, 1, 1, 1)
        end
        if f.MenuBtn and f.MenuBtn:GetNormalTexture() then
            f.MenuBtn:GetNormalTexture():SetVertexColor(XP:ColorRGBA("cyan_dark"))
        end

        -- Toolbar elements
        if f.PrevBtn and f.PrevBtn:GetFontString() then
            f.PrevBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        end
        if f.NextBtn and f.NextBtn:GetFontString() then
            f.NextBtn:GetFontString():SetTextColor(XP:ColorRGBA("cyan"))
        end
        if f.StepNum then
            XP:ApplyFont(f.StepNum, "bold", "text_bright")
        end
        if f.GuideName then
            XP:ApplyFont(f.GuideName, "small", "cyan_dark")
        end

        -- Dividers
        if f.TitleDivider then XP.SetTexColor(f.TitleDivider, XP:ColorRGBA("border"))     end
        if f.TabDivider    then XP.SetTexColor(f.TabDivider,   XP:ColorRGBA("border_dim")) end
        if f.ToolbarDivider then XP.SetTexColor(f.ToolbarDivider, XP:ColorRGBA("border_dim")) end

        -- Scrollbar track + thumb
        if f.ScrollTrack then
            local sbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
            XP.SetTexColor(f.ScrollTrack, sbtc[1], sbtc[2], sbtc[3], sbtc[4])
        end
        if f.ScrollThumb then
            local sbTex = XP:SD("ScrollBarTexture")
            if sbTex then f.ScrollThumb:SetTexture(sbTex) end
            local sbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
            XP.SetTexColor(f.ScrollThumb, sbcc[1], sbcc[2], sbcc[3], sbcc[4])
        end

        -- Footer elements
        if f.SyncDot then
            XP.SetTexColor(f.SyncDot, XP:ColorRGBA("green"))
        end
        if f.SyncText then
            XP:ApplyFont(f.SyncText, "small", "cyan_dark")
        end
        if f.ProgressPercent then
            XP:ApplyFont(f.ProgressPercent, "small", "cyan_dark")
        end
        if f.ProgressBar then
            local pbarTex = XP:SD("ProgressBarTextureFile")
            if pbarTex then
                f.ProgressBar:SetStatusBarTexture(pbarTex)
            end
            local pbarColor = XP:SD("ProgressBarTextureColor")
            if pbarColor then
                f.ProgressBar:SetStatusBarColor(pbarColor[1], pbarColor[2], pbarColor[3], pbarColor[4])
            else
                f.ProgressBar:SetStatusBarColor(XP:ColorRGBA("cyan"))
            end
        end
        if f.ProgressBarBg then
            local pbarBgColor = XP:SD("ProgressBarBackdropColor") or {0, 0, 0, 0.4}
            XP.SetTexColor(f.ProgressBarBg, pbarBgColor[1], pbarBgColor[2], pbarBgColor[3], pbarBgColor[4])
        end

        -- Redraw current step lines with new skin colors
        XP:UpdateViewer()
    end)
end

-----------------------------------------------------------------------
-- Create a Step Line Frame
-----------------------------------------------------------------------
local function CreateStepLine(parent, index)
    local lineHeight = STEP_LINE_HEIGHT

    local line = XP.CreateBackdropFrame("Frame", nil, parent)
    line:SetHeight(lineHeight)

    -- Background (set by status: active, complete, upcoming)
    XP:ApplyBackdrop(line, "panel", "bg_medium", "border_dim")

    -- Left edge indicator (colored bar, 2px wide)
    local edge = line:CreateTexture(nil, "ARTWORK")
    edge:SetWidth(2)
    edge:SetPoint("TOPLEFT", line, "TOPLEFT", 0, 0)
    edge:SetPoint("BOTTOMLEFT", line, "BOTTOMLEFT", 0, 0)
    XP.SetTexColor(edge, XP:ColorRGBA("cyan"))
    line.Edge = edge

    -- Action icon (14×14, left-aligned with vertical centering)
    local icon = line:CreateTexture(nil, "ARTWORK")
    icon:SetSize(14, 14)
    icon:SetPoint("LEFT", line, "LEFT", 6, 0)
    icon:SetPoint("MIDDLE", line, "MIDDLE", 0, 0)
    line.Icon = icon

    -- Step number badge (small circle with number, left of title)
    local stepNum = line:CreateFontString(nil, "OVERLAY")
    stepNum:SetPoint("LEFT", icon, "RIGHT", 6, 0)
    stepNum:SetWidth(16)
    XP:ApplyFont(stepNum, "small", "text_dim")
    stepNum:SetJustifyH("CENTER")
    line.StepNum2 = stepNum

    -- Step title (single line, takes remaining space)
    local title = line:CreateFontString(nil, "OVERLAY")
    title:SetPoint("LEFT", stepNum, "RIGHT", 4, 0)
    title:SetPoint("RIGHT", line, "RIGHT", -40, 0)
    title:SetJustifyH("LEFT")
    title:SetJustifyV("MIDDLE")
    title:SetNonSpaceWrap(false)
    title:SetMaxLines(1)
    XP:ApplyFont(title, "small", "text_bright")
    line.Title = title

    -- Status indicator (right side — shows check or progress)
    local status = line:CreateFontString(nil, "OVERLAY")
    status:SetPoint("RIGHT", line, "RIGHT", -6, 0)
    status:SetPoint("MIDDLE", line, "MIDDLE", 0, 0)
    XP:ApplyFont(status, "small", "text_dim")
    line.Status = status

    line.stepIndex = index

    return line
end

-----------------------------------------------------------------------
-- Update Viewer: refresh all step lines from current guide
-----------------------------------------------------------------------
function XP:UpdateViewer()
    if not self.ViewerFrame then return end
    local frame = self.ViewerFrame

    local guide = self.CurrentGuide
    if not guide then
        -- No guide loaded: show empty state
        frame.StepNum:SetText("No Guide")
        frame.GuideName:SetText("")
        frame.ProgressPercent:SetText("--")
        frame.ProgressBar:SetValue(0)
        -- Clear step lines
        for _, line in ipairs(activeStepLines) do
            line:Hide()
        end
        return
    end

    local currentStep = self.CurrentStep or 1
    local numSteps = guide:GetNumSteps()  -- triggers Parse() if not yet parsed

    -- Update toolbar
    frame.StepNum:SetText("Step " .. currentStep .. " / " .. numSteps)
    frame.GuideName:SetText(guide.titleShort or guide.title)

    -- Update progress
    local pct = guide:GetProgressPercent(currentStep)
    frame.ProgressPercent:SetText(pct .. "%")
    frame.ProgressBar:SetMinMaxValues(0, numSteps)
    frame.ProgressBar:SetValue(currentStep)

    -- Auto-sync indicator color
    if self.db.profile.autoAdvance then
        XP.SetTexColor(frame.SyncDot, XP:ColorRGBA("green"))
        frame.SyncText:SetText("AUTO")
    else
        XP.SetTexColor(frame.SyncDot, XP:ColorRGBA("text_dim"))
        frame.SyncText:SetText("MANUAL")
    end

    -- Populate step lines
    local scrollChild = frame.ScrollChild
    local viewWidth = scrollChild:GetWidth()

    -- Determine visible range: show current step + surrounding steps
    local firstVisible = math.max(1, currentStep - 1)
    local lastVisible  = math.min(numSteps, firstVisible + MAX_VISIBLE_STEPS - 1)

    -- Hide all existing lines first
    for _, line in ipairs(activeStepLines) do
        line:Hide()
    end

    local yOffset = 0
    local lineIndex = 0

    for i = firstVisible, lastVisible do
        lineIndex = lineIndex + 1
        local step = guide:GetStep(i)
        if not step then break end

        -- Get or create a step line
        local line = activeStepLines[lineIndex]
        if not line then
            line = CreateStepLine(scrollChild, i)
            activeStepLines[lineIndex] = line
        end

        -- Position
        line:ClearAllPoints()
        line:SetPoint("TOPLEFT", scrollChild, "TOPLEFT", 0, -yOffset)
        line:SetPoint("TOPRIGHT", scrollChild, "TOPRIGHT", 0, -yOffset)
        line.stepIndex = i

        -- Set content
        line.Title:SetText(step:GetTitle())
        line.StepNum2:SetText(i)

        -- Set icon (iconName may be a full WoW path or a bare name)
        local iconName = step:GetPrimaryIcon()
        local iconPath
        if iconName and (iconName:find("^Interface") or iconName:find("^interface")) then
            iconPath = iconName
        elseif iconName and iconName ~= "" then
            iconPath = XP.ICON_PATH .. iconName .. ".tga"
        else
            iconPath = nil
        end
        line.Icon:SetTexture(iconPath)

        -- Style based on status
        if i < currentStep then
            -- Completed step
            self:ApplyBackdrop(line, "panel", "step_complete", "border_dim")
            XP.SetTexColor(line.Edge, XP:ColorRGBA("green"))
            line.Title:SetTextColor(XP:ColorRGBA("green"))
            line.StepNum2:SetTextColor(XP:ColorRGBA("green"))
            line.Status:SetText(OK_CHAR)
            line.Status:SetTextColor(XP:ColorRGBA("green"))
        elseif i == currentStep then
            -- Active step (highlighted)
            self:ApplyBackdrop(line, "panel", "step_active", "cyan")
            XP.SetTexColor(line.Edge, XP:ColorRGBA("cyan"))
            line.Title:SetTextColor(XP:ColorRGBA("text_bright"))
            line.StepNum2:SetTextColor(XP:ColorRGBA("cyan"))
            line.Status:SetText("")
        else
            -- Upcoming step
            self:ApplyBackdrop(line, "panel", "step_upcoming", "border_dim")
            XP.SetTexColor(line.Edge, XP:ColorRGBA("text_dim"))
            line.Title:SetTextColor(XP:ColorRGBA("text_muted"))
            line.StepNum2:SetTextColor(XP:ColorRGBA("text_dim"))
            line.Status:SetText("")
        end

        -- Click handler: go to this step
        line:EnableMouse(true)
        line:SetScript("OnMouseDown", function()
            XP:GoToStep(i)
        end)

        line:Show()
        yOffset = yOffset + STEP_LINE_HEIGHT + 2  -- 2px gap between lines
    end

    -- Update scroll child height
    scrollChild:SetHeight(yOffset)

    -- Update waypoint for current step
    self:UpdateWaypoint()
end
