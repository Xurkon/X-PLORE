--[[
    ThemeRegistry.lua
    Central registry for all installed styles and custom themes.
    Styles register via :RegisterStyle(skinName, styleName, styleData, filePath).
    Read by ThemeEngine, SkinBridge, and ThemeLoader.
]]
local XP = ...

local ThemeRegistry = {}
ThemeRegistry.__index = ThemeRegistry

--[ SkinName ] = { [StyleName] = { file=path, style=table, version=number } }
local skinStyles = {}
--[ ThemeName ] = ThemeTable
local customThemes = {}
local activeSkin, activeStyle = "default", "starlight"
local activeThemeName = nil

function ThemeRegistry:RegisterStyle(skinName, styleName, styleData, filePath)
    skinStyles[skinName] = skinStyles[skinName] or {}
    skinStyles[skinName][styleName] = {
        file   = filePath,
        style  = styleData,
        version = 1,
    }
end

function ThemeRegistry:GetSkins()
    local t = {}
    for name, _ in pairs(skinStyles) do t[#t + 1] = name end
    return t
end

function ThemeRegistry:GetStyles(skinName)
    if not skinStyles[skinName] then return {} end
    local t = {}
    for name, _ in pairs(skinStyles[skinName]) do t[#t + 1] = name end
    return t
end

function ThemeRegistry:GetStyle(skinName, styleName)
    if not skinStyles[skinName] then return nil end
    local entry = skinStyles[skinName][styleName]
    return entry and entry.style or nil
end

function ThemeRegistry:GetStyleData(skinName, styleName)
    if not skinStyles[skinName] then return nil end
    return skinStyles[skinName][styleName]
end

function ThemeRegistry:RegisterTheme(themeName, themeTable)
    customThemes[themeName] = themeTable
end

function ThemeRegistry:GetTheme(themeName)
    return customThemes[themeName]
end

function ThemeRegistry:GetAllThemes()
    local t = {}
    for name, _ in pairs(customThemes) do t[#t + 1] = name end
    return t
end

function ThemeRegistry:RemoveTheme(themeName)
    customThemes[themeName] = nil
end

function ThemeRegistry:SetActiveStyle(skinName, styleName)
    activeSkin  = skinName  or "default"
    activeStyle = styleName or "starlight"
end

function ThemeRegistry:GetActiveStyle()
    return activeSkin, activeStyle
end

function ThemeRegistry:SetActiveThemeName(name)
    activeThemeName = name
end

function ThemeRegistry:GetActiveThemeName()
    return activeThemeName
end

XP.ThemeRegistry = ThemeRegistry
