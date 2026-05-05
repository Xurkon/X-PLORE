-- Skins\Default\Skin.lua
-- Default skin registration. Matches Zygor's Skins\Default\Skin.lua architecture.
-- Styles are defined (data-less) here; each Style.lua file populates its data.
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP
if not XP then return end

local Skin = XP:AddSkin("default", "Default")
local starlight = Skin:AddStyle("starlight", "Starlight")
local starlightg = Skin:AddStyle("starlight-glass", "Starlight Glass")
local stealth = Skin:AddStyle("stealth", "Stealth")
local stealthg = Skin:AddStyle("stealth-glass", "Stealth Glass")

starlightg.GUIHidden = true
stealthg.GUIHidden = true

Skin.defaultstyle = starlight
Skin.defaultStyle = starlight.id

starlightg.inheritedStyle = starlight
stealthg.inheritedStyle = stealth

function Skin:CreateFrame()
    if XP.ViewerFrame and XP.ViewerFrame.ApplySkin then
        XP.ViewerFrame:ApplySkin()
    end
    if XP.MenuFrame and XP.MenuFrame.ApplySkin then
        XP.MenuFrame:ApplySkin()
    end
end

function Skin:UpdateSkin()
    if XP.ViewerFrame and XP.ViewerFrame.ApplySkin then
        XP.ViewerFrame:ApplySkin()
    end
end

function Skin:UpdateLocking()
    local f = XP.ViewerFrame
    if not f then return end
    local locked = XP.db and XP.db.profile and XP.db.profile.viewer and XP.db.profile.viewer.locked
    if f.ResizerLeft then f.ResizerLeft:EnableMouse(not locked) end
    if f.ResizerRight then f.ResizerRight:EnableMouse(not locked) end
    if f.ResizerBottom then f.ResizerBottom:EnableMouse(not locked) end
    if f.ScrollFrame then f.ScrollFrame:EnableMouseWheel(not locked) end
end

function Skin:AlignFrame()
    if XP.UpdateViewer then
        XP:UpdateViewer()
    end
end
