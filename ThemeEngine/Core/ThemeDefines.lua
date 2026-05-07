--[[
    ThemeDefines.lua
    Schema, default values, and preset metadata for all built-in themes.
    Used by Validator, Presets, and Loader modules.
]]
local XP = ...

local ThemeDefines = {}

-- Schema describing every configurable theme property and its type/default
ThemeDefines.Schema = {
    -- backdrop.edgeFile, backdrop.bgFile, backdrop.tiling, backdrop.insets
    backdrops = {
        type = "table",
        default = {},
    },
    colors = {
        type = "table",
        default = {
            main         = { r = 0.0, g = 0.6, b = 0.8, a = 1.0 },  -- cyan
            accent       = { r = 0.2, g = 0.5, b = 0.9, a = 1.0 },  -- blue
            background   = { r = 0.04, g = 0.04, b = 0.12, a = 1.0 },
            surface      = { r = 0.07, g = 0.07, b = 0.18, a = 1.0 },
            border       = { r = 0.2, g = 0.2, b = 0.4, a = 1.0 },
            text         = { r = 0.85, g = 0.9, b = 1.0, a = 1.0 },
            textdim      = { r = 0.45, g = 0.5, b = 0.65, a = 1.0 },
            success      = { r = 0.2, g = 0.8, b = 0.4, a = 1.0 },
            warning      = { r = 0.9, g = 0.7, b = 0.2, a = 1.0 },
            danger       = { r = 0.9, g = 0.2, b = 0.2, a = 1.0 },
            glow         = { r = 0.0, g = 0.75, b = 1.0, a = 0.6 },
        },
    },
    fonts = {
        type = "table",
        default = {
            header = { path = "Fonts/opensans-bold.ttf", size = 15, flags = "OUTLINE" },
            body   = { path = "Fonts/opensans.ttf",      size = 12, flags = "OUTLINE" },
            mono   = { path = "Fonts/morisans.ttf",      size = 11, flags = "OUTLINE" },
        },
    },
    textures = {
        type = "table",
        default = {},
    },
    layout = {
        type = "table",
        default = {
            scale  = 1.0,
            padding = 4,
            alpha  = 1.0,
            rounded = true,
        },
    },
    misc = {
        type = "table",
        default = {
            glow      = true,
            gradient  = false,
            borderglow = true,
        },
    },
}

-- Built-in preset definitions
ThemeDefines.Presets = {
    ["midnight"] = {
        name     = "Midnight",
        desc     = "Cyber-fantasy dark theme with cyan accents and glass panels",
        parent   = "starlight",
        author   = "X-PLORE",
        version  = 1,
        values   = nil,  -- inherits full Style.lua at runtime
    },
    ["starlight"] = {
        name     = "Starlight",
        desc     = "Default light theme with clean white panels",
        parent   = "starlight",
        author   = "X-PLORE",
        version  = 1,
        values   = nil,
    },
    ["stealth"] = {
        name     = "Stealth",
        desc     = "Minimal dark theme, low visual noise",
        parent   = "stealth",
        author   = "X-PLORE",
        version  = 1,
        values   = nil,
    },
}

function ThemeDefines:GetPreset(name)
    return self.Presets[name]
end

function ThemeDefines:GetAllPresets()
    local t = {}
    for id, p in pairs(self.Presets) do
        t[#t + 1] = { id = id, name = p.name, desc = p.desc }
    end
    return t
end

function ThemeDefines:GetDefault()
    return {
        backdrops = self:_deepCopy(self.Schema.backdrops.default),
        colors    = self:_deepCopy(self.Schema.colors.default),
        fonts     = self:_deepCopy(self.Schema.fonts.default),
        textures  = self:_deepCopy(self.Schema.textures.default),
        layout    = self:_deepCopy(self.Schema.layout.default),
        misc      = self:_deepCopy(self.Schema.misc.default),
    }
end

function ThemeDefines:GetSchema()
    return self.Schema
end

function ThemeDefines:_deepCopy(t)
    if type(t) ~= "table" then return t end
    local c = {}
    for k, v in pairs(t) do c[k] = self:_deepCopy(v) end
    return c
end

XP.ThemeDefines = ThemeDefines
