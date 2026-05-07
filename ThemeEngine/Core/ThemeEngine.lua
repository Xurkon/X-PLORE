--[[
    ThemeEngine.lua
    Entry point: slash command (/theme), main editor frame creation,
    module wiring, and event routing.
]]
local XP = ...

local ThemeEngine = {}
ThemeEngine.__index = ThemeEngine

-- Slash command registration
SLASH_XPLORETHEME1 = "/theme"
SLASH_XPLORETHEME2 = "/xpltheme"
SlashCmdList["XPLORETHEME"] = function(cmd)
    if not XP.ThemeEngine then
        XP.ThemeEngine = ThemeEngine:new(XP)
    end
    XP.ThemeEngine:Toggle()
end

function ThemeEngine:new(XP)
    local te = setmetatable({}, self)
    te.XP = XP
    te.loaded  = false
    te.visible = false
    te.frame   = nil
    te.context = nil  -- ThemeContext
    te.loader  = nil  -- Loader
    return te
end

function ThemeEngine:Initialize()
    if self.loaded then return end
    self.loaded = true

    -- Ensure profile db exists
    if not XP.db then return end
    XP.db.profile.themeEngine = XP.db.profile.themeEngine or {}
    XP.db.profile.themeEngine.themes = XP.db.profile.themeEngine.themes or {}

    -- ThemeContext holds editing state
    self.context = XP.ThemeContext:new()

    -- Loader handles persistence
    self.loader = XP.ThemeLoader:new(XP.db.profile.themeEngine)

    -- Register built-in presets with registry
    for presetId, _ in pairs(XP.ThemeDefines.Presets) do
        local styleName = presetId
        local skinName  = "default"
        local style     = XP.ThemeRegistry:GetStyle(skinName, styleName)
        if style then
            XP.ThemeRegistry:RegisterStyle(skinName, styleName, style, nil)
        end
    end

    -- Listen for theme application events
    self.XP.RegisterMessage(self, "XPLORE_THEME_APPLIED")
end

function ThemeEngine:Toggle()
    if not self.loaded then self:Initialize() end
    if not self.frame then
        self:CreateFrame()
    end
    if self.visible then
        self:Hide()
    else
        self:Show()
    end
end

function ThemeEngine:Show()
    if not self.frame then self:CreateFrame() end
    self.frame:Show()
    self.visible = true
end

function ThemeEngine:Hide()
    if self.frame then self.frame:Hide() end
    self.visible = false
end

function ThemeEngine:CreateFrame()
    -- Auto-create a starter theme if none loaded yet
    if not self.context.theme then
        local uid, theme = self.loader:Create("Midnight", "midnight")
        self.context:LoadTheme(uid)
    end

    -- Main frame is created by UI.lua
    if XP.ThemeUI and XP.ThemeUI.CreateMainFrame then
        self.frame = XP.ThemeUI.CreateMainFrame(self)
    end
end

function ThemeEngine:OnMessage(msg, ...)
    if msg == "XPLORE_THEME_APPLIED" then
        -- Theme was applied externally (e.g. /theme apply command).
        -- Refresh the live preview and tab content so the editor reflects reality.
        if self.visible and self.frame then
            XP.ThemeUI.RefreshLivePreview()
            XP.ThemeUI.SwitchTab(self.frame, self.frame.activeTab)
        end
    end
end

function ThemeEngine:NewTheme(name, preset)
    local uid, theme = self.loader:Create(name or "New Theme", preset or "midnight")
    return uid, theme
end

function ThemeEngine:ApplyTheme(uid)
    local theme = self.loader:Load(uid)
    if not theme then return false end

    -- Map built-in preset names to XP skin/style
    local presetToSkinStyle = {
        midnight  = { skin = "midnight",  style = "midnight" },
        starlight = { skin = "default",   style = "starlight" },
        stealth   = { skin = "default",   style = "stealth" },
    }

    local mapping = presetToSkinStyle[theme.preset] or presetToSkinStyle.starlight

    -- Use XP's built-in skin system directly
    XP:SetSkin(mapping.skin, mapping.style)

    -- Notify UI if open
    self:SendMessage("XPLORE_THEME_APPLIED", theme)
    return true
end

function ThemeEngine:SendMessage(msg, ...)
    if self.XP.SendMessage then
        self.XP:SendMessage(msg, ...)
    end
end

XP.ThemeEngine = ThemeEngine
