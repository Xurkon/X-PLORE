export interface GuideStep {
  id: string;
  type: 'ACCEPT_QUEST' | 'TURNIN_QUEST' | 'KILL' | 'COLLECT' | 'TRAVEL' | 'INTERACT' | 'EXPLORE' | 'BOSS' | 'NOTE';
  title: string;
  description?: string;
  questId?: number;
  npcId?: number;
  zoneId?: number;
  coords?: { x: number; y: number };
  objectives?: { text: string; current: number; total: number; done: boolean }[];
  optional?: boolean;
}

export interface Guide {
  id: string;
  name: string;
  category: 'LEVELING' | 'DUNGEON' | 'RAID' | 'ACHIEVEMENT' | 'PROFESSION' | 'REPUTATION' | 'EXPLORATION' | 'DAILIES' | 'EVENTS' | 'GOLD' | 'PETS_MOUNTS' | 'TITLES' | 'FAVORITES';
  expansion: 'RETAIL' | 'CLASSIC' | 'WOTLK' | 'CATA' | 'MOP';
  faction: 'ALLIANCE' | 'HORDE' | 'NEUTRAL';
  minLevel: number;
  maxLevel: number;
  steps: GuideStep[];
  folder?: string;
  isCompleted?: boolean;
  difficulty?: 'EASY' | 'MEDIUM' | 'HARD';
}

export type AppTab = 'DASHBOARD' | 'VIEWER';

export interface Theme {
  id: string;
  name: string;
  colors: {
    blueDk: string;
    blueMd: string;
    blueLt: string;
    parch: string;
    gold: string;
    goldDk: string;
    active: string;
    complete: string;
    red: string;
  };
}

export interface AddonSettings {
  // Step Display
  stepDisplay: {
    numStepsShown: number;
    enableManualResizing: boolean;
    skipHearthstoneSteps: boolean;
    skipFlightPathDiscovery: boolean;
    showTravelDirections: boolean;
    dungeons: {
      showStrategiesForAllRoles: boolean;
    };
    syncAndShare: {
      enableSyncAndShare: boolean;
      syncPartyProgress: boolean;
    };
    autoAdvance: boolean;
    showUpcoming: boolean;
    highlightQuestItems: boolean;
    questCleanup: boolean;
    fontSize: number;
    windowOpacity: number;
    windowScale: number;
    lockViewer: boolean;
    enableTransparency: boolean;
  };
  // Guide Viewer
  guideViewer: {
    enableViewer: boolean;
    lockViewer: boolean;
    hideExperienceBar: boolean;
    viewerSkin: string;
    enableTransparency: boolean;
    viewerOpacity: number;
    guideMenuOpacity: number;
    viewerSize: number;
    fontSize: number;
    widgetsOpacity: number;
    widgetsSize: number;
    flipViewerUpsideDown: boolean;
    hideInDungeonsAndRaids: boolean;
    showAgainWhenLeaving: boolean;
    hideDuringCombat: boolean;
    hideActionBarDuringCombat: boolean;
    keepVisibleWithVendor: boolean;
    showProgressBar: boolean;
    showMinimapButton: boolean;
  };
  // Automation
  automation: {
    autoAcceptTurnInGuideQuests: boolean;
    allQuests: boolean;
    autoSelectDialogOptions: boolean;
    autoTakeFlightPaths: boolean;
    autoBuyGuideItems: boolean;
    enableSellGraysButton: boolean;
    autoSellGrays: boolean;
    autoRepairMode: string;
    autoAcceptQuests: boolean;
    autoTurnInQuests: boolean;
    autoSelectReward: boolean;
    autoSellTrash: boolean;
    autoRepair: boolean;
  };
  // Action Button
  actionButton: {
    enabled: boolean;
    expandingDirection: string;
    scale: number;
    buttonTypes: {
      questActions: boolean;
      talkToNpc: boolean;
      killEnemy: boolean;
      deleteCheapestItem: boolean;
    };
    addRaidMarkers: boolean;
    size: number;
    showKeybind: boolean;
  };
  // Waypoint Arrow
  waypointArrow: {
    enabled: boolean;
    locked: boolean;
    arrowSize: number;
    arrowTextSize: number;
    addOutline: boolean;
    arrowStyle: string;
    unitOfMeasurement: string;
    enableTravelSystem: boolean;
    travelMethods: {
      direct: boolean;
      simple: boolean;
      advanced: boolean;
      custom: boolean;
      preferFlightPaths: boolean;
    };
    showDistance: boolean;
    smoothRotation: boolean;
    hideAtTarget: boolean;
    theme: 'CLASSIC' | 'MODERN' | 'MINIMAL';
    scale: number;
    opacity: number;
    point: string;
    x?: number;
    y?: number;
  };
  // Maps
  maps: {
    enableAntTrails: boolean;
    antTrailStyle: string;
    revealEntireMap: boolean;
    showMapMarkers: boolean;
    showPointsOfInterest: boolean;
    poiSize: number;
    enableIconTransparency: boolean;
    poiTypes: {
      rareSpawns: boolean;
      treasures: boolean;
    };
    poiDisplayMode: string;
    enableWorldQuestPlanner: boolean;
    prioritizeCurrentZone: boolean;
    loadWorldQuestGuides: boolean;
    worldQuestPlannerScale: number;
    highlightFlightPaths: boolean;
    enableDungeonMap: boolean;
    dungeonMapScale: number;
    dungeonMapOpacity: number;
    previewDuration: string;
    previewControl: string;
    showAntTrail: boolean;
    showIcons: boolean;
    minimapButton: boolean;
  };
  // Gear Advisor
  gear: {
    enabled: boolean;
    suggestUpgrades: boolean;
    autoEquip: boolean;
    enableItemScoreTooltips: boolean;
    enableGearFinder: boolean;
    dungeonSources: {
      normal: boolean;
      heroic: boolean;
      mythic: boolean;
      timewalking: boolean;
      mythicPlus: boolean;
    };
    raidSources: {
      lfr: boolean;
      normal: boolean;
      heroic: boolean;
      mythic: boolean;
      raidFinder?: boolean;
    };
    highlightUpgradesInBags: boolean;
    upgradeType: string;
    upgradeSlot: string;
    upgradeStyle: string;
    useHotkeyForReporting: boolean;
    hotkey: string;
    mouseButton: string;
    showItemScore: boolean;
    statWeights: 'BALANCED' | 'DPS' | 'TANK' | 'HEAL';
    disableOnMaxLevel?: boolean;
    showUpgradePopups?: boolean;
    highlightQuestRewards?: boolean;
    autoSelectQuestRewards?: boolean;
    autoEquipUpgrades?: boolean;
    doNotReplaceHeirlooms?: boolean;
    enableGearAdvisor: boolean;
  };
  // Item Score
  itemScore: {
    enabled: boolean;
    showInTooltips: boolean;
    showInCharacterPane: boolean;
    showInInspection: boolean;
    class: string;
    specialization: string;
    socketEmptySockets: number;
    showAllStats: boolean;
    scoreOffspecItems: boolean;
    statWeights: {
      strength: number;
      agility: number;
      intellect: number;
      crit: number;
      haste: number;
      mastery: number;
      versatility: number;
      armor?: number;
      dps?: number;
      stamina?: number;
      dominationSocket?: number;
    };
  };
  // Gold Guide
  goldGuide: {
    enabled: boolean;
    showInViewer: boolean;
    enableAuctionHouse: boolean;
    priceUpdateInterval: number;
    showFarmingRoutes: boolean;
    enableLootTracking: boolean;
    displayFormat: string;
    enableAuctionTools: boolean;
    autoScanAuction: boolean;
    enableQuickerScans: boolean;
    auctionScanSpeed: number;
    enableItemTooltips: boolean;
    tooltipDisplayMode: string;
  };
  // Notifications
  notifications: {
    enabled: boolean;
    showInGameAlerts: boolean;
    playSound: boolean;
    notificationSound: string;
    types: {
      rareSpotted: boolean;
      treasureNearby: boolean;
      guideUpdate: boolean;
      auctionSold: boolean;
      welcome: boolean;
      updates: boolean;
      startup: boolean;
      seasonal: boolean;
      gearSuggestions: boolean;
      disableGearOnMax: boolean;
      dungeonSuggestions: boolean;
      ridingSkill: boolean;
      monkReset: boolean;
      dailyReset: boolean;
      weeklyReset: boolean;
      creatureDetector: boolean;
      skippedCutscenes: boolean;
    };
    notificationSize: string;
    notificationDuration: string;
    notificationPosition: string;
    sendToCenter: boolean;
    markAsSeen: boolean;
    hideWhenViewerClosed: boolean;
    showAdvanced: boolean;
    showInChat: boolean;
    showOnScreen: boolean;
  };
  // Extras
  extras: {
    showChatMessages: boolean;
    showReputationGains: boolean;
    enablePetBattlePanel: boolean;
    enableTalentAdvisor: boolean;
    enableGuideRating: boolean;
    announceLevelUp: boolean;
    announceChannels: {
      guild: boolean;
      party: boolean;
      say: boolean;
      general?: boolean;
    };
    developerMode: boolean;
    showDebugInfo: boolean;
    enableMountCollector: boolean;
    enablePetCollector: boolean;
    enableAchievementHunter: boolean;
  };
  // Plugins
  plugins: {
    enabled: boolean;
    pluginList: Plugin[];
  };
  // Widgets
  widgets: Widget[];
  // Theme
  theme: Theme;
  themePresets: Theme[];
  // Profile
  profile: {
    activeProfile: string;
    profiles: string[];
    useOnAllCharacters: boolean;
  };
}

export interface Widget {
  id: string;
  type: 'GUIDE_PROGRESS' | 'GOLD_GUIDE' | 'GEAR_SCORE' | 'RECENT_GUIDES' | 'QUICK_SETTINGS' | 'REPUTATION' | 'PROFESSIONS' | 'LOCKOUTS' | 'STATS' | 'BANK' | 'WOW_TOKEN' | 'BULLETIN' | 'MYTHIC_AFFIXES' | 'VALOR_POINTS' | 'GRAND_HUNTS' | 'NOTABLE_QUESTS' | 'WEEKLY_RESET' | 'WORLD_EVENTS' | 'WORLD_BOSSES' | 'COVENANT_CALLINGS' | 'COVENANT_RENOWN' | 'COVENANT_ASSAULTS' | 'CONQUEST_POINTS' | 'PLUGIN_WIDGET';
  title: string;
  description?: string;
  category?: string;
  x: number;
  y: number;
  w: number;
  h: number;
  visible: boolean;
  pluginId?: string;
  isPoppedOut?: boolean;
  poppedX?: number;
  poppedY?: number;
}

export interface Plugin {
  id: string;
  name: string;
  version: string;
  author: string;
  description: string;
  enabled: boolean;
  type: 'GUIDE_PACK' | 'UTILITY' | 'UI_MOD';
  settings?: Record<string, any>;
}
