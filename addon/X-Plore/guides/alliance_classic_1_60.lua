-- Sample Leveling Guide for X-Plore
local guide = {
    id = "alliance_classic_1_60",
    name = "Alliance Leveling 1-60",
    category = "LEVELING",
    expansion = "CLASSIC",
    faction = "ALLIANCE",
    steps = {
        [1] = {
            type = "ACCEPT_QUEST",
            title = "Accept: Beating Them Back!",
            description = "Talk to Marshal McBride.",
            questID = 783,
            npcID = 954,
            coords = { x = 50.2, y = 42.8 }
        },
        [2] = {
            type = "KILL_MOB",
            title = "Kill: Defias Thug x8",
            description = "Kill thugs in the vineyard.",
            questID = 783,
            npcID = 37,
            coords = { x = 48.5, y = 44.1 }
        },
        [3] = {
            type = "TURNIN_QUEST",
            title = "Turn In: Beating Them Back!",
            description = "Return to Marshal McBride.",
            questID = 783,
            npcID = 954,
            coords = { x = 50.2, y = 42.8 }
        },
        [4] = {
            type = "ACCEPT_QUEST",
            title = "Accept: Lions for Lambs",
            description = "Talk to Marshal McBride.",
            questID = 7,
            npcID = 954,
            coords = { x = 50.2, y = 42.8 }
        },
        [5] = {
            type = "TRAVEL",
            title = "Travel to Goldshire",
            description = "Follow the road south to Goldshire.",
            coords = { x = 46.0, y = 62.0 }
        }
    }
}

XPlore_CMS:RegisterGuide(guide)
