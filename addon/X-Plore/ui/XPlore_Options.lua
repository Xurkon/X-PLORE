-- X-Plore Options Logic
XPlore_Options = {}

function XPlore_Options:Init()
    if not XPlore_OptionsFrame then return end
    
    -- Initialize Sliders and Checkboxes
    if XPlore_Settings and XPlore_OptionsFrameContentDisplayLockViewer then
        XPlore_OptionsFrameContentDisplayLockViewer:SetChecked(XPlore_Settings.lockViewer)
    end
    
    self:SelectTab(1)
end

function XPlore_Options:Toggle()
    if XPlore_OptionsFrame:IsVisible() then
        XPlore_OptionsFrame:Hide()
    else
        XPlore_OptionsFrame:Show()
    end
end

function XPlore_Options:SelectTab(id)
    -- Hide all content frames
    XPlore_OptionsFrameContentDisplay:Hide()
    XPlore_OptionsFrameContentArrow:Hide()
    XPlore_OptionsFrameContentPlaceholder:Hide()
    
    -- Reset all tab highlights (simulated active state)
    for i = 1, 7 do
        local tab = _G["XPlore_OptionsFrameTabsTab"..i]
        if tab then
            tab:SetBackdropBorderColor(XPlore.Colors.ActiveCyanDK.r, XPlore.Colors.ActiveCyanDK.g, XPlore.Colors.ActiveCyanDK.b, 0.3)
            local tabText = tab.Text or _G[tab:GetName().."Text"]
            if tabText then
                tabText:SetTextColor(XPlore.Colors.Parchment.r, XPlore.Colors.Parchment.g, XPlore.Colors.Parchment.b, 0.7)
            end
        end
    end
    
    -- Show selected content
    local activeTab = _G["XPlore_OptionsFrameTabsTab"..id]
    if activeTab then
        activeTab:SetBackdropBorderColor(XPlore.Colors.ActiveCyan.r, XPlore.Colors.ActiveCyan.g, XPlore.Colors.ActiveCyan.b, 1.0)
        local tabText = activeTab.Text or _G[activeTab:GetName().."Text"]
        if tabText then
            tabText:SetTextColor(XPlore.Colors.ActiveCyan.r, XPlore.Colors.ActiveCyan.g, XPlore.Colors.ActiveCyan.b, 1.0)
        end
    end
    
    if id == 1 then
        XPlore_OptionsFrameContentDisplay:Show()
    elseif id == 3 then
        XPlore_OptionsFrameContentArrow:Show()
    else
        XPlore_OptionsFrameContentPlaceholder:Show()
    end
end

function XPlore_Options:UpdateUI()
    if not XPlore_Settings or not XPlore_OptionsFrameContentDisplayLockViewer then return end
    XPlore_OptionsFrameContentDisplayLockViewer:SetChecked(XPlore_Settings.lockViewer)
end
