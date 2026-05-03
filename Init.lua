-----------------------------------------------------------------------
-- X-Plore: Init.lua
-- Pre-initialization: global namespace, constants, shared private table
-- Loads BEFORE AceAddon, so no library calls here.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...

-- Global addon object. Core.lua will upgrade this to an AceAddon.
-- Other files access it via the _G global or the ADDON_TABLE private table.
local XP = {}

XP.name    = ADDON_NAME
XP.version = "2.0.0"

-- Sub-tables for each subsystem (populated by their respective files)
XP.Guides     = {}   -- Guide registry: [id] = guideObj
XP.Categories = {}   -- Ordered category list
XP.Menu       = {}   -- Guide browser / menu system
XP.Viewer     = {}   -- Step viewer frame
XP.Tabs       = {}   -- Tab management
XP.Skins      = {}   -- Theme / skin data
XP.Waypoint   = {}   -- Waypoint arrow

-- Texture and sound paths
XP.TEXTURE_PATH = "Interface\\AddOns\\X-Plore\\Skins\\"
XP.ICON_PATH    = "Interface\\AddOns\\X-Plore\\Skins\\"
XP.SOUND_PATH   = "Interface\\AddOns\\X-Plore\\sounds\\"

-- Open a URL in the default browser (uses StaticPopup confirmation first)
function XP:OpenURL(url)
    if url then
        XP:StaticPopup_ShowRedirect(url)
    end
end

-- Callback fired when user confirms the URL redirect popup
XP.OnRedirectConfirmed = function(url)
    if url then
        local editbox = ChatEdit_ShowActiveWindow()
        if editbox then
            editbox:SetText(url)
            editbox:HighlightText(0, #url)
        end
    end
end

-- Export to global and private table
_G.XP = XP
ADDON_TABLE.XP = XP
