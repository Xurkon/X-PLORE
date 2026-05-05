-- Skins\Default\Stealth-glass\Style.lua
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
if not XP or not XP.Skins or not XP.Skins["default"] or not XP.Skins["default"].styles["stealth-glass"] then
    return
end

local STYLE = XP.Skins["default"].styles["stealth-glass"]
local SKIN = STYLE.skin
local ADDON_DIR = "Interface\\AddOns\\" .. ADDON_NAME
local SKINSDIR = ADDON_DIR .. "\\Skins\\"
local STYLEDIR = XP:GetSkinPath(SKIN.id, STYLE.id)
local HTML = XP.HTML
local SolidBackdrop = XP.SolidBackdrop
local TiledBackdrop = XP.TiledBackdrop
local NoEdgeBackdrop = XP.NoEdgeBackdrop
local WHITE_TEX = SKINSDIR .. "white"
local GUIDEICONS_DIR = SKINSDIR .. "guideicons"

STYLE.StyleName = "Stealth Glass"
STYLE.StyleID = "stealth-glass"
STYLE.GUIHidden = true
STYLE.UseOpacity = true
STYLE.TransparencyPrimary = 0.8
STYLE.TransparencySecondary = 0.6
STYLE.MainBackdropColor = {0, 0, 0, 0.8}
STYLE.WindowBackdropColor = {0, 0, 0, 0.8}
STYLE.StepBackdropColor = {0.13, 0.13, 0.13, 0.6}

XP.InitStyleTables(STYLE)
