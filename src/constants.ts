import { Guide } from "./types";

export const MOCK_GUIDES: Guide[] = [
  {
    id: "leveling_alliance_1_60_classic",
    name: "Alliance Leveling 1-60",
    category: "LEVELING",
    expansion: "CLASSIC",
    faction: "ALLIANCE",
    minLevel: 1,
    maxLevel: 60,
    folder: "Classic (1-70)",
    isCompleted: true,
    difficulty: 'EASY',
    steps: [
      {
        id: "step_001",
        type: "ACCEPT_QUEST",
        title: "Accept: A [1] Beating Them Back!",
        description: "Speak with Marshal McBride at the Northshire Abbey entrance.",
        questId: 783,
        npcId: 954,
        zoneId: 12,
        coords: { x: 50.2, y: 42.8 },
        objectives: [
          { text: "Talk to Marshal McBride", current: 0, total: 1, done: false }
        ]
      }
    ]
  },
  {
    id: "leveling_starter_1",
    name: "Starter Guides",
    category: "LEVELING",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 1,
    maxLevel: 10,
    folder: "Starter Guides",
    difficulty: 'EASY',
    steps: []
  },
  {
    id: "leveling_allied_races",
    name: "Allied Races",
    category: "LEVELING",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 10,
    maxLevel: 70,
    folder: "Allied Races",
    difficulty: 'MEDIUM',
    steps: []
  },
  {
    id: "leveling_boosted",
    name: "Boosted Characters",
    category: "LEVELING",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 60,
    maxLevel: 70,
    folder: "Boosted Characters",
    difficulty: 'EASY',
    steps: []
  },
  {
    id: "leveling_midnight_intro",
    name: "Midnight Intro & Campaign (Full Zone)",
    category: "LEVELING",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 80,
    maxLevel: 90,
    folder: "Midnight (80-90)",
    difficulty: 'HARD',
    steps: []
  },
  {
    id: "dungeon_deadmines_classic",
    name: "The Deadmines — Full Clear",
    category: "DUNGEON",
    expansion: "CLASSIC",
    faction: "NEUTRAL",
    minLevel: 15,
    maxLevel: 25,
    difficulty: 'MEDIUM',
    steps: [
      {
        id: "dm_001",
        type: "BOSS",
        title: "Defeat: Rhahk'Zor",
        description: "The first boss of the Deadmines.",
        npcId: 644,
        objectives: [
          { text: "Rhahk'Zor slain", current: 0, total: 1, done: false }
        ]
      }
    ]
  },
  {
    id: "quest_greatest_prank",
    name: "The Greatest Prank",
    category: "DAILIES",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 70,
    maxLevel: 70,
    steps: []
  },
  {
    id: "quest_latest_fashion",
    name: "The Latest Fashion!",
    category: "DAILIES",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 70,
    maxLevel: 70,
    steps: []
  },
  {
    id: "quest_sweetest_tribute",
    name: "The Sweetest Tribute",
    category: "DAILIES",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 70,
    maxLevel: 70,
    steps: []
  },
  {
    id: "mount_gurky",
    name: "Gurky",
    category: "PETS_MOUNTS",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 1,
    maxLevel: 80,
    steps: []
  },
  {
    id: "achievement_smoke_test",
    name: "Smoke Test",
    category: "ACHIEVEMENT",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 1,
    maxLevel: 80,
    steps: []
  },
  {
    id: "achievement_test_drive",
    name: "Test Drive",
    category: "ACHIEVEMENT",
    expansion: "RETAIL",
    faction: "NEUTRAL",
    minLevel: 1,
    maxLevel: 80,
    steps: []
  }
];
