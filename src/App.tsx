/**
 * @license
 * SPDX-License-Identifier: Apache-2.0
 */

import React, { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'motion/react';
import { 
  Sword, 
  Shield, 
  Skull, 
  Trophy, 
  Hammer, 
  Handshake, 
  Compass, 
  Settings, 
  Search, 
  ChevronLeft, 
  ChevronRight, 
  MapPin, 
  X, 
  Minus, 
  Pin,
  AlertCircle,
  FileCode,
  FileText,
  LayoutDashboard,
  Trash2,
  History,
  ScrollText,
  Briefcase,
  ChevronDown,
  Trash,
  Info,
  Coins,
  Zap,
  Navigation,
  Map as MapIcon,
  User,
  Bell,
  Plus,
  Maximize2,
  Minimize2,
  ExternalLink,
  Move,
  Github,
  Menu,
  Wand2,
  Lock,
  Unlock,
  MoreVertical,
  Folder,
  Check,
  Star,
  ArrowLeft,
  Award,
  PawPrint,
  Calendar,
  Heart,
  Square,
  CheckSquare,
  SearchCode,
  RotateCcw,
  RefreshCw,
  ArrowRight,
  Users,
  Flag,
  MoreHorizontal,
  BarChart3,
  Cpu,
  Layout,
  Monitor,
  Puzzle,
  Palette,
} from 'lucide-react';
import { cn } from './lib/utils';
import { Guide, GuideStep, AppTab, AddonSettings, Widget, Plugin } from './types';
import { MOCK_GUIDES } from './constants';
import { WaypointArrow } from './components/WaypointArrow';
import { useProfile } from './hooks/useProfile';
import { pluginRegistry } from './plugins/pluginAPI';
import { RareScannerPlugin } from './plugins/examples/RareScanner';
import { AuctionHelperPlugin } from './plugins/examples/AuctionHelper';

// Register plugins
pluginRegistry.register(RareScannerPlugin);
pluginRegistry.register(AuctionHelperPlugin);

const MOCK_PLUGINS: Plugin[] = [
  {
    id: 'rare-scanner',
    name: 'Rare Scanner',
    version: '1.2.0',
    author: 'Xurkon',
    description: 'Alerts you when rare NPCs are nearby.',
    enabled: true,
    type: 'UTILITY',
  },
  {
    id: 'auction-helper',
    name: 'Auction Helper',
    version: '0.9.5',
    author: 'Xurkon',
    description: 'Real-time auction house price tracking.',
    enabled: false,
    type: 'UTILITY',
  }
];

const MOCK_BROWSER_PLUGINS: Plugin[] = [
  {
    id: 'dps-meter',
    name: 'DPS Meter',
    version: '2.0.1',
    author: 'RaiderIO',
    description: 'Track your damage output in real-time.',
    type: 'UTILITY',
    enabled: false
  },
  {
    id: 'world-quest-tracker',
    name: 'World Quest Tracker',
    version: '1.5.0',
    author: 'BlizzMods',
    description: 'Displays all active world quests on your map.',
    type: 'GUIDE_PACK',
    enabled: false
  },
  {
    id: 'bag-sorter',
    name: 'Bag Sorter',
    version: '1.1.2',
    author: 'InventoryPro',
    description: 'Automatically organizes your inventory.',
    type: 'UI_MOD',
    enabled: false
  }
];

const INITIAL_WIDGETS: Widget[] = [
  { id: 'recent-guides', type: 'RECENT_GUIDES', title: 'Guides History', description: 'Displays last 5 used guides', category: 'General', x: 0, y: 0, w: 1, h: 1, visible: true },
  { id: 'suggested-guides', type: 'GUIDE_PROGRESS', title: 'Suggested guides', description: 'Displays guides suggested for you.', category: 'General', x: 1, y: 0, w: 1, h: 1, visible: true },
  { id: 'level-tracker', type: 'GUIDE_PROGRESS', title: 'Level tracker', description: 'Displays time played on each level', category: 'General', x: 0, y: 1, w: 1, h: 1, visible: true },
  { id: 'gold-guide', type: 'GOLD_GUIDE', title: 'Gold Guide', description: 'Displays your gold earning and spendings.', category: 'General', x: 1, y: 1, w: 1, h: 1, visible: true },
  { id: 'bank-widget', type: 'BANK', title: 'Bank', description: 'Shows last seen bank content for current character and alts', category: 'General', x: 0, y: 2, w: 1, h: 1, visible: false },
  { id: 'wow-token', type: 'WOW_TOKEN', title: 'WoW Token prices', description: 'Displays current wow token price and changes over last 3 months.', category: 'General', x: 1, y: 2, w: 1, h: 1, visible: false },
  { id: 'bulletin', type: 'BULLETIN', title: 'X-PLORE Bulletin', description: 'Shows news and updates about X-PLORE', category: 'General', x: 0, y: 3, w: 1, h: 1, visible: false },
  { id: 'mythic-affixes', type: 'MYTHIC_AFFIXES', title: 'Mythic+ Affixes', description: 'Displays current Mythic+ affixes', category: 'Dungeons', x: 1, y: 3, w: 1, h: 1, visible: false },
  { id: 'valor-points', type: 'VALOR_POINTS', title: 'Valor points', description: 'Displays current and maximum valor points', category: 'Dungeons', x: 0, y: 4, w: 1, h: 1, visible: false },
  { id: 'grand-hunts', type: 'GRAND_HUNTS', title: 'Grand Hunts', description: 'Shows grand hunt location and time', category: 'Dailies / Events', x: 1, y: 4, w: 1, h: 1, visible: false },
  { id: 'notable-quests', type: 'NOTABLE_QUESTS', title: 'Notable Quests', description: 'Shows active world quests worth special attention', category: 'Dailies / Events', x: 0, y: 5, w: 1, h: 1, visible: false },
  { id: 'weekly-reset', type: 'WEEKLY_RESET', title: 'Weekly reset', description: 'Shows time until weekly reset', category: 'Dailies / Events', x: 1, y: 5, w: 1, h: 1, visible: false },
  { id: 'world-events', type: 'WORLD_EVENTS', title: 'World Events', description: 'Displays ongoing world events', category: 'Dailies / Events', x: 0, y: 6, w: 1, h: 1, visible: false },
  { id: 'world-bosses', type: 'WORLD_BOSSES', title: 'World bosses', description: 'Shows active world bosses', category: 'Dailies / Events', x: 1, y: 6, w: 1, h: 1, visible: false },
  { id: 'covenant-callings', type: 'COVENANT_CALLINGS', title: 'Covenant Callings', description: 'Displays active Covenant Callings', category: 'Covenants', x: 0, y: 7, w: 1, h: 1, visible: false },
  { id: 'covenant-renown', type: 'COVENANT_RENOWN', title: 'Covenant Renown', description: 'Displays current and maximum renown level', category: 'Covenants', x: 1, y: 7, w: 1, h: 1, visible: false },
  { id: 'covenant-assaults', type: 'COVENANT_ASSAULTS', title: 'Covenant assaults', description: 'Displays active Covenant Assaults', category: 'Covenants', x: 0, y: 8, w: 1, h: 1, visible: false },
  { id: 'conquest-points', type: 'CONQUEST_POINTS', title: 'Conquest points', description: 'Displays current conquest points', category: 'PVP', x: 1, y: 8, w: 1, h: 1, visible: false },
  { id: 'gear-score', type: 'GEAR_SCORE', title: 'Gear Score', description: 'Displays your current average item level', category: 'Character', x: 0, y: 9, w: 1, h: 1, visible: false },
  { id: 'quick-settings', type: 'QUICK_SETTINGS', title: 'Quick Settings', description: 'Rapid toggles for common addon settings', category: 'General', x: 1, y: 9, w: 1, h: 1, visible: false },
  { id: 'reputation-tracker', type: 'REPUTATION', title: 'Reputation', description: 'Tracks progress with selected factions', category: 'Character', x: 0, y: 10, w: 1, h: 1, visible: false },
  { id: 'profession-progress', type: 'PROFESSIONS', title: 'Professions', description: 'Shows skill levels for your professions', category: 'Character', x: 1, y: 10, w: 1, h: 1, visible: false },
  { id: 'dungeon-lockouts', type: 'LOCKOUTS', title: 'Dungeon Lockouts', description: 'Tracks your dungeon lockout status', category: 'Dungeons', x: 0, y: 11, w: 1, h: 1, visible: false },
  { id: 'character-stats', type: 'STATS', title: 'Character Stats', description: 'Overview of primary and secondary stats', category: 'Character', x: 1, y: 11, w: 1, h: 1, visible: false },
];

const DEFAULT_SETTINGS: AddonSettings = {
  stepDisplay: {
    numStepsShown: 1,
    enableManualResizing: false,
    skipHearthstoneSteps: false,
    skipFlightPathDiscovery: false,
    showTravelDirections: false,
    dungeons: {
      showStrategiesForAllRoles: true,
    },
    syncAndShare: {
      enableSyncAndShare: true,
      syncPartyProgress: true,
    },
    autoAdvance: true,
    showUpcoming: true,
    highlightQuestItems: true,
    questCleanup: false,
    fontSize: 12,
    windowOpacity: 85,
    windowScale: 100,
    lockViewer: false,
    enableTransparency: false,
  },
  guideViewer: {
    enableViewer: true,
    lockViewer: false,
    hideExperienceBar: false,
    viewerSkin: 'Starlight',
    enableTransparency: false,
    viewerOpacity: 85,
    guideMenuOpacity: 85,
    viewerSize: 100,
    fontSize: 12,
    widgetsOpacity: 85,
    widgetsSize: 100,
    flipViewerUpsideDown: false,
    hideInDungeonsAndRaids: false,
    showAgainWhenLeaving: true,
    hideDuringCombat: false,
    hideActionBarDuringCombat: false,
    keepVisibleWithVendor: true,
    showProgressBar: true,
    showMinimapButton: false,
  },
  automation: {
    autoAcceptTurnInGuideQuests: true,
    allQuests: false,
    autoSelectDialogOptions: true,
    autoTakeFlightPaths: false,
    autoBuyGuideItems: true,
    enableSellGraysButton: true,
    autoSellGrays: true,
    autoRepairMode: 'Do not auto-repair',
    autoAcceptQuests: true,
    autoTurnInQuests: true,
    autoSelectReward: false,
    autoSellTrash: true,
    autoRepair: true,
  },
  actionButton: {
    enabled: true,
    expandingDirection: 'Right',
    scale: 100,
    buttonTypes: {
      questActions: true,
      talkToNpc: true,
      killEnemy: true,
      deleteCheapestItem: true,
    },
    addRaidMarkers: true,
    size: 40,
    showKeybind: true,
  },
  waypointArrow: {
    enabled: true,
    locked: false,
    arrowSize: 100,
    arrowTextSize: 100,
    addOutline: false,
    arrowStyle: 'Starlight',
    unitOfMeasurement: 'yards / miles',
    enableTravelSystem: true,
    travelMethods: {
      direct: false,
      simple: false,
      advanced: true,
      custom: false,
      preferFlightPaths: false,
    },
    showDistance: true,
    smoothRotation: true,
    hideAtTarget: true,
    theme: 'MODERN',
    scale: 100,
    opacity: 100,
    point: 'TOP',
    x: 0,
    y: -100,
  },
  maps: {
    enableAntTrails: true,
    antTrailStyle: 'Solid lines',
    revealEntireMap: true,
    showMapMarkers: true,
    showPointsOfInterest: true,
    poiSize: 100,
    enableIconTransparency: false,
    poiTypes: {
      rareSpawns: true,
      treasures: true,
    },
    poiDisplayMode: 'Completionist Mode',
    enableWorldQuestPlanner: true,
    prioritizeCurrentZone: true,
    loadWorldQuestGuides: true,
    worldQuestPlannerScale: 100,
    highlightFlightPaths: true,
    enableDungeonMap: true,
    dungeonMapScale: 100,
    dungeonMapOpacity: 85,
    previewDuration: 'No duration',
    previewControl: 'Manual',
    showAntTrail: true,
    showIcons: true,
    minimapButton: true,
  },
  gear: {
    enableGearAdvisor: true,
    disableOnMaxLevel: false,
    showUpgradePopups: true,
    highlightQuestRewards: true,
    autoSelectQuestRewards: false,
    autoEquipUpgrades: false,
    doNotReplaceHeirlooms: false,
    enableItemScoreTooltips: true,
    enableGearFinder: true,
    dungeonSources: {
      normal: true,
      heroic: true,
      mythic: false,
      timewalking: false,
      mythicPlus: false,
    },
    raidSources: {
      lfr: true,
      normal: false,
      heroic: false,
      mythic: false,
      raidFinder: true,
    },
    highlightUpgradesInBags: true,
    upgradeType: 'all upgrades',
    upgradeSlot: 'all slots',
    upgradeStyle: 'border',
    useHotkeyForReporting: true,
    hotkey: 'Alt',
    mouseButton: 'Right click',
    suggestUpgrades: true,
    showItemScore: true,
    statWeights: 'BALANCED',
    enabled: true,
    autoEquip: false,
  },
  itemScore: {
    enabled: true,
    showInTooltips: true,
    showInCharacterPane: true,
    showInInspection: true,
    class: 'Warrior',
    specialization: 'Fury',
    socketEmptySockets: 0,
    showAllStats: false,
    scoreOffspecItems: true,
    statWeights: {
      strength: 2.28,
      agility: 0,
      intellect: 0,
      crit: 0.94,
      haste: 0.99,
      mastery: 1,
      versatility: 0.88,
      armor: 0.01,
      dps: 8.79,
      stamina: 0.01,
      dominationSocket: 0.25,
    },
  },
  goldGuide: {
    enabled: true,
    showInViewer: true,
    enableAuctionHouse: true,
    priceUpdateInterval: 30,
    showFarmingRoutes: true,
    enableLootTracking: true,
    displayFormat: '12g 34s 56c',
    enableAuctionTools: true,
    autoScanAuction: false,
    enableQuickerScans: false,
    auctionScanSpeed: 1,
    enableItemTooltips: true,
    tooltipDisplayMode: 'Simple',
  },
  notifications: {
    enabled: true,
    showInGameAlerts: true,
    playSound: true,
    notificationSound: 'X-PLORE Alert',
    notificationSize: 'Detailed',
    notificationDuration: '5s',
    notificationPosition: 'Left',
    sendToCenter: false,
    markAsSeen: false,
    hideWhenViewerClosed: true,
    showAdvanced: true,
    showInChat: true,
    showOnScreen: true,
    types: {
      rareSpotted: true,
      treasureNearby: true,
      guideUpdate: true,
      auctionSold: true,
      welcome: true,
      updates: true,
      startup: true,
      seasonal: true,
      gearSuggestions: true,
      disableGearOnMax: false,
      dungeonSuggestions: true,
      ridingSkill: true,
      monkReset: true,
      dailyReset: true,
      weeklyReset: true,
      creatureDetector: true,
      skippedCutscenes: true,
    },
  },
  extras: {
    showChatMessages: true,
    showReputationGains: false,
    enablePetBattlePanel: true,
    enableTalentAdvisor: true,
    enableGuideRating: true,
    announceLevelUp: true,
    announceChannels: {
      guild: false,
      party: false,
      say: true,
      general: true,
    },
    enableMountCollector: true,
    enablePetCollector: true,
    enableAchievementHunter: true,
    developerMode: false,
    showDebugInfo: false,
  },
  plugins: {
    enabled: true,
    pluginList: [],
  },
  widgets: INITIAL_WIDGETS,
  theme: {
    id: 'default',
    name: 'X-Plore Blue',
    colors: {
      blueDk: '#0a1128',
      blueMd: '#1c2541',
      blueLt: '#3a506b',
      parch: '#e0e1dd',
      gold: '#f9d949',
      goldDk: '#b49b39',
      active: '#00e5ff',
      complete: '#22c55e',
      red: '#ef4444',
    }
  },
  themePresets: [],
  profile: {
    activeProfile: 'Default',
    profiles: ['Default', 'Leveling', 'Raiding'],
    useOnAllCharacters: false,
  },
};

interface DashboardWidgetProps {
  widget: Widget;
  children: React.ReactNode;
  onClose?: () => void;
  onPopOut?: () => void;
  onDragEnd?: (e: any, info: any) => void;
  isConfigMode?: boolean;
}

const DashboardWidget: React.FC<DashboardWidgetProps> = ({ widget, children, onClose, onPopOut, onDragEnd, isConfigMode }) => {
  return (
    <motion.div 
      layout
      drag={widget.isPoppedOut}
      dragMomentum={false}
      onDragEnd={onDragEnd}
      className={cn(
        "bg-black/20 rounded-lg border border-active/10 overflow-hidden flex flex-col transition-all",
        isConfigMode && "ring-2 ring-active/40 ring-offset-2 ring-offset-blue-dk scale-[0.98] cursor-move",
        widget.h === 1 ? "h-[300px]" : "h-auto",
        widget.isPoppedOut && "fixed z-[1000] shadow-2xl bg-blue-md/95 backdrop-blur-md border-active/30 w-[300px]"
      )}
      style={widget.isPoppedOut ? {
        left: widget.poppedX ?? '50%',
        top: widget.poppedY ?? '50%',
        transform: widget.poppedX === undefined ? 'translate(-50%, -50%)' : 'none',
        margin: 0
      } : {}}
    >
      <div className={cn(
        "p-4 border-b border-active/10 flex justify-between items-center bg-blue-md/30",
        widget.isPoppedOut && "cursor-move"
      )}>
        <div className="flex flex-col">
          <h3 className="text-sm font-bold font-cinzel tracking-wider text-active uppercase select-none leading-none">{widget.title}</h3>
          {widget.description && <span className="text-[9px] text-parch/40 mt-1 select-none">{widget.description}</span>}
        </div>
        <div className="flex items-center gap-2">
          {onPopOut && (
            <button 
              onClick={onPopOut}
              className="text-active/40 hover:text-active transition-colors p-1"
              title={widget.isPoppedOut ? "Pop In" : "Pop Out"}
            >
              {widget.isPoppedOut ? <Minimize2 size={14} /> : <ExternalLink size={14} />}
            </button>
          )}
          {isConfigMode && (
            <button 
              onClick={onClose}
              className="text-active/40 hover:text-red transition-colors p-1"
            >
              <X size={14} />
            </button>
          )}
        </div>
      </div>
      <div className="flex-1 p-4 overflow-y-auto custom-scrollbar">
        {children}
      </div>
    </motion.div>
  );
};

export default function App() {
  const { 
    activeSettings: settings, 
    activeProfileName, 
    profiles, 
    saveProfile, 
    switchProfile, 
    deleteProfile, 
    createProfile 
  } = useProfile(DEFAULT_SETTINGS);

  const [activeTab, setActiveTab] = useState<AppTab>('DASHBOARD');
  const [activeHubTab, setActiveHubTab] = useState<string>('Home');
  const [selectedPatch, setSelectedPatch] = useState('Patch 12.0.1 - Midnight');
  const [showPatchDropdown, setShowPatchDropdown] = useState(false);

  const patches = [
    'Patch 12.0.1 - Midnight',
    'Patch 12.0.0 - Twilight Ascension',
    'Patch 11.2.7 - The Warning',
    'Patch 11.2.5 - Legion Remix',
    'Patch 11.2.0 - Ghosts of K\'aresh',
    'Patch 11.1.7 - Legacy of Arathor',
    'Patch 11.1.5 - Nightfall',
    'Patch 11.1.0 - Undermine(d)',
    'Patch 11.0.7 - Siren Isle',
    'The War Within',
    'Patch 10.2.7 - Dark Heart',
    'Patch 10.2.5 - Seeds of Renewal',
    'Patch 10.2.0 - Guardians of the Dream Overview',
    'Patch 10.1.7 - Fury Incarnate',
    'Patch 10.1.5 - Fractures in Time',
    'Patch 10.1 - Embers of Neltharion',
    'Dragonflight',
    'Patch 9.2 - Eternity\'s End',
    'Patch 9.1 - Chains of Domination',
    'Shadowlands',
    'Patch 8.3 - Visions of N\'Zoth',
    'Battle for Azeroth'
  ];

  const featuredGuidesData: Record<string, any[]> = {
    'Patch 12.0.1 - Midnight': [
      {
        category: 'Leveling',
        icon: <Zap size={16} className="text-gold" />,
        image: 'https://picsum.photos/seed/midnight-leveling/600/300',
        guides: [
          'Midnight Intro & Campaign (Full Zone)',
          'Eversong Woods (Full Zone)',
          'Zul\'Aman (Full Zone)',
          'Harandar (Full Zone)',
          'Arator\'s Journey (Full Zone)',
          'Voidstorm (Full Zone)',
          'Midnight Intro & Campaign (Story Only)'
        ]
      },
      {
        category: 'Dailies',
        icon: <Info size={16} className="text-active" />,
        image: 'https://picsum.photos/seed/midnight-dailies/600/300',
        guides: [
          'Eversong Woods World Quests',
          'Harandar World Quests',
          'Voidstorm World Quests',
          'Zul\'Aman World Quests'
        ]
      },
      {
        category: 'Dungeons',
        icon: <Skull size={16} className="text-active" />,
        image: 'https://picsum.photos/seed/midnight-dungeons/600/300',
        guides: [
          'Den of Nalorakk',
          'Magister\'s Terrace',
          'Murder Row',
          'Windrunner Spire',
          'Maisara Gardens',
          'Nexus Point Xenas',
          'The Blinding Light'
        ]
      },
      {
        category: 'Professions',
        icon: <Hammer size={16} className="text-parch" />,
        image: 'https://picsum.photos/seed/midnight-professions/600/300',
        guides: [
          'Midnight Herbalism 1-100',
          'Midnight Mining 1-100',
          'Midnight Skinning 1-100'
        ]
      }
    ]
  };
  const [selectedCategory, setSelectedCategory] = useState<string | null>(null);
  const [isConfigMode, setIsConfigMode] = useState(false);
  const [plugins, setPlugins] = useState<Plugin[]>(pluginRegistry.getAllPlugins().map(p => ({ ...p, enabled: true })));
  const [isBrowsingPlugins, setIsBrowsingPlugins] = useState(false);
  const [showViewerMenu, setShowViewerMenu] = useState(false);
  const [currentFolder, setCurrentFolder] = useState<string | null>(null);
  const [showFilterMenu, setShowFilterMenu] = useState(false);
  const [guideFilters, setGuideFilters] = useState({
    colorCodeDifficulty: false,
    useCheckmarkForCompleted: true,
    hideCompleted: false,
    useStarForSuggested: false
  });
  const [settingsCategory, setSettingsCategory] = useState<keyof AddonSettings>('stepDisplay');
  
  // Multi-tab support
  const [openGuides, setOpenGuides] = useState<{guide: Guide, stepIndex: number}[]>([
    { guide: MOCK_GUIDES[0], stepIndex: 0 }
  ]);
  const [activeGuideTabIndex, setActiveGuideTabIndex] = useState(0);
  
  // Recent guides
  const [recentGuides, setRecentGuides] = useState<Guide[]>([MOCK_GUIDES[0]]);
  const [showRecentDropdown, setShowRecentDropdown] = useState(false);
  
  // Search & Filters
  const [searchQuery, setSearchQuery] = useState('');
  const [categoryFilter, setCategoryFilter] = useState<Guide['category'] | 'ALL'>('ALL');
  const [expansionFilter, setExpansionFilter] = useState<Guide['expansion'] | 'ALL'>('ALL');
  
  // Theme Preset Naming
  const [namingPresetIndex, setNamingPresetIndex] = useState<number | null>(null);
  const [presetNameInput, setPresetNameInput] = useState('');
  
  // Settings
  const [questCleanupEnabled, setQuestCleanupEnabled] = useState(false);
  const [isMinimized, setIsMinimized] = useState(false);
  const [isPinned, setIsPinned] = useState(false);

  // Apply Theme
  useEffect(() => {
    const root = document.documentElement;
    const colors = settings.theme.colors;
    root.style.setProperty('--blue-dk', colors.blueDk);
    root.style.setProperty('--blue-md', colors.blueMd);
    root.style.setProperty('--blue-lt', colors.blueLt);
    root.style.setProperty('--parch', colors.parch);
    root.style.setProperty('--gold', colors.gold);
    root.style.setProperty('--gold-dk', colors.goldDk);
    root.style.setProperty('--active', colors.active);
    root.style.setProperty('--complete', colors.complete);
    root.style.setProperty('--red', colors.red);
  }, [settings.theme]);

  const activeGuideState = openGuides[activeGuideTabIndex] || openGuides[0];
  const activeGuide = activeGuideState.guide;
  const currentStepIndex = activeGuideState.stepIndex;

  const currentStep = activeGuide.steps[currentStepIndex];
  const progress = Math.round(((currentStepIndex + 1) / activeGuide.steps.length) * 100);

  const filteredGuides = MOCK_GUIDES.filter(guide => {
    const matchesSearch = guide.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
                         guide.category.toLowerCase().includes(searchQuery.toLowerCase());
    
    // If we're searching globally (searchQuery is not empty), we ignore other filters
    if (searchQuery) return matchesSearch;

    const matchesCategory = categoryFilter === 'ALL' || guide.category === categoryFilter;
    const matchesExpansion = expansionFilter === 'ALL' || guide.expansion === expansionFilter;
    
    // Apply guide filters
    if (guideFilters.hideCompleted && guide.isCompleted) return false;

    return matchesSearch && matchesCategory && matchesExpansion;
  });

  // Group by folder if in category view
  const displayItems = React.useMemo(() => {
    if (searchQuery) return filteredGuides.map(g => ({ type: 'GUIDE' as const, data: g }));

    if (currentFolder) {
      return filteredGuides
        .filter(g => g.folder === currentFolder)
        .map(g => ({ type: 'GUIDE' as const, data: g }));
    }

    const folders = Array.from(new Set(filteredGuides.map(g => g.folder).filter(Boolean)));
    const items: { type: 'FOLDER' | 'GUIDE', data: any }[] = folders.map(f => ({ type: 'FOLDER', data: f }));
    
    // Add guides that are not in any folder
    const guidesWithoutFolder = filteredGuides.filter(g => !g.folder);
    items.push(...guidesWithoutFolder.map(g => ({ type: 'GUIDE' as const, data: g })));

    return items;
  }, [filteredGuides, searchQuery, currentFolder]);

  const updateSettings = (newSettings: Partial<AddonSettings>) => {
    saveProfile({ ...settings, ...newSettings });
  };

  const installPlugin = (plugin: Plugin) => {
    if (!plugins.find(p => p.id === plugin.id)) {
      setPlugins([...plugins, { ...plugin, enabled: true }]);
      alert(`${plugin.name} installed!`);
    }
  };

  const togglePlugin = (id: string, enabled: boolean) => {
    setPlugins(plugins.map(p => p.id === id ? { ...p, enabled } : p));
    const pluginDef = pluginRegistry.getPlugin(id);
    if (pluginDef) {
      if (enabled && pluginDef.onEnable) pluginDef.onEnable();
      if (!enabled && pluginDef.onDisable) pluginDef.onDisable();
    }
  };

  const addPluginWidget = (pluginId: string) => {
    const plugin = pluginRegistry.getPlugin(pluginId);
    if (plugin && plugin.getWidgets) {
      const newWidgets = plugin.getWidgets();
      updateSettings({ widgets: [...(settings.widgets || []), ...newWidgets] });
    }
  };

  const renderWidgetContent = (widget: Widget) => {
    switch (widget.id) {
      case 'recent-guides':
        return (
          <div className="space-y-3">
            {recentGuides.map(g => (
              <div key={g.id} className="flex items-center gap-3 group cursor-pointer" onClick={() => openGuide(g)}>
                <div className="w-6 h-6 bg-active/20 rounded flex items-center justify-center text-[10px] font-bold text-active">XP</div>
                <span className="text-xs text-parch/80 group-hover:text-parch flex-1">{g.name}</span>
                <ChevronRight size={14} className="text-active/20 group-hover:text-active/40" />
              </div>
            ))}
          </div>
        );
      case 'suggested-guides':
        return (
          <div className="flex flex-col h-full">
            <div className="flex-1 space-y-2">
              {[
                { name: 'Catch Up', icon: 'XP' },
                { name: 'Chromie Time', icon: 'XP' },
                { name: 'Hellfire Peninsula (10-70)', icon: 'XP' },
                { name: 'Lorewalking', icon: 'XP' },
                { name: 'Maraudon: Foulspore Cavern', icon: 'DUN' },
              ].map((g, i) => (
                <div key={i} className="flex items-center gap-3 group cursor-pointer">
                  <div className={cn(
                    "w-5 h-5 rounded flex items-center justify-center text-[9px] font-bold",
                    "bg-active/20 text-active"
                  )}>{g.icon}</div>
                  <span className="text-xs text-parch/80 group-hover:text-parch flex-1 font-cinzel tracking-tight">{g.name}</span>
                  <div className="w-4 h-4 rounded-full border border-active/20 flex items-center justify-center group-hover:border-active/60 transition-colors">
                    <ChevronRight size={10} className="text-active/40 group-hover:text-active" />
                  </div>
                </div>
              ))}
            </div>
            <div className="mt-auto w-full flex justify-between items-center text-[10px] text-parch/40 hover:text-active cursor-pointer transition-colors pt-3 border-t border-active/5">
              <span>See more</span>
              <ArrowRight size={12} />
            </div>
          </div>
        );
      case 'level-tracker':
        return (
          <div className="flex flex-col h-full">
            <div className="flex-1 flex flex-col items-start justify-center py-4">
              <div className="text-sm text-parch/80 font-cinzel">Level 11: <span className="text-active font-bold">9h 34m 31s</span></div>
              <div className="w-full h-1.5 bg-black/40 rounded-full mt-4 overflow-hidden">
                <div className="h-full bg-active w-[45%] shadow-[0_0_8px_rgba(0,229,255,0.4)]" />
              </div>
            </div>
            <div className="mt-auto w-full flex justify-between items-center text-[10px] text-parch/40 hover:text-active cursor-pointer transition-colors pt-3 border-t border-active/5">
              <span>See more</span>
              <ArrowRight size={12} />
            </div>
          </div>
        );
      case 'gold-guide':
        return (
          <div className="flex flex-col h-full">
            <div className="flex-1 flex flex-col items-center justify-center text-center py-2">
              <div className="text-[10px] text-parch/40 uppercase tracking-wider mb-1 font-cinzel">Todays Earnings:</div>
              <div className="text-2xl font-bold text-parch mb-4">0c</div>
              <div className="text-[10px] text-parch/40 uppercase tracking-wider mb-1 font-cinzel">Weekly Earnings:</div>
              <div className="text-xl font-bold text-parch/80">0c</div>
            </div>
            <div className="mt-auto w-full flex justify-between items-center text-[10px] text-parch/40 hover:text-active cursor-pointer transition-colors pt-3 border-t border-active/5">
              <span>See more</span>
              <ArrowRight size={12} />
            </div>
          </div>
        );
      case 'gear-score':
        return (
          <div className="flex flex-col items-center justify-center h-full py-2">
            <div className="text-3xl font-bold text-active">584</div>
            <div className="text-[10px] text-parch/40 uppercase tracking-widest">Average Item Level</div>
            <div className="mt-4 grid grid-cols-4 gap-2 w-full">
              {['Head', 'Neck', 'Shoulder', 'Back'].map(slot => (
                <div key={slot} className="flex flex-col items-center">
                  <div className="w-8 h-8 bg-black/40 rounded border border-active/10" />
                  <span className="text-[8px] text-parch/30 mt-1">{slot}</span>
                </div>
              ))}
            </div>
          </div>
        );
      case 'bank-widget':
        return (
          <div className="space-y-2">
            <div className="flex justify-between text-[10px]">
              <span className="text-parch/60">Total Gold in Bank</span>
              <span className="text-active">124,500g</span>
            </div>
            <div className="grid grid-cols-5 gap-1">
              {Array.from({ length: 10 }).map((_, i) => (
                <div key={i} className="aspect-square bg-black/40 rounded border border-active/5" />
              ))}
            </div>
          </div>
        );
      case 'wow-token':
        return (
          <div className="space-y-2">
            <div className="flex justify-between items-end">
              <div className="text-lg font-bold text-active">342,150g</div>
              <div className="text-[10px] text-complete">+2.4%</div>
            </div>
            <div className="h-12 w-full flex items-end gap-1">
              {Array.from({ length: 12 }).map((_, i) => (
                <div 
                  key={i} 
                  className="flex-1 bg-active/20 rounded-t-sm" 
                  style={{ height: `${Math.random() * 100}%` }}
                />
              ))}
            </div>
          </div>
        );
      case 'bulletin':
        return (
          <div className="space-y-2">
            <div className="p-2 bg-active/5 rounded border border-active/10">
              <div className="text-[10px] font-bold text-active mb-1">New Guide: The War Within</div>
              <p className="text-[9px] text-parch/60 leading-tight">Leveling guides for the new expansion are now available!</p>
            </div>
            <div className="p-2 bg-black/20 rounded border border-active/5">
              <div className="text-[10px] font-bold text-parch/80 mb-1">Update v1.2.4</div>
              <p className="text-[9px] text-parch/40 leading-tight">Bug fixes for the waypoint arrow and quest tracker.</p>
            </div>
          </div>
        );
      case 'mythic-affixes':
        return (
          <div className="flex gap-4 justify-center py-2">
            {['Fortified', 'Incorporeal', 'Sanguine'].map(affix => (
              <div key={affix} className="flex flex-col items-center gap-1">
                <div className="w-10 h-10 bg-black/40 rounded-full border border-active/20 flex items-center justify-center text-active">
                  <Skull size={20} />
                </div>
                <span className="text-[9px] text-parch/60">{affix}</span>
              </div>
            ))}
          </div>
        );
      case 'valor-points':
        return (
          <div className="space-y-4">
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Valorstones</span>
                <span className="text-active">1,450 / 2,000</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[72.5%]" />
              </div>
            </div>
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Harbinger Crests</span>
                <span className="text-active">45 / 90</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[50%]" />
              </div>
            </div>
          </div>
        );
      case 'grand-hunts':
        return (
          <div className="flex items-center gap-4">
            <div className="w-12 h-12 bg-active/10 rounded border border-active/20 flex items-center justify-center text-active">
              <MapIcon size={24} />
            </div>
            <div>
              <div className="text-xs font-bold text-parch">Ohn'ahran Plains</div>
              <div className="text-[10px] text-active">Active - 1h 24m remaining</div>
            </div>
          </div>
        );
      case 'notable-quests':
        return (
          <div className="space-y-2">
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">World Boss: Valkanos</span>
              <span className="text-[10px] text-active font-bold">Reward: 610 Gear</span>
            </div>
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Weekly: A Worthy Ally</span>
              <span className="text-[10px] text-active font-bold">Reward: Cache</span>
            </div>
          </div>
        );
      case 'weekly-reset':
        return (
          <div className="flex flex-col items-center justify-center h-full gap-2">
            <div className="text-2xl font-bold text-active">3d 14h 22m</div>
            <div className="text-[10px] text-parch/40 uppercase tracking-widest">Until Weekly Reset</div>
          </div>
        );
      case 'world-events':
        return (
          <div className="space-y-2">
            <div className="flex justify-between text-[10px]">
              <span className="text-parch/60">Darkmoon Faire</span>
              <span className="text-complete">Ends in 2d</span>
            </div>
            <div className="flex justify-between text-[10px]">
              <span className="text-parch/60">Timewalking: Legion</span>
              <span className="text-active">Starts in 4d</span>
            </div>
          </div>
        );
      case 'world-bosses':
        return (
          <div className="space-y-2">
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Basaltadon</span>
              <span className="text-[10px] text-red uppercase font-bold">Defeated</span>
            </div>
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">The Primal Storm</span>
              <span className="text-[10px] text-complete uppercase font-bold">Available</span>
            </div>
          </div>
        );
      case 'covenant-callings':
        return (
          <div className="space-y-2">
            <div className="p-2 bg-black/20 rounded border border-active/5">
              <div className="text-[10px] font-bold text-parch/80">Troubles in Bastion</div>
              <div className="text-[9px] text-active">2 days remaining</div>
            </div>
            <div className="p-2 bg-black/20 rounded border border-active/5">
              <div className="text-[10px] font-bold text-parch/80">A Call to Maldraxxus</div>
              <div className="text-[9px] text-active">3 days remaining</div>
            </div>
          </div>
        );
      case 'covenant-renown':
        return (
          <div className="flex flex-col items-center justify-center h-full gap-1">
            <div className="text-3xl font-bold text-active">80</div>
            <div className="text-[10px] text-parch/40 uppercase tracking-widest">Renown Level</div>
            <div className="text-[9px] text-complete mt-1">Maximum Level Reached</div>
          </div>
        );
      case 'covenant-assaults':
        return (
          <div className="space-y-2">
            <div className="flex justify-between text-[10px]">
              <span className="text-parch/60">Night Fae Assault</span>
              <span className="text-active">Active - 12h left</span>
            </div>
            <div className="flex justify-between text-[10px]">
              <span className="text-parch/60">Venthyr Assault</span>
              <span className="text-parch/30">Starts in 1d 4h</span>
            </div>
          </div>
        );
      case 'conquest-points':
        return (
          <div className="space-y-4">
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Conquest</span>
                <span className="text-active">1,250 / 5,000</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[25%]" />
              </div>
            </div>
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Honor</span>
                <span className="text-active">4,800 / 15,000</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[32%]" />
              </div>
            </div>
          </div>
        );
      case 'quick-settings':
        return (
          <div className="space-y-2">
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Auto-Accept</span>
              <div className="w-8 h-4 bg-active/20 rounded-full relative">
                <div className="absolute right-1 top-1 w-2 h-2 bg-active rounded-full" />
              </div>
            </div>
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Auto-TurnIn</span>
              <div className="w-8 h-4 bg-active/20 rounded-full relative">
                <div className="absolute right-1 top-1 w-2 h-2 bg-active rounded-full" />
              </div>
            </div>
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Auto-Sell Trash</span>
              <div className="w-8 h-4 bg-active/20 rounded-full relative">
                <div className="absolute right-1 top-1 w-2 h-2 bg-active rounded-full" />
              </div>
            </div>
          </div>
        );
      case 'reputation-tracker':
        return (
          <div className="space-y-4">
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">The Council of Dornogal</span>
                <span className="text-active">Honored (3,450 / 6,000)</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[57%]" />
              </div>
            </div>
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Assembly of the Deep</span>
                <span className="text-active">Friendly (1,200 / 3,000)</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[40%]" />
              </div>
            </div>
          </div>
        );
      case 'profession-progress':
        return (
          <div className="space-y-4">
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Blacksmithing</span>
                <span className="text-active">75 / 100</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-[75%]" />
              </div>
            </div>
            <div>
              <div className="flex justify-between text-[10px] mb-1">
                <span className="text-parch/60">Mining</span>
                <span className="text-active">100 / 100</span>
              </div>
              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden">
                <div className="h-full bg-active w-full shadow-[0_0_8px_rgba(0,229,255,0.4)]" />
              </div>
            </div>
          </div>
        );
      case 'dungeon-lockouts':
        return (
          <div className="space-y-2">
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">The Rookery (H)</span>
              <span className="text-[10px] text-red uppercase font-bold">Locked</span>
            </div>
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Priory of the Sacred Flame (H)</span>
              <span className="text-[10px] text-complete uppercase font-bold">Available</span>
            </div>
            <div className="flex items-center justify-between p-2 bg-black/20 rounded border border-active/5">
              <span className="text-xs text-parch/80">Darkflame Cleft (H)</span>
              <span className="text-[10px] text-complete uppercase font-bold">Available</span>
            </div>
          </div>
        );
      case 'character-stats':
        return (
          <div className="grid grid-cols-2 gap-4">
            <div className="space-y-2">
              <div className="flex justify-between text-[10px]">
                <span className="text-parch/40">Strength</span>
                <span className="text-parch">4,210</span>
              </div>
              <div className="flex justify-between text-[10px]">
                <span className="text-parch/40">Stamina</span>
                <span className="text-parch">6,840</span>
              </div>
              <div className="flex justify-between text-[10px]">
                <span className="text-parch/40">Armor</span>
                <span className="text-parch">12,450</span>
              </div>
            </div>
            <div className="space-y-2">
              <div className="flex justify-between text-[10px]">
                <span className="text-parch/40">Haste</span>
                <span className="text-parch">18%</span>
              </div>
              <div className="flex justify-between text-[10px]">
                <span className="text-parch/40">Crit</span>
                <span className="text-parch">24%</span>
              </div>
              <div className="flex justify-between text-[10px]">
                <span className="text-parch/40">Mastery</span>
                <span className="text-parch">32%</span>
              </div>
            </div>
          </div>
        );
      default:
        return null;
    }
  };

  const togglePopOut = (widgetId: string) => {
    updateSettings({
      widgets: (settings.widgets || []).map(w => 
        w.id === widgetId ? { ...w, isPoppedOut: !w.isPoppedOut } : w
      )
    });
  };

  const handleWidgetDragEnd = (widgetId: string, info: any) => {
    const widget = (settings.widgets || []).find(w => w.id === widgetId);
    if (widget) {
      // Calculate new position based on offset
      const currentX = widget.poppedX ?? (window.innerWidth / 2 - 150);
      const currentY = widget.poppedY ?? (window.innerHeight / 2 - 150);
      
      updateSettings({
        widgets: (settings.widgets || []).map(w => 
          w.id === widgetId ? { 
            ...w, 
            poppedX: currentX + info.offset.x, 
            poppedY: currentY + info.offset.y 
          } : w
        )
      });
    }
  };

  const updateCurrentStepIndex = (newIndex: number) => {
    const newOpenGuides = [...openGuides];
    newOpenGuides[activeGuideTabIndex].stepIndex = newIndex;
    setOpenGuides(newOpenGuides);
  };

  const handleNext = () => {
    if (currentStepIndex < activeGuide.steps.length - 1) {
      updateCurrentStepIndex(currentStepIndex + 1);
    }
  };

  const handlePrev = () => {
    if (currentStepIndex > 0) {
      updateCurrentStepIndex(currentStepIndex - 1);
    }
  };

  const openGuide = (guide: Guide) => {
    const existingIndex = openGuides.findIndex(og => og.guide.id === guide.id);
    if (existingIndex !== -1) {
      setActiveGuideTabIndex(existingIndex);
    } else {
      const newList = [...openGuides, { guide, stepIndex: 0 }];
      setOpenGuides(newList);
      setActiveGuideTabIndex(newList.length - 1);
    }
    
    // Update recent guides
    setRecentGuides(prev => {
      const filtered = prev.filter(g => g.id !== guide.id);
      return [guide, ...filtered].slice(0, 5);
    });
    
    setActiveTab('VIEWER');
  };

  const closeGuideTab = (e: React.MouseEvent, index: number) => {
    e.stopPropagation();
    if (openGuides.length <= 1) return;
    const newOpenGuides = openGuides.filter((_, i) => i !== index);
    setOpenGuides(newOpenGuides);
    if (activeGuideTabIndex >= index) {
      setActiveGuideTabIndex(Math.max(0, activeGuideTabIndex - 1));
    }
  };

  return (
    <div className="min-h-screen flex flex-col items-center justify-center p-8 gap-8">
      {/* Popped Out Widgets */}
      {(settings.widgets || []).filter(w => w.visible && w.isPoppedOut).map(widget => (
        <DashboardWidget 
          key={widget.id} 
          widget={widget}
          onPopOut={() => togglePopOut(widget.id)}
          onDragEnd={(_, info) => handleWidgetDragEnd(widget.id, info)}
        >
          {renderWidgetContent(widget)}
        </DashboardWidget>
      ))}

      {/* Waypoint Arrow */}
      <WaypointArrow 
        visible={settings.waypointArrow.enabled}
        theme={settings.waypointArrow.theme}
        scale={settings.waypointArrow.scale / 100}
        distance={120} // Mock distance
        angle={45} // Mock angle
        targetName={currentStep.title}
        x={settings.waypointArrow.x}
        y={settings.waypointArrow.y}
        locked={settings.waypointArrow.locked}
        onPositionChange={(x, y) => updateSettings({waypointArrow: {...settings.waypointArrow, x, y}})}
      />

      {/* Header Info - Simplified */}
      <div className="text-center mb-6">
        <h1 className="font-cinzel-decorative text-5xl text-active mb-2 tracking-widest drop-shadow-[0_0_15px_rgba(0,229,255,0.5)]">
          X-PLORE
        </h1>
        <div className="flex items-center justify-center gap-4">
          <div className="h-px w-12 bg-active/20" />
          <p className="font-cinzel text-parch/60 tracking-[0.3em] uppercase text-xs">
            Universal Guide Viewer
          </p>
          <div className="h-px w-12 bg-active/20" />
        </div>
      </div>

      <div className="relative w-full max-w-6xl flex flex-col items-center gap-8">
        
        {/* The Addon Window Simulation */}
        <AnimatePresence mode="wait">
          {activeTab === 'DASHBOARD' && (
            <DraggableFrame 
              title="X-PLORE" 
              onClose={() => setActiveTab('VIEWER')}
              className="w-full max-w-6xl h-[750px]"
            >
              <div className="flex h-full bg-blue-md overflow-hidden">
                {/* Sidebar */}
                <div className="w-64 bg-blue-dk border-r border-active/10 flex flex-col">
                  <div className="p-4">
                    <div className="relative">
                      <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-active/40" size={14} />
                      <input 
                        type="text" 
                        placeholder="Search guides..." 
                        value={searchQuery}
                        onChange={(e) => setSearchQuery(e.target.value)}
                        className="w-full bg-black/40 border border-active/10 rounded py-1.5 pl-9 pr-3 text-xs text-parch placeholder:text-active/20 focus:outline-none focus:border-active/40"
                      />
                    </div>
                  </div>

                  <div className="flex-1 overflow-y-auto py-2 custom-scrollbar">
                    <button 
                      onClick={() => {
                        setActiveHubTab('Home');
                        setCategoryFilter('ALL');
                        setSelectedCategory(null);
                        setSearchQuery('');
                      }}
                      className={cn(
                        "w-full flex items-center gap-3 px-4 py-2 transition-colors text-left",
                        activeHubTab === 'Home' && categoryFilter === 'ALL' && !searchQuery ? "bg-active/10 text-active" : "hover:bg-active/5 text-parch/70 hover:text-parch"
                      )}
                    >
                      <LayoutDashboard size={14} className="text-active" />
                      <span className="text-xs font-medium font-cinzel tracking-wider">Home</span>
                    </button>
                    
                    <div className="h-px bg-active/10 my-2 mx-4" />

                    {[
                      { id: 'LEVELING', label: 'Leveling', icon: <div className="w-4 h-4 bg-active/20 rounded flex items-center justify-center text-[8px] font-bold text-active">XP</div> },
                      { id: 'DUNGEON', label: 'Dungeons', icon: <Skull size={14} className="text-active" /> },
                      { id: 'DAILIES', label: 'Dailies', icon: <Info size={14} className="text-active" /> },
                      { id: 'EVENTS', label: 'Events', icon: <Calendar size={14} className="text-active" /> },
                      { id: 'REPUTATION', label: 'Reputations', icon: <Heart size={14} className="text-active" /> },
                      { id: 'GOLD', label: 'Gold', icon: <Coins size={14} className="text-active" /> },
                      { id: 'PROFESSION', label: 'Professions', icon: <Hammer size={14} className="text-active" /> },
                      { id: 'PETS_MOUNTS', label: 'Pets & Mounts', icon: <PawPrint size={14} className="text-active" /> },
                      { id: 'TITLES', label: 'Titles', icon: <Award size={14} className="text-active" /> },
                      { id: 'ACHIEVEMENT', label: 'Achievements', icon: <Trophy size={14} className="text-active" /> },
                      { id: 'FAVORITES', label: 'Favorites', icon: <Star size={14} className="text-active" /> },
                    ].map(cat => (
                      <button 
                        key={cat.id}
                        onClick={() => {
                          setCategoryFilter(cat.id as any);
                          setActiveHubTab('Category');
                          setSearchQuery('');
                        }}
                        className={cn(
                          "w-full flex items-center gap-3 px-4 py-2 transition-colors text-left",
                          categoryFilter === cat.id && !searchQuery ? "bg-active/10 text-active" : "hover:bg-active/5 text-parch/70 hover:text-parch"
                        )}
                      >
                        {cat.icon}
                        <span className="text-xs font-medium font-cinzel tracking-wider">{cat.label}</span>
                      </button>
                    ))}
                  </div>

                  <div className="p-2 border-t border-active/10 space-y-1">
                    <button 
                      onClick={() => {
                        setActiveTab('DASHBOARD');
                        setActiveHubTab('Plugins');
                      }}
                      className={cn(
                        "w-full flex items-center gap-3 px-4 py-2 transition-colors text-left",
                        activeHubTab === 'Plugins' ? "bg-active/10 text-active" : "hover:bg-active/5 text-parch/70 hover:text-parch"
                      )}
                    >
                      <Zap size={14} className="text-active" />
                      <span className="text-xs font-medium font-cinzel tracking-wider">Plugins</span>
                    </button>
                    <button 
                      onClick={() => {
                        setActiveTab('DASHBOARD');
                        setActiveHubTab('Export');
                      }}
                      className={cn(
                        "w-full flex items-center gap-3 px-4 py-2 transition-colors text-left",
                        activeHubTab === 'Export' ? "bg-active/10 text-active" : "hover:bg-active/5 text-parch/70 hover:text-parch"
                      )}
                    >
                      <FileCode size={14} className="text-active" />
                      <span className="text-xs font-medium font-cinzel tracking-wider">Lua Export</span>
                    </button>
                    <button 
                      onClick={() => {
                        setActiveTab('DASHBOARD');
                        setActiveHubTab('Options');
                      }}
                      className={cn(
                        "w-full flex items-center gap-3 px-4 py-2 transition-colors text-left",
                        activeHubTab === 'Options' ? "bg-active/10 text-active" : "hover:bg-active/5 text-parch/70 hover:text-parch"
                      )}
                    >
                      <Settings size={14} className="text-active" />
                      <span className="text-xs font-medium font-cinzel tracking-wider">Options</span>
                    </button>
                    <button 
                      onClick={() => {
                        setActiveTab('DASHBOARD');
                        setActiveHubTab('About');
                      }}
                      className={cn(
                        "w-full flex items-center gap-3 px-4 py-2 transition-colors text-left",
                        activeHubTab === 'About' ? "bg-active/10 text-active" : "hover:bg-active/5 text-parch/70 hover:text-parch"
                      )}
                    >
                      <Info size={14} className="text-active" />
                      <span className="text-xs font-medium font-cinzel tracking-wider">About</span>
                    </button>
                  </div>
                </div>

                {/* Main Content Area */}
                <div className="flex-1 flex flex-col">
                  {/* Internal Tabs */}
                  <div className="flex bg-blue-dk border-b border-active/10 px-4">
                    {['Home', 'Featured', 'Current', 'Recent'].map(tab => (
                      <button 
                        key={tab}
                        onClick={() => {
                          setActiveHubTab(tab);
                          if (tab === 'Home') {
                            setSelectedCategory(null);
                            setCategoryFilter('ALL');
                          }
                        }}
                        className={cn(
                          "px-6 py-3 text-xs font-bold tracking-wider uppercase transition-all relative font-cinzel",
                          activeHubTab === tab ? "text-active" : "text-parch/40 hover:text-parch/60"
                        )}
                      >
                        {tab}
                        {activeHubTab === tab && (
                          <motion.div 
                            layoutId="activeHubTab"
                            className="absolute bottom-0 left-0 right-0 h-0.5 bg-active"
                          />
                        )}
                      </button>
                    ))}
                  </div>

                  {/* Dashboard Content */}
                  <div className="flex-1 p-8 overflow-y-auto custom-scrollbar">
                    {searchQuery ? (
                      <div className="flex flex-col h-full max-w-5xl">
                        <div className="flex items-center justify-between mb-6">
                          <div className="flex items-center gap-2">
                            <h2 className="text-xl font-bold font-cinzel tracking-widest text-parch">
                              Search: <span className="text-active">{filteredGuides.length} results</span>
                            </h2>
                            <MoreHorizontal size={16} className="text-active/40" />
                          </div>
                        </div>

                        <div className="flex-1 space-y-8">
                          {/* Group results by category */}
                          {Array.from(new Set(filteredGuides.map(g => g.category))).map(cat => (
                            <div key={cat} className="space-y-3">
                              <div className="flex items-center gap-2 border-b border-active/10 pb-2">
                                {getCategoryIcon(cat)}
                                <h3 className="font-cinzel text-sm font-bold tracking-widest text-active uppercase">{cat}</h3>
                              </div>
                              <div className="space-y-1">
                                {filteredGuides.filter(g => g.category === cat).map(guide => (
                                  <div 
                                    key={guide.id}
                                    onClick={() => openGuide(guide)}
                                    className="flex items-center gap-3 px-3 py-2 hover:bg-active/5 rounded cursor-pointer group transition-colors"
                                  >
                                    <FileText size={14} className="text-active/40 group-hover:text-active" />
                                    <span className="text-xs text-parch/80 group-hover:text-parch font-cinzel tracking-wider">{guide.name}</span>
                                    {guide.id.includes('quest') && (
                                      <button className="ml-auto bg-gold/10 border border-gold/30 rounded px-2 py-0.5 text-[9px] text-gold uppercase tracking-tighter opacity-0 group-hover:opacity-100 transition-opacity">
                                        Show guides for this quest
                                      </button>
                                    )}
                                  </div>
                                ))}
                              </div>
                            </div>
                          ))}
                          
                          {filteredGuides.length === 0 && (
                            <div className="flex flex-col items-center justify-center h-64 text-parch/20 gap-4">
                              <Search size={48} />
                              <p className="font-cinzel text-sm tracking-widest uppercase">No guides found matching "{searchQuery}"</p>
                            </div>
                          )}
                        </div>
                      </div>
                    ) : activeHubTab === 'Home' ? (
                      <div className="flex flex-col gap-6 max-w-5xl">
                        <div className="flex justify-between items-center">
                          <h2 className="font-cinzel text-xl tracking-[0.2em] text-active uppercase">Dashboard</h2>
                          <button 
                            onClick={() => setIsConfigMode(!isConfigMode)}
                            className={cn(
                              "ww-ctrl-btn py-1.5 px-4 text-[10px] flex items-center gap-2",
                              isConfigMode && "bg-active text-blue-dk border-active"
                            )}
                          >
                            <Settings size={12} />
                            {isConfigMode ? 'Finish Customizing' : 'Customize Widgets'}
                          </button>
                        </div>

                        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8">
                          {(settings.widgets || []).filter(w => w.visible && !w.isPoppedOut).map(widget => (
                            <DashboardWidget 
                              key={widget.id} 
                              widget={widget}
                              isConfigMode={isConfigMode}
                              onClose={() => updateSettings({ widgets: (settings.widgets || []).map(w => w.id === widget.id ? { ...w, visible: false } : w) })}
                              onPopOut={() => togglePopOut(widget.id)}
                            >
                              {renderWidgetContent(widget)}
                            </DashboardWidget>
                          ))}

                          {isConfigMode && (settings.widgets || []).some(w => !w.visible) && (
                            <div className="col-span-full border border-active/10 rounded-lg p-8 flex flex-col gap-8 bg-black/40">
                              <div className="flex items-center gap-4">
                                <div className="h-px flex-1 bg-active/10" />
                                <p className="text-sm font-cinzel text-active/60 uppercase tracking-widest">Available Widgets</p>
                                <div className="h-px flex-1 bg-active/10" />
                              </div>
                              
                              {['General', 'Character', 'Dungeons', 'Dailies / Events', 'Covenants', 'PVP'].map(category => {
                                const categoryWidgets = (settings.widgets || []).filter(w => !w.visible && w.category === category);
                                if (categoryWidgets.length === 0) return null;
                                
                                return (
                                  <div key={category} className="space-y-4">
                                    <h4 className="text-xs font-bold text-active/40 uppercase tracking-tighter border-b border-active/5 pb-2">{category}</h4>
                                    <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4">
                                      {categoryWidgets.map(widget => (
                                        <button 
                                          key={widget.id}
                                          onClick={() => updateSettings({ widgets: (settings.widgets || []).map(w => w.id === widget.id ? { ...w, visible: true } : w) })}
                                          className="flex flex-col items-start p-4 bg-blue-dk/40 border border-active/10 rounded hover:border-active/40 hover:bg-blue-dk/60 transition-all group text-left"
                                        >
                                          <div className="flex justify-between items-center w-full mb-1">
                                            <span className="text-sm font-bold text-parch group-hover:text-active transition-colors">{widget.title}</span>
                                            <Plus size={14} className="text-active/40 group-hover:text-active" />
                                          </div>
                                          {widget.description && <p className="text-[10px] text-parch/40 leading-tight">{widget.description}</p>}
                                        </button>
                                      ))}
                                    </div>
                                  </div>
                                );
                              })}
                            </div>
                          )}
                        </div>
                      </div>
                    ) : activeHubTab === 'Featured' ? (
                      <div className="flex flex-col gap-8 max-w-6xl">
                        <div className="flex justify-between items-center">
                          <h2 className="font-cinzel text-xl tracking-[0.1em] text-parch uppercase">
                            Featured: <span className="text-active">{selectedPatch}</span>
                          </h2>
                          
                          <div className="relative">
                            <button 
                              onClick={() => setShowPatchDropdown(!showPatchDropdown)}
                              className="bg-black/60 border border-active/20 rounded py-1.5 px-4 text-xs text-parch flex items-center gap-4 hover:border-active/40 transition-colors font-cinzel"
                            >
                              {selectedPatch}
                              <ChevronDown size={14} className={cn("transition-transform", showPatchDropdown && "rotate-180")} />
                            </button>
                            
                            <AnimatePresence>
                              {showPatchDropdown && (
                                <motion.div 
                                  initial={{ opacity: 0, y: 10 }}
                                  animate={{ opacity: 1, y: 0 }}
                                  exit={{ opacity: 0, y: 10 }}
                                  className="absolute right-0 top-full mt-2 w-72 bg-blue-dk border border-active/20 rounded shadow-2xl z-[100] max-h-[400px] overflow-y-auto custom-scrollbar"
                                >
                                  {patches.map(patch => (
                                    <button 
                                      key={patch}
                                      onClick={() => {
                                        setSelectedPatch(patch);
                                        setShowPatchDropdown(false);
                                      }}
                                      className={cn(
                                        "w-full px-4 py-2 text-left text-xs transition-colors flex items-center gap-3",
                                        selectedPatch === patch ? "bg-active/10 text-active" : "text-parch/60 hover:bg-active/5 hover:text-parch"
                                      )}
                                    >
                                      <div className={cn("w-2 h-2 rounded-sm", selectedPatch === patch ? "bg-active" : "bg-parch/20")} />
                                      {patch}
                                    </button>
                                  ))}
                                </motion.div>
                              )}
                            </AnimatePresence>
                          </div>
                        </div>

                        <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-8">
                          {(featuredGuidesData[selectedPatch] || []).map((section, idx) => (
                            <div key={idx} className="bg-black/20 border border-active/10 rounded overflow-hidden flex flex-col">
                              <div className="p-3 border-b border-active/10 bg-blue-md/30 flex items-center gap-3">
                                {section.icon}
                                <h3 className="font-cinzel text-sm font-bold tracking-widest text-parch uppercase">{section.category}</h3>
                              </div>
                              
                              <div className="aspect-video w-full overflow-hidden relative">
                                <img 
                                  src={section.image} 
                                  alt={section.category} 
                                  className="w-full h-full object-cover opacity-60 group-hover:opacity-80 transition-opacity"
                                  referrerPolicy="no-referrer"
                                />
                                <div className="absolute inset-0 bg-gradient-to-t from-blue-dk to-transparent" />
                              </div>
                              
                              <div className="flex-1 p-4 space-y-3">
                                {section.guides.map((guideName: string, gIdx: number) => (
                                  <div key={gIdx} className="flex items-center gap-3 group cursor-pointer">
                                    <FileText size={14} className="text-active/40 group-hover:text-active" />
                                    <span className="text-xs text-orange-400 group-hover:text-orange-300 transition-colors">{guideName}</span>
                                  </div>
                                ))}
                              </div>
                              
                              <button className="p-3 border-t border-active/10 flex justify-between items-center text-[10px] text-parch/40 hover:text-active transition-colors bg-black/20">
                                <span>See more</span>
                                <ArrowRight size={12} />
                              </button>
                            </div>
                          ))}
                        </div>
                      </div>
                    ) : (activeHubTab === 'Category' || categoryFilter !== 'ALL') ? (
                      <div className="flex flex-col h-full">
                        <div className="flex items-center justify-between mb-4">
                          <div className="flex items-center gap-3">
                            {currentFolder && (
                              <button 
                                onClick={() => setCurrentFolder(null)}
                                className="p-1 hover:bg-active/10 rounded-full transition-colors text-active"
                              >
                                <ArrowLeft size={16} />
                              </button>
                            )}
                            <h2 className="text-lg font-bold capitalize font-cinzel tracking-widest text-active flex items-center gap-2">
                              {currentFolder || categoryFilter}
                            </h2>
                            <div className="relative">
                              <button 
                                onClick={() => setShowFilterMenu(!showFilterMenu)}
                                className={cn(
                                  "p-1 hover:bg-active/10 rounded transition-colors",
                                  showFilterMenu ? "bg-active/20 text-active" : "text-active/40"
                                )}
                              >
                                <MoreVertical size={16} />
                              </button>
                              
                              <AnimatePresence>
                                {showFilterMenu && (
                                  <motion.div
                                    initial={{ opacity: 0, scale: 0.95, y: -10 }}
                                    animate={{ opacity: 1, scale: 1, y: 0 }}
                                    exit={{ opacity: 0, scale: 0.95, y: -10 }}
                                    className="absolute left-0 top-full mt-2 w-64 bg-blue-dk border border-active/20 rounded shadow-2xl z-[100] p-2 space-y-1"
                                  >
                                    {[
                                      { id: 'colorCodeDifficulty', label: 'Color code icons to show guide difficulty/status' },
                                      { id: 'useCheckmarkForCompleted', label: 'Use checkmark icon for completed guides.' },
                                      { id: 'hideCompleted', label: 'Hide completed and outleveled guides.' },
                                      { id: 'useStarForSuggested', label: 'Use star icon for Suggested guides' }
                                    ].map(opt => (
                                      <button
                                        key={opt.id}
                                        onClick={() => setGuideFilters(prev => ({ ...prev, [opt.id]: !prev[opt.id as keyof typeof prev] }))}
                                        className="w-full flex items-start gap-3 p-2 hover:bg-active/5 rounded transition-colors text-left group"
                                      >
                                        <div className={cn(
                                          "mt-0.5 w-3.5 h-3.5 rounded-sm border flex items-center justify-center transition-colors",
                                          guideFilters[opt.id as keyof typeof guideFilters] ? "bg-active border-active" : "border-active/30 group-hover:border-active/50"
                                        )}>
                                          {guideFilters[opt.id as keyof typeof guideFilters] && <Check size={10} className="text-blue-dk" />}
                                        </div>
                                        <span className="text-[10px] text-parch/70 leading-tight group-hover:text-parch">{opt.label}</span>
                                      </button>
                                    ))}
                                  </motion.div>
                                )}
                              </AnimatePresence>
                            </div>
                          </div>
                          <div className="flex items-center gap-2">
                            <div className="flex bg-black/40 rounded p-0.5 border border-active/10">
                              {['ALL', 'CLASSIC', 'RETAIL', 'WOTLK', 'CATA', 'MOP'].map(exp => (
                                <button
                                  key={exp}
                                  onClick={() => setExpansionFilter(exp as any)}
                                  className={cn(
                                    "px-2 py-0.5 text-[8px] font-bold tracking-tighter uppercase transition-colors rounded-sm",
                                    expansionFilter === exp ? "bg-active text-blue-dk" : "text-active/40 hover:text-active/60"
                                  )}
                                >
                                  {exp}
                                </button>
                              ))}
                            </div>
                            <div className="relative">
                              <Search className="absolute left-2 top-1/2 -translate-y-1/2 text-active/40" size={10} />
                              <input 
                                type="text" 
                                placeholder="Filter..." 
                                value={searchQuery}
                                onChange={(e) => setSearchQuery(e.target.value)}
                                className="bg-black/40 border border-active/10 rounded py-0.5 pl-6 pr-2 text-[9px] text-parch placeholder:text-active/20 focus:outline-none focus:border-active/40 w-32"
                              />
                            </div>
                          </div>
                        </div>
                        
                        <div className="flex-1 overflow-y-auto custom-scrollbar bg-black/10 rounded border border-active/5">
                          <div className="divide-y divide-active/5">
                            {displayItems.length > 0 ? (
                              displayItems.map((item, idx) => (
                                <div 
                                  key={idx}
                                  onClick={() => {
                                    if (item.type === 'FOLDER') {
                                      setCurrentFolder(item.data);
                                    } else {
                                      openGuide(item.data);
                                    }
                                  }}
                                  className={cn(
                                    "flex items-center gap-3 p-3 cursor-pointer transition-all hover:bg-active/5 group",
                                    item.type === 'GUIDE' && activeGuide.id === item.data.id && "bg-active/10 border-l-2 border-l-active"
                                  )}
                                >
                                  <div className="w-5 h-5 flex items-center justify-center">
                                    {item.type === 'FOLDER' ? (
                                      <Folder size={16} className="text-amber-400 fill-amber-400/20" />
                                    ) : (
                                      <>
                                        {guideFilters.useCheckmarkForCompleted && item.data.isCompleted ? (
                                          <Check size={14} className="text-complete" />
                                        ) : guideFilters.colorCodeDifficulty ? (
                                          <div className={cn(
                                            "w-2 h-2 rounded-full",
                                            item.data.difficulty === 'EASY' ? "bg-complete" :
                                            item.data.difficulty === 'MEDIUM' ? "bg-orange-400" : "bg-red-500"
                                          )} />
                                        ) : (
                                          <FileText size={14} className="text-active/40 group-hover:text-active" />
                                        )}
                                      </>
                                    )}
                                  </div>
                                  
                                  <div className="flex-1 min-w-0">
                                    <div className="flex items-center gap-2">
                                      <span className={cn(
                                        "text-xs font-medium truncate",
                                        item.type === 'FOLDER' ? "text-parch/90" : "text-parch/70 group-hover:text-parch"
                                      )}>
                                        {item.type === 'FOLDER' ? item.data : item.data.name}
                                      </span>
                                      {item.type === 'GUIDE' && item.data.expansion !== 'RETAIL' && (
                                        <span className="text-[8px] px-1 rounded border border-active/20 text-active/40 uppercase font-cinzel">
                                          {item.data.expansion}
                                        </span>
                                      )}
                                    </div>
                                    {item.type === 'GUIDE' && (
                                      <div className="flex items-center gap-2 mt-0.5">
                                        <span className="text-[9px] text-parch/30">Levels {item.data.minLevel}-{item.data.maxLevel}</span>
                                        {item.data.faction !== 'NEUTRAL' && (
                                          <span className={cn(
                                            "text-[8px] uppercase font-bold",
                                            item.data.faction === 'ALLIANCE' ? "text-blue-400" : "text-red-400"
                                          )}>
                                            {item.data.faction}
                                          </span>
                                        )}
                                      </div>
                                    )}
                                  </div>
                                  
                                  <ChevronRight size={14} className="text-active/10 group-hover:text-active/40 transition-colors" />
                                </div>
                              ))
                            ) : (
                              <div className="flex flex-col items-center justify-center h-64 text-parch/20">
                                <Search size={32} className="mb-2 opacity-20" />
                                <p className="text-xs font-cinzel">No guides found</p>
                              </div>
                            )}
                          </div>
                        </div>
                      </div>
                    ) : activeHubTab === 'Options' ? (
                      <div className="flex h-full -m-8">
                        {/* Sidebar */}
                        <div className="w-48 border-r border-active/10 bg-black/20 flex flex-col">
                          <div className="p-4 border-b border-active/10">
                            <h2 className="font-cinzel text-[10px] text-active uppercase tracking-[0.2em]">Categories</h2>
                          </div>
                          <div className="flex-1 overflow-y-auto custom-scrollbar">
                            <SettingsTab 
                              active={settingsCategory === 'stepDisplay'} 
                              onClick={() => setSettingsCategory('stepDisplay')}
                              label="Step Display" 
                              icon={<Layout size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'guideViewer'} 
                              onClick={() => setSettingsCategory('guideViewer')}
                              label="Guide Viewer" 
                              icon={<Monitor size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'automation'} 
                              onClick={() => setSettingsCategory('automation')}
                              label="Automation" 
                              icon={<Zap size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'waypointArrow'} 
                              onClick={() => setSettingsCategory('waypointArrow')}
                              label="Waypoint Arrow" 
                              icon={<Navigation size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'actionButton'} 
                              onClick={() => setSettingsCategory('actionButton')}
                              label="Action Button" 
                              icon={<Sword size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'maps'} 
                              onClick={() => setSettingsCategory('maps')}
                              label="Maps" 
                              icon={<MapIcon size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'gear'} 
                              onClick={() => setSettingsCategory('gear')}
                              label="Gear Advisor" 
                              icon={<Shield size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'itemScore'} 
                              onClick={() => setSettingsCategory('itemScore')}
                              label="Item Score" 
                              icon={<BarChart3 size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'goldGuide'} 
                              onClick={() => setSettingsCategory('goldGuide')}
                              label="Gold Guide" 
                              icon={<Coins size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'notifications'} 
                              onClick={() => setSettingsCategory('notifications')}
                              label="Notifications" 
                              icon={<Bell size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'extras'} 
                              onClick={() => setSettingsCategory('extras')}
                              label="Extras" 
                              icon={<Plus size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'plugins'} 
                              onClick={() => setSettingsCategory('plugins')}
                              label="Plugins" 
                              icon={<Puzzle size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'profile'} 
                              onClick={() => setSettingsCategory('profile')}
                              label="Profiles" 
                              icon={<User size={14} />} 
                            />
                            <SettingsTab 
                              active={settingsCategory === 'theme'} 
                              onClick={() => setSettingsCategory('theme')}
                              label="Theme" 
                              icon={<Palette size={14} />} 
                            />
                          </div>
                        </div>

                        {/* Content */}
                        <div className="flex-1 flex flex-col bg-blue-md/10">
                          <div className="flex-1 p-6 overflow-y-auto custom-scrollbar">
                            {settingsCategory === 'stepDisplay' && (
                              <div className="space-y-6">
                                <SettingsSection title="Step Display">
                                  <SettingsDropdown 
                                    label="Number of steps shown:" 
                                    value={(settings.stepDisplay?.numStepsShown ?? 1).toString()} 
                                    options={['1 (default)', '2', '3', '4', '5']} 
                                    onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, numStepsShown: parseInt(v)}})} 
                                  />
                                  <div className="col-span-full space-y-3">
                                    <SettingsToggle 
                                      label="Enable manual vertical step resizing" 
                                      checked={settings.stepDisplay.enableManualResizing} 
                                      onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, enableManualResizing: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Skip steps that require setting your hearthstone to a specific inn." 
                                      checked={settings.stepDisplay.skipHearthstoneSteps} 
                                      onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, skipHearthstoneSteps: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Skip steps that point you to flightmasters to discover a new flight path." 
                                      checked={settings.stepDisplay.skipFlightPathDiscovery} 
                                      onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, skipFlightPathDiscovery: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Show travel directions" 
                                      checked={settings.stepDisplay.showTravelDirections} 
                                      onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, showTravelDirections: v}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="Dungeons">
                                  <SettingsToggle 
                                    label="Show strategies for all roles" 
                                    checked={settings.stepDisplay.dungeons.showStrategiesForAllRoles} 
                                    onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, dungeons: {...settings.stepDisplay.dungeons, showStrategiesForAllRoles: v}}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Sync & Share">
                                  <SettingsToggle 
                                    label="Enable Sync & Share features" 
                                    checked={settings.stepDisplay.syncAndShare.enableSyncAndShare} 
                                    onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, syncAndShare: {...settings.stepDisplay.syncAndShare, enableSyncAndShare: v}}})} 
                                  />
                                  <SettingsToggle 
                                    label="Sync party progress" 
                                    checked={settings.stepDisplay.syncAndShare.syncPartyProgress} 
                                    onChange={(v) => updateSettings({stepDisplay: {...settings.stepDisplay, syncAndShare: {...settings.stepDisplay.syncAndShare, syncPartyProgress: v}}})} 
                                  />
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'guideViewer' && (
                              <div className="space-y-6">
                                <SettingsSection title="Guide Viewer">
                                  <div className="flex gap-8">
                                    <SettingsToggle 
                                      label="Enable Viewer" 
                                      checked={settings.guideViewer.enableViewer} 
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, enableViewer: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Lock viewer" 
                                      checked={settings.guideViewer.lockViewer} 
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, lockViewer: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Hide experience bar" 
                                    checked={settings.guideViewer.hideExperienceBar} 
                                    onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, hideExperienceBar: v}})} 
                                  />
                                  <SettingsDropdown 
                                    label="Viewer skin:" 
                                    value={settings.guideViewer.viewerSkin} 
                                    options={['Starlight', 'Classic', 'Modern', 'Minimal']} 
                                    onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, viewerSkin: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Transparency" 
                                    checked={settings.guideViewer.enableTransparency} 
                                    onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, enableTransparency: v}})} 
                                  />
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-4">
                                    <SettingsSlider 
                                      label="Viewer opacity" 
                                      value={settings.guideViewer.viewerOpacity} 
                                      min={0} max={100} minLabel="Low" maxLabel="High"
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, viewerOpacity: v}})}
                                    />
                                    <SettingsSlider 
                                      label="Guide Menu opacity" 
                                      value={settings.guideViewer.guideMenuOpacity} 
                                      min={0} max={100} minLabel="Low" maxLabel="High"
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, guideMenuOpacity: v}})}
                                    />
                                    <SettingsSlider 
                                      label="Viewer size:" 
                                      value={settings.guideViewer.viewerSize} 
                                      min={50} max={150} minLabel="Small" maxLabel="Large"
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, viewerSize: v}})}
                                    />
                                    <SettingsSlider 
                                      label="Font size:" 
                                      value={settings.guideViewer.fontSize} 
                                      min={8} max={24} minLabel="Small" maxLabel="Large"
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, fontSize: v}})}
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="X-PLORE Widgets">
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-4">
                                    <SettingsSlider 
                                      label="Widgets opacity" 
                                      value={settings.guideViewer.widgetsOpacity} 
                                      min={0} max={100} minLabel="Low" maxLabel="High"
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, widgetsOpacity: v}})}
                                    />
                                    <SettingsSlider 
                                      label="Widgets size" 
                                      value={settings.guideViewer.widgetsSize} 
                                      min={50} max={150} minLabel="Small" maxLabel="Large"
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, widgetsSize: v}})}
                                    />
                                  </div>
                                  <div className="col-span-full space-y-3">
                                    <SettingsToggle 
                                      label="Flip viewer upside-down" 
                                      checked={settings.guideViewer.flipViewerUpsideDown} 
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, flipViewerUpsideDown: v}})} 
                                    />
                                    <div className="space-y-2">
                                      <SettingsToggle 
                                        label="Hide viewer when entering dungeons and raids" 
                                        checked={settings.guideViewer.hideInDungeonsAndRaids} 
                                        onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, hideInDungeonsAndRaids: v}})} 
                                      />
                                      <div className="pl-6 opacity-60">
                                        <SettingsToggle 
                                          label="Show viewer again when leaving" 
                                          checked={settings.guideViewer.showAgainWhenLeaving} 
                                          onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, showAgainWhenLeaving: v}})} 
                                        />
                                      </div>
                                    </div>
                                    <div className="space-y-2">
                                      <SettingsToggle 
                                        label="Hide viewer during combat" 
                                        checked={settings.guideViewer.hideDuringCombat} 
                                        onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, hideDuringCombat: v}})} 
                                      />
                                      <div className="pl-6 opacity-60">
                                        <SettingsToggle 
                                          label="Hide Action Bar during combat" 
                                          checked={settings.guideViewer.hideActionBarDuringCombat} 
                                          onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, hideActionBarDuringCombat: v}})} 
                                        />
                                      </div>
                                    </div>
                                    <SettingsToggle 
                                      label="Keep Viewer visible when interacting with vendor..." 
                                      checked={settings.guideViewer.keepVisibleWithVendor} 
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, keepVisibleWithVendor: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Show progress bar" 
                                      checked={settings.guideViewer.showProgressBar} 
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, showProgressBar: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Show X-PLORE button on mini-map" 
                                      checked={settings.guideViewer.showMinimapButton} 
                                      onChange={(v) => updateSettings({guideViewer: {...settings.guideViewer, showMinimapButton: v}})} 
                                    />
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'automation' && (
                              <div className="space-y-6">
                                <SettingsSection title="Quests">
                                  <SettingsToggle 
                                    label="Auto-accept and Turn-in guide quests" 
                                    checked={settings.automation.autoAcceptTurnInGuideQuests} 
                                    onChange={(v) => updateSettings({automation: {...settings.automation, autoAcceptTurnInGuideQuests: v}})} 
                                  />
                                  <div className="pl-6 opacity-60">
                                    <SettingsToggle 
                                      label="All quests" 
                                      checked={settings.automation.allQuests} 
                                      onChange={(v) => updateSettings({automation: {...settings.automation, allQuests: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Automatically select dialog options" 
                                    checked={settings.automation.autoSelectDialogOptions} 
                                    onChange={(v) => updateSettings({automation: {...settings.automation, autoSelectDialogOptions: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Travel">
                                  <SettingsToggle 
                                    label="Automatically take suggested flight paths" 
                                    checked={settings.automation.autoTakeFlightPaths} 
                                    onChange={(v) => updateSettings({automation: {...settings.automation, autoTakeFlightPaths: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Inventory">
                                  <SettingsToggle 
                                    label="Automatically buy guide items" 
                                    checked={settings.automation.autoBuyGuideItems} 
                                    onChange={(v) => updateSettings({automation: {...settings.automation, autoBuyGuideItems: v}})} 
                                  />
                                  <div className="flex gap-8">
                                    <SettingsToggle 
                                      label="Enable 'Sell Grays' button" 
                                      checked={settings.automation.enableSellGraysButton} 
                                      onChange={(v) => updateSettings({automation: {...settings.automation, enableSellGraysButton: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Automatically sell gray items" 
                                      checked={settings.automation.autoSellGrays} 
                                      onChange={(v) => updateSettings({automation: {...settings.automation, autoSellGrays: v}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="Repair automatically">
                                  <SettingsDropdown 
                                    label="" 
                                    value={settings.automation.autoRepairMode} 
                                    options={['Do not auto-repair', 'Repair with own money', 'Repair with guild money']} 
                                    onChange={(v) => updateSettings({automation: {...settings.automation, autoRepairMode: v}})} 
                                  />
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'actionButton' && (
                              <div className="space-y-6">
                                <SettingsSection title="Action Buttons">
                                  <SettingsToggle 
                                    label="Enable Action Bar" 
                                    checked={settings.actionButton.enabled} 
                                    onChange={(v) => updateSettings({actionButton: {...settings.actionButton, enabled: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Action Bar Expanding">
                                  <SettingsDropdown 
                                    label="" 
                                    value={settings.actionButton.expandingDirection} 
                                    options={['Right', 'Left', 'Up', 'Down']} 
                                    onChange={(v) => updateSettings({actionButton: {...settings.actionButton, expandingDirection: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Action Bar Scale">
                                  <SettingsSlider 
                                    label="" 
                                    value={settings.actionButton.scale} 
                                    min={50} max={150} minLabel="Small" maxLabel="Large"
                                    onChange={(v) => updateSettings({actionButton: {...settings.actionButton, scale: v}})}
                                  />
                                </SettingsSection>
                                <SettingsSection title="Button types:">
                                  <div className="col-span-full space-y-3">
                                    <SettingsToggle 
                                      label="Quest actions" 
                                      checked={settings.actionButton.buttonTypes.questActions} 
                                      onChange={(v) => updateSettings({actionButton: {...settings.actionButton, buttonTypes: {...settings.actionButton.buttonTypes, questActions: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Talk to NPC" 
                                      checked={settings.actionButton.buttonTypes.talkToNpc} 
                                      onChange={(v) => updateSettings({actionButton: {...settings.actionButton, buttonTypes: {...settings.actionButton.buttonTypes, talkToNpc: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Kill enemy" 
                                      checked={settings.actionButton.buttonTypes.killEnemy} 
                                      onChange={(v) => updateSettings({actionButton: {...settings.actionButton, buttonTypes: {...settings.actionButton.buttonTypes, killEnemy: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Delete cheapest item from bags" 
                                      checked={settings.actionButton.buttonTypes.deleteCheapestItem} 
                                      onChange={(v) => updateSettings({actionButton: {...settings.actionButton, buttonTypes: {...settings.actionButton.buttonTypes, deleteCheapestItem: v}}})} 
                                    />
                                    <div className="pt-2">
                                      <SettingsToggle 
                                        label="Add raid marker to NPCs when selected with action buttons" 
                                        checked={settings.actionButton.addRaidMarkers} 
                                        onChange={(v) => updateSettings({actionButton: {...settings.actionButton, addRaidMarkers: v}})} 
                                      />
                                    </div>
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'waypointArrow' && (
                              <div className="space-y-6">
                                <SettingsSection title="Waypoint Arrow">
                                  <div className="flex gap-8">
                                    <SettingsToggle 
                                      label="Enable Waypoint Arrow" 
                                      checked={settings.waypointArrow.enabled} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, enabled: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Lock arrow" 
                                      checked={settings.waypointArrow.locked} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, locked: v}})} 
                                    />
                                  </div>
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-4">
                                    <SettingsSlider 
                                      label="Arrow size:" 
                                      value={settings.waypointArrow.arrowSize} 
                                      min={50} max={150} minLabel="Small" maxLabel="Large"
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, arrowSize: v}})}
                                    />
                                    <SettingsSlider 
                                      label="Arrow text size:" 
                                      value={settings.waypointArrow.arrowTextSize} 
                                      min={50} max={150} minLabel="Small" maxLabel="Large"
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, arrowTextSize: v}})}
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Add outline to arrow text" 
                                    checked={settings.waypointArrow.addOutline} 
                                    onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, addOutline: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Arrow style">
                                  <SettingsDropdown 
                                    label="" 
                                    value={settings.waypointArrow.arrowStyle} 
                                    options={['Starlight', 'Classic', 'Modern', 'Minimal']} 
                                    onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, arrowStyle: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Unit of measurement">
                                  <SettingsDropdown 
                                    label="" 
                                    value={settings.waypointArrow.unitOfMeasurement} 
                                    options={['yards / miles', 'meters / kilometers']} 
                                    onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, unitOfMeasurement: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Travel System">
                                  <SettingsToggle 
                                    label="Enable Travel System" 
                                    checked={settings.waypointArrow.enableTravelSystem} 
                                    onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, enableTravelSystem: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Travel methods">
                                  <div className="col-span-full space-y-3">
                                    <SettingsToggle 
                                      label="Direct" 
                                      checked={settings.waypointArrow.travelMethods.direct} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, travelMethods: {...settings.waypointArrow.travelMethods, direct: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Simple" 
                                      checked={settings.waypointArrow.travelMethods.simple} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, travelMethods: {...settings.waypointArrow.travelMethods, simple: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Advanced" 
                                      checked={settings.waypointArrow.travelMethods.advanced} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, travelMethods: {...settings.waypointArrow.travelMethods, advanced: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Custom" 
                                      checked={settings.waypointArrow.travelMethods.custom} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, travelMethods: {...settings.waypointArrow.travelMethods, custom: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Prefer flight paths" 
                                      checked={settings.waypointArrow.travelMethods.preferFlightPaths} 
                                      onChange={(v) => updateSettings({waypointArrow: {...settings.waypointArrow, travelMethods: {...settings.waypointArrow.travelMethods, preferFlightPaths: v}}})} 
                                    />
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'maps' && (
                              <div className="space-y-6">
                                <SettingsSection title="General Map Enhancements">
                                  <SettingsToggle 
                                    label="Enable ant trails" 
                                    checked={settings.maps.enableAntTrails} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, enableAntTrails: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Ant trail style:">
                                  <SettingsDropdown 
                                    label="" 
                                    value={settings.maps.antTrailStyle} 
                                    options={['Solid lines', 'Dashed lines', 'Dots']} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, antTrailStyle: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="World Map Enhancements">
                                  <div className="flex gap-8">
                                    <SettingsToggle 
                                      label="Reveal entire map" 
                                      checked={settings.maps.revealEntireMap} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, revealEntireMap: v}})} 
                                    />
                                    <SettingsToggle 
                                      label="Show map markers" 
                                      checked={settings.maps.showMapMarkers} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, showMapMarkers: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Show points of interest" 
                                    checked={settings.maps.showPointsOfInterest} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, showPointsOfInterest: v}})} 
                                  />
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-4">
                                    <SettingsSlider 
                                      label="Points of Interest size" 
                                      value={settings.maps.poiSize} 
                                      min={50} max={150} minLabel="Small" maxLabel="Large"
                                      onChange={(v) => updateSettings({maps: {...settings.maps, poiSize: v}})}
                                    />
                                    <SettingsToggle 
                                      label="Enable icon transparency" 
                                      checked={settings.maps.enableIconTransparency} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, enableIconTransparency: v}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="Points of Interest Types:">
                                  <div className="flex gap-8">
                                    <SettingsToggle 
                                      label="Rare spawns" 
                                      checked={settings.maps.poiTypes.rareSpawns} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, poiTypes: {...settings.maps.poiTypes, rareSpawns: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Treasures" 
                                      checked={settings.maps.poiTypes.treasures} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, poiTypes: {...settings.maps.poiTypes, treasures: v}}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="Points of Interest Display Mode:">
                                  <SettingsDropdown 
                                    label="" 
                                    value={settings.maps.poiDisplayMode} 
                                    options={['Completionist Mode', 'Standard Mode', 'Minimal Mode']} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, poiDisplayMode: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="World Quest Planner">
                                  <SettingsToggle 
                                    label="Enable X-PLORE World Quest Planner" 
                                    checked={settings.maps.enableWorldQuestPlanner} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, enableWorldQuestPlanner: v}})} 
                                  />
                                  <div className="pl-6 opacity-60">
                                    <SettingsToggle 
                                      label="Prioritize current zone world quests in queue" 
                                      checked={settings.maps.prioritizeCurrentZone} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, prioritizeCurrentZone: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Load World Quest guides when clicking World Quest icons" 
                                    checked={settings.maps.loadWorldQuestGuides} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, loadWorldQuestGuides: v}})} 
                                  />
                                  <SettingsSlider 
                                    label="World Quest Planner Scale" 
                                    value={settings.maps.worldQuestPlannerScale} 
                                    min={50} max={150} minLabel="Small" maxLabel="Large"
                                    onChange={(v) => updateSettings({maps: {...settings.maps, worldQuestPlannerScale: v}})}
                                  />
                                </SettingsSection>
                                <SettingsSection title="Flight map">
                                  <SettingsToggle 
                                    label="Highlight suggested flight paths" 
                                    checked={settings.maps.highlightFlightPaths} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, highlightFlightPaths: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Dungeon Map Enhancements">
                                  <SettingsToggle 
                                    label="Enable X-PLORE Dungeon Map" 
                                    checked={settings.maps.enableDungeonMap} 
                                    onChange={(v) => updateSettings({maps: {...settings.maps, enableDungeonMap: v}})} 
                                  />
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-4">
                                    <SettingsSlider 
                                      label="Scale:" 
                                      value={settings.maps.dungeonMapScale} 
                                      min={50} max={150} minLabel="Small" maxLabel="Full"
                                      onChange={(v) => updateSettings({maps: {...settings.maps, dungeonMapScale: v}})}
                                    />
                                    <SettingsSlider 
                                      label="Opacity:" 
                                      value={settings.maps.dungeonMapOpacity} 
                                      min={0} max={100} minLabel="Low" maxLabel="High"
                                      onChange={(v) => updateSettings({maps: {...settings.maps, dungeonMapOpacity: v}})}
                                    />
                                    <SettingsDropdown 
                                      label="Preview duration:" 
                                      value={settings.maps.previewDuration} 
                                      options={['No duration', '5 seconds', '10 seconds', 'Always']} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, previewDuration: v}})} 
                                    />
                                    <SettingsDropdown 
                                      label="Preview control:" 
                                      value={settings.maps.previewControl} 
                                      options={['Manual', 'Automatic']} 
                                      onChange={(v) => updateSettings({maps: {...settings.maps, previewControl: v}})} 
                                    />
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'gear' && (
                              <div className="space-y-6">
                                <SettingsSection title="Gear Advisor">
                                  <SettingsToggle 
                                    label="Enable Gear Advisor" 
                                    checked={settings.gear.enableGearAdvisor} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, enableGearAdvisor: v}})} 
                                  />
                                  <div className="pl-6 opacity-60">
                                    <SettingsToggle 
                                      label="Disable Gear Advisor on max level characters" 
                                      checked={settings.gear.disableOnMaxLevel} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, disableOnMaxLevel: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Show popups for new upgrades" 
                                    checked={settings.gear.showUpgradePopups} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, showUpgradePopups: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Highlight recommended quest rewards" 
                                    checked={settings.gear.highlightQuestRewards} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, highlightQuestRewards: v}})} 
                                  />
                                  <div className="pl-6 opacity-60">
                                    <SettingsToggle 
                                      label="Auto-select quest rewards" 
                                      checked={settings.gear.autoSelectQuestRewards} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, autoSelectQuestRewards: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Auto-equip suggested gear upgrades" 
                                    checked={settings.gear.autoEquipUpgrades} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, autoEquipUpgrades: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Do not replace heirloom items" 
                                    checked={settings.gear.doNotReplaceHeirlooms} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, doNotReplaceHeirlooms: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable X-PLORE Item Score Tooltips" 
                                    checked={settings.gear.enableItemScoreTooltips} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, enableItemScoreTooltips: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Gear Finder">
                                  <SettingsToggle 
                                    label="Enable Gear Finder" 
                                    checked={settings.gear.enableGearFinder} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, enableGearFinder: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Dungeon sources">
                                  <div className="flex flex-wrap gap-4">
                                    <SettingsToggle 
                                      label="Normal" 
                                      checked={settings.gear.dungeonSources.normal} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, dungeonSources: {...settings.gear.dungeonSources, normal: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Heroic" 
                                      checked={settings.gear.dungeonSources.heroic} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, dungeonSources: {...settings.gear.dungeonSources, heroic: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Mythic" 
                                      checked={settings.gear.dungeonSources.mythic} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, dungeonSources: {...settings.gear.dungeonSources, mythic: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Timewalking" 
                                      checked={settings.gear.dungeonSources.timewalking} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, dungeonSources: {...settings.gear.dungeonSources, timewalking: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Mythic+" 
                                      checked={settings.gear.dungeonSources.mythicPlus} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, dungeonSources: {...settings.gear.dungeonSources, mythicPlus: v}}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="Raid sources">
                                  <div className="flex flex-wrap gap-4">
                                    <SettingsToggle 
                                      label="Raid Finder" 
                                      checked={settings.gear.raidSources.raidFinder} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, raidSources: {...settings.gear.raidSources, raidFinder: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Normal" 
                                      checked={settings.gear.raidSources.normal} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, raidSources: {...settings.gear.raidSources, normal: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Heroic" 
                                      checked={settings.gear.raidSources.heroic} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, raidSources: {...settings.gear.raidSources, heroic: v}}})} 
                                    />
                                    <SettingsToggle 
                                      label="Mythic" 
                                      checked={settings.gear.raidSources.mythic} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, raidSources: {...settings.gear.raidSources, mythic: v}}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <div className="pt-2">
                                  <button className="ww-ctrl-btn">Clear declined items</button>
                                </div>
                                <SettingsSection title="">
                                  <SettingsToggle 
                                    label="Highlight upgrades in bags" 
                                    checked={settings.gear.highlightUpgradesInBags} 
                                    onChange={(v) => updateSettings({gear: {...settings.gear, highlightUpgradesInBags: v}})} 
                                  />
                                  <div className="grid grid-cols-3 gap-4 mt-2">
                                    <SettingsDropdown 
                                      label="Type" 
                                      value={settings.gear.upgradeType} 
                                      options={['all upgrades', 'major upgrades', 'minor upgrades']} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, upgradeType: v}})} 
                                    />
                                    <SettingsDropdown 
                                      label="Slot" 
                                      value={settings.gear.upgradeSlot} 
                                      options={['all slots', 'armor', 'weapons', 'trinkets']} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, upgradeSlot: v}})} 
                                    />
                                    <SettingsDropdown 
                                      label="Style" 
                                      value={settings.gear.upgradeStyle} 
                                      options={['border', 'glow', 'icon']} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, upgradeStyle: v}})} 
                                    />
                                  </div>
                                  <div className="mt-4 space-y-3">
                                    <SettingsToggle 
                                      label="Use a hotkey for reporting incorrect upgrade suggestions" 
                                      checked={settings.gear.useHotkeyForReporting} 
                                      onChange={(v) => updateSettings({gear: {...settings.gear, useHotkeyForReporting: v}})} 
                                    />
                                    <div className="grid grid-cols-2 gap-4">
                                      <SettingsDropdown 
                                        label="Hotkey:" 
                                        value={settings.gear.hotkey} 
                                        options={['Alt', 'Ctrl', 'Shift']} 
                                        onChange={(v) => updateSettings({gear: {...settings.gear, hotkey: v}})} 
                                      />
                                      <SettingsDropdown 
                                        label="Mouse button:" 
                                        value={settings.gear.mouseButton} 
                                        options={['Right click', 'Left click', 'Middle click']} 
                                        onChange={(v) => updateSettings({gear: {...settings.gear, mouseButton: v}})} 
                                      />
                                    </div>
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'theme' && (
                              <div className="space-y-6">
                                <div className="flex justify-between items-center border-b border-active/20 pb-4">
                                  <div>
                                    <h2 className="font-cinzel text-lg text-active uppercase tracking-widest">Theme Customizer</h2>
                                    <p className="text-xs text-active/60 font-garamond italic">Personalize the look and feel of X-Plore</p>
                                  </div>
                                  <div className="flex gap-2">
                                    <button 
                                      onClick={() => updateSettings({
                                        theme: {
                                          ...settings.theme,
                                          colors: DEFAULT_SETTINGS.theme.colors
                                        }
                                      })}
                                      className="ww-ctrl-btn"
                                    >
                                      Reset to Default
                                    </button>
                                    <button 
                                      onClick={() => {
                                        alert("Current theme saved as default X-Plore Theme!");
                                      }}
                                      className="ww-ctrl-btn primary"
                                    >
                                      Save as Default
                                    </button>
                                  </div>
                                </div>

                                <SettingsSection title="Primary Colors">
                                  <SettingsColor 
                                    label="Active Accent" 
                                    value={settings.theme.colors.active} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, active: v}}})} 
                                  />
                                  <SettingsColor 
                                    label="Complete State" 
                                    value={settings.theme.colors.complete} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, complete: v}}})} 
                                  />
                                  <SettingsColor 
                                    label="Error / Danger" 
                                    value={settings.theme.colors.red} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, red: v}}})} 
                                  />
                                  <SettingsColor 
                                    label="Text / Parchment" 
                                    value={settings.theme.colors.parch} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, parch: v}}})} 
                                  />
                                </SettingsSection>

                                <SettingsSection title="Backgrounds">
                                  <SettingsColor 
                                    label="Deep Background" 
                                    value={settings.theme.colors.blueDk} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, blueDk: v}}})} 
                                  />
                                  <SettingsColor 
                                    label="Medium Background" 
                                    value={settings.theme.colors.blueMd} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, blueMd: v}}})} 
                                  />
                                  <SettingsColor 
                                    label="Light Background" 
                                    value={settings.theme.colors.blueLt} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, blueLt: v}}})} 
                                  />
                                </SettingsSection>

                                <SettingsSection title="Gold & Currency">
                                  <SettingsColor 
                                    label="Gold Primary" 
                                    value={settings.theme.colors.gold} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, gold: v}}})} 
                                  />
                                  <SettingsColor 
                                    label="Gold Dark" 
                                    value={settings.theme.colors.goldDk} 
                                    onChange={(v) => updateSettings({theme: {...settings.theme, colors: {...settings.theme.colors, goldDk: v}}})} 
                                  />
                                </SettingsSection>

                                <SettingsSection title="Theme Presets (Up to 5)">
                                  <div className="grid grid-cols-1 gap-2">
                                    {[0, 1, 2, 3, 4].map((index) => {
                                      const preset = settings.themePresets?.[index];
                                      return (
                                        <div key={index} className="flex items-center gap-2 p-2 bg-black/20 border border-active/10 rounded-md">
                                          <span className="font-mono text-[10px] text-active/40 w-4">{index + 1}</span>
                                          {preset ? (
                                            <>
                                              <span className="flex-1 text-xs font-garamond text-parch truncate">{preset.name}</span>
                                              <div className="flex gap-1">
                                                <button 
                                                  onClick={() => updateSettings({ theme: preset })}
                                                  className="px-2 py-1 bg-active/10 border border-active/30 rounded text-[9px] text-active uppercase hover:bg-active/20"
                                                >
                                                  Load
                                                </button>
                                                <button 
                                                  onClick={() => {
                                                    setNamingPresetIndex(index);
                                                    setPresetNameInput(preset.name);
                                                  }}
                                                  className="px-2 py-1 bg-active/10 border border-active/30 rounded text-[9px] text-active uppercase hover:bg-active/20"
                                                >
                                                  Edit
                                                </button>
                                                <button 
                                                  onClick={() => {
                                                    const newPresets = [...(settings.themePresets || [])];
                                                    newPresets[index] = null as any;
                                                    updateSettings({ themePresets: newPresets.filter(Boolean) });
                                                  }}
                                                  className="px-2 py-1 bg-red/10 border border-red/30 rounded text-[9px] text-red uppercase hover:bg-red/20"
                                                >
                                                  Delete
                                                </button>
                                              </div>
                                            </>
                                          ) : (
                                            <>
                                              <span className="flex-1 text-xs font-garamond text-parch/20 italic">Empty Slot</span>
                                              <button 
                                                onClick={() => {
                                                  setNamingPresetIndex(index);
                                                  setPresetNameInput(`My Theme ${index + 1}`);
                                                }}
                                                className="px-2 py-1 bg-active/10 border border-active/30 rounded text-[9px] text-active uppercase hover:bg-active/20"
                                              >
                                                Save Current
                                              </button>
                                            </>
                                          )}
                                        </div>
                                      );
                                    })}
                                  </div>
                                </SettingsSection>

                                {namingPresetIndex !== null && (
                                  <div className="fixed inset-0 z-[100] flex items-center justify-center bg-black/60 backdrop-blur-sm">
                                    <div className="w-80 bg-blue-dk border border-active/40 rounded-lg p-6 shadow-2xl">
                                      <h3 className="font-cinzel text-sm text-active mb-4 uppercase tracking-widest">Save Theme Preset</h3>
                                      <input 
                                        type="text" 
                                        value={presetNameInput}
                                        onChange={(e) => setPresetNameInput(e.target.value)}
                                        placeholder="Enter preset name..."
                                        className="w-full bg-black/40 border border-active/20 rounded px-3 py-2 text-parch text-sm font-garamond focus:border-active outline-none mb-4"
                                        autoFocus
                                      />
                                      <div className="flex gap-2">
                                        <button 
                                          onClick={() => {
                                            setNamingPresetIndex(null);
                                            setPresetNameInput('');
                                          }}
                                          className="flex-1 py-2 border border-active/20 rounded font-cinzel text-[10px] text-active/60 uppercase tracking-widest hover:bg-active/5"
                                        >
                                          Cancel
                                        </button>
                                        <button 
                                          onClick={() => {
                                            if (presetNameInput.trim()) {
                                              const newPresets = [...(settings.themePresets || [])];
                                              newPresets[namingPresetIndex] = { ...settings.theme, id: `preset-${namingPresetIndex}-${Date.now()}`, name: presetNameInput.trim() };
                                              updateSettings({ themePresets: newPresets });
                                              setNamingPresetIndex(null);
                                              setPresetNameInput('');
                                            }
                                          }}
                                          className="flex-1 py-2 bg-active/20 border border-active rounded font-cinzel text-[10px] text-active uppercase tracking-widest hover:bg-active/30"
                                        >
                                          Save
                                        </button>
                                      </div>
                                    </div>
                                  </div>
                                )}
                              </div>
                            )}
                            
                            {settingsCategory === 'itemScore' && (
                              <div className="space-y-6">
                                <SettingsSection title="Item Score Settings">
                                  <SettingsToggle 
                                    label="Enable Item Score" 
                                    checked={settings.itemScore.enabled} 
                                    onChange={(v) => updateSettings({itemScore: {...settings.itemScore, enabled: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show in tooltips" 
                                    checked={settings.itemScore.showInTooltips} 
                                    onChange={(v) => updateSettings({itemScore: {...settings.itemScore, showInTooltips: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show in character pane" 
                                    checked={settings.itemScore.showInCharacterPane} 
                                    onChange={(v) => updateSettings({itemScore: {...settings.itemScore, showInCharacterPane: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show in inspection" 
                                    checked={settings.itemScore.showInInspection} 
                                    onChange={(v) => updateSettings({itemScore: {...settings.itemScore, showInInspection: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Class & Specialization">
                                  <div className="grid grid-cols-2 gap-4">
                                    <SettingsDropdown 
                                      label="Class" 
                                      value={settings.itemScore.class} 
                                      options={['Warrior', 'Paladin', 'Hunter', 'Rogue', 'Priest', 'Death Knight', 'Shaman', 'Mage', 'Warlock', 'Monk', 'Druid', 'Demon Hunter', 'Evoker']} 
                                      onChange={(v) => updateSettings({itemScore: {...settings.itemScore, class: v}})} 
                                    />
                                    <SettingsDropdown 
                                      label="Specialization" 
                                      value={settings.itemScore.specialization} 
                                      options={['Fury', 'Arms', 'Protection']} 
                                      onChange={(v) => updateSettings({itemScore: {...settings.itemScore, specialization: v}})} 
                                    />
                                  </div>
                                </SettingsSection>
                                <SettingsSection title="Stat Weights">
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-2">
                                    {Object.entries(settings.itemScore.statWeights).map(([stat, weight]) => (
                                      <div key={stat} className="flex items-center justify-between py-1 border-b border-active/5">
                                        <span className="text-[10px] text-parch/60 uppercase tracking-wider">{stat}</span>
                                        <input 
                                          type="number" 
                                          step="0.01"
                                          value={weight}
                                          onChange={(e) => {
                                            const val = parseFloat(e.target.value) || 0;
                                            updateSettings({
                                              itemScore: {
                                                ...settings.itemScore,
                                                statWeights: {
                                                  ...settings.itemScore.statWeights,
                                                  [stat]: val
                                                }
                                              }
                                            });
                                          }}
                                          className="w-16 bg-black/40 border border-active/20 rounded px-1.5 py-0.5 text-[10px] text-active text-right focus:border-active outline-none"
                                        />
                                      </div>
                                    ))}
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'goldGuide' && (
                              <div className="space-y-6">
                                <SettingsSection title="Gold Guide Settings">
                                  <SettingsToggle 
                                    label="Enable Gold Guide" 
                                    checked={settings.goldGuide.enabled} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, enabled: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show gold in viewer" 
                                    checked={settings.goldGuide.showInViewer} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, showInViewer: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Auction House tools" 
                                    checked={settings.goldGuide.enableAuctionHouse} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, enableAuctionHouse: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show farming routes on map" 
                                    checked={settings.goldGuide.showFarmingRoutes} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, showFarmingRoutes: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable loot tracking" 
                                    checked={settings.goldGuide.enableLootTracking} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, enableLootTracking: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Auction Tools">
                                  <SettingsToggle 
                                    label="Enable Auction Tools" 
                                    checked={settings.goldGuide.enableAuctionTools} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, enableAuctionTools: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Auto-scan auction house" 
                                    checked={settings.goldGuide.autoScanAuction} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, autoScanAuction: v}})} 
                                  />
                                  <SettingsDropdown 
                                    label="Auction scan speed" 
                                    value={settings.goldGuide.auctionScanSpeed.toString()} 
                                    options={['0 (Slow)', '1 (Normal)', '2 (Fast)']} 
                                    onChange={(v) => updateSettings({goldGuide: {...settings.goldGuide, auctionScanSpeed: parseInt(v)}})} 
                                  />
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'notifications' && (
                              <div className="space-y-6">
                                <SettingsSection title="Notifications Settings">
                                  <SettingsToggle 
                                    label="Enable Notifications" 
                                    checked={settings.notifications.enabled} 
                                    onChange={(v) => updateSettings({notifications: {...settings.notifications, enabled: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show in-game alerts" 
                                    checked={settings.notifications.showInGameAlerts} 
                                    onChange={(v) => updateSettings({notifications: {...settings.notifications, showInGameAlerts: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Play sound" 
                                    checked={settings.notifications.playSound} 
                                    onChange={(v) => updateSettings({notifications: {...settings.notifications, playSound: v}})} 
                                  />
                                  <SettingsDropdown 
                                    label="Notification Sound" 
                                    value={settings.notifications.notificationSound} 
                                    options={['X-PLORE Alert', 'Quest Complete', 'Level Up', 'None']} 
                                    onChange={(v) => updateSettings({notifications: {...settings.notifications, notificationSound: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Display Options">
                                  <div className="grid grid-cols-2 gap-4">
                                    <SettingsDropdown 
                                      label="Size" 
                                      value={settings.notifications.notificationSize} 
                                      options={['Small', 'Normal', 'Detailed']} 
                                      onChange={(v) => updateSettings({notifications: {...settings.notifications, notificationSize: v}})} 
                                    />
                                    <SettingsDropdown 
                                      label="Duration" 
                                      value={settings.notifications.notificationDuration} 
                                      options={['3s', '5s', '10s', 'Permanent']} 
                                      onChange={(v) => updateSettings({notifications: {...settings.notifications, notificationDuration: v}})} 
                                    />
                                  </div>
                                  <SettingsToggle 
                                    label="Show in chat" 
                                    checked={settings.notifications.showInChat} 
                                    onChange={(v) => updateSettings({notifications: {...settings.notifications, showInChat: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show on screen" 
                                    checked={settings.notifications.showOnScreen} 
                                    onChange={(v) => updateSettings({notifications: {...settings.notifications, showOnScreen: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Notification Types">
                                  <div className="grid grid-cols-2 gap-x-8 gap-y-2">
                                    {Object.entries(settings.notifications.types).map(([type, enabled]) => (
                                      <SettingsToggle 
                                        key={type}
                                        label={type.replace(/([A-Z])/g, ' $1').replace(/^./, str => str.toUpperCase())} 
                                        checked={enabled} 
                                        onChange={(v) => updateSettings({
                                          notifications: {
                                            ...settings.notifications,
                                            types: {
                                              ...settings.notifications.types,
                                              [type]: v
                                            }
                                          }
                                        })} 
                                      />
                                    ))}
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'extras' && (
                              <div className="space-y-6">
                                <SettingsSection title="Extra Features">
                                  <SettingsToggle 
                                    label="Show chat messages" 
                                    checked={settings.extras.showChatMessages} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, showChatMessages: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Show reputation gains" 
                                    checked={settings.extras.showReputationGains} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, showReputationGains: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Pet Battle panel" 
                                    checked={settings.extras.enablePetBattlePanel} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, enablePetBattlePanel: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Talent Advisor" 
                                    checked={settings.extras.enableTalentAdvisor} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, enableTalentAdvisor: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Guide Rating" 
                                    checked={settings.extras.enableGuideRating} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, enableGuideRating: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Collectors">
                                  <SettingsToggle 
                                    label="Enable Mount Collector" 
                                    checked={settings.extras.enableMountCollector} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, enableMountCollector: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Pet Collector" 
                                    checked={settings.extras.enablePetCollector} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, enablePetCollector: v}})} 
                                  />
                                  <SettingsToggle 
                                    label="Enable Achievement Hunter" 
                                    checked={settings.extras.enableAchievementHunter} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, enableAchievementHunter: v}})} 
                                  />
                                </SettingsSection>
                                <SettingsSection title="Announcements">
                                  <SettingsToggle 
                                    label="Announce level up" 
                                    checked={settings.extras.announceLevelUp} 
                                    onChange={(v) => updateSettings({extras: {...settings.extras, announceLevelUp: v}})} 
                                  />
                                  <div className="grid grid-cols-2 gap-2 mt-2">
                                    {Object.entries(settings.extras.announceChannels).map(([channel, enabled]) => (
                                      <SettingsToggle 
                                        key={channel}
                                        label={channel.charAt(0).toUpperCase() + channel.slice(1)} 
                                        checked={enabled || false} 
                                        onChange={(v) => updateSettings({
                                          extras: {
                                            ...settings.extras,
                                            announceChannels: {
                                              ...settings.extras.announceChannels,
                                              [channel]: v
                                            }
                                          }
                                        })} 
                                      />
                                    ))}
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'profile' && (
                              <div className="space-y-6">
                                <SettingsSection title="Profile Management">
                                  <div className="col-span-full space-y-4">
                                    <div className="flex items-center justify-between">
                                      <span className="text-[10px] text-parch/60 uppercase tracking-wider">Active Profile</span>
                                      <span className="text-xs font-bold text-active">{settings.profile.activeProfile}</span>
                                    </div>
                                    <SettingsToggle 
                                      label="Use this profile on all characters" 
                                      checked={settings.profile.useOnAllCharacters} 
                                      onChange={(v) => updateSettings({profile: {...settings.profile, useOnAllCharacters: v}})} 
                                    />
                                    <div className="space-y-2">
                                      {settings.profile.profiles.map(profile => (
                                        <div key={profile} className="flex items-center justify-between p-3 bg-black/20 border border-active/10 rounded-md group hover:border-active/30 transition-all">
                                          <div className="flex items-center gap-3">
                                            <User size={14} className={cn(settings.profile.activeProfile === profile ? "text-active" : "text-active/20")} />
                                            <span className={cn("text-xs font-garamond", settings.profile.activeProfile === profile ? "text-parch font-bold" : "text-parch/60")}>{profile}</span>
                                          </div>
                                          <div className="flex gap-2">
                                            {settings.profile.activeProfile !== profile && (
                                              <button 
                                                onClick={() => updateSettings({profile: {...settings.profile, activeProfile: profile}})}
                                                className="px-2 py-1 bg-active/10 border border-active/30 rounded text-[9px] text-active uppercase hover:bg-active/20"
                                              >
                                                Load
                                              </button>
                                            )}
                                            <button className="p-1 text-active/20 hover:text-red transition-colors">
                                              <Trash2 size={12} />
                                            </button>
                                          </div>
                                        </div>
                                      ))}
                                    </div>
                                    <button className="w-full py-2 bg-active/10 border border-active/30 rounded text-[10px] text-active font-cinzel tracking-widest uppercase hover:bg-active/20 transition-all flex items-center justify-center gap-2">
                                      <Plus size={14} />
                                      Create New Profile
                                    </button>
                                  </div>
                                </SettingsSection>
                              </div>
                            )}

                            {settingsCategory === 'plugins' && (
                              <div className="space-y-6">
                                <SettingsSection title="Plugin Manager">
                                  <div className="flex justify-between items-center mb-4">
                                    <SettingsToggle 
                                      label="Enable Plugins" 
                                      checked={settings.plugins.enabled} 
                                      onChange={(v) => updateSettings({plugins: {...settings.plugins, enabled: v}})} 
                                    />
                                    <button 
                                      onClick={() => setIsBrowsingPlugins(true)}
                                      className="ww-ctrl-btn primary flex items-center gap-2"
                                    >
                                      <Search size={14} />
                                      Browse Plugins
                                    </button>
                                  </div>
                                  
                                  <div className="space-y-4">
                                    {plugins.length === 0 ? (
                                      <div className="p-8 border border-dashed border-active/20 rounded-lg text-center">
                                        <Puzzle size={32} className="mx-auto text-active/20 mb-2" />
                                        <p className="text-xs text-active/40 italic">No plugins installed.</p>
                                      </div>
                                    ) : (
                                      plugins.map(plugin => (
                                        <div key={plugin.id} className="p-4 bg-black/30 border border-active/10 rounded-lg">
                                          <div className="flex items-center justify-between mb-2">
                                            <div className="flex items-center gap-2">
                                              <Puzzle size={16} className="text-active" />
                                              <h3 className="font-cinzel text-sm text-parch uppercase">{plugin.name}</h3>
                                              <span className="text-[10px] text-active/40">v{plugin.version}</span>
                                            </div>
                                            <SettingsToggle 
                                              label="" 
                                              checked={plugin.enabled} 
                                              onChange={(v) => {
                                                const newPlugins = plugins.map(p => p.id === plugin.id ? {...p, enabled: v} : p);
                                                setPlugins(newPlugins);
                                              }} 
                                            />
                                          </div>
                                          <p className="text-xs text-parch/60 font-garamond mb-4">{plugin.description}</p>
                                          <div className="flex gap-2">
                                            <button className="px-3 py-1 bg-active/10 border border-active/30 rounded text-[10px] text-active uppercase hover:bg-active/20">
                                              Settings
                                            </button>
                                            <button className="px-3 py-1 bg-red/10 border border-red/30 rounded text-[10px] text-red uppercase hover:bg-red/20">
                                              Uninstall
                                            </button>
                                          </div>
                                        </div>
                                      ))
                                    )}
                                  </div>
                                </SettingsSection>
                                
                                <SettingsSection title="Plugin Statistics">
                                  <div className="grid grid-cols-2 gap-4">
                                    <div className="p-3 bg-black/20 rounded border border-active/5">
                                      <span className="text-[10px] text-active/40 uppercase block mb-1">Active Plugins</span>
                                      <span className="text-xl font-bold text-active">{plugins.filter(p => p.enabled).length}</span>
                                    </div>
                                    <div className="p-3 bg-black/20 rounded border border-active/5">
                                      <span className="text-[10px] text-active/40 uppercase block mb-1">Memory Usage</span>
                                      <span className="text-xl font-bold text-active">1.2 MB</span>
                                    </div>
                                  </div>
                                </SettingsSection>
                              </div>
                            )}
                            
                            {/* Other settings categories would continue here... */}
                            {false && (
                              <div className="flex flex-col items-center justify-center h-full text-parch/20 gap-4">
                                <Settings size={48} />
                                <p className="font-cinzel text-sm tracking-widest uppercase">{settingsCategory} settings</p>
                                <p className="text-xs italic">Configuration for this module is coming soon in the next revision.</p>
                              </div>
                            )}
                          </div>
                        </div>
                      </div>
                    ) : activeHubTab === 'Plugins' ? (
                      <div className="space-y-6 h-full flex flex-col">
                        <div className="flex justify-between items-center border-b border-active/20 pb-4">
                          <div>
                            <h2 className="font-cinzel text-lg text-active uppercase tracking-widest">
                              {isBrowsingPlugins ? "Available Plugins" : "Installed Plugins"}
                            </h2>
                            <p className="text-xs text-active/60 font-garamond italic">
                              {isBrowsingPlugins ? "Discover new features for your addon" : "Extend X-Plore with community features"}
                            </p>
                          </div>
                          <button 
                            onClick={() => setIsBrowsingPlugins(!isBrowsingPlugins)}
                            className={cn(
                              "ww-ctrl-btn flex items-center gap-2",
                              isBrowsingPlugins ? "bg-active/10" : "primary"
                            )}
                          >
                            {isBrowsingPlugins ? <ChevronLeft size={14} /> : <Search size={14} />}
                            {isBrowsingPlugins ? "Back to Manager" : "Browse Plugins"}
                          </button>
                        </div>

                        <div className="grid grid-cols-1 gap-4 overflow-y-auto custom-scrollbar pr-2">
                          {(isBrowsingPlugins ? MOCK_BROWSER_PLUGINS : plugins).map(plugin => (
                            <div key={plugin.id} className="p-4 bg-black/30 border border-active/10 rounded-lg flex items-center gap-4 group hover:border-active/30 transition-all">
                              <div className={cn(
                                "w-12 h-12 rounded-lg border flex items-center justify-center shrink-0",
                                plugin.enabled ? "bg-active/10 border-active text-active" : "bg-black/40 border-active/20 text-active/60"
                              )}>
                                <Briefcase size={24} />
                              </div>
                              <div className="flex-1 min-w-0">
                                <div className="flex items-center gap-2 mb-1">
                                  <h3 className="font-cinzel text-sm text-parch uppercase tracking-wider">{plugin.name}</h3>
                                  <span className="text-[9px] bg-active/10 text-active px-1.5 py-0.5 rounded border border-active/20">v{plugin.version}</span>
                                </div>
                                <p className="text-xs text-parch/60 font-garamond line-clamp-1">{plugin.description}</p>
                                <p className="text-[10px] text-active/60 uppercase tracking-tighter mt-1">By {plugin.author} · {plugin.type}</p>
                              </div>
                              <div className="flex flex-col gap-2">
                                {isBrowsingPlugins ? (
                                  <button 
                                    onClick={() => installPlugin(plugin)}
                                    disabled={!!plugins.find(p => p.id === plugin.id)}
                                    className={cn(
                                      "ww-ctrl-btn text-[10px] py-1 px-3",
                                      plugins.find(p => p.id === plugin.id) ? "opacity-50 cursor-not-allowed" : "primary"
                                    )}
                                  >
                                    {plugins.find(p => p.id === plugin.id) ? "Installed" : "Install"}
                                  </button>
                                ) : (
                                  <>
                                    <SettingsToggle 
                                      label="" 
                                      checked={plugin.enabled} 
                                      onChange={(v) => togglePlugin(plugin.id, v)} 
                                    />
                                    <button className="ww-btn border-active/30 text-active/60 hover:text-active opacity-0 group-hover:opacity-100 transition-opacity">
                                      <Settings size={10} />
                                    </button>
                                  </>
                                )}
                              </div>
                            </div>
                          ))}
                        </div>

                        {!isBrowsingPlugins && (
                          <div className="p-4 border-2 border-dashed border-active/10 rounded-lg text-center space-y-2 mt-auto">
                            <p className="text-xs text-active/60 font-cinzel uppercase tracking-widest">Developer API</p>
                            <p className="text-[11px] text-parch/60 font-garamond italic">Interested in building a plugin? Check our documentation.</p>
                            <button className="ww-ctrl-btn text-[9px]">View Plugin API Docs</button>
                          </div>
                        )}
                      </div>
                    ) : activeHubTab === 'Export' ? (
                      <div className="space-y-6 h-full flex flex-col">
                        <div className="flex justify-between items-center border-b border-active/20 pb-4">
                          <div>
                            <h2 className="font-cinzel text-lg text-active uppercase tracking-widest">Addon Exporter</h2>
                            <p className="text-xs text-active/60 font-garamond italic">Generate Lua code for your WoW Addon directory</p>
                          </div>
                          <div className="flex gap-2">
                            <button 
                              onClick={() => {
                                navigator.clipboard.writeText(generateLua(activeGuide));
                                alert("Guide Lua copied!");
                              }}
                              className="ww-ctrl-btn"
                            >
                              Copy Guide
                            </button>
                            <button 
                              onClick={() => {
                                navigator.clipboard.writeText(generateSettingsLua(settings));
                                alert("Settings Lua copied!");
                              }}
                              className="ww-ctrl-btn primary"
                            >
                              Copy Settings
                            </button>
                          </div>
                        </div>

                        <div className="flex-1 overflow-y-auto custom-scrollbar pr-2 space-y-6">
                          <div className="space-y-2">
                            <div className="flex justify-between items-center">
                              <span className="font-mono text-[11px] text-active/60">guides/leveling/{activeGuide.id}.lua</span>
                              <span className="font-cinzel text-[9px] tracking-widest text-parch/60 uppercase">Lua · Guide Data</span>
                            </div>
                            <pre className="bg-black p-4 rounded border border-active/15 font-mono text-[12px] text-parch/60 leading-relaxed overflow-x-auto">
                              <code>{generateLua(activeGuide)}</code>
                            </pre>
                          </div>
                          
                          <div className="space-y-2">
                            <div className="flex justify-between items-center">
                              <span className="font-mono text-[11px] text-active/60">core/settings.lua</span>
                              <span className="font-cinzel text-[9px] tracking-widest text-parch/60 uppercase">Lua · Global Config</span>
                            </div>
                            <pre className="bg-black p-4 rounded border border-active/15 font-mono text-[12px] text-parch/60 leading-relaxed overflow-x-auto">
                              <code>{generateSettingsLua(settings)}</code>
                            </pre>
                          </div>
                        </div>

                        <div className="p-4 bg-black/20 border border-active/10 rounded-lg flex justify-between items-center mt-auto">
                          <div className="text-[10px] text-parch/60 italic max-w-md">
                            Copy this code into your WoW Addon directory to use this guide and settings in-game.
                          </div>
                          <button 
                            onClick={() => {
                              navigator.clipboard.writeText(generateLua(activeGuide));
                              alert("Lua code copied to clipboard!");
                            }}
                            className="ww-ctrl-btn primary"
                          >
                            Copy to Clipboard
                          </button>
                        </div>
                      </div>
                    ) : activeHubTab === 'About' ? (
                      <div className="space-y-8 h-full flex flex-col items-center justify-center max-w-3xl mx-auto text-center">
                        <div className="flex flex-col items-center">
                          <div className="relative group py-8">
                            {/* Glow effect behind the logo */}
                            <div className="absolute inset-0 bg-active/10 blur-[80px] rounded-full scale-150" />
                            
                            <div className="relative z-10 flex flex-col items-center">
                              <img 
                                src="/logo.tga" 
                                alt="X-Plore Logo" 
                                className="h-48 w-auto object-contain drop-shadow-[0_0_20px_rgba(0,229,255,0.4)]"
                                onError={(e) => {
                                  // Fallback if TGA is not supported by browser (which it isn't natively)
                                  e.currentTarget.style.display = 'none';
                                  const fallback = e.currentTarget.nextElementSibling as HTMLElement;
                                  if (fallback) fallback.style.display = 'flex';
                                }}
                              />
                              {/* Fallback stylized text if image fails to load */}
                              <div className="hidden flex-col items-center">
                                <h1 className="font-cinzel text-7xl font-bold tracking-[0.25em] uppercase 
                                  bg-gradient-to-b from-white via-active to-active/70 bg-clip-text text-transparent
                                  drop-shadow-[0_0_20px_rgba(0,229,255,0.4)]">
                                  X-Plore
                                </h1>
                                <div className="h-px w-full max-w-[300px] bg-gradient-to-r from-transparent via-active/30 to-transparent mt-4" />
                              </div>
                            </div>
                          </div>
                          
                          <p className="text-sm text-active font-garamond italic tracking-[0.45em] uppercase mt-4 opacity-90">
                            Universal WoW Guide Framework
                          </p>
                        </div>

                        <div className="space-y-6 w-full">
                          <div className="p-6 bg-black/40 border border-active/10 rounded-lg space-y-3">
                            <h2 className="font-cinzel text-sm text-active uppercase tracking-widest border-b border-active/20 pb-2">Project Vision</h2>
                            <p className="font-garamond text-sm text-parch leading-relaxed">
                              X-Plore is designed to be the most robust, modular, and universally compatible guide viewer for World of Warcraft. 
                              Supporting every version from Vanilla 1.12 to Retail 12.0+, it provides a seamless experience for leveling, 
                              gold making, and exploration across the entire history of Azeroth.
                            </p>
                          </div>

                          <div className="grid grid-cols-3 gap-4">
                            <div className="p-4 bg-black/20 border border-active/5 rounded flex flex-col items-center gap-2">
                              <span className="text-active font-cinzel text-lg">v2.5.0a</span>
                              <span className="text-[9px] text-parch/40 uppercase tracking-widest">Current Version</span>
                            </div>
                            <div className="p-4 bg-black/20 border border-active/5 rounded flex flex-col items-center gap-2">
                              <span className="text-active font-cinzel text-lg">1,240+</span>
                              <span className="text-[9px] text-parch/40 uppercase tracking-widest">Guides Included</span>
                            </div>
                            <div className="p-4 bg-black/20 border border-active/5 rounded flex flex-col items-center gap-2">
                              <span className="text-active font-cinzel text-lg">100%</span>
                              <span className="text-[9px] text-parch/40 uppercase tracking-widest">Open Source</span>
                            </div>
                          </div>
                        </div>
                      </div>
                    ) : (
                      <div className="max-w-4xl">
                        <div className="flex items-center justify-between mb-6">
                          <h2 className="text-xl font-bold capitalize font-cinzel tracking-widest text-active">{selectedCategory || activeHubTab}</h2>
                        </div>
                        <div className="space-y-1">
                          {/* Fallback list */}
                          {['Starter Guides', 'Allied Races', 'Heritage Armor'].map((folder, i) => (
                            <div key={i} className="flex items-center gap-3 px-3 py-2 hover:bg-active/5 rounded cursor-pointer group transition-colors">
                              <MapIcon size={14} className="text-active/40" />
                              <span className="text-xs text-parch/80 group-hover:text-parch font-cinzel tracking-wider">{folder}</span>
                            </div>
                          ))}
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              </div>
            </DraggableFrame>
          )}

          {activeTab === 'VIEWER' && (
            <DraggableFrame 
              title="X-Plore Viewer" 
              onClose={() => setActiveTab('DASHBOARD')}
              className={cn(
                "transition-all duration-300 relative",
                isMinimized ? "w-80" : "w-[320px]"
              )}
              onMenuClick={() => setShowViewerMenu(!showViewerMenu)}
            >
              {!isMinimized && (
                <>
                  {/* Viewer Menu Dropdown */}
                  <AnimatePresence>
                    {showViewerMenu && (
                      <motion.div
                        initial={{ opacity: 0, scale: 0.95, y: -10 }}
                        animate={{ opacity: 1, scale: 1, y: 0 }}
                        exit={{ opacity: 0, scale: 0.95, y: -10 }}
                        className="absolute top-0 left-0 w-64 bg-black/95 backdrop-blur-md border border-active/30 rounded-lg shadow-2xl z-[200] overflow-hidden m-2"
                      >
                        <div className="flex flex-col p-1">
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { setActiveTab('DASHBOARD'); setActiveHubTab('Guides'); setShowViewerMenu(false); }}>
                            <ScrollText size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Guide Menu</span>
                          </button>
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { setActiveTab('DASHBOARD'); setActiveHubTab('Home'); setCategoryFilter('ALL'); setShowViewerMenu(false); }}>
                            <LayoutDashboard size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Dashboard Hub</span>
                          </button>
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { setActiveTab('DASHBOARD'); setActiveHubTab('Plugins'); setShowViewerMenu(false); }}>
                            <Zap size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Plugins</span>
                          </button>
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { setActiveTab('DASHBOARD'); setActiveHubTab('Export'); setShowViewerMenu(false); }}>
                            <FileCode size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Lua Export</span>
                          </button>
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { setActiveTab('DASHBOARD'); setActiveHubTab('About'); setShowViewerMenu(false); }}>
                            <Info size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">About</span>
                          </button>
                          
                          <div className="h-px bg-active/10 my-1 mx-2" />
                          
                          <button 
                            className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" 
                            onClick={() => updateSettings({ stepDisplay: { ...settings.stepDisplay, lockViewer: !settings.stepDisplay.lockViewer } })}
                          >
                            {settings.stepDisplay.lockViewer ? <Lock size={16} /> : <Unlock size={16} />}
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Lock Viewer</span>
                            <div className={cn("w-3.5 h-3.5 rounded-sm border border-active/40 flex items-center justify-center text-[8px]", settings.stepDisplay.lockViewer && "bg-active/20 border-active")}>
                              {settings.stepDisplay.lockViewer && "✓"}
                            </div>
                          </button>
                          
                          <button 
                            className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left"
                            onClick={() => updateSettings({ stepDisplay: { ...settings.stepDisplay, enableTransparency: !settings.stepDisplay.enableTransparency } })}
                          >
                            <Square size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Enable Transparency</span>
                            <div className={cn("w-3.5 h-3.5 rounded-sm border border-active/40 flex items-center justify-center text-[8px]", settings.stepDisplay.enableTransparency && "bg-active/20 border-active")}>
                              {settings.stepDisplay.enableTransparency && "✓"}
                            </div>
                          </button>
                          
                          <div className="h-px bg-active/10 my-1 mx-2" />
                          
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => setShowViewerMenu(false)}>
                            <SearchCode size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Find NPC/Object</span>
                            <ChevronRight size={14} className="text-active/40" />
                          </button>
                          
                          <div className="h-px bg-active/10 my-1 mx-2" />
                          
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { updateSettings({ widgets: INITIAL_WIDGETS }); setShowViewerMenu(false); }}>
                            <RotateCcw size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Reset window</span>
                          </button>
                          
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { window.location.reload(); }}>
                            <RefreshCw size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Reload</span>
                          </button>
                          
                          <div className="h-px bg-active/10 my-1 mx-2" />
                          
                          <button className="flex items-center gap-3 px-3 py-2 text-active hover:bg-active/10 rounded transition-colors text-left" onClick={() => { setActiveTab('DASHBOARD'); setActiveHubTab('Options'); setShowViewerMenu(false); }}>
                            <Settings size={16} />
                            <span className="font-cinzel text-[11px] tracking-wider uppercase flex-1">Settings</span>
                          </button>
                        </div>
                      </motion.div>
                    )}
                  </AnimatePresence>

                  {/* Guide Tabs */}
                  <div className="flex bg-black/60 border-b border-active/20 overflow-x-auto scrollbar-hide items-center">
                    {openGuides.map((og, idx) => (
                      <div 
                        key={`${og.guide.id}-${idx}`}
                        onClick={() => setActiveGuideTabIndex(idx)}
                        className={cn(
                          "px-3 py-1.5 flex items-center gap-2 cursor-pointer transition-all border-r border-active/10 min-w-[100px] max-w-[150px] relative group",
                          activeGuideTabIndex === idx ? "bg-blue-md text-active border-t-2 border-t-active" : "bg-black/20 text-active/60 hover:bg-white/5"
                        )}
                      >
                        <div className="w-4 h-4 bg-active/20 rounded flex items-center justify-center text-[8px] font-bold text-active shrink-0">XP</div>
                        <span className="text-[9px] font-cinzel truncate uppercase tracking-tighter flex-1">{og.guide.name}</span>
                        {openGuides.length > 1 && (
                          <X 
                            size={10} 
                            className="shrink-0 text-parch/20 hover:text-parch transition-colors" 
                            onClick={(e) => {
                              e.stopPropagation();
                              setOpenGuides(openGuides.filter((_, i) => i !== idx));
                              if (activeGuideTabIndex >= idx && activeGuideTabIndex > 0) {
                                setActiveGuideTabIndex(activeGuideTabIndex - 1);
                              }
                            }}
                          />
                        )}
                      </div>
                    ))}
                    <button 
                      onClick={() => {
                        setActiveTab('DASHBOARD');
                        setActiveHubTab('Guides');
                        setCategoryFilter('ALL');
                      }}
                      className="px-3 py-1.5 bg-black/40 text-active/40 hover:text-active hover:bg-white/5 transition-colors border-r border-active/10"
                      title="Add new guide tab"
                    >
                      <Plus size={12} />
                    </button>
                  </div>

                  <div className="ww-div" />
                  
                  {/* Top Control Bar (X-PLORE Style) */}
                  <div className="px-2 py-1.5 bg-black/40 flex justify-between items-center gap-2">
                    <div className="flex items-center gap-1">
                      <button 
                        onClick={() => {
                          if (currentStepIndex > 0) {
                            const newOpenGuides = [...openGuides];
                            newOpenGuides[activeGuideTabIndex].stepIndex--;
                            setOpenGuides(newOpenGuides);
                          }
                        }}
                        className="p-1 text-active/40 hover:text-active transition-colors"
                      >
                        <ArrowLeft size={14} />
                      </button>
                      <span className="text-[11px] font-bold text-active px-1">{currentStepIndex + 1}</span>
                      <button 
                        onClick={() => {
                          if (currentStepIndex < activeGuide.steps.length - 1) {
                            const newOpenGuides = [...openGuides];
                            newOpenGuides[activeGuideTabIndex].stepIndex++;
                            setOpenGuides(newOpenGuides);
                          }
                        }}
                        className="p-1 text-active/40 hover:text-active transition-colors"
                      >
                        <ArrowRight size={14} />
                      </button>
                    </div>
                    
                    <div className="flex items-center gap-1">
                      <button 
                        onClick={() => {
                          setActiveTab('DASHBOARD');
                          setActiveHubTab('Guides');
                        }}
                        className="p-1 text-active/40 hover:text-active transition-colors"
                        title="Add New Guide Tab"
                      >
                        <Plus size={14} />
                      </button>
                      <button className="p-1 text-active/40 hover:text-active transition-colors">
                        <Users size={14} />
                      </button>
                      <button className="p-1 text-active/40 hover:text-active transition-colors">
                        <Flag size={14} />
                      </button>
                      <button className="p-1 text-active/40 hover:text-active transition-colors">
                        <MoreHorizontal size={14} />
                      </button>
                    </div>
                  </div>

                  <div className="ww-div" />

                  {/* Category Header with Recent Dropdown */}
                  <div className="relative">
                    <div 
                      className="px-3 py-2 bg-blue-md flex justify-between items-center cursor-pointer hover:bg-blue-lt transition-colors"
                      onClick={() => setShowRecentDropdown(!showRecentDropdown)}
                    >
                      <div className="flex items-center gap-1.5 truncate">
                        <span className="font-cinzel text-[10px] tracking-widest text-active uppercase truncate max-w-[180px]">
                          {activeGuide.name}
                        </span>
                        <ChevronDown size={10} className={cn("text-active/60 transition-transform", showRecentDropdown && "rotate-180")} />
                      </div>
                      <span className="font-cinzel text-[9px] text-active/60 tracking-wider shrink-0">
                        {currentStepIndex + 1} / {activeGuide.steps.length}
                      </span>
                    </div>

                    <AnimatePresence>
                      {showRecentDropdown && (
                        <motion.div 
                          initial={{ opacity: 0, y: -10 }}
                          animate={{ opacity: 1, y: 0 }}
                          exit={{ opacity: 0, y: -10 }}
                          className="absolute top-full left-0 right-0 z-50 bg-blue-dk border-x border-b border-active/30 shadow-2xl"
                        >
                          <div className="px-3 py-1.5 bg-black/40 border-b border-active/10">
                            <span className="font-cinzel text-[8px] text-active/60 tracking-widest uppercase">Recent Guides</span>
                          </div>
                          {recentGuides.map((rg) => (
                            <div 
                              key={rg.id}
                              onClick={() => {
                                openGuide(rg);
                                setShowRecentDropdown(false);
                              }}
                              className="px-3 py-2 flex items-center gap-2 hover:bg-active/10 cursor-pointer transition-colors border-b border-active/5"
                            >
                              <History size={10} className="text-active/60" />
                              <span className="font-garamond text-xs text-parch truncate">{rg.name}</span>
                            </div>
                          ))}
                        </motion.div>
                      )}
                    </AnimatePresence>
                  </div>

                  {/* Content Area */}
                  <div className="p-3 bg-blue-md min-h-[180px] relative">
                    {/* Floating Action Buttons (X-PLORE Style) */}
                    <div className="absolute top-2 right-2 flex flex-col gap-1.5 z-10">
                      <button 
                        className="w-6 h-6 bg-black/60 border border-active/30 rounded flex items-center justify-center text-active/60 hover:text-active hover:border-active transition-all shadow-lg"
                        title="Quest Button"
                      >
                        <ScrollText size={12} />
                      </button>
                      <button 
                        className="w-6 h-6 bg-black/60 border border-active/30 rounded flex items-center justify-center text-active/60 hover:text-red hover:border-red transition-all shadow-lg"
                        title="Quick Delete / Vendor Trash"
                      >
                        <Trash2 size={12} />
                      </button>
                    </div>

                    <div className="bg-active/5 border border-active/20 rounded-sm p-3 mb-2.5 relative before:absolute before:left-0 before:top-0 before:bottom-0 before:w-[3px] before:bg-active before:rounded-l-sm shadow-inner shadow-active/5">
                      <div className="flex gap-3 items-start mb-2">
                        <div className="w-6 h-6 rounded bg-active/10 border border-active/30 flex items-center justify-center text-active shrink-0 mt-0.5 shadow-[0_0_10px_rgba(0,229,255,0.1)]">
                          {getStepIcon(currentStep.type, 14)}
                        </div>
                        <div className="flex-1">
                          <div className="font-cinzel text-[13px] font-bold text-active tracking-wider leading-tight mb-1">
                            {currentStep.title}
                          </div>
                          {currentStep.description && (
                            <div className="text-[11px] text-parch/60 leading-relaxed font-garamond italic">
                              {currentStep.description}
                            </div>
                          )}
                        </div>
                      </div>

                      {/* Objectives */}
                      <div className="pl-9 flex flex-col gap-2">
                        {currentStep.objectives?.map((obj, idx) => (
                          <div key={idx} className="flex items-center gap-3 group">
                            <div className={cn(
                              "w-4 h-4 rounded-sm border flex items-center justify-center text-[10px] shrink-0 transition-all duration-300",
                              obj.done ? "border-complete text-complete bg-complete/10 shadow-[0_0_8px_rgba(0,255,159,0.2)]" : "border-active/20 text-transparent bg-black/20 group-hover:border-active/40"
                            )}>
                              {obj.done && <CheckSquare size={10} />}
                            </div>
                            <div className="flex-1 space-y-1">
                              <div className="flex justify-between items-center">
                                <span className={cn("text-[11px] font-medium transition-colors duration-300", obj.done ? "text-complete line-through opacity-70" : "text-parch/80 group-hover:text-parch")}>
                                  {obj.text}
                                </span>
                                <span className="text-[9px] font-mono text-active/40">
                                  {obj.current}/{obj.total}
                                </span>
                              </div>
                              <div className="w-full h-1 bg-black/40 rounded-full overflow-hidden border border-active/10">
                                <motion.div 
                                  initial={{ width: 0 }}
                                  animate={{ width: `${(obj.current / obj.total) * 100}%` }}
                                  className={cn("h-full transition-all duration-500", obj.done ? "bg-complete" : "bg-active")} 
                                />
                              </div>
                            </div>
                          </div>
                        ))}
                      </div>
                    </div>

                    {/* Upcoming */}
                    <div className="border border-active/10 rounded-sm overflow-hidden">
                      <div className="flex justify-between items-center px-2.5 py-1.5 bg-black/25">
                        <span className="font-cinzel text-[9px] tracking-widest text-active/60 uppercase">Next Step</span>
                        <span className="text-[10px] text-active/60">▾</span>
                      </div>
                      <div className="py-1">
                        {activeGuide.steps.slice(currentStepIndex + 1, currentStepIndex + 2).map((step, i) => (
                          <div key={i} className="flex items-center gap-2 px-2.5 py-1 text-[11px] text-parch/60">
                            <span className="text-xs opacity-50">{getStepIcon(step.type)}</span>
                            <span className="truncate flex-1">{step.title}</span>
                          </div>
                        ))}
                      </div>
                    </div>
                  </div>

                  <div className="ww-div" />

                  {/* Progress Bar */}
                  <div className="px-3 py-2 bg-black/20 flex items-center gap-2">
                    <div className="flex-1 h-1.5 bg-black/50 border border-active/20 rounded-full overflow-hidden">
                      <div 
                        className="h-full bg-linear-to-r from-active/60 to-active relative transition-all duration-500"
                        style={{ width: `${progress}%` }}
                      />
                    </div>
                    <span className="font-mono text-[9px] text-active/60">{progress}%</span>
                  </div>

                  {/* Controls */}
                  <div className="ww-controls">
                    <button onClick={handlePrev} className="ww-ctrl-btn">
                      <ChevronLeft size={12} />
                    </button>
                    <div className="flex-1" />
                    <div className="flex items-center gap-1.5">
                      <div className="w-1.5 h-1.5 rounded-full bg-complete animate-pulse" />
                      <span className="font-cinzel text-[8px] text-active/60 tracking-widest uppercase">Auto-Sync</span>
                    </div>
                    <div className="flex-1" />
                    <button onClick={handleNext} className="ww-ctrl-btn">
                      <ChevronRight size={12} />
                    </button>
                  </div>
                </>
              )}

              {isMinimized && (
                <div className="bg-blue-md p-2 flex flex-col gap-2">
                  <div className="flex items-center gap-2 px-2 py-1.5 border-b border-active/10">
                    <span className="text-active">{getStepIcon(currentStep.type)}</span>
                    <span className="flex-1 font-garamond text-xs font-semibold text-parch truncate">
                      {currentStep.title}
                    </span>
                    <span className="font-mono text-[10px] text-active">
                      {currentStepIndex + 1} / {activeGuide.steps.length}
                    </span>
                  </div>
                  <div className="flex items-center gap-2 px-1">
                    <div className="flex-1 h-1.5 bg-black/40 border border-active/15 rounded-full overflow-hidden">
                      <div className="h-full bg-linear-to-r from-active/60 to-active" style={{ width: `${progress}%` }} />
                    </div>
                    <div className="flex gap-1">
                      <button onClick={handlePrev} className="w-5 h-5 bg-active/10 border border-active/30 rounded flex items-center justify-center text-active">
                        <ChevronLeft size={10} />
                      </button>
                      <button className="w-5 h-5 bg-active/10 border border-active rounded flex items-center justify-center text-active">
                        <MapPin size={10} />
                      </button>
                      <button onClick={handleNext} className="w-5 h-5 bg-active/10 border border-active/30 rounded flex items-center justify-center text-active">
                        <ChevronRight size={10} />
                      </button>
                    </div>
                  </div>
                </div>
              )}
            </DraggableFrame>
          )}

          {/* BROWSER, SETTINGS, PLUGINS, EXPORT, and ABOUT tabs integrated into DASHBOARD */}


        </AnimatePresence>
      </div>
    </div>
  );
}

function SidebarButton({ active, onClick, icon, label }: { active: boolean, onClick: () => void, icon: React.ReactNode, label: string }) {
  return (
    <button 
      onClick={onClick}
      className={cn(
        "w-full flex items-center gap-3 px-4 py-2 transition-all text-left rounded-md",
        active ? "bg-active/15 text-active border border-active/20" : "hover:bg-active/5 text-parch/60 hover:text-parch"
      )}
    >
      <span className={cn("transition-colors", active ? "text-active" : "text-active/40")}>{icon}</span>
      <span className="text-xs font-medium font-cinzel tracking-wider">{label}</span>
    </button>
  );
}

function TabButton({ active, onClick, icon, label }: { active: boolean, onClick: () => void, icon: React.ReactNode, label: string }) {
  return (
    <button 
      onClick={onClick}
      className={cn(
        "flex items-center gap-2 px-4 py-2 rounded-md font-cinzel text-[10px] tracking-widest uppercase transition-all",
        active ? "bg-active/15 text-active border border-active/30" : "text-blue-lt hover:text-active hover:bg-white/5"
      )}
    >
      {icon}
      {label}
    </button>
  );
}

function NavTab({ active, icon, tooltip }: { active?: boolean, icon: React.ReactNode, tooltip: string }) {
  return (
    <div className={cn("ww-nav-tab group", active && "active")}>
      {icon}
      <div className="absolute bottom-full mb-2 left-1/2 -translate-x-1/2 bg-black border border-active/40 px-2 py-1 rounded text-[9px] font-cinzel text-active opacity-0 group-hover:opacity-100 transition-opacity whitespace-nowrap pointer-events-none z-50">
        {tooltip}
      </div>
    </div>
  );
}

function DraggableFrame({ 
  title, 
  children, 
  onClose, 
  className,
  onMenuClick
}: { 
  title: string, 
  children: React.ReactNode, 
  onClose: () => void,
  className?: string,
  onMenuClick?: () => void
}) {
  return (
    <motion.div
      drag
      dragMomentum={false}
      initial={{ opacity: 0, scale: 0.95 }}
      animate={{ opacity: 1, scale: 1 }}
      exit={{ opacity: 0, scale: 0.95 }}
      className={cn("wow-window flex flex-col resize overflow-hidden", className)}
      style={{ minWidth: '300px', minHeight: '200px' }}
    >
      <div className="ww-titlebar">
        <div className="flex items-center gap-2 flex-1">
          {onMenuClick ? (
            <button onClick={onMenuClick} className="ww-btn border-active/30 text-active hover:bg-active/10" title="Viewer Menu">
              <Settings size={14} />
            </button>
          ) : (
            <Compass size={14} className="text-active" />
          )}
          <span className="font-cinzel text-[11px] tracking-widest text-active uppercase">{title}</span>
        </div>
        <div className="flex gap-1">
          <button className="ww-btn border-active/30 text-active/60 hover:text-active hover:border-active"><Minus size={10} /></button>
          <button className="ww-btn border-active/30 text-active/60 hover:text-active hover:border-active"><Pin size={10} /></button>
          <button onClick={onClose} className="ww-btn border-red/40 text-red/60 hover:text-red hover:border-red">
            <X size={10} />
          </button>
        </div>
      </div>
      <div className="flex-1 overflow-hidden">
        {children}
      </div>
      {/* Resize handle visual */}
      <div className="resize-handle resize-handle-br pointer-events-none" />
    </motion.div>
  );
}

function ResizableWidget({ 
  widget, 
  children, 
  isConfigMode,
  onResize, 
  onClose 
}: any) {
  return (
    <motion.div
      layout
      className={cn(
        "wow-window flex flex-col transition-all duration-300",
        isConfigMode ? "border-active/40 bg-active/5 ring-1 ring-active/20" : "border-active/10 bg-black/20",
        widget.w === 1 ? "md:col-span-1" : widget.w === 2 ? "md:col-span-2" : widget.w === 3 ? "md:col-span-3" : widget.w === 4 ? "md:col-span-4" : widget.w === 5 ? "md:col-span-5" : "md:col-span-6",
        widget.h === 1 ? "md:row-span-1" : widget.h === 2 ? "md:row-span-2" : widget.h === 3 ? "md:row-span-3" : "md:row-span-4"
      )}
    >
      {isConfigMode && (
        <div className="ww-titlebar bg-active/10">
          <Move size={10} className="text-active/60" />
          <span className="font-cinzel text-[9px] tracking-widest text-active uppercase flex-1 truncate">{widget.title}</span>
          <div className="flex gap-1">
            <button 
              className="ww-btn border-active/30 text-active/60 hover:text-active"
              onClick={() => {
                const newW = widget.w < 6 ? widget.w + 1 : 1;
                onResize(widget.id, newW, widget.h);
              }}
            >
              <Maximize2 size={8} />
            </button>
            <button className="ww-btn border-red/40 text-red/60 hover:text-red" onClick={() => onClose(widget.id)}>
              <X size={8} />
            </button>
          </div>
        </div>
      )}
      <div className={cn("p-4 flex-1 overflow-hidden", !isConfigMode && "flex items-center justify-center")}>
        {children}
      </div>
      {isConfigMode && (
        <div 
          className="resize-handle resize-handle-br border-active/30" 
          onClick={() => {
            const nextH = widget.h < 4 ? widget.h + 1 : 1;
            onResize(widget.id, widget.w, nextH);
          }}
        />
      )}
    </motion.div>
  );
}

function SettingsTab({ active, label, icon, onClick }: { active?: boolean, label: string, icon?: React.ReactNode, onClick?: () => void }) {
  return (
    <button 
      onClick={onClick}
      className={cn(
        "px-4 py-3 font-cinzel text-[9px] tracking-widest uppercase transition-all whitespace-nowrap flex items-center gap-2 border-b-2",
        active ? "text-active border-active bg-active/5" : "text-blue-lt border-transparent hover:bg-active/5 hover:text-active"
      )}
    >
      {icon}
      {label}
    </button>
  );
}

function SettingsSection({ title, children }: { title: string, children: React.ReactNode }) {
  return (
    <div className="flex flex-col gap-3">
      <span className="font-cinzel text-[9px] tracking-widest text-active uppercase flex items-center gap-2 after:flex-1 after:h-px after:bg-active/15">
        {title}
      </span>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-x-8 gap-y-3">
        {children}
      </div>
    </div>
  );
}

function SettingsInput({ label, value, onChange, placeholder }: { label: string, value: string | number, onChange: (v: string) => void, placeholder?: string }) {
  return (
    <div className="flex flex-col gap-1">
      <span className="text-[10px] text-parch/60 uppercase tracking-wider">{label}</span>
      <input 
        type="text"
        value={value}
        placeholder={placeholder}
        onChange={(e) => onChange(e.target.value)}
        className="w-full bg-black/40 border border-active/20 rounded px-2 py-1.5 text-parch text-[11px] font-mono focus:border-active outline-none transition-all"
      />
    </div>
  );
}

function SettingsTextArea({ label, value, onChange, placeholder, rows = 4 }: { label: string, value: string, onChange: (v: string) => void, placeholder?: string, rows?: number }) {
  return (
    <div className="flex flex-col gap-1">
      <span className="text-[10px] text-parch/60 uppercase tracking-wider">{label}</span>
      <textarea 
        value={value}
        placeholder={placeholder}
        rows={rows}
        onChange={(e) => onChange(e.target.value)}
        className="w-full bg-black/40 border border-active/20 rounded px-2 py-1.5 text-parch text-[11px] font-mono focus:border-active outline-none transition-all resize-none custom-scrollbar"
      />
    </div>
  );
}

function SettingsButton({ label, onClick, variant = 'default' }: { label: string, onClick?: () => void, variant?: 'default' | 'primary' | 'danger' }) {
  return (
    <button 
      onClick={onClick}
      className={cn(
        "px-4 py-1.5 rounded text-[10px] uppercase font-cinzel tracking-wider transition-all",
        variant === 'default' && "bg-active/10 text-active hover:bg-active/20 border border-active/20",
        variant === 'primary' && "bg-active text-black hover:bg-active/80 font-bold",
        variant === 'danger' && "bg-red/10 text-red hover:bg-red/20 border border-red/20"
      )}
    >
      {label}
    </button>
  );
}

function SettingsDropdown({ label, value, options, onChange }: { label: string, value: string, options: string[], onChange: (v: string) => void }) {
  return (
    <div className="flex flex-col gap-1">
      <span className="text-[10px] text-parch/60 uppercase tracking-wider">{label}</span>
      <div className="relative">
        <select 
          value={value} 
          onChange={(e) => onChange(e.target.value)}
          className="w-full bg-black/40 border border-active/20 rounded px-2 py-1.5 text-parch text-[11px] font-garamond focus:border-active outline-none appearance-none cursor-pointer"
        >
          {options.map(opt => (
            <option key={opt} value={opt} className="bg-blue-dk">{opt}</option>
          ))}
        </select>
        <ChevronDown size={10} className="absolute right-2 top-1/2 -translate-y-1/2 text-active/40 pointer-events-none" />
      </div>
    </div>
  );
}

function SettingsSlider({ label, value, min, max, unit, minLabel, maxLabel, onChange }: { label: string, value: number, min: number, max: number, unit?: string, minLabel?: string, maxLabel?: string, onChange: (v: number) => void }) {
  return (
    <div className="flex flex-col gap-1">
      <div className="flex justify-between items-center">
        <span className="text-[10px] text-parch/60 uppercase tracking-wider">{label}</span>
        {unit && <span className="font-mono text-[10px] text-active">{value}{unit}</span>}
      </div>
      <input 
        type="range" 
        min={min} 
        max={max} 
        value={value} 
        onChange={(e) => onChange(parseInt(e.target.value))}
        className="w-full h-1 bg-active/15 rounded-full appearance-none cursor-pointer accent-active"
      />
      {(minLabel || maxLabel) && (
        <div className="flex justify-between text-[8px] text-parch/40 uppercase tracking-tighter mt-0.5">
          <span>{minLabel}</span>
          <span>{maxLabel}</span>
        </div>
      )}
    </div>
  );
}

function SettingsColor({ label, value, onChange }: { label: string, value: string, onChange: (v: string) => void }) {
  return (
    <div className="flex items-center justify-between p-2 bg-black/20 border border-active/10 rounded group hover:border-active/30 transition-all">
      <span className="text-[10px] text-parch/60 uppercase tracking-wider">{label}</span>
      <div className="flex items-center gap-2">
        <span className="font-mono text-[9px] text-active/40 group-hover:text-active/60">{value}</span>
        <input 
          type="color" 
          value={value} 
          onChange={(e) => onChange(e.target.value)}
          className="w-6 h-6 bg-transparent border-none cursor-pointer rounded overflow-hidden"
        />
      </div>
    </div>
  );
}

function SettingsToggle({ label, checked, onChange }: { label: string, checked?: boolean, onChange?: (val: boolean) => void, key?: React.Key }) {
  const [val, setVal] = useState(checked);
  
  useEffect(() => {
    setVal(checked);
  }, [checked]);

  const handleToggle = () => {
    const newVal = !val;
    setVal(newVal);
    if (onChange) onChange(newVal);
  };

  return (
    <div className="flex items-center gap-2 cursor-pointer group" onClick={handleToggle}>
      <div className={cn(
        "w-3.5 h-3.5 rounded-sm border flex items-center justify-center text-[8px] transition-all",
        val ? "bg-active/15 border-active text-active" : "bg-black/30 border-active/30 text-transparent"
      )}>
        {val && "✓"}
      </div>
      <span className="text-xs text-parch/60 group-hover:text-parch transition-colors">{label}</span>
    </div>
  );
}

function generateSettingsLua(settings: AddonSettings) {
  return `-- X-Plore Global Settings — Schema v1.0
XPlore_Settings = {
    stepDisplay = {
        numStepsShown       = ${settings.stepDisplay.numStepsShown},
        enableManualResizing = ${settings.stepDisplay.enableManualResizing},
        skipHearthstoneSteps = ${settings.stepDisplay.skipHearthstoneSteps},
        skipFlightPathDiscovery = ${settings.stepDisplay.skipFlightPathDiscovery},
        showTravelDirections = ${settings.stepDisplay.showTravelDirections},
        dungeons = {
            showStrategiesForAllRoles = ${settings.stepDisplay.dungeons.showStrategiesForAllRoles},
        },
        syncAndShare = {
            enableSyncAndShare = ${settings.stepDisplay.syncAndShare.enableSyncAndShare},
            syncPartyProgress = ${settings.stepDisplay.syncAndShare.syncPartyProgress},
        },
    },
    guideViewer = {
        enableViewer        = ${settings.guideViewer.enableViewer},
        lockViewer          = ${settings.guideViewer.lockViewer},
        hideExperienceBar   = ${settings.guideViewer.hideExperienceBar},
        viewerSkin          = "${settings.guideViewer.viewerSkin}",
        enableTransparency  = ${settings.guideViewer.enableTransparency},
        viewerOpacity       = ${settings.guideViewer.viewerOpacity},
        guideMenuOpacity    = ${settings.guideViewer.guideMenuOpacity},
        viewerSize          = ${settings.guideViewer.viewerSize},
        fontSize            = ${settings.guideViewer.fontSize},
        widgetsOpacity      = ${settings.guideViewer.widgetsOpacity},
        widgetsSize         = ${settings.guideViewer.widgetsSize},
        flipViewerUpsideDown = ${settings.guideViewer.flipViewerUpsideDown},
        hideInDungeonsAndRaids = ${settings.guideViewer.hideInDungeonsAndRaids},
        showAgainWhenLeaving = ${settings.guideViewer.showAgainWhenLeaving},
        hideDuringCombat    = ${settings.guideViewer.hideDuringCombat},
        hideActionBarDuringCombat = ${settings.guideViewer.hideActionBarDuringCombat},
        keepVisibleWithVendor = ${settings.guideViewer.keepVisibleWithVendor},
        showProgressBar     = ${settings.guideViewer.showProgressBar},
        showMinimapButton   = ${settings.guideViewer.showMinimapButton},
    },
    automation = {
        autoAcceptTurnInGuideQuests = ${settings.automation.autoAcceptTurnInGuideQuests},
        allQuests           = ${settings.automation.allQuests},
        autoSelectDialogOptions = ${settings.automation.autoSelectDialogOptions},
        autoTakeFlightPaths = ${settings.automation.autoTakeFlightPaths},
        autoBuyGuideItems   = ${settings.automation.autoBuyGuideItems},
        enableSellGraysButton = ${settings.automation.enableSellGraysButton},
        autoSellGrays       = ${settings.automation.autoSellGrays},
        autoRepairMode      = "${settings.automation.autoRepairMode}",
    },
    actionButton = {
        enabled             = ${settings.actionButton.enabled},
        expandingDirection  = "${settings.actionButton.expandingDirection}",
        scale               = ${settings.actionButton.scale},
        buttonTypes = {
            questActions    = ${settings.actionButton.buttonTypes.questActions},
            talkToNpc       = ${settings.actionButton.buttonTypes.talkToNpc},
            killEnemy       = ${settings.actionButton.buttonTypes.killEnemy},
            deleteCheapestItem = ${settings.actionButton.buttonTypes.deleteCheapestItem},
        },
        addRaidMarkers      = ${settings.actionButton.addRaidMarkers},
    },
    waypointArrow = {
        enabled             = ${settings.waypointArrow.enabled},
        locked              = ${settings.waypointArrow.locked},
        arrowSize           = ${settings.waypointArrow.arrowSize},
        arrowTextSize       = ${settings.waypointArrow.arrowTextSize},
        addOutline          = ${settings.waypointArrow.addOutline},
        arrowStyle          = "${settings.waypointArrow.arrowStyle}",
        unitOfMeasurement   = "${settings.waypointArrow.unitOfMeasurement}",
        enableTravelSystem  = ${settings.waypointArrow.enableTravelSystem},
        travelMethods = {
            direct          = ${settings.waypointArrow.travelMethods.direct},
            simple          = ${settings.waypointArrow.travelMethods.simple},
            advanced        = ${settings.waypointArrow.travelMethods.advanced},
            custom          = ${settings.waypointArrow.travelMethods.custom},
            preferFlightPaths = ${settings.waypointArrow.travelMethods.preferFlightPaths},
        },
    },
    maps = {
        enableAntTrails     = ${settings.maps.enableAntTrails},
        antTrailStyle       = "${settings.maps.antTrailStyle}",
        revealEntireMap     = ${settings.maps.revealEntireMap},
        showMapMarkers      = ${settings.maps.showMapMarkers},
        showPointsOfInterest = ${settings.maps.showPointsOfInterest},
        poiSize             = ${settings.maps.poiSize},
        enableIconTransparency = ${settings.maps.enableIconTransparency},
        poiTypes = {
            rareSpawns      = ${settings.maps.poiTypes.rareSpawns},
            treasures       = ${settings.maps.poiTypes.treasures},
        },
        poiDisplayMode      = "${settings.maps.poiDisplayMode}",
        enableWorldQuestPlanner = ${settings.maps.enableWorldQuestPlanner},
        prioritizeCurrentZone = ${settings.maps.prioritizeCurrentZone},
        loadWorldQuestGuides = ${settings.maps.loadWorldQuestGuides},
        worldQuestPlannerScale = ${settings.maps.worldQuestPlannerScale},
        highlightFlightPaths = ${settings.maps.highlightFlightPaths},
        enableDungeonMap    = ${settings.maps.enableDungeonMap},
        dungeonMapScale     = ${settings.maps.dungeonMapScale},
        dungeonMapOpacity   = ${settings.maps.dungeonMapOpacity},
        previewDuration     = "${settings.maps.previewDuration}",
        previewControl      = "${settings.maps.previewControl}",
    },
    gear = {
        enableGearAdvisor   = ${settings.gear.enableGearAdvisor},
        disableOnMaxLevel   = ${settings.gear.disableOnMaxLevel},
        showUpgradePopups   = ${settings.gear.showUpgradePopups},
        highlightQuestRewards = ${settings.gear.highlightQuestRewards},
        autoSelectQuestRewards = ${settings.gear.autoSelectQuestRewards},
        autoEquipUpgrades   = ${settings.gear.autoEquipUpgrades},
        doNotReplaceHeirlooms = ${settings.gear.doNotReplaceHeirlooms},
        enableItemScoreTooltips = ${settings.gear.enableItemScoreTooltips},
        enableGearFinder    = ${settings.gear.enableGearFinder},
        dungeonSources = {
            normal          = ${settings.gear.dungeonSources.normal},
            heroic          = ${settings.gear.dungeonSources.heroic},
            mythic          = ${settings.gear.dungeonSources.mythic},
            timewalking     = ${settings.gear.dungeonSources.timewalking},
            mythicPlus      = ${settings.gear.dungeonSources.mythicPlus},
        },
        raidSources = {
            raidFinder      = ${settings.gear.raidSources.raidFinder},
            normal          = ${settings.gear.raidSources.normal},
            heroic          = ${settings.gear.raidSources.heroic},
            mythic          = ${settings.gear.raidSources.mythic},
        },
        highlightUpgradesInBags = ${settings.gear.highlightUpgradesInBags},
        upgradeType         = "${settings.gear.upgradeType}",
        upgradeSlot         = "${settings.gear.upgradeSlot}",
        upgradeStyle        = "${settings.gear.upgradeStyle}",
        useHotkeyForReporting = ${settings.gear.useHotkeyForReporting},
        hotkey              = "${settings.gear.hotkey}",
        mouseButton         = "${settings.gear.mouseButton}",
    },
    goldGuide = {
        enabled             = ${settings.goldGuide.enabled},
        showInViewer        = ${settings.goldGuide.showInViewer},
        enableAuctionHouse  = ${settings.goldGuide.enableAuctionHouse},
        showFarmingRoutes   = ${settings.goldGuide.showFarmingRoutes},
    },
    notifications = {
        enabled             = ${settings.notifications.enabled},
        notificationSound   = "${settings.notifications.notificationSound}",
        showInChat          = ${settings.notifications.showInChat},
        showOnScreen        = ${settings.notifications.showOnScreen},
    },
    extras = {
        enableMountCollector = ${settings.extras.enableMountCollector},
        enablePetCollector  = ${settings.extras.enablePetCollector},
        enableAchievementHunter = ${settings.extras.enableAchievementHunter},
    },
    theme = {
        active      = "${settings.theme.colors.active}",
        complete    = "${settings.theme.colors.complete}",
        red         = "${settings.theme.colors.red}",
        parch       = "${settings.theme.colors.parch}",
        blueDk      = "${settings.theme.colors.blueDk}",
        blueMd      = "${settings.theme.colors.blueMd}",
        blueLt      = "${settings.theme.colors.blueLt}",
        gold        = "${settings.theme.colors.gold}",
        goldDk      = "${settings.theme.colors.goldDk}",
    },
    profile = {
        activeProfile       = "${settings.profile.activeProfile}",
    }
}

XPlore_Core:ApplySettings(XPlore_Settings)`;
}

function getStepIcon(type: GuideStep['type'], size = 12) {
  switch (type) {
    case 'ACCEPT_QUEST': return <AlertCircle size={size} />;
    case 'TURNIN_QUEST': return <CheckSquare size={size} />;
    case 'KILL': return <Sword size={size} />;
    case 'COLLECT': return <Briefcase size={size} />;
    case 'TRAVEL': return <Navigation size={size} />;
    case 'INTERACT': return <Zap size={size} />;
    case 'EXPLORE': return <Compass size={size} />;
    case 'BOSS': return <Skull size={size} />;
    case 'NOTE': return <ScrollText size={size} />;
    default: return <Minus size={size} />;
  }
}

function getCategoryIcon(cat: Guide['category']) {
  switch (cat) {
    case 'LEVELING': return <div className="w-4 h-4 bg-active/20 rounded flex items-center justify-center text-[8px] font-bold text-active">XP</div>;
    case 'DUNGEON': return <Skull size={14} />;
    case 'RAID': return <Skull size={14} />;
    case 'ACHIEVEMENT': return <Trophy size={14} />;
    case 'PROFESSION': return <Hammer size={14} />;
    case 'REPUTATION': return <Heart size={14} />;
    case 'EXPLORATION': return <Compass size={14} />;
    case 'DAILIES': return <Info size={14} />;
    case 'EVENTS': return <Calendar size={14} />;
    case 'GOLD': return <Coins size={14} />;
    case 'PETS_MOUNTS': return <PawPrint size={14} />;
    case 'TITLES': return <Award size={14} />;
    case 'FAVORITES': return <Star size={14} />;
    default: return <Compass size={14} />;
  }
}

function generateLua(guide: Guide) {
  return `-- X-Plore Guide Definition — Schema v1.0
local guide = {
    id          = "${guide.id}",
    name        = "${guide.name}",
    category    = "${guide.category}",
    expansion   = "${guide.expansion}",
    faction     = "${guide.faction}",
    minLevel    = ${guide.minLevel},
    maxLevel    = ${guide.maxLevel},
    revision    = 1,

    steps = {
${guide.steps.map((step, i) => `        [${i + 1}] = {
            id       = "${step.id}",
            type     = "${step.type}",
            title    = "${step.title}",
            ${step.questId ? `questID  = ${step.questId},` : ''}
            ${step.npcId ? `npcID    = ${step.npcId},` : ''}
            ${step.zoneId ? `zoneID   = ${step.zoneId},` : ''}
            ${step.coords ? `coords   = { x = ${step.coords.x}, y = ${step.coords.y} },` : ''}
            optional = ${step.optional || false},
        },`).join('\n')}
    }
}

XPlore_CMS:RegisterGuide(guide)`;
}
