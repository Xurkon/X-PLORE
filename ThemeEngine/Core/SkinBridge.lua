--[[
    SkinBridge.lua
    Applies a theme's values to the actual XP skin system.
    Reads from Style.lua entries and merges theme values on top.
    This is the bridge between ThemeEngine and the existing skin system.
]]
local XP = ...

local SkinBridge = {}
SkinBridge.__index = SkinBridge

function SkinBridge:new(XP)
    local sb = setmetatable({}, self)
    sb.XP = XP
    return sb
end

-- values: { colors, fonts, textures, backdrops, layout, misc }
function SkinBridge:Apply(values, themeUid, themeName, skinName, baseStyle)
    skinName   = skinName   or "default"
    baseStyle  = baseStyle  or "starlight"

    -- Get the base style
    local base = XP.ThemeRegistry:GetStyle(skinName, baseStyle)
    if not base then
        base = XP.ThemeRegistry:GetStyle("default", "starlight")
    end
    if not base then return false end

    -- Clone and merge
    local merged = self:_DeepCopy(base)

    -- Apply colors
    if values.colors then
        merged.Colors = merged.Colors or {}
        for k, v in pairs(values.colors) do
            merged.Colors[k] = self:_ColorToTexFormat(v)
        end
    end

    -- Apply fonts
    if values.fonts then
        merged.Fonts = merged.Fonts or {}
        for k, v in pairs(values.fonts) do
            merged.Fonts[k] = v
        end
    end

    -- Apply textures
    if values.textures then
        merged.Textures = merged.Textures or {}
        for k, v in pairs(values.textures) do
            merged.Textures[k] = v
        end
    end

    -- Apply layout
    if values.layout then
        merged.Layout = merged.Layout or {}
        for k, v in pairs(values.layout) do
            merged.Layout[k] = v
        end
    end

    -- Apply misc
    if values.misc then
        merged.Misc = merged.Misc or {}
        for k, v in pairs(values.misc) do
            merged.Misc[k] = v
        end
    end

    -- Register derived style
    local derivedName = "custom-" .. (themeUid or "temp")
    XP.ThemeRegistry:RegisterStyle(skinName, derivedName, merged, nil)

    -- Apply through XP's skin system
    if XP.ApplyStyle then
        XP:ApplyStyle(skinName, derivedName)
    elseif XP.Skins and XP.Skins[skinName] then
        XP.Skins[skinName]:AddStyle(derivedName, merged)
        XP.Skins[skinName]:SetStyle(derivedName)
    end

    return true
end

-- Convert {r,g,b,a} to WoW color string format used by Style.lua
function SkinBridge:_ColorToTexFormat(c)
    if type(c) == "string" then return c end
    return string.format("|c%02X%02X%02X%02X",
        math.floor((c.a or 1) * 255 + 0.5),
        math.floor(c.r * 255 + 0.5),
        math.floor(c.g * 255 + 0.5),
        math.floor(c.b * 255 + 0.5))
end

function SkinBridge:_DeepCopy(t)
    if type(t) ~= "table" then return t end
    local c = {}
    for k, v in pairs(t) do c[k] = self:_DeepCopy(v) end
    return c
end

XP.SkinBridge = SkinBridge
