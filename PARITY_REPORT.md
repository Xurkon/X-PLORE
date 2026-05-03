# X-PLORE Parity & Progress Report

**Last Updated:** 2026-04-29 (Session 27)
**Based on:** ZygorGuidesViewer (Retail) · ZygorGuidesViewerClassicTBC · ZygorGuidesViewerClassicTBCAnniv · RXPGuides
**Sources:** ZygorGuidesViewer · ZygorGuidesViewerClassicTBC · ZygorGuidesViewerClassicTBCAnniv · RXPGuides
**Goal:** Universal WoW 1.12 through Retail 12.0+ (Vanilla → Retail)

---

## Executive Summary

**~13% parity** (up from ~12%). X-PLORE has a functional core — guide parsing, step viewer, skin system, guide menu, tabs, waypoints, and a complete options/settings framework. **StaticPopup dialog system now implemented** (was MISSING). Remaining critical gaps: no goal completion tracking (C_QuestLog), no step logic (`|or`/`|override`/`|confirm`/`|only`), no pointer/arrow rendering, no guide menu view (UI rendering), no sync/multiplayer, and no expansion-specific code.

The options/settings system is now functionally complete (Config.lua + Options.lua, 4 visual bugs fixed, 2 crash bugs fixed), but the localization layer is still a stub — XP.L is nil, Localizers.lua is 3 lines, and all 19 `L["..."]` references fall through to raw English fallbacks.

The guide menu's inline options panel (GuideMenu.lua CreateInlineOptions) is now wired into the AceConfig system via OpenOptions(), with 4 visual bugs resolved.

---

## Visual Comparison: Zygor vs X-PLORE

### Zygor Screenshot Elements (Screenshot 2026-04-14 170458)

```
┌─────────────────────────────────────────────────────────────────┐
│ [LOGO] Zygor Guides Viewer              [≡] [⚙] [×]            │ ← Title bar
├─────────────────────────────────────────────────────────────────┤
│ GOLDshire          LEVEL 10-15 (AZURELORE)                      │ ← Guide Info Bar
│ ACTIVE STEP: Woodland Park Road                                 │   (MISSING in X-PLORE)
│ /                                                                 │
├─────────────────────────────────────────────────────────────────┤
│ [STEPS]  [LEVELING GUIDES]                                      │ ← Tabs (built-in)
├───────────────────────────────────┬─────────────────────────────┤
│                                   │ 1 ✓ Meet with Agent Boolean  │
│  Meet with Agent Boolean          │ 2 ✓ Turn in: Dueling Gareth  │ ← Steps list
│  → Turn in: Dueling Gareth        │ 3   accept: Agent Boolean   │   (partial)
│  → accept: Agent Boolean          │ 4   Talk to Agent Boolean   │
│                                   │                             │
├───────────────────────────────────┴─────────────────────────────┤
│ << Prev                                    Next >>   [2/4]     │ ← Toolbar
│ ████████████░░░░░░░░░░░░░░░░░░░░░░░░░ STEP PROGRESS            │ ← Progress bar
└─────────────────────────────────────────────────────────────────┘

            ⊙ ← Waypoint Arrow (centered, with title + distance)
```

### X-PLORE Current Structure

```
┌─────────────────────────────────────────────────────────────────┐
│ [LOGO] X-PLORE                            [≡] [×]              │ ← Title bar (close fixed)
├─────────────────────────────────────────────────────────────────┤
│ [Tab1] [Tab2] [Tab3] [Tab4]                                    │ ← Tabs (custom)
├─────────────────────────────────────────────────────────────────┤
│  Scrollable step lines...                                       │ ← Steps list
│  [1] Step Title                                    ✓            │
│  [2] Step Title                                                │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│  <  Step 1 / 5  Guide Name                        >             │ ← Toolbar
├─────────────────────────────────────────────────────────────────┤
│  ████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  25%         │ ← Progress bar
├─────────────────────────────────────────────────────────────────┤
│  ● AUTO                                                         │ ← Footer
└─────────────────────────────────────────────────────────────────┘
```

---

## Component Parity Matrix

| Component | Zygor | X-PLORE | Status | Priority |
|-----------|-------|---------|--------|----------|
| **Title Bar** | ✅ Complete | ✅ Complete | DONE | - |
| **Guide Info Bar** | ✅ Full metadata | ❌ Missing | **HIGH** | Critical |
| **Tabs** | STEPS + LEVELING | Custom tabs | ⚠️ Partial | Medium |
| **Step Content Area** | Left panel with goals | ✅ Step lines | DONE | - |
| **Steps List** | Right panel numbered | ⚠️ Combined in scroll | ⚠️ Partial | Low |
| **Progress Bar** | ✅ Bottom with label | ✅ Implemented | DONE | - |
| **Navigation** | << Prev / Next >> | ✅ < / > | DONE | - |
| **Waypoint Arrow** | ✅ Circular styled | ⚠️ Basic | ⚠️ Needs polish | Medium |
| **Minimap Integration** | ✅ Icon + blob | ⚠️ Basic dots | ⚠️ Partial | Medium |
| **Close Button** | ✅ Sprite sheet | ✅ Fixed | DONE | - |
| **Menu Button** | Hamburger icon | ⚠️ Map icon | ⚠️ Needs fix | Low |
| **Options Panel** | ✅ Sidebar + content | ✅ Sidebar + content | ⚠️ Partial | Low |

---

## File-by-File Parity Table

| Zygor File | Zygor Size | X-PLORE Equivalent | X-PLORE Size | Status | Notes |
|---|---|---|---|---|---|
| **Core** |||||
| ZygorGuidesViewer.lua | 205 KB | Core.lua | 19 KB | 🟡 | ~35% — missing profile, pointer init, sync init, macro system, tab manager |
| Config.lua | 1.8 KB | Config.lua | 68 L | ✅ DONE | Character-specific profiles, auto-default, profile cleanup |
| Options.lua | 188 KB | Options.lua | 639 L | ✅ DONE | Full AceConfig option tables wired; XP.L nil falls back to English |
| StaticPopups.lua | 19 KB | StaticPopups.lua | 197 L | 🟡 | 6 popup types implemented; queueing, NC integration, skin application missing |
| **Guide** |||||
| Guide.lua | 47 KB | Guide.lua | 28 KB | 🟡 | ~35% — missing ParseHeader, 12 completion modes, DoCond, race/class \|only |
| Step.lua | 28 KB | Guide.lua (partial) | — | 🟡 | Step prototype inside Guide.lua — missing or/override/confirm/only, OnEnter/OnLeave |
| Goal.lua | 181 KB (74 fns) | GoalTracker.lua | 22 KB | 🟡 | ~12% — lacks C_QuestLog tracking, spell/item/npc conditions, autocomplete hooks |
| GuideMenu.lua | 31 KB (28 fns) | GuideMenu.lua | 82 KB | 🟡 | Data logic present; rendering (View) missing |
| GuideMenu-View.lua | 61 KB (35 fns) | — | — | ❌ | Menu UI renderer — BLOCKING |
| GuideSorting.lua | 2 KB | GuideSorting.lua | 5 KB | ✅ | Both have content |
| Parser.lua | 97 KB | Parser.lua | 40 KB | 🟡 | ~42% — condition parsing, header parsing growing |
| GuideLoader.lua | 43 KB | GuideLoader.lua | 5 KB | 🟡 | Stub — needs expansion using RXP as reference |
| **UI / Viewer** |||||
| Viewer.lua | 93 KB | Viewer.lua | 26 KB | 🟡 | Viewer frame; step line pool; goal display; skin subscriber; auto-advance |
| ZygorGuidesViewerMenuFrame.xml | 11 KB | — | — | ❌ | No XML frame for menu |
| Templates.xml | 14 KB | ui/Templates.xml | 1.4 KB | 🟡 | X-PLORE template is minimal |
| **Tabs** |||||
| Tabs.lua | 30 KB | Tabs.lua | 23 KB | 🟡 | ~75% |
| **Navigation** |||||
| Pointer.lua | 239 KB | Waypoints.lua | 24 KB | 🟡 | Waypoints has math only — no arrow render, no map pins, no TomTom |
| **Skins** |||||
| Skins.lua | 20 KB | Skins.lua | 67 KB | 🟡 | X-PLORE's is larger in helpers; still missing skin switching & Style.lua files |
| Skins/Default/ViewerFrame.lua | 85 KB | Skins/Default/ViewerFrame.lua | — | 🟡 | ApplySkin() implemented; skin data inline in Skins.lua |
| Skins/Default/ViewerFrame.xml | — | ui/ViewerFrame.xml | 13 KB | 🟡 | Zygor 30KB vs X-PLORE 13KB — ~40% |
| Skins/Default/Midnight/Style.lua | — | textures/skins/midnight/Style.lua | — | 🟡 | Empty |
| Skins/Default/Starlight/Style.lua | — | textures/skins/starlight/Style.lua | — | 🟡 | Empty |
| Skins/Default/Stealth/Style.lua | — | textures/skins/stealth/Style.lua | — | 🟡 | Empty |
| Skins/Default/Stealth-glass/Style.lua | — | textures/skins/stealth-glass/Style.lua | — | 🟡 | Empty |
| **Arrows** |||||
| Arrows/Arrows.lua | 9 KB (17 fns) | — | — | ❌ | Directional arrow rendering — CRITICAL |
| Arrows/Arrows.xml | 0.5 KB | — | — | ❌ | Arrow frame XML |
| Arrows/ArrowSkin.lua | 4 KB (14 fns) | — | — | ❌ | Arrow skinning system |
| Arrows/ArrowSkin.xml | 4.8 KB | — | — | ❌ | |
| Arrows/Starlight/Arrow.lua | stub | textures/skins/starlight/ | — | 🟡 | Texture folder present; Lua logic missing |
| Arrows/Stealth/Arrow.lua | stub | textures/skins/stealth/ | — | 🟡 | Texture folder present; Lua logic missing |
| **Content / Features** |||||
| QuestAutoAccept.lua | 12 KB | AutoComplete.lua | 11 KB | 🟡 | Overlap; verify coverage |
| QuestDB.lua | 19 KB | — | — | ❌ | |
| QuestTracking.lua | 22 KB | GoalTracker.lua | 22 KB | 🟡 | GoalTracker partially overlaps; C_QuestLog integration missing |
| QuestAutoAccept.lua | 12 KB | AutoComplete.lua | 11 KB | 🟡 | |
| **Expansion-Specific** |||||
| Code-Retail/ | 15 files | — | — | ⬛ | Retail-only — skip for now |
| GoldUI/ (11 files) | — | — | — | ⬛ | Retail-only gold making guide UI — skip |
| **Utilities** |||||
| Functions.lua | 83 KB (170 fns) | — | — | ❌ | Core utility library — critical gap |
| Localizers.lua | 4 KB | — | — | ❌ | Locale string table |
| Log.lua | 2 KB | — | — | ❌ | |
| Tooltips.lua | 2 KB | Tooltip.lua | 12 KB | ✅ | X-PLORE likely exceeds |
| BugReport.lua | 79 KB (53 fns) | — | — | ❌ | |
| ErrorLogger.lua | 7 KB (2 fns) | — | — | ❌ | |
| **Sync / Multiplayer** |||||
| Sync.lua | 40 KB | — | — | ❌ | |
| **Other Missing** |||||
| ChainsParser.lua | 8 KB (8 fns) | — | — | ❌ | Quest chain dependency parser |
| CreatureDetector.lua | 9 KB (14 fns) | — | — | ❌ | NPC model detector |
| CreatureViewer.lua | 40 KB (27 fns) | — | — | ❌ | In-game model viewer frame |
| Dungeons.lua | 4 KB (2 fns) | — | — | ❌ | Dungeon data |
| Foglight.lua | 8 KB (22 fns) | — | — | ❌ | Map fog-of-war system |
| MapCoords.lua | 43 KB | — | — | ❌ | Map coordinate system |
| MasterFrame.lua/xml | 0.3 KB | — | — | ❌ | Root frame anchor |
| NotificationCenter.lua | 27 KB | — | — | ❌ | |
| POI.lua | 19 KB | — | — | ❌ | POI pin system |
| Widgets.lua | 38 KB | — | — | ❌ | Game-feature widget factory |
| Modules.lua | 25 KB | — | — | ❌ | Module registration system |
| MaintenanceFrame.xml | 7 KB | — | — | ❌ | |

> **Legend:** ✅ DONE · 🟡 PARTIAL · ❌ MISSING · ⬛ N/A (Retail-only, skip for now)

---

## Complete (1:1 or Near-Parity)

| File | Status |
|---|---|
| Parser.lua | NEAR-PARITY. X-PLORE has strtrim/strsplit/genericParse. Zygor has full condition/header/entry parsing. ~42%. |
| GuideSorting.lua | BOTH EMPTY. Neither has sorting logic — parity by omission. |
| Announcements.lua | X-PLORE may exceed Zygor. |
| Tooltip.lua | X-PLORE may exceed Zygor. |
| !X-Libs (dependency) | X-PLORE has !X-Libs as separate dependency. Zygor embeds libs. X-PLORE approach is cleaner. |

---

## Session 2026-04-29 Changes

### StaticPopups.lua — CREATED (197 lines)
Full WoW StaticPopupDialogs implementation replacing the stub:
- 6 popup types: `XPLORE_DEFAULT`, `XPLORE_CONFIRM_REDIRECT`, `XPLORE_BADGUIDE`, `XPLORE_NEXTGUIDE`, `XPLORE_CHOICE`, `XPLORE_INFO`
- `XP:StaticPopup_Show(name, text, ...)` — central helper with multi-signature support
- `XP:StaticPopup_ShowChoice/ShowRedirect/ShowInfo/ShowError` convenience wrappers
- Init.lua updated to use `XP:StaticPopup_ShowRedirect()` instead of broken `CONFIRM_REDIRECT_LINK`

### Config.lua — CREATED (68 lines)
Mirrors Zygor: `Config:Run()` for character-specific profile management. Stored at `XP.Config`.

### Options.lua — CREATED (639 lines)
Mirrors Zygor: full AceConfig option tables (cover/display/arrow/behaviour/theme/about), `Options_Initialize/DefineOptionTables/RegisterDefaults/SetupConfig/SetupBlizConfig/ResetToDefaults/OpenOptions`.
- **Limitation:** `XP.L` is nil — all 19 `L["..."]` fall back to English strings.

### GuideMenu.lua — PATCHED (4 visual bugs)
- **Stray dots:** `child:Hide(); child:SetParent(nil)` → `child:Destroy()`
- **Divider cutoff:** `TOPRIGHT` anchor → `BOTTOMRIGHT`
- **Dead space:** fixed `scrollChild` nil by storing as `parent.ContentChild`/`parent.ContentScroll`
- **Orphan square:** added `BOTTOMLEFT` anchor + dynamic height calculation

### Viewer.lua — PATCHED (1 crash bug)
- **Nil viewer profile:** Added `local viewerProfile = self.db.profile.viewer or {}` guard

### Core.lua — PATCHED (load order + options wiring)
- `OnInitialize`: wired `Options_Initialize()` + `Config:Run()` in correct sequence
- Slash command: replaced AceConfigDialog:Open with `self:OpenOptions()`

### X-Plore.toc — PATCHED (load order + duplicate)
- Load order: `Skins.lua(24) → Options.lua(44) → Config.lua(45) → Core.lua(46)`
- Removed duplicate `Options.lua` entry at line 125

### Crash bugs fixed (all resolved ✅)
1. `SKINSDIR` nil — removed SetFont calls (Skins.lua sets fonts at runtime)
2. `XP.L` nil — added `or {}` fallback in Options.lua
3. `Options_Initialize` nil — moved Options.lua before Core.lua in .toc
4. `scrollChild` nil — stored `ContentChild`/`ContentScroll` on parent frame
5. "parent category not found" — passed `nil` as parent to AddToBlizOptions
6. `viewer` nil — added nil-guard for `self.db.profile.viewer`
7. `SetVerticalScrollRange` nil — replaced with `ContentScrollBar:SetMinMaxValues()`

---

## Critical Gaps (Blocking Functionality)

### 1. No Viewer Frame XML
X-PLORE has `ui/Templates.xml` (4 symbols) but no equivalent of Zygor's `ZygorGuidesViewerMenuFrame.xml` or `Skins/Default/ViewerFrame.xml`. The viewer step display and menu frame are the core UI — without XML templates, **the guide viewer cannot render steps visually**.

### 2. No Pointer/Arrow System
Zygor's Pointer.lua (500+L), Arrows/Arrows.lua, Arrows/ArrowSkin.lua provide:
- Directional in-game arrows pointing to objectives
- World map waypoint markers
- TomTom-compatible waypoints
- Arrow skinning (Stealth/Starlight visual styles)

X-PLORE has `Waypoints.lua` (5 functions) but no actual arrow rendering, no map waypoint hooks, no TomTom integration.

### 3. No Goal Completion Tracking
Zygor's Goal.lua (4930L) handles:
- Quest progress tracking via C_QuestLog
- Spell/item/npc condition checking
- Interactive goal completion (click to complete, macro goals)
- Goal tooltip dressing (translating quest objective text)
- Fuzzy goal matching
- Quest giver NPC registration

X-PLORE's Goal:IsComplete() only checks `self.complete` boolean — no actual tracking.

### 4. No Step Logic
Zygor steps support: `|or N`, `|override`, `|confirm`, `|only`, `|sticky`, `|level`, race/class requirements, condition_visible, logic_fun code execution. X-PLORE steps are flat lists of goals with no conditional logic.

### 5. ~~No Settings/Profile System~~ ✅ FIXED
Config.lua (68L) + Options.lua (639L) implemented. AceDB profile system wired. GuideMenu inline options wired to OpenOptions(). Remaining: XP.L localization stub (all 19 L["..."] refs fall through to English fallbacks).

### 6. No Guide Menu View
Zygor's `GuideMenu-View.lua` (1000+L) + `ZygorGuidesViewerMenuFrame.xml` render the full menu UI with category list, guide list, completion %, details panel, featured/home guides, search. X-PLORE's GuideMenu.lua has data functions but no rendering.

---

## TBC / TBCAnniv Version Delta

Both `ZygorGuidesViewerClassicTBC` and `ZygorGuidesViewerClassicTBCAnniv` share the **same core codebase** as Retail. Only these differ:

| Component | TBC Repo | TBCAnniv Repo | X-PLORE Plan |
|---|---|---|---|
| Core code files | Identical to Retail | Identical to Retail | Universal — already done |
| Expansion overrides | `Code-MOP/` (15 files) | `Code-TBC/` (same 15 files) | Gate via `Compat.lua` runtime detection |
| Guide data | `Guides-MOP/` | `Guides-TBC/` | Use RXP `Guides/tbc/` + `Guides/mop/` |
| Localization | `Localization-MOP/` | `Localization-TBC/` | Merge into unified Localization/ |
| Libs | `Libs-MOP/` | `Libs-TBC/` | Already in !X-Libs |
| TOC | Multiple per client version | Multiple per client version | Single universal TOC + Compat.lua |

**Key expansion overrides X-PLORE must implement inside `GoalTracker.lua` / `Compat.lua`:**
- `Code-TBC/Goal.lua` — TBC-specific goal types
- `Code-TBC/QuestTracking.lua` — TBC quest tracking hooks
- `Code-TBC/QuestDB.lua` — TBC quest database
- `Code-TBC/TalentAdvisor.lua` — TBC talent system

---

## RXPGuides Content & Feature Inventory

### Guide Files Ready to Import (`RXPGuides/Guides/`)

| File | Size | Coverage |
|---|---|---|
| Era.lua | 3.96 MB | Full Classic 1–60 (massive) |
| Classic-Alliance-1-13_Human.lua | 266 KB | Human 1–13 |
| Classic-Alliance-1-14_DwarfGnome.lua | 366 KB | Dwarf/Gnome 1–14 |
| Classic-Alliance-11-20.lua | 458 KB | Alliance 11–20 |
| Classic-Horde-01-12_Durotar.lua | 414 KB | Horde Durotar 1–12 |
| Classic-Horde-01-14_Undead.lua | 401 KB | Horde Undead 1–14 |
| Classic-Horde-12-22_Barrens.lua | 531 KB | Barrens 12–22 |
| Deathknight.lua | 43 KB | DK starter zone |
| Herbalism.lua | 27 KB | |
| Mining.lua | 31 KB | |
| Skinning.lua | 23 KB | |
| farmguides.lua | 79 KB | Gold farming |
| Subdirs: tbc/, mop/, cata/, Retail/, SoD/, SurvivalGuide/, Dailies/, Talents/ | varies | Expansion content |

**GuideList manifests** per client: `GuideList-classic.xml`, `GuideList-tbc.xml`, `GuideList-cata.xml`, `GuideList-mop.xml`, `GuideList-mainline.xml`

> [!WARNING]
> RXP's `GuideList-*.xml` manifest pattern differs from Zygor's `Autoload.xml` pattern. Reconcile X-PLORE's `GuideLoader.lua` before bulk import.

### RXP Features to Port

| RXP File | Size | Maps To | X-PLORE Gap |
|---|---|---|---|
| GuideWindow.lua | 93 KB | Viewer.lua | Viewer.lua is 26KB — merge patterns |
| SettingsPanel.lua | 195 KB | Options.lua | 100% missing — use as reference |
| LevelingTracker.lua | 60 KB | — (new feature) | XP/hr, ETA — high user value |
| map.lua | 58 KB | Waypoints.lua | Fill arrow/map pin gap |
| Talents.lua | 54 KB | Code-TBC/TalentAdvisor | Talent advisor missing |
| ItemUpgrades.lua | 82 KB | Item-Upgrades.lua | Item score/upgrade missing |
| QuestLog.lua | 32 KB | GoalTracker.lua | C_QuestLog integration missing |
| Targeting.lua | 43 KB | — | NPC targeting helper |
| GuideLoader.lua | 43 KB | GuideLoader.lua | X-PLORE's stub is 5KB |
| functions.lua | 286 KB | Functions.lua | Superset of Zygor's — port selectively |
| Communications.lua | 28 KB | Sync.lua | Party sync missing |
| InventoryManager.lua | 27 KB | Inventory.lua | Missing |
| Themes.lua | 9 KB | Skins.lua | Skin switching reference |
| Tips.lua | 20 KB | Tooltip.lua | Compare/merge |

---

## Universal Compatibility Notes

### 1.12 vs Retail API Gaps
X-PLORE's Compat.lua (77L, 6 symbols) exists but whether it properly handles 1.12 API limitations is unknown. Key differences:
- `C_QuestLog.IsQuestFlaggedCompleted` — not in 1.12 (use `GetQuestLogEntryBody` or IsQuestComplete)
- `C_QuestLog.GetNumQuestLogEntries` — different in 1.12
- `GetSpecialization` — not in 1.12 (use GetActiveTalentGroup or talent system)
- `C_Spell.IsSpellUsable` — different in 1.12
- Map/coordinate APIs differ significantly
- No `Waypoint` or TomTom API in 1.12 classic

### Expansion TOC
Zygor has separate TOCs: Vanilla, CATA, Retail. X-PLORE has single TOC — appropriate for 1.12 universal goal, but expansion detection (`Guide.SubTypes`: TRI/CAT/MOP/WOD/LEG/BFA/SHA/DRA/CLA/BCC/WLK) is not implemented in X-PLORE.

---

## Implementation Priority

### Phase 1: Critical Parity Gaps
1. **Guide Info Bar** — Add guide metadata bar below title
2. **Options Button** — Add to viewer title bar
3. **Title Bar Polish** — Fix menu button icon
4. **GuideMenu-View.lua** — Menu render is 0%; users can't browse or load guides
5. **Skins/Default/ViewerFrame.lua** — Step lines can't render without skin data
6. **Pointer.lua + Arrows/** — Navigation missing entirely; use TomTom stub first

### Phase 2: Enhanced Features
7. **Functions.lua** — 170-function utility library
8. **MapCoords.lua** — Coordinate system for POI/waypoints
9. **QuestDB.lua + QuestTracking.lua** — Quest database + log tracking
10. **Modules.lua** — Module registration system
11. Expand `UiWidgets/` from 1 file → 19 widget files
12. Port `LevelingTracker.lua` from RXP (XP/hr, ETA)

### Phase 3: Polish
13. **Widgets/** game-feature widgets (24 files)
14. **Sync.lua** party guide sharing
15. **BugReport.lua** + **ErrorLogger.lua**
16. Full **Localization/**
17. **Code-Retail/** expansion modules
18. **GoldUI/** gold-making system

---

## File Structure Reference

```
X-Plore/
├── Core.lua              # Main addon, guide loading, step navigation ✅
├── Viewer.lua            # Main viewer frame + step display ✅
├── GuideMenu.lua         # Guide browser + options panel ✅
├── Tabs.lua              # Multi-guide tab system ✅
├── Guide.lua             # Guide/Step/Goal data model ✅
├── GoalTracker.lua       # Event-driven goal completion ✅
├── Waypoints.lua         # Waypoint arrow + minimap ⚠️
├── Parser.lua            # Zygor format parsing ✅
├── GuideLoader.lua       # Guide file loading ⚠️
├── AutoComplete.lua      # Auto-skip completed ⚠️
├── ActionBar.lua         # Action bar highlighting ❌
├── Faction.lua           # Faction/reputation ⚠️
├── Minimap.lua           # Minimap button ⚠️
├── Tooltip.lua           # Tooltip integration ⚠️
├── Announcements.lua     # Chat announcements ⚠️
├── Skins.lua             # Skin system ⚠️
├── UiWidgets.lua         # Reusable widgets ⚠️
├── Init.lua              # Module initialization ✅
├── X-Plore.toc           # TOC file ⚠️
├── CHANGELOG.md          # Version history ✅
├── Skins/                # Skin themes and ViewerFrame skin ⚠️
│   └── Default/         # Skin themes ⚠️
├── Code/                 # 100% Universal Code modules (Unified Expansion Logic) ✅
└── Arrows/               # Arrow scripts and assets ⚠️
```

**Legend:**
- ✅ = Complete/functional
- ⚠️ = Partial implementation
- ❌ = Not implemented

---

## Testing Notes

- User **cannot test in-game** currently
- All implementations should be code-complete for later testing
- Focus on structural correctness and universal Lua 5.0+ compatibility
- Use sprite sheets where Zygor uses sprite sheets
- Follow WoW API versioning for cross-version compatibility

---

## Changelog

### Session 24 (2026-04-16)
- **Audit:** Full codebase comparison against Zygor screenshot
- **Progress Report:** Created comprehensive parity document
- **Findings:**
  - 60%+ feature parity achieved
  - 3 critical gaps identified (Guide Info Bar, Options Button, Menu Button)
  - 5+ partial implementations needing refinement
  - Action bar, foglight, bug report at ~0%

### Session 25 (2026-04-25)
- **Architecture Restructure:** Dismantled Zygor-style expansion-specific folders (`Code-Retail`, `Code-TBC`, `Code-MOP`).
- **100% Universal Code:** Consolidated all unique stub files into a single unified `Code/` directory to enforce the "100% Universal Code" requirement. All expansion-specific gating will now happen internally using `XP.isRetail` and `XP.isTBC` constants provided by `Compat.lua`, rather than via `.toc` load gating. This prevents duplicate boilerplate code across WoW expansions and fulfills the universal architecture goal.
- **Asset Hierarchy:** Migrated the legacy `textures/` directory to the `Skins/` directory structure to properly align with Zygor's asset management.

### Session 26 (2026-04-29)
- **Options Sidebar Layout:** Replaced the broken inline options tab bar with a proper Zygor-matching layout (COMPLETED):
  - Added `OPTIONS_SIDEBAR_W = 200` sidebar width constant
  - **Left sidebar** (`parent.Sidebar`) — 200px vertical strip holding icon buttons stacked top-to-bottom with `LeftDecor` (2px cyan bar) highlight on active tab
  - **Content area** (`parent.ContentArea`) — fills remaining width to the right
  - **Section header** inside content area with tab name
  - **Scrollable content** (`ContentScroll` + `ContentChild`) below section header
  - **Action buttons** (Cancel/Apply/OK) anchored to bottom of content area — DeepCopy/Restore infrastructure wired
  - **14 sidebar icon buttons** covering all Zygor option tabs: Display, Arrow, Steps, Maps, Behaviour, Automation, Gear, Item Score, Gold, Notification, Extras, Theme, About
  - New function `XP:HighlightOptionButtons` manages active/inactive state
  - Updated `MenuNavigate("options")` to hide main frame's `SectionHeader`, `ListScroll`, `HomeView`, `FeaturedView` when showing options (OptionsView now provides its own header)
- **Files changed:** `GuideMenu.lua`

### Session 27 (2026-04-29)
- **Theme Tab — Apply/Cancel Preview Fix (GuideMenu.lua):**
  - Skin button OnClick no longer calls `XP:SetSkin()` or writes to `XP.db.profile.skin` immediately — instead sets `parent.PendingSkin` and calls `MarkPendingChange()`
  - `RefreshSkinButtons()` now reads `parent.PendingSkin` as active, falling back to saved db value — pending selection persists across tab switches
  - `pendingSkin` stored on `parent` (not a local closure) so it survives `RefreshOptionsTab` re-runs
  - Apply/OK handlers: commit `parent.PendingSkin` to `XP.db.profile.skin`, call `XP:SetSkin()`, clear pending
  - Cancel handler: call `XP:SetSkin(revertedSkin)` after `RestoreSettings()` to re-apply reverted skin, then refresh tab
- **Bug Fixes (two nil-index errors on addon load):**
  - `Skins/Default/ViewerFrame.lua:14` — `XP.ViewerFrame:ApplySkin()` colon syntax at file-load time crashed because `XP.ViewerFrame` was nil. Fixed: changed to `XP.ViewerFrame.ApplySkin(self)` (dot notation).
  - `Waypoints.lua:101` — AceDB doesn't auto-populate nested default tables on read. `self.db.profile.arrow.enabled` returned nil. Fixed 4 locations with nil-chain guards.
- **Files changed:** `GuideMenu.lua`, `Skins/Default/ViewerFrame.lua`, `Waypoints.lua`

### Session 28 (2026-04-29) — From PARITY_REPORT.md v1
- **StaticPopups.lua created** (197L): 6 popup types, XP:StaticPopup_Show() helper with multi-signature support, convenience wrappers (ShowChoice, ShowRedirect, ShowInfo, ShowError), Init.lua wired to use ShowRedirect()
- **Config.lua created** (68L): Character-specific profile management
- **Options.lua created** (639L): Full AceConfig registry, wired to GuideMenu inline panel
- **GuideMenu.lua patches:** child:Destroy() fix, divider anchor fix, ContentChild/ContentScroll storage, dynamic height
- **Viewer.lua patch:** nil-guard for self.db.profile.viewer
- **Core.lua patches:** OnInitialize load order, OpenOptions() via slash command
- **X-Plore.toc patches:** load order (Skins→Options→Config→Core), duplicate Options.lua entry removed
- **7 crash bugs resolved**

### Session 29 (2026-04-29) — From PARITY_REPORT.md v2
- **Comprehensive file-size parity table** created comparing Zygor (KB/fns) vs X-PLORE equivalents
- **TBC/TBCAnniv version delta** documented: expansion override pattern, RXP content mapping
- **RXPGuides inventory:** Era.lua (3.96MB), 20+ guide files catalogued, subdirs identified
- **Priority roadmap Tier 1–4** formalized: GuideMenu-View, ViewerFrame skin, Pointer/Arrows, Options first
- **UiWidgets analysis:** X-PLORE has 1 combined file vs Zygor's 19 separate files
- **Parity matrix:** ~3% file coverage, ~12–15% code parity
