-----------------------------------------------------------------------
-- X-Plore: GuideSorting.lua
-- Guide category definitions and registration.
-- Mirrors Zygor's GuideSorting.lua category system.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Category Definition
-- Each category has: id, name, icon (filename in textures/icons/),
-- order (display priority), and optional faction filter.
-----------------------------------------------------------------------
local CATEGORIES = {
    { id = "LEVELING",     name = "Leveling",       icon = "Interface\\Icons\\INV_Misc_Map_01",                   iconFull = true, order = 1  },
    { id = "DUNGEONS",     name = "Dungeons",        icon = "Interface\\Icons\\Spell_Holy_BlessingOfProtection",   iconFull = true, order = 2  },
    { id = "GEAR",         name = "Gear",            icon = "Interface\\Icons\\INV_Chest_Chain_01",                iconFull = true, order = 3  },
    { id = "QUESTS",       name = "Quests",          icon = "Interface\\Icons\\INV_Misc_QuestionMark",             iconFull = true, order = 4  },
    { id = "DAILIES",      name = "Dailies",         icon = "Interface\\Icons\\INV_Misc_SunShard_01",              iconFull = true, order = 5  },
    { id = "EVENTS",       name = "Events",          icon = "Interface\\Icons\\INV_Misc_Gift_01",                  iconFull = true, order = 6  },
    { id = "REPUTATIONS",  name = "Reputations",     icon = "Interface\\Icons\\Achievement_Reputation_01",         iconFull = true, order = 7  },
    { id = "GOLD",         name = "Gold",            icon = "Interface\\Icons\\INV_Misc_Coin_01",                  iconFull = true, order = 8  },
    { id = "PROFESSIONS",  name = "Professions",     icon = "Interface\\Icons\\Trade_Alchemy",                     iconFull = true, order = 9  },
    { id = "PETS_MOUNTS",  name = "Pets & Mounts",   icon = "Interface\\Icons\\Ability_Mount_Charger",             iconFull = true, order = 10 },
    { id = "TITLES",       name = "Titles",          icon = "Interface\\Icons\\INV_Scroll_10",                     iconFull = true, order = 11 },
    { id = "ACHIEVEMENTS", name = "Achievements",    icon = "Interface\\Icons\\Achievement_General",               iconFull = true, order = 12 },
    { id = "MACROS",       name = "Macros",          icon = "Interface\\Icons\\INV_Misc_Note_05",                  iconFull = true, order = 13 },
    { id = "FAVOURITES",   name = "Favourites",      icon = "Interface\\Icons\\INV_Misc_StarFire",                 iconFull = true, order = 14 },
}

-----------------------------------------------------------------------
-- Faction-specific sub-categories (nested under LEVELING, etc.)
-----------------------------------------------------------------------
local FACTION_GROUPS = {
    { id = "ALLIANCE", name = "Alliance", parent = "LEVELING", order = 1 },
    { id = "HORDE",    name = "Horde",    parent = "LEVELING", order = 2 },
    { id = "NEUTRAL",  name = "Neutral",  parent = "LEVELING", order = 3 },
}

-----------------------------------------------------------------------
-- Expansion sub-categories
-----------------------------------------------------------------------
local EXPANSION_GROUPS = {
    { id = "CLASSIC",  name = "Classic (1-60)",     parent = "LEVELING", order = 10 },
    { id = "TBC",      name = "TBC (60-70)",        parent = "LEVELING", order = 20 },
    { id = "WOTLK",    name = "WotLK (70-80)",      parent = "LEVELING", order = 30 },
    { id = "CATA",     name = "Cataclysm (80-85)",  parent = "LEVELING", order = 40 },
    { id = "MOP",      name = "Mists (85-90)",       parent = "LEVELING", order = 50 },
    { id = "WOD",      name = "Draenor (90-100)",    parent = "LEVELING", order = 60 },
    { id = "LEGION",   name = "Legion (100-110)",    parent = "LEVELING", order = 70 },
    { id = "BFA",      name = "BfA (110-120)",       parent = "LEVELING", order = 80 },
    { id = "SL",       name = "Shadowlands (50-60)", parent = "LEVELING", order = 90 },
    { id = "DF",       name = "Dragonflight (60-70)",parent = "LEVELING", order = 100 },
    { id = "TWW",      name = "War Within (70-80)",  parent = "LEVELING", order = 110 },
}

-----------------------------------------------------------------------
-- Initialization
-----------------------------------------------------------------------
function XP:InitCategories()
    self.Categories = {}
    self.CategoryMap = {}       -- [id] => category data
    self.GuidesByCategory = {}  -- [id] => { guide1, guide2, ... }

    for _, cat in ipairs(CATEGORIES) do
        table.insert(self.Categories, cat)
        self.CategoryMap[cat.id] = cat
        self.GuidesByCategory[cat.id] = {}
    end

    -- Store sub-groups for reference
    self.FactionGroups    = FACTION_GROUPS
    self.ExpansionGroups  = EXPANSION_GROUPS
end

-- Get ordered category list (for sidebar display)
function XP:GetCategories()
    return self.Categories
end

-- Get guides for a category
function XP:GetGuidesForCategory(categoryID)
    return self.GuidesByCategory[categoryID] or {}
end

-- Get category info by ID
function XP:GetCategory(categoryID)
    return self.CategoryMap[categoryID]
end

-- Count guides in a category
function XP:GetGuideCounts()
    local counts = {}
    for id, guides in pairs(self.GuidesByCategory) do
        counts[id] = #guides
    end
    return counts
end
