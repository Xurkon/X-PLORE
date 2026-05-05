--------------------------------------------------------------------------
-- Skins\Default\ViewerFrame.lua
-- ApplySkin method for the ViewerFrame.
-- Called by Skins:CreateFrame() after skin changes and at skin initialization.
--------------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

--------------------------------------------------------------------------
-- Create the ViewerFrame stub table if not yet initialized.
-- Skins.lua loads before Init.lua, so XP.ViewerFrame may not exist yet.
--------------------------------------------------------------------------
if not XP.ViewerFrame then XP.ViewerFrame = {} end

--------------------------------------------------------------------------
-- ApplySkin()
-- Re-applies current skin colors/fonts to all ViewerFrame sub-frames.
-- Called when skin changes or when XP.SetSkin() fires skin subscribers.
--------------------------------------------------------------------------
-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM self = [self]
function XP.ViewerFrame.ApplySkin(self)
    local f = self or XP.ViewerFrame
    if not f then return end

    -- Main frame backdrop
    XP:ApplyBackdrop(f, "WindowBackdrop", "bg_deep", "border")

    -- Title bar
    if f.TitleBar then
        if f.TitleBar.Logo then
            local logoTex = XP:SD("TitleLogo")
            local logoSize = XP:SD("TitleLogoSize") or {120, 30}
            f.TitleBar.Logo:SetSize(logoSize[1] or 120, logoSize[2] or 30)
            if logoTex then
                f.TitleBar.Logo:SetTexture(logoTex)
                f.TitleBar.Logo:Show()
                if f.TitleText then f.TitleText:Hide() end
            else
                f.TitleBar.Logo:Hide()
                if f.TitleText then
                    XP:ApplyFont(f.TitleText, "bold", "cyan")
                    f.TitleText:Show()
                end
            end
        elseif f.TitleText then
            XP:ApplyFont(f.TitleText, "bold", "cyan")
            f.TitleText:Show()
        end
        -- Title divider
        if f.TitleDivider then
            XP.SetTexColor(f.TitleDivider, XP:ColorRGBA("border"))
        end
    end

    -- Tab container background (TabBg is a Texture, not a Frame — use SetTexColor)
    if f.TabBg then
        local tabBgColor = XP:SD("TabsContainerBackdropInactive") or XP:SD("TabBackdropColor") or {0.067, 0.067, 0.067, 1}
        XP.SetTexColor(f.TabBg, tabBgColor[1] or 0, tabBgColor[2] or 0, tabBgColor[3] or 0, tabBgColor[4] or 1)
    end
    if f.TabDivider then
        XP.SetTexColor(f.TabDivider, XP:ColorRGBA("border_dim"))
    end

    -- Toolbar
    if f.ToolbarBg then
        XP.SetTexColor(f.ToolbarBg, XP:ColorRGBA("bg_medium"))
    end
    if f.PrevBtn then
        local pf = f.PrevBtn:GetFontString()
        if pf then
            pf:SetTextColor(XP:ColorRGBA("cyan"))
        end
    end
    if f.NextBtn then
        local nf = f.NextBtn:GetFontString()
        if nf then
            nf:SetTextColor(XP:ColorRGBA("cyan"))
        end
    end
    if f.StepNum then
        XP:ApplyFont(f.StepNum, "bold", "text_bright")
    end
    if f.GuideName then
        XP:ApplyFont(f.GuideName, "small", "cyan_dark")
    end
    if f.ToolbarDivider then
        XP.SetTexColor(f.ToolbarDivider, XP:ColorRGBA("border_dim"))
    end

    -- Scroll frame
    if f.ScrollFrame then
        -- Scroll track / thumb colors
        if f.ScrollTrack then
            local sbtc = XP:SD("ScrollBackColor") or {0, 0, 0, 0.3}
            XP.SetTexColor(f.ScrollTrack, sbtc[1], sbtc[2], sbtc[3], sbtc[4])
        end
        if f.ScrollThumb then
            local sbcc = XP:SD("ScrollBarColor") or {0.4, 0.4, 0.4, 1}
            XP.SetTexColor(f.ScrollThumb, sbcc[1], sbcc[2], sbcc[3], sbcc[4])
        end
    end
    if f.EmptyBodyBg then
        local emptyBgColor = XP:SD("ViewerEmptyBodyColor") or {0, 0, 0, 0.5}
        XP.SetTexColor(f.EmptyBodyBg, emptyBgColor[1], emptyBgColor[2], emptyBgColor[3], emptyBgColor[4])
    end

    -- Progress area
    if f.ProgressArea then
        if f.ProgressBar then
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
        if f.ProgressPercent then
            XP:ApplyFont(f.ProgressPercent, "small", "cyan_dark")
        end
    end

    -- Footer
    if f.FooterBg then
        XP.SetTexColor(f.FooterBg, XP:ColorRGBA("bg_medium"))
    end
    if f.SyncDot then
        if XP.db and XP.db.profile and XP.db.profile.autoAdvance then
            XP.SetTexColor(f.SyncDot, XP:ColorRGBA("green"))
        else
            XP.SetTexColor(f.SyncDot, XP:ColorRGBA("text_dim"))
        end
    end
    if f.SyncText then
        XP:ApplyFont(f.SyncText, "small", "cyan_dark")
    end

    -- Re-render step lines with new skin
    XP:UpdateViewer()
-- DEBUG: EXIT <unknown>()
end
