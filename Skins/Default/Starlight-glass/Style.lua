-- Skins\Default\Starlight-glass\Style.lua
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
if not XP or not XP.Skins or not XP.Skins["default"] or not XP.Skins["default"].styles["starlight-glass"] then
    return
end

local STYLE = XP.Skins["default"].styles["starlight-glass"]
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

STYLE.StyleName = "Starlight Glass"
STYLE.StyleID = "starlight-glass"
STYLE.GUIHidden = true
STYLE.UseOpacity = true
STYLE.TransparencyPrimary = 0.8
STYLE.TransparencySecondary = 0.6
STYLE.MainBackdropColor = HTML("#11111180")
STYLE.WindowBackdropColor = HTML("#11111180")
STYLE.StepBackdropColor = HTML("#20202060")

XP.InitStyleTables(STYLE)
