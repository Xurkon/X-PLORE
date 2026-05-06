-----------------------------------------------------------------------
-- Arrows/Arrows.lua
-- Arrow skinning system - applies custom textures to the waypoint arrow
-- from the Media/Arrows folder (64 directional sprites).
--
-- Architecture:
--   Arrows:ApplySkin(arrowFrame, skinID)  - apply a named skin to arrow frame
--   Arrows:GetAvailableSkins()             - list all skins from Media/Arrows
--   Arrows:RotateArrow(arrow, angle)       - set arrow sprite by angle
--   Arrows:ClearSkin(arrowFrame)           - remove custom skin
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Arrows subsystem
-----------------------------------------------------------------------
local Arrows = {}
XP.Arrows = Arrows

-----------------------------------------------------------------------
-- Constants
-----------------------------------------------------------------------
local NUM_DIRECTIONS = 64
local ARROW_FOLDER = "Media\\Arrows\\"

-----------------------------------------------------------------------
-- Skin cache (lazy-loaded textures)
-----------------------------------------------------------------------
Arrows.skinCache = {}

-----------------------------------------------------------------------
-- Get available skins from Media/Arrows folder
-- Returns a table: { skinID = { name, texture, count }, ... }
-- DEBUG: ENTER Arrows:GetAvailableSkins()
function Arrows:GetAvailableSkins()
    local skins = {}

    -- Built-in skins mapping (for clarity and future extensibility)
    -- These correspond to texture files in Media/Arrows folder
    local skinMappings = {
        ["default"] = {
            name = "Default",
            pattern = "Arrow%d+",
            count = 64,
        },
        ["red"] = {
            name = "Red",
            texture = XP.TEXTURE_PATH .. "ArrowRed.tga",
            count = 1,
        },
        ["classic"] = {
            name = "Classic",
            pattern = "OldArrow2",
            count = 1,
        },
    }

    -- Check which skins actually exist
    for skinID, skinData in pairs(skinMappings) do
        if skinData.pattern then
            -- Multi-sprite skin: check if Arrow0 exists
            local testPath = XP.TEXTURE_PATH .. "Arrow0.tga"
            local testTex = _G[testPath] or CreateFrame("Frame"):CreateTexture()
            testTex:SetTexture(testPath)
            if testTex:GetTexture() then
                skins[skinID] = {
                    name = skinData.name,
                    pattern = skinData.pattern,
                    count = skinData.count,
                    type = "directional",
                }
            end
            testTex:Hide()
        else
            -- Single texture skin
            local testTex = CreateFrame("Frame"):CreateTexture()
            testTex:SetTexture(skinData.texture)
            if testTex:GetTexture() then
                skins[skinID] = {
                    name = skinData.name,
                    texture = skinData.texture,
                    count = 1,
                    type = "static",
                }
            end
            testTex:Hide()
        end
    end

    return skins
-- DEBUG: EXIT Arrows:GetAvailableSkins()
end

-----------------------------------------------------------------------
-- Get sprite index for a given angle (0-2PI)
-- DEBUG: ENTER Arrows:GetDirectionIndex()
-- DEBUG: PARAM angle = [angle]
function Arrows:GetDirectionIndex(angle)
    -- Normalize angle to [0, 2PI)
    angle = angle % (math.pi * 2)
    if angle < 0 then angle = angle + math.pi * 2 end

    -- Convert to sprite index (0-63)
    local index = math.floor((angle / (math.pi * 2)) * NUM_DIRECTIONS + 0.5)
    index = index % NUM_DIRECTIONS

    return index
-- DEBUG: EXIT Arrows:GetDirectionIndex()
end

-----------------------------------------------------------------------
-- Apply a named skin to an arrow frame
-- DEBUG: ENTER Arrows:ApplySkin()
-- DEBUG: PARAM arrowFrame = [arrowFrame]
-- DEBUG: PARAM skinID = [skinID]
function Arrows:ApplySkin(arrowFrame, skinID)
    if not arrowFrame then return end

    -- Clear existing
    self:ClearSkin(arrowFrame)

    local skin = self:GetAvailableSkins()[skinID]
    if not skin then return end

    -- Store skin info on frame
    arrowFrame._arrowSkin = skinID
    arrowFrame._arrowSkinType = skin.type

    if skin.type == "directional" then
        -- Multi-sprite skin: set up texture array
        arrowFrame._arrowTextures = arrowFrame._arrowTextures or {}
        for i = 0, skin.count - 1 do
            local path = XP.TEXTURE_PATH .. "Arrow" .. i .. ".tga"
            if not arrowFrame._arrowTextures[i] then
                local tex = arrowFrame:CreateTexture(nil, "ARTWORK")
                tex:SetTexture(path)
                tex:Hide()
                arrowFrame._arrowTextures[i] = tex
            end
        end
    else
        -- Static single texture
        local tex = arrowFrame:CreateTexture(nil, "ARTWORK")
        tex:SetTexture(skin.texture)
        tex:Show()
        arrowFrame._arrowStaticTexture = tex
    end
-- DEBUG: EXIT Arrows:ApplySkin()
end

-----------------------------------------------------------------------
-- Clear skin from arrow frame (restore default behavior)
-- DEBUG: ENTER Arrows:ClearSkin()
-- DEBUG: PARAM arrowFrame = [arrowFrame]
function Arrows:ClearSkin(arrowFrame)
    if not arrowFrame then return end

    arrowFrame._arrowSkin = nil
    arrowFrame._arrowSkinType = nil

    -- Hide all directional textures
    if arrowFrame._arrowTextures then
        for i, tex in pairs(arrowFrame._arrowTextures) do
            tex:Hide()
        end
    end

    -- Hide static texture
    if arrowFrame._arrowStaticTexture then
        arrowFrame._arrowStaticTexture:Hide()
        arrowFrame._arrowStaticTexture = nil
    end
-- DEBUG: EXIT Arrows:ClearSkin()
end

-----------------------------------------------------------------------
-- Rotate arrow to face angle (applies correct directional sprite)
-- DEBUG: ENTER Arrows:RotateArrow()
-- DEBUG: PARAM arrowFrame = [arrowFrame]
-- DEBUG: PARAM angle = [angle]
function Arrows:RotateArrow(arrowFrame, angle)
    if not arrowFrame then return end

    local skinType = arrowFrame._arrowSkinType

    if skinType == "directional" then
        -- Hide all sprites first
        if arrowFrame._arrowTextures then
            for i, tex in pairs(arrowFrame._arrowTextures) do
                tex:Hide()
            end
        end

        -- Show the correct directional sprite
        local index = self:GetDirectionIndex(angle)
        if arrowFrame._arrowTextures and arrowFrame._arrowTextures[index] then
            arrowFrame._arrowTextures[index]:Show()
        end

    elseif skinType == "static" then
        -- Static textures don't rotate (they're already oriented correctly)
        -- Just show the static texture
        if arrowFrame._arrowStaticTexture then
            arrowFrame._arrowStaticTexture:Show()
        end

    else
        -- No skin: use default rotation method
        if arrowFrame.SetRotation then
            arrowFrame:SetRotation(angle)
        end
    end
-- DEBUG: EXIT Arrows:RotateArrow()
end

-----------------------------------------------------------------------
-- Get skin texture path for a specific direction
-- DEBUG: ENTER Arrows:GetSkinTexture()
-- DEBUG: PARAM skinID = [skinID]
-- DEBUG: PARAM index = [index]
function Arrows:GetSkinTexture(skinID, index)
    local skins = self:GetAvailableSkins()
    local skin = skins[skinID]
    if not skin then return nil end

    if skin.type == "directional" then
        return XP.TEXTURE_PATH .. "Arrow" .. index .. ".tga"
    else
        return skin.texture
    end
-- DEBUG: EXIT Arrows:GetSkinTexture()
end
