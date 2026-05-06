-----------------------------------------------------------------------
-- X-Plore: Viewer.lua
-- The compact step-by-step guide viewer frame.
-- This is the always-visible frame showing current guide progress.
-- Mirrors XP's main viewer (XPViewerFrame).
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local OK_CHAR = "\228\149\157"  -- UTF-8 checkmark
local MAX_VISIBLE_STEPS = 8
local STEP_LINE_HEIGHT  = 50

-----------------------------------------------------------------------
-- Step Line Pool (reusable step line frames)
-----------------------------------------------------------------------
local stepLinePool = {}
local activeStepLines = {}

-----------------------------------------------------------------------
-- Create the Viewer Frame
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:CreateViewerFrame()
function XP:CreateViewerFrame()
    if self.ViewerFrame and self.ViewerFrameCreated then return end

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

    -- Apply skin backdrop — use WindowBackdrop for rounded corners + hairline border
    self:ApplyBackdrop(frame, "WindowBackdrop", "bg_deep", nil)
    -- Apply the hairline border color separately (WindowBackdrop has transparent bg, border is the edge)
    if frame.SetBackdropBorderColor then
        frame:SetBackdropBorderColor(XP:ColorRGBA("border"))
    end

    self.ViewerFrame = frame
    self.ViewerFrameCreated = true

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
        if XP.db and XP.db.profile and XP.db.profile.viewer and not XP.db.profile.viewer.locked then
            frame:StartMoving()
        end
    end)
    titleBar:SetScript("OnDragStop", function() frame:StopMovingOrSizing() end)
    frame.TitleBar = titleBar

    -- Logo image (centered in title bar)
    local logoTex = titleBar:CreateTexture(nil, "ARTWORK")
    local logoSize = self:SD("TitleLogoSize") or {120, 24}
    logoTex:SetSize(logoSize[1] or 120, logoSize[2] or 24)
    logoTex:SetPoint("CENTER", titleBar, "CENTER", 0, 0)
    local logoPath = self:SD("TitleLogo") or ("Interface\\AddOns\\" .. ADDON_NAME .. "\\Skins\\logo2")
    logoTex:SetTexture(logoPath)
    titleBar.Logo = logoTex
    frame.LogoTex = logoTex

    -- Fallback title text (shown only if no logo skin data)
    local titleText = titleBar:CreateFontString(nil, "OVERLAY")
    titleText:SetPoint("CENTER", titleBar, "CENTER", 0, 0)
    self:ApplyFont(titleText, "bold", "white")
    titleText:SetText("X-PLORE")
    titleText:Hide()  -- hidden when logo is present
    frame.TitleText = titleText

    -- Menu button (hamburger icon — FAR LEFT of title bar)
    -- Uses standalone hamburger-icon.tga (titlebuttons-thin sprite sheet button 17 is corrupted)
    local menuBtn = CreateFrame("Button", nil, titleBar)
    menuBtn:SetSize(16, 16)
    menuBtn:SetPoint("LEFT", titleBar, "LEFT", 6, 0)
    local menuNorm = menuBtn:CreateTexture(nil, "ARTWORK")
    menuNorm:SetAllPoints(menuBtn)
    menuNorm:SetTexture(XP.TEXTURE_PATH .. "hamburger-icon")
    menuBtn:SetNormalTexture(menuNorm)
    local menuPushed = menuBtn:CreateTexture(nil, "ARTWORK")
    menuPushed:SetAllPoints(menuBtn)
    menuPushed:SetTexture(XP.TEXTURE_PATH .. "hamburger-icon")
    menuBtn:SetPushedTexture(menuPushed)
    local menuHl = menuBtn:CreateTexture(nil, "HIGHLIGHT")
    menuHl:SetAllPoints(menuBtn)
    menuHl:SetTexture(XP.TEXTURE_PATH .. "hamburger-icon")
    menuBtn:SetHighlightTexture(menuHl)
    menuBtn:SetScript("OnClick", function() XP:ToggleMenu() end)
    frame.MenuBtn = menuBtn

    local titleBtnPath = XP:SD("TitleButtonsTexture")
    -- Close button (using XP's titlebuttons-thin sprite sheet — FAR RIGHT)
    local closeBtn = CreateFrame("Button", nil, titleBar)
    closeBtn:SetSize(16, 16)
    closeBtn:SetPoint("RIGHT", titleBar, "RIGHT", -6, 0)
    local closeNorm = closeBtn:CreateTexture(nil, "ARTWORK")
    closeNorm:SetSize(16, 16)
    closeNorm:SetPoint("CENTER", closeBtn, "CENTER", 0, 0)
    closeNorm:SetTexture(titleBtnPath)
    local padding = 1/16/64
    closeNorm:SetTexCoord(5/64 + padding, 6/64 - padding, 1/4 + padding, 1/2 - padding)
    closeBtn:SetNormalTexture(closeNorm)
    local closePushed = closeBtn:CreateTexture(nil, "ARTWORK")
    closePushed:SetSize(16, 16)
    closePushed:SetPoint("CENTER", closeBtn, "CENTER", 0, 0)
    closePushed:SetTexture(titleBtnPath)
    closePushed:SetTexCoord(5/64 + padding, 6/64 - padding, 2/4 + padding, 3/4 - padding)
    closeBtn:SetPushedTexture(closePushed)
    local hlTex = closeBtn:CreateTexture(nil, "HIGHLIGHT")
    hlTex:SetAllPoints()
    hlTex:SetTexture(titleBtnPath)
    hlTex:SetTexCoord(5/64 + padding, 6/64 - padding, 3/4 + padding, 1 - padding)
    hlTex:SetBlendMode("ADD")
    closeBtn:SetHighlightTexture(hlTex)
    closeBtn:SetScript("OnClick", function() frame:Hide() end)
    frame.CloseBtn = closeBtn

    -- Title divider
    frame.TitleDivider = self:CreateDivider(frame, -self:Size("titlebar_height"), "border")

    ---------------------------------------------------------------
    -- Tab Container (no InfoBar — XP has no info bar between title and tabs)
    -- The tab bar fills the space directly below the title divider.
    ---------------------------------------------------------------
    local tabContainer = CreateFrame("Frame", nil, frame)
    tabContainer:SetHeight(self:Size("tab_height"))
    -- Tab bar starts immediately after title bar (no gap, no info bar)
    local tabY = -(self:Size("titlebar_height") + 1)
    tabContainer:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, tabY)
    tabContainer:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, tabY)

    frame.TabBg = tabContainer:CreateTexture(nil, "BACKGROUND")
    frame.TabBg:SetAllPoints()
    local tabContainerBgColor = XP:SD("TabsContainerBackdropInactive") or XP:Color("bg_medium")
    XP.SetTexColor(frame.TabBg, tabContainerBgColor[1], tabContainerBgColor[2], tabContainerBgColor[3], tabContainerBgColor[4] or 1)


    frame.TabContainer = tabContainer

    -- No tab divider — tab bar flows directly into toolbar (XP style)
    -- Toolbar starts immediately after tab bar bottom
    local toolbarY = -(self:Size("titlebar_height") + self:Size("tab_height") + 1)
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
    local progressH    = 12   -- progress bar area height (at very bottom)
    local footerH      = 0    -- no footer (AUTO indicator removed)
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
    scrollBar:Hide()  -- hidden by default; OnScrollRangeChanged shows it when content overflows

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

    -- Store layout values for dynamic re-anchoring in UpdateViewer (empty vs loaded state)
    frame._scrollTop  = scrollTop
    frame._scrollbarW = scrollbarW + 2
    frame._footerH    = footerH + progressH
    frame._titleH     = self:Size("titlebar_height")

    -- Empty-state "Welcome to X-PLORE" + "Click here" (centered in viewport, not scrollChild)
    -- Parented to scrollFrame so they're positioned relative to the visible viewport and not clipped
    local emptyTitle = scrollFrame:CreateFontString(nil, "OVERLAY")
    emptyTitle:SetPoint("CENTER", scrollFrame, "CENTER", 0, 10)
    emptyTitle:SetJustifyH("CENTER")
    emptyTitle:SetJustifyV("MIDDLE")
    XP:ApplyFont(emptyTitle, "normal", "text_bright")
    emptyTitle:SetText("Welcome to X-PLORE")
    emptyTitle:Hide()
    frame.EmptyTitleText = emptyTitle

    local emptyText = scrollFrame:CreateFontString(nil, "OVERLAY")
    emptyText:SetPoint("CENTER", scrollFrame, "CENTER", 0, -10)
    emptyText:SetJustifyH("CENTER")
    emptyText:SetJustifyV("MIDDLE")
    XP:ApplyFont(emptyText, "normal", "accent")
    emptyText:SetText("Click here")
    emptyText:Hide()
    frame.EmptyStateText = emptyText

    -- Make empty text clickable to open guide menu
    local emptyClickArea = CreateFrame("Button", nil, scrollFrame)
    emptyClickArea:SetAllPoints(emptyText)
    emptyClickArea:SetScript("OnClick", function() XP:ToggleMenu() end)
    emptyClickArea:SetScript("OnEnter", function()
        emptyText:SetTextColor(XP:ColorRGBA("orange"))
    end)
    emptyClickArea:SetScript("OnLeave", function()
        emptyText:SetTextColor(XP:ColorRGBA("accent"))  -- restore original accent color
    end)
    frame.EmptyStateClickArea = emptyClickArea

    ---------------------------------------------------------------
    -- Progress Area (between scroll content and footer bar)
    ---------------------------------------------------------------
    local progressArea = CreateFrame("Frame", nil, frame)
    progressArea:SetHeight(progressH)
    progressArea:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 0, footerH)
    progressArea:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, footerH)
    frame.ProgressArea = progressArea

    -- Progress bar (spans full width of progress area)
    local progressBar = CreateFrame("StatusBar", nil, progressArea)
    progressBar:SetHeight(4)
    progressBar:SetPoint("LEFT", progressArea, "LEFT", 0, 0)
    progressBar:SetPoint("RIGHT", progressArea, "RIGHT", 0, 0)
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

    ---------------------------------------------------------------
    -- Apply saved settings
    ---------------------------------------------------------------
    local viewerProfile = self.db.profile.viewer or {}
    frame:SetScale(viewerProfile.scale or 1.0)
    frame:SetMovable(not viewerProfile.locked)

    if not viewerProfile.shown then
        frame:Hide()
    end

    ---------------------------------------------------------------
    -- Runtime re-skin subscriber
    -- Called by XP:SetSkin() when the player changes skin in options.
    ---------------------------------------------------------------
    XP:RegisterSkinSubscriber(function()
        local f = XP.ViewerFrame
        if not f then return end

        -- Main frame backdrop — WindowBackdrop with rounded corners
        XP:ApplyBackdrop(f, "WindowBackdrop", "bg_deep", nil)
        if f.SetBackdropBorderColor then
            f:SetBackdropBorderColor(XP:ColorRGBA("border"))
        end

        -- Tab bar background (texture, not frame — use SetTexColor)
        if f.TabBg then
            local tabBgColor = XP:SD("TabsContainerBackdropInactive") or XP:Color("bg_medium")
            XP.SetTexColor(f.TabBg, tabBgColor[1], tabBgColor[2], tabBgColor[3], tabBgColor[4] or 1)
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
        -- Close + menu buttons use sprite-sheet textures — no skin-coloring needed

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

        -- Progress bar
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
-- DEBUG: EXIT XP:CreateViewerFrame()
end

-----------------------------------------------------------------------
-- Create a Step Line Frame
-----------------------------------------------------------------------
-- DEBUG: ENTER CreateStepLine()
-- DEBUG: PARAM parent = [parent]
-- DEBUG: PARAM index = [index]
local function CreateStepLine(parent, index)
    local line = XP.CreateBackdropFrame("Frame", nil, parent)
    line:SetHeight(STEP_LINE_HEIGHT)
    XP:ApplyBackdrop(line, "step", "step_upcoming", nil)

    -- Left accent bar (3 px wide, full height)
    local edge = line:CreateTexture(nil, "ARTWORK")
    edge:SetWidth(3)
    edge:SetPoint("TOPLEFT",    line, "TOPLEFT",    0, 0)
    edge:SetPoint("BOTTOMLEFT", line, "BOTTOMLEFT", 0, 0)
    XP.SetTexColor(edge, XP:ColorRGBA("cyan"))
    line.Edge = edge

    -- Action icon (18×18, vertically centered, after the edge bar)
    local icon = line:CreateTexture(nil, "ARTWORK")
    icon:SetSize(18, 18)
    icon:SetPoint("LEFT", line, "LEFT", 11, 0)
    line.Icon = icon

    -- "STEP N" label — small muted text, top-left of text block
    local stepNum = line:CreateFontString(nil, "OVERLAY")
    stepNum:SetPoint("TOPLEFT", line, "TOPLEFT", 37, -8)
    stepNum:SetPoint("RIGHT",   line, "RIGHT",  -44, 0)
    XP:ApplyFont(stepNum, "tiny", "text_dim")
    stepNum:SetJustifyH("LEFT")
    line.StepNum2 = stepNum

    -- Step title — normal text below the step label
    local title = line:CreateFontString(nil, "OVERLAY")
    title:SetPoint("TOPLEFT", stepNum, "BOTTOMLEFT", 0, -3)
    title:SetPoint("RIGHT",   line,    "RIGHT",     -44, 0)
    title:SetJustifyH("LEFT")
    title:SetJustifyV("TOP")
    title:SetNonSpaceWrap(true)
    if title.SetMaxLines then title:SetMaxLines(2) end
    XP:ApplyFont(title, "small", "text_bright")
    line.Title = title

    -- Status indicator — right side, vertically centered (RIGHT is mid-right, y=0 = center)
    local status = line:CreateFontString(nil, "OVERLAY")
    status:SetPoint("RIGHT", line, "RIGHT", -8, 0)
    XP:ApplyFont(status, "small", "text_dim")
    line.Status = status

    line.stepIndex = index

    -- 1 px separator at the bottom
    local sep = line:CreateTexture(nil, "ARTWORK")
    sep:SetHeight(1)
    sep:SetPoint("BOTTOMLEFT",  line, "BOTTOMLEFT",  0, 0)
    sep:SetPoint("BOTTOMRIGHT", line, "BOTTOMRIGHT", 0, 0)
    XP.SetTexColor(sep, XP:ColorRGBA("border"))
    line.Sep = sep

    return line
end

-----------------------------------------------------------------------
-- Update Viewer: refresh all step lines from current guide
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:UpdateViewer()
function XP:UpdateViewer()
    if not self.ViewerFrame then return end
    local frame = self.ViewerFrame

    local guide = self.CurrentGuide
    if not guide then
        -- No guide: hide all chrome, extend scroll area to fill full height, show welcome text
        if frame.TabContainer then frame.TabContainer:Hide() end
        if frame.Toolbar then frame.Toolbar:Hide() end
        if frame.ToolbarDivider then frame.ToolbarDivider:Hide() end
        if frame.ProgressArea then frame.ProgressArea:Hide() end
        if frame.Footer then frame.Footer:Hide() end
        if frame.ScrollBar then frame.ScrollBar:Hide() end
        -- Extend scroll frame to fill the whole viewer below the title bar
        if frame.ScrollFrame and frame._titleH then
            frame.ScrollFrame:ClearAllPoints()
            frame.ScrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, -frame._titleH)
            frame.ScrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, 0)
        end
        -- Show empty state, hide step lines
        if frame.EmptyTitleText then frame.EmptyTitleText:Show() end
        if frame.EmptyStateText then frame.EmptyStateText:Show() end
        if frame.EmptyStateClickArea then frame.EmptyStateClickArea:Show() end
        for _, line in ipairs(activeStepLines) do
            line:Hide()
        end
        return
    end

    -- Guide is loaded — restore chrome, restore scroll frame anchors, hide empty state
    if frame.TabContainer then frame.TabContainer:Show() end
    if frame.Toolbar then frame.Toolbar:Show() end
    if frame.ToolbarDivider then frame.ToolbarDivider:Show() end
    if frame.ProgressArea then frame.ProgressArea:Show() end
    if frame.Footer then frame.Footer:Show() end
    if frame.ScrollFrame and frame._scrollTop then
        frame.ScrollFrame:ClearAllPoints()
        frame.ScrollFrame:SetPoint("TOPLEFT", frame, "TOPLEFT", 0, frame._scrollTop)
        frame.ScrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -frame._scrollbarW, frame._footerH)
    end
    if frame.EmptyTitleText then frame.EmptyTitleText:Hide() end
    if frame.EmptyStateText then frame.EmptyStateText:Hide() end
    if frame.EmptyStateClickArea then frame.EmptyStateClickArea:Hide() end

    local currentStep = self.CurrentStep or 1
    local numSteps = guide:GetNumSteps()  -- triggers Parse() if not yet parsed

    -- Event-driven: find the first non-complete step (this is the "active" step)
    local activeStepNum = nil
    for i = 1, numSteps do
        local s = guide:GetStep(i)
        if s and not s:IsComplete() then
            activeStepNum = i
            break
        end
    end
    -- Fall back to currentStep if all steps are somehow complete
    activeStepNum = activeStepNum or currentStep

    -- Update toolbar — show completed count / total
    local completedSteps = guide:GetCompletedSteps()
    frame.StepNum:SetText("Step " .. activeStepNum .. " / " .. numSteps .. "  (" .. completedSteps .. " done)")
    frame.GuideName:SetText(guide.titleShort or guide.title)

    -- Update progress bar
    frame.ProgressBar:SetMinMaxValues(0, numSteps)
    frame.ProgressBar:SetValue(completedSteps)

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
        line.StepNum2:SetText("STEP " .. i)

        -- Set icon from step type — GetPrimaryIcon() returns Skins file names
        -- e.g. "accept_quest", "kill", "interact" → Skins/accept_quest.tga
        local iconName = step:GetPrimaryIcon()
        if iconName and iconName ~= "" and iconName ~= "default" then
            line.Icon:SetTexture("Interface\\AddOns\\" .. ADDON_NAME .. "\\Skins\\" .. iconName)
        else
            line.Icon:SetTexture("")
        end

        -- Style based on ACTUAL goal completion (event-driven), not position
        local stepComplete = step:IsComplete()
        local state = step:GetCompletionState(activeStepNum)
        if state == "complete" then
            -- Completed step — all goals done
            self:ApplyBackdrop(line, "step", "step_complete", nil)
            XP.SetTexColor(line.Edge, XP:ColorRGBA("green"))
            line.Title:SetTextColor(XP:ColorRGBA("green"))
            line.StepNum2:SetTextColor(XP:ColorRGBA("green"))
            line.Status:SetText(OK_CHAR)
            line.Status:SetTextColor(XP:ColorRGBA("green"))
        elseif state == "active" then
            -- Active step (highlighted) — first non-complete step
            self:ApplyBackdrop(line, "step", "step_active", nil)
            XP.SetTexColor(line.Edge, XP:ColorRGBA("cyan"))
            line.Title:SetTextColor(XP:ColorRGBA("text_bright"))
            line.StepNum2:SetTextColor(XP:ColorRGBA("cyan"))
            line.Status:SetText("")
        else
            -- Skipped or Upcoming — not yet reached or was missed
            self:ApplyBackdrop(line, "step", "step_upcoming", nil)
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
        yOffset = yOffset + STEP_LINE_HEIGHT
    end

    -- Update scroll child height
    scrollChild:SetHeight(yOffset)

    -- Update waypoint for current step
    self:UpdateWaypoint()

    -- Apply current appearance settings to the frame
    XP:ApplyViewerAppearance()
-- DEBUG: EXIT XP:UpdateViewer()
end

-----------------------------------------------------------------------
-- Apply Viewer Appearance: apply display settings to the frame
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:ApplyViewerAppearance()
function XP:ApplyViewerAppearance()
    if not self.ViewerFrame then return end
    local frame = self.ViewerFrame
    local p = self.db.profile

    -- Apply frameScale
    frame:SetScale(p.frameScale or 1.0)

    -- Apply fontSize to all active step lines
    local fontSize = p.fontSize or 12
    for _, line in ipairs(activeStepLines) do
        if line.Title then
            local fontPath, _, flags = line.Title:GetFont()
            if fontPath then
                line.Title:SetFont(fontPath, fontSize, flags)
            end
        end
        if line.StepNum2 then
            local fontPath, _, flags = line.StepNum2:GetFont()
            if fontPath then
                line.StepNum2:SetFont(fontPath, fontSize, flags)
            end
        end
        if line.Status then
            local fontPath, _, flags = line.Status:GetFont()
            if fontPath then
                line.Status:SetFont(fontPath, fontSize, flags)
            end
        end
    end

    -- Apply repositionViewer setting (currently just a flag; position logic in CreateViewerFrame)
    -- The actual repositioning is handled via the profile flag

    -- Update visibility based on combat and dungeon state
    self:UpdateViewerVisibility()

    -- Signal that settings changed (for GuideMenu.lua pending-change tracking)
    if self.MarkPendingChange then
        self:MarkPendingChange()
    end
-- DEBUG: EXIT XP:ApplyViewerAppearance()
end
