-----------------------------------------------------------------------
-- X-Plore: Compat.lua
-- Version detection and compatibility helpers.
-- !X-Libs provides Compat-Lua.lua and Compat-335.lua for heavy polyfills;
-- this file adds X-Plore-specific convenience wrappers.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Version Detection
-- !X-Libs Compat-Lua.lua already sets XP_IsRetail, XP_IsWOTLK, etc.
-- We read those globals (or fall back to TOC detection).
-----------------------------------------------------------------------
local _, _, _, tocVersion = GetBuildInfo()
tocVersion = tonumber(tocVersion) or 0

XP.isRetail  = _G.XP_IsRetail  or (tocVersion >= 100000)
XP.isWrath   = _G.XP_IsWOTLK   or (tocVersion >= 30000 and tocVersion < 40000)
XP.isCata    = _G.XP_IsCata    or (tocVersion >= 40000 and tocVersion < 50000)
XP.isVanilla = _G.XP_IsVanilla or (tocVersion < 20000)
XP.tocVersion = tocVersion

-----------------------------------------------------------------------
-- Expansion Constants
-- Used to filter guides by current WoW version
-----------------------------------------------------------------------
XP.EXPANSION_CLASSIC   = 0
XP.EXPANSION_TBC       = 1
XP.EXPANSION_WRATH     = 2
XP.EXPANSION_CATA      = 3
XP.EXPANSION_MOP       = 4
XP.EXPANSION_WOD       = 5
XP.EXPANSION_LEGION    = 6
XP.EXPANSION_BFA       = 7
XP.EXPANSION_SHADOW    = 8
XP.EXPANSION_DRAGONFLIGHT = 9

-- DEBUG: ENTER <unknown>()
function XP.GetCurrentExpansion()
    if XP.isVanilla then return XP.EXPANSION_CLASSIC end
    if XP.isWrath then return XP.EXPANSION_WRATH end
    if XP.isCata then return XP.EXPANSION_CATA end
    if XP.isRetail then return XP.EXPANSION_SHADOW + (tocVersion - 100000) end
    return XP.EXPANSION_WRATH  -- Default to WotLK
-- DEBUG: EXIT <unknown>()
end

-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM guide = [guide]
function XP.IsGuideValidForCurrentVersion(guide)
    if not guide then return false end
    local guideExpansion = guide.expansion
    if not guideExpansion then return true end  -- No restriction
    local currentExpansion = XP.GetCurrentExpansion()
    return guideExpansion <= currentExpansion
-- DEBUG: EXIT <unknown>()
end

-----------------------------------------------------------------------
-- Backdrop Helper
-- On Retail 9.0+ frames need BackdropTemplate mixin.
-- On 3.3.5a/Classic, SetBackdrop is a native method on all frames.
-- !X-Libs Compat-335.lua stubs BackdropTemplateMixin when missing.
-----------------------------------------------------------------------
local BACKDROP_TEMPLATE = (BackdropTemplateMixin and "BackdropTemplate") or nil

-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM frameType = [frameType]
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM parent = [parent]
function XP.CreateFrame(frameType, name, parent, ...)
    -- If additional templates are passed, prepend BackdropTemplate if needed
    local templates = ...
    if templates and BACKDROP_TEMPLATE then
        templates = BACKDROP_TEMPLATE .. "," .. templates
    elseif BACKDROP_TEMPLATE then
        templates = BACKDROP_TEMPLATE
    end
    return CreateFrame(frameType, name, parent, templates)
-- DEBUG: EXIT <unknown>()
end

-- Create a frame guaranteed to support :SetBackdrop()
-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM frameType = [frameType]
-- DEBUG: PARAM name = [name]
-- DEBUG: PARAM parent = [parent]
function XP.CreateBackdropFrame(frameType, name, parent)
    return CreateFrame(frameType, name, parent, BACKDROP_TEMPLATE)
-- DEBUG: EXIT <unknown>()
end

-----------------------------------------------------------------------
-- Safe table length (Lua 5.0 compat: table.getn vs #)
-----------------------------------------------------------------------
XP.tlen = table.getn or function(t) return #t end

-----------------------------------------------------------------------
-- String helpers
-----------------------------------------------------------------------
-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM s = [s]
function XP.strtrim(s)
    if not s then return "" end
    return (s:gsub("^%s+", ""):gsub("%s+$", ""))
-- DEBUG: EXIT <unknown>()
end

-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM sep = [sep]
-- DEBUG: PARAM str = [str]
function XP.strsplit_simple(sep, str)
    local parts = {}
    local pattern = "([^" .. sep .. "]+)"
    str:gsub(pattern, function(c) parts[#parts + 1] = c end)
    return parts
-- DEBUG: EXIT <unknown>()
end

-----------------------------------------------------------------------
-- Color helper: unpack a color table { r, g, b [, a] }
-----------------------------------------------------------------------
-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM c = [c]
function XP.UnpackColor(c)
    return c.r or 0, c.g or 0, c.b or 0, c.a or 1
-- DEBUG: EXIT <unknown>()
end

-----------------------------------------------------------------------
-- Texture API Polyfills (WotLK 3.3.5a / Vanilla compat)
--
-- NOTE: Patching the WoW texture metatable causes UI taint on WotLK.
-- Instead we expose XP.SetTexColor(tex, r, g, b, a) as a safe wrapper.
-- All X-Plore UI code calls XP.SetTexColor() instead of :SetColorTexture().
-----------------------------------------------------------------------

-- XP.SetTexColor(tex, r, g, b, a)
-- Solid-color fill compatible with all WoW versions.
--   • Retail/Cata:  uses SetColorTexture (native)
--   • WotLK/Vanilla: uses SetTexture with 4 numeric args (same effect)
-- DEBUG: ENTER <unknown>()
-- DEBUG: PARAM tex = [tex]
-- DEBUG: PARAM r = [r]
-- DEBUG: PARAM g = [g]
-- DEBUG: PARAM b = [b]
-- DEBUG: PARAM a = [a]
function XP.SetTexColor(tex, r, g, b, a)
    if not tex then return end
    a = (a ~= nil) and a or 1
    if tex.SetColorTexture then
        tex:SetColorTexture(r, g, b, a)
    else
        tex:SetTexture(r, g, b, a)
    end
-- DEBUG: EXIT <unknown>()
end
