-----------------------------------------------------------------------
-- X-Plore: StaticPopups.lua
-- Static popup dialog definitions using WoW's built-in StaticPopup system.
-- Mirrors Zygor's approach: StaticPopupDialogs table + helper API.
-- Loaded early via TOC (before Core.lua) so popups are available at init.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Font helpers (must exist before popup text strings reference them)
-----------------------------------------------------------------------
if not XP.font_dialog then
    XP.font_dialog = CreateFont("XPloreFontDialog")
    XP.font_dialog:SetFont("Fonts/FRIZQT__.TTF", 10)
end
if not XP.font_dialog_gray then
    XP.font_dialog_gray = CreateFont("XPloreFontDialogGray")
    XP.font_dialog_gray:SetFont("Fonts/FRIZQT__.TTF", 10)
    XP.font_dialog_gray:SetTextColor(0.7, 0.7, 0.7, 1)
end

-----------------------------------------------------------------------
-- StaticPopupDialogs — WoW built-in popup registry
-- These must be declared at file scope (not inside a function) so
-- WoW's StaticPopup system can find them at LOAD_TIME.
-----------------------------------------------------------------------

-- Default informational popup (generic message box)
StaticPopupDialogs["XPLORE_DEFAULT"] = {
    text = "%s",
    button1 = OKAY,
    button2 = nil,
    -- DEBUG: ENTER OnAccept()
    OnAccept = function()
    end,
    -- DEBUG: ENTER OnShow()
    -- DEBUG: PARAM self = [self]
    OnShow = function(self)
        -- no-op
    end,
    hideOnEscape = 1,
    timeout = 0,
    whileDead = 1,
    preferredIndex = 3,
}

-- Confirmation before opening an external URL
StaticPopupDialogs["XPLORE_CONFIRM_REDIRECT"] = {
    text = "Open this URL in your browser?\n%s",
    button1 = YES or "Open",
    button2 = CANCEL,
    -- DEBUG: ENTER OnAccept()
    -- DEBUG: PARAM self = [self]
    -- DEBUG: PARAM url = [url]
    OnAccept = function(self, url)
        -- Handled in Init.lua: XP:OpenURL via StaticPopup_Hook
        -- Just store the URL for the hook to pick up
        self.url = url
        -- Fire a callback so XP can handle the actual URL opening
        if XP.OnRedirectConfirmed then
            XP.OnRedirectConfirmed(url)
        end
    end,
    -- DEBUG: ENTER OnShow()
    -- DEBUG: PARAM self = [self]
    OnShow = function(self)
        -- Reset state
    end,
    hideOnEscape = 1,
    timeout = 0,
    whileDead = 1,
    preferredIndex = 3,
}

-- Guide removed / missing
StaticPopupDialogs["XPLORE_BADGUIDE"] = {
    text = "Guide not found: %s\nIt may have been removed or is temporarily unavailable.",
    button1 = OKAY,
    button2 = nil,
    hideOnEscape = 1,
    timeout = 0,
    whileDead = 1,
    preferredIndex = 3,
}

-- Next guide prompt
StaticPopupDialogs["XPLORE_NEXTGUIDE"] = {
    text = "%s",
    button1 = YES or "Yes",
    button2 = NO or "No",
    -- DEBUG: ENTER OnAccept()
    -- DEBUG: PARAM self = [self]
    OnAccept = function(self)
        if XP and XP.LoadNextGuide then
            XP:LoadNextGuide()
        end
    end,
    -- DEBUG: ENTER OnCancel()
    -- DEBUG: PARAM self = [self]
    -- DEBUG: PARAM reason = [reason]
    OnCancel = function(self, reason)
        -- user declined
    end,
    hideOnEscape = 1,
    timeout = 0,
    whileDead = 1,
    preferredIndex = 3,
}

-- Generic yes/no choice popup
StaticPopupDialogs["XPLORE_CHOICE"] = {
    text = "%s",
    button1 = YES or "Yes",
    button2 = NO or "No",
    -- DEBUG: ENTER OnAccept()
    -- DEBUG: PARAM self = [self]
    OnAccept = function(self)
        if self.acceptCallback then
            self:acceptCallback()
        end
    end,
    -- DEBUG: ENTER OnCancel()
    -- DEBUG: PARAM self = [self]
    -- DEBUG: PARAM reason = [reason]
    OnCancel = function(self, reason)
        if self.cancelCallback then
            self:cancelCallback()
        end
    end,
    hideOnEscape = 1,
    timeout = 0,
    whileDead = 1,
    preferredIndex = 3,
}

-- Notification/info popup with OK only
StaticPopupDialogs["XPLORE_INFO"] = {
    text = "%s",
    button1 = OKAY,
    button2 = nil,
    hideOnEscape = 1,
    timeout = 0,
    whileDead = 1,
    preferredIndex = 3,
}

-----------------------------------------------------------------------
-- XP:StaticPopup_Show(name, text, [data])
-- Central helper — shows a popup by name, optionally with text/data.
-- Usage:
--   XP:StaticPopup_Show("XPLORE_DEFAULT", "Hello world")
--   XP:StaticPopup_Show("XPLORE_CONFIRM_REDIRECT", url)
--   XP:StaticPopup_Show("XPLORE_CHOICE", "Delete this?", callback, cancelCallback)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:StaticPopup_Show()
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM textOrData = [textOrData]
-- DEBUG: PARAM dataOrCallback = [dataOrCallback]
-- DEBUG: PARAM callback2 = [callback2]
function XP:StaticPopup_Show(name, textOrData, dataOrCallback, callback2)
    local text, data, acceptCb, cancelCb

    -- Resolve argument forms:
    --   Show(name, "text")
    --   Show(name, "text", data)
    --   Show(name, "text", acceptCallback, cancelCallback)
    --   Show(name, data)   -- when name contains a %s and data is text
    if type(textOrData) == "string" and type(dataOrCallback) == "nil" then
        text = textOrData
        data = nil
    elseif type(textOrData) == "string" and type(dataOrCallback) == "string" then
        text = textOrData
        data = dataOrCallback
    elseif type(textOrData) == "string" and type(dataOrCallback) == "function" then
        text = textOrData
        acceptCb = dataOrCallback
        cancelCb = callback2
    elseif type(textOrData) == "string" and type(dataOrCallback) == "string" and type(callback2) == "function" then
        text = textOrData
        data = dataOrCallback
        acceptCb = callback2
    else
        text = tostring(textOrData or "")
    end

    local popup = StaticPopup_Show(name)
    if not popup then return nil end

    if text and popup.text then
        popup.text:SetText(text)
    end
    if data then
        popup.data = data
    end
    if acceptCb then
        popup.acceptCallback = acceptCb
    end
    if cancelCb then
        popup.cancelCallback = cancelCb
    end

    return popup
-- DEBUG: EXIT XP:StaticPopup_Show()
end

-----------------------------------------------------------------------
-- XP:StaticPopup_ShowChoice(text, acceptCallback, cancelCallback)
-- Convenience: yes/no choice popup.
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:StaticPopup_ShowChoice()
-- DEBUG: PARAM text = [text]
-- DEBUG: PARAM acceptCallback = [acceptCallback]
-- DEBUG: PARAM cancelCallback = [cancelCallback]
function XP:StaticPopup_ShowChoice(text, acceptCallback, cancelCallback)
    return self:StaticPopup_Show("XPLORE_CHOICE", text, acceptCallback, cancelCallback)
-- DEBUG: EXIT XP:StaticPopup_ShowChoice()
end

-----------------------------------------------------------------------
-- XP:StaticPopup_ShowRedirect(url)
-- Show the URL redirect confirmation.
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:StaticPopup_ShowRedirect()
-- DEBUG: PARAM url = [url]
function XP:StaticPopup_ShowRedirect(url)
    return self:StaticPopup_Show("XPLORE_CONFIRM_REDIRECT", url)
-- DEBUG: EXIT XP:StaticPopup_ShowRedirect()
end

-----------------------------------------------------------------------
-- XP:StaticPopup_ShowInfo(text)
-- Show a simple OK info popup.
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:StaticPopup_ShowInfo()
-- DEBUG: PARAM text = [text]
function XP:StaticPopup_ShowInfo(text)
    return self:StaticPopup_Show("XPLORE_INFO", text)
-- DEBUG: EXIT XP:StaticPopup_ShowInfo()
end

-----------------------------------------------------------------------
-- XP:StaticPopup_ShowError(text)
-- Show a generic error/alert popup.
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:StaticPopup_ShowError()
-- DEBUG: PARAM text = [text]
function XP:StaticPopup_ShowError(text)
    return self:StaticPopup_Show("XPLORE_DEFAULT", text)
-- DEBUG: EXIT XP:StaticPopup_ShowError()
end

-- DEBUG: EXIT OnCancel() [EOF]
-- DEBUG: EXIT OnAccept() [EOF]
-- DEBUG: EXIT OnCancel() [EOF]
-- DEBUG: EXIT OnAccept() [EOF]
-- DEBUG: EXIT OnShow() [EOF]
-- DEBUG: EXIT OnAccept() [EOF]
-- DEBUG: EXIT OnShow() [EOF]
-- DEBUG: EXIT OnAccept() [EOF]