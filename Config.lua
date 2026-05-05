-----------------------------------------------------------------------
-- Config.lua
-- Profile/db settings system, mirroring XPViewer's Config.lua
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

local Config = {}
XP.Config = Config

-----------------------------------------------------------------------
-- Config:Run()
-- Called on startup after AceDB is initialized.
-- Ensures the player has a valid character-specific profile.
-----------------------------------------------------------------------
-- DEBUG: ENTER Config:Run()
function Config:Run()
    local profiles = XP.db.profiles
    local currentProfile = XP.db:GetCurrentProfile()

    -- Check if we need to create a character-specific profile
    if not XP.db.profile.usernamed then
        local defaultFound = false

        -- Look for an existing default profile
        for profileName, profile in pairs(profiles) do
            if profile.is_default then
                XP.db:SetProfile(profileName)
                XP.db.char.profile_selected = true
                defaultFound = true
                break
            end
        end

        -- If no default found, create a character-specific profile
        if not defaultFound then
            local profileName = UnitName("player") or "Default"
            XP.db:SetProfile(profileName)
            XP.db.profile.usernamed = true
        end
    end

    -- Clean up generic AceDB profiles that have never been customized
    local skipFields = {
        profile_current = true,
        dispprimary = true,
        debug_flags = true,
    }
    for profileName, profileData in pairs(profiles) do
        if not profileData.usernamed then
            local profileIsDefault = true
            for key, val in pairs(profileData) do
                if not skipFields[key] and XP.db.defaults.profile[key] and val ~= XP.db.defaults.profile[key] then
                    profileIsDefault = false
                    break
                end
            end
            if profileIsDefault then
                XP.db:DeleteProfile(profileName)
            end
        end
    end

    -- First-run flag
    if XP.db.profile.ranconfig then
        XP.db.global = XP.db.global or {}
        XP.db.global.saw_tutorial = true
    end
-- DEBUG: EXIT Config:Run()
end
