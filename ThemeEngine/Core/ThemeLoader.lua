--[[
    ThemeLoader.lua
    Persistence layer: load/save themes from AceDB profile.
    Handles create, import, delete of user themes.
]]
local XP = ...

local ThemeLoader = {}
ThemeLoader.__index = ThemeLoader

function ThemeLoader:new(db)
    local l = setmetatable({}, self)
    l.db     = db     -- profile.themeEngine table
    l.themes = db.themes or {}
    db.themes = l.themes
    return l
end

function ThemeLoader:Create(name, preset)
    local uid = string.format("theme-%s-%d",
        string.lower(string.gsub(name or "Custom", "%s+", "-")),
        math.random(100000, 999999))

    local theme = {
        name     = name or "New Theme",
        uid      = uid,
        created  = time(),
        modified = time(),
        preset   = preset or "midnight",
        values   = {
            colors    = {},
            fonts     = {},
            textures  = {},
            backdrops = {},
            layout    = { scale = 1.0, padding = 4, alpha = 1.0, rounded = true },
            misc      = { glow = true, gradient = false },
        },
    }

    -- Clone preset defaults if available
    local presetDef = XP.ThemeDefines:GetPreset(preset)
    local defaults = XP.ThemeDefines:GetDefault()

    theme.values = {
        colors    = defaults.colors,
        fonts     = defaults.fonts,
        textures  = {},
        backdrops = {},
        layout    = {
            scale   = defaults.layout.scale,
            padding  = defaults.layout.padding,
            alpha    = defaults.layout.alpha,
            rounded  = defaults.layout.rounded,
        },
        misc      = {
            glow       = defaults.misc.glow,
            gradient   = defaults.misc.gradient,
            borderglow = defaults.misc.borderglow,
        },
    }

    self.themes[uid] = theme
    return uid, theme
end

function ThemeLoader:Load(uid)
    return self.themes[uid]
end

function ThemeLoader:Save(theme)
    if not theme then return end
    theme.modified = time()
    -- Mark the db as dirty so AceDB persists it
    self.db.dirty = true
end

function ThemeLoader:Delete(uid)
    if self.themes[uid] then
        self.themes[uid] = nil
        return true
    end
    return false
end

function ThemeLoader:GetAllThemes()
    local t = {}
    for uid, theme in pairs(self.themes) do
        t[#t + 1] = { uid = uid, name = theme.name, modified = theme.modified, preset = theme.preset }
    end
    table.sort(t, function(a, b) return a.modified > b.modified end)
    return t
end

function ThemeLoader:Import(encodedStr)
    local theme, err = XP.ThemeExporter:Decode(encodedStr)
    if not theme then return nil, err end

    local uid = string.format("theme-%s-%d",
        string.lower(string.gsub(theme.name or "Imported", "%s+", "-")),
        math.random(100000, 999999))
    theme.uid      = uid
    theme.created  = time()
    theme.modified = time()
    self.themes[uid] = theme
    return uid, theme
end

function ThemeLoader:_MergeDefaults(base, overrides)
    local merged = {}
    for cat, fields in pairs(base) do
        merged[cat] = {}
        for k, v in pairs(fields) do
            merged[cat][k] = overrides[cat] and overrides[cat][k] or v
        end
    end
    return merged
end

XP.ThemeLoader = ThemeLoader
