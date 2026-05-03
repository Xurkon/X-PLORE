local ADDON_NAME = "X-Plore"
local ADDON_TABLE = { XP = {} }
local name, ZGV = ADDON_NAME, ADDON_TABLE
CreateFrame = function() return {} end
dofile("c:\\Users\\kance\\Documents\\GitHub\\X-PLORE\\addon\\X-Plore\\Skins.lua")
print("Skins.lua loaded!")
dofile("c:\\Users\\kance\\Documents\\GitHub\\X-PLORE\\addon\\X-Plore\\Skins\\Default\\Midnight\\Style.lua")
print("Midnight loaded!")
