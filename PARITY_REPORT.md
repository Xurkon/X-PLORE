# X-PLORE Parity & Progress Report

**Last Updated:** 2026-05-04 (Session 41)  
**Based on:** ZygorGuidesViewer screenshot analysis + codebase audit  
**Goal:** 1:1 parity with ZygorGuidesViewer for all WoW versions (Retail, WotLK, TBC, Classic)

---

## Visual Comparison: Zygor vs X-PLORE

### Zygor Screenshot Elements (Screenshot 2026-04-14 170458)

```
┌─────────────────────────────────────────────────────────────────┐
│ [LOGO] Zygor Guides Viewer              [≡] [⚙] [×]            │ ← Title bar
├─────────────────────────────────────────────────────────────────┤
│ GOLDshire          LEVEL 10-15 (AZURELORE)                      │ ← Guide Info Bar
│ ACTIVE STEP: Woodland Park Road                                 │   ✅ NOW MATCHED
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
│ GOLDshire           Lv 10-15          Meet with Agent Boolean  │ ← Guide Info Bar
├─────────────────────────────────────────────────────────────────┤   ✅ NOW IMPLEMENTED
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
| **Guide Info Bar** | ✅ Full metadata | ✅ Implemented | **DONE** | - |
| **Guide Info Bar: Name** | ✅ | ✅ `guide.titleShort` | DONE | - |
| **Guide Info Bar: Level Range** | ✅ | ✅ `Lv X-Y` | DONE | - |
| **Guide Info Bar: Active Step** | ✅ | ✅ `step:GetTitle()` | DONE | - |
| **Real-Time Settings (no Apply/Cancel)** | ✅ | ✅ | **DONE** | - |
| **Tabs** | STEPS + LEVELING | Custom tabs | ⚠️ Partial | Low |
| **Step Content Area** | Left panel with goals | ✅ Step lines | DONE | - |
| **Steps List** | Right panel numbered | ⚠️ Combined in scroll | ⚠️ Partial | Low |
| **Progress Bar** | ✅ Bottom with label | ✅ Implemented | DONE | - |
| **Navigation** | << Prev / Next >> | ✅ < / > | DONE | - |
| **Waypoint Arrow** | ✅ Circular styled | ✅ Circular mask applied | ✅ Circular mask applied | Done |
| **Minimap Integration** | ✅ Icon + blob | ⚠️ Basic dots | ⚠️ Partial | Medium |
| **Close Button** | ✅ Sprite sheet | ✅ Fixed | DONE | - |
| **Menu Button** | Hamburger icon | ⚠️ Map icon | ⚠️ Needs fix | Low |
| **Options Panel** | ✅ Sidebar + content | ✅ Sidebar + content | DONE | - |
| **Options Sidebar** | ✅ Icon buttons | ✅ 14 icon buttons | DONE | - |
| **Action Bar Integration** | ✅ Highlights slots | ❌ Not implemented | ❌ MISSING | Medium |
| **Faction System** | ✅ Badges | ⚠️ Basic | ⚠️ Partial | Low |
| **Foglight / Map Reveal** | ✅ Explored areas | ❌ Not implemented | ❌ MISSING | Low |
| **Dungeon System** | ✅ Boss tactics | ⚠️ Basic | ⚠️ Partial | Medium |
| **Bug Report System** | ✅ In-game | ❌ Not implemented | ❌ MISSING | Low |
| **Sound System** | ✅ Multiple events | ⚠️ Partial | ⚠️ Partial | Low |

---

## Detailed Parity Analysis

### ✅ COMPLETE (Matching Zygor)

#### 1. Title Bar - Close Button
- **Status:** DONE (2026-04-14)
- **Zygor:** Uses `titlebuttons-thin.tga` sprite sheet, close button (n=6) with 4 states
- **X-PLORE:** Copied sprite sheet, correct texcoords applied
- **Files:** `Viewer.lua:78-103`, `GuideMenu.lua:110-135`

#### 2. Viewer Frame Structure
- **Status:** DONE
- Backdrop frame with proper layering
- Movable, clamped to screen
- Proper frame strata/levels

#### 3. Guide Info Bar (Session 35) — **NEWLY COMPLETED**
- **Status:** DONE (2026-05-04)
- **Implementation:** `Viewer.lua` — 954 insertions, 303 deletions
- Three-column layout:
  - `InfoGuideName` (left, bold white, 40% width) — `guide.titleShort` or `guide.title`
  - `InfoLevel` (center, cyan, 20% width) — `Lv X-Y` or `Lv X+`
  - `InfoStep` (right, dim white, 40% width) — `step:GetTitle()` or `Step X / Y`
- `XP:UpdateInfoBar(frame)` — populates on guide load, clears on unload
- `XP:UpdateViewer()` calls `UpdateInfoBar()` after guide load
- `INFO_HEIGHT = 28` constant for layout spacing
- Tab divider Y recalculated to account for info bar

#### 4. Real-Time Settings (Session 34) — **NEWLY COMPLETED**
- **Status:** DONE (2026-05-04)
- **Removed:** Apply/Cancel/OK button row and pending-change tracking system
- Settings now save immediately on change — no pending state
- `MarkPendingChange` replaced with no-op stub
- Skin preview applies immediately via `ApplySkin(profile.skin or "default")`
- `contentScroll` bottom padding reduced from 58px to 10px

#### 5. Step Progress System
- **Status:** DONE
- Step line creation pool
- Completed/active/upcoming states
- Progress percentage calculation

#### 6. Tab System
- **Status:** DONE
- Multi-tab support with pool
- Tab drag-and-drop reordering
- Context menu on right-click
- Persisted via AceDB

#### 7. Guide Registration
- **Status:** DONE
- Table-based registration
- Zygor-format parsing
- Deferred parsing for performance

#### 8. Goal Tracking
- **Status:** DONE
- Quest accept/turnin
- Kill tracking via combat log
- Collect tracking via bag updates
- Achievement/skill/reputation tracking

#### 9. Auto-Advance Engine
- **Status:** DONE
- Event-driven goal completion
- Step auto-advancement
- Manual step navigation

#### 10. Options Panel
- **Status:** DONE
- Sidebar with 14 icon buttons matching Zygor
- Content area with scroll
- Section headers

#### 11. Selene Linting (Session 35) — **INFRASTRUCTURE COMPLETE**
- `selene.toml` with `std = "wow_classic"`
- `wow_classic.yml` — 70+ missing WoW API globals added
- **0 errors** across all Lua files
- All 87 Lua files had UTF-8 BOM stripped

#### 12. Step Completion Tracking (Session 36) — **NEWLY COMPLETED**
- **Was:** Position-based (`i < currentStep`) — step lines completed if their index was less than current step cursor
- **Now:** Completion-based using `Goal:IsComplete()` per goal type via WoW quest/combat API chain
- **API fallback chain:** `C_QuestLog.IsQuestFlaggedCompleted` (Retail) → `IsQuestComplete` (WotLK/TBC/Vanilla) → `GetQuestLogTitle` scan (Vanilla/TBC)
- **New functions added:**
  - `Guide:GetCompletedSteps()` — counts steps where all goals are complete
  - `Guide:GetFirstIncompleteStep()` — returns index of first step with incomplete goals
  - `Goal:IsQuestInLog()` — checks if a quest is in player's quest log
  - `Goal:CheckQuestTurnin()` — full implementation with 3-tier API fallback
  - `Goal:CheckQuestAccepted()` — reordered to check retail API first
- **Progress percent** now reflects actual completion state, not cursor position
- **Step completion state** now correctly distinguishes complete/active/upcoming based on goal state
- **Debug infrastructure** — 1,831 commented DEBUG markers (ENTER/PARAM/EXIT/EVENT) added across 25 code files for future troubleshooting

#### 13. TALK/USE Goal Handlers (Session 37) — **NEWLY COMPLETED**
- **TALK handler** — `GOSSIP_SHOW` event + `UnitGUID("npc")` to extract npcID, matches against watched TALK goals
  - Two-cache system: `_talkGoalsByNpcID` (numeric) and `_talkGoalsByName` (name-based fallback)
  - `RebuildTalkCache()` rebuilds on `QUEST_ACCEPTED` and guide load
  - `CheckTalkGoals(npcID, npcName)` matches both ID and name
- **USE handler** — `UNIT_SPELLCAST_SUCCEEDED` event for "use on target" scenarios (e.g. First Aid Kit on soldiers)
  - Dual-index cache: `_useGoalsBySpellID` and `_useGoalsByItemID`
  - `GetItemSpellID(itemID)` resolves itemID → spellID via `GetItemInfo`
  - `CheckUseGoals(itemID, spellID)` checks both caches
  - `BAG_UPDATE_DELAYED` also triggers USE goal checks for consumed items
- **`Parser.lua`** — `use` parser updated to extract spellID and pass both itemID and spellID to `TrackGoal`
- **Real usage confirmed:** `talk Llane Beswell##823` and `use First Aid Kit##68897` found in active guide data

#### 14. Guide40.lua Added (Session 37) — **NEWLY COMPLETED**
- Copied from Zygor3.3.5 repo: `ZygorGuidesViewer/Guides/Guide40.lua`
- 133KB, 4,497 lines — Western Plaguelands leveling guide
- First guide file added under new `ZygorGuidesViewer/Guides/` directory structure

---

### ⚠️ PARTIAL (Needs Refinement)

#### 1. Waypoint Arrow
- **Current:** Basic arrow with title, distance, ETA + theme system wired
- **Completed (Session 38):**
  - `XP:GetArrowThemes()` — returns 5 themes: MODERN, CLASSIC, MINIMAL, CIRCULAR, WAYPOINT
  - `XP:SetArrowTheme(themeID)` — applies texture + circular mask; saves to `XP.db.profile.arrow.theme`
  - `XP:SetArrowScale(scale)` — applies scale to arrow frame; saves to profile
  - `XP:ToggleArrow(enabled)` — accepts boolean param (was toggle-only)
  - `XP.Waypoints:` proxy — bridges `XP.Waypoints:Method()` calls from Options.lua to `XP:Method()`
  - Arrow creation (`CreateWaypointArrow`) loads saved theme from profile
- **Completed (Session 41 — commit 915407d):**
  - Ant trail dot fallback: `UpdateAntLine` now calls `AddAntDots` when `SetWorldLine` is absent (WotLK/Classic)
  - InstanceID fix: `HBD:GetWorldCoordinatesFromZone` 3rd return value now captured and used instead of hardcoded 946
- **Still missing:**
  - Quest blob on minimap
  - CIRCULAR theme mask: `UI-Minimap-ZoomButton-Mask` applied (06a8282); AddMaskTexture guarded for pre-3.3.5
- **Priority:** Medium
- **Files:** `Waypoints.lua`

#### 2. Tabs in Viewer
- **Current:** Custom tab system (Home, Featured, Current, Recent)
- **Missing:** "STEPS" and "LEVELING GUIDES" tabs that Zygor uses
- **Note:** X-PLORE's tab system is MORE feature-rich (multi-guide tabs)
- **Priority:** Low (X-PLORE architecture is superior)

#### 3. Menu Button (Viewer title bar)
- **Current:** Uses `INV_Misc_Map_01` icon
- **Zygor:** Uses hamburger menu (3 horizontal lines)
- **Priority:** Low
- **Files:** `Viewer.lua:105-111`

#### 4. Minimap Integration
- **Current:** Basic dot pins via HBDPins
- **Missing:**
  - Zygor minimap icon
  - Quest area blob (foglight reveal)
- **Priority:** Medium
- **Files:** `Waypoints.lua`, `Minimap.lua`

---

### ❌ MISSING (Not Implemented)

#### 1. Action Bar Integration
- **Status:** ~0% (stub in `ActionBar.lua`)
- **Zygor:** Highlights action bar slots for quest items
- **Needed:**
  - Quest item detection in bags
  - Action bar slot highlighting
  - Click-to-use quest items
- **Priority:** Medium
- **Files:** `ActionBar.lua`

#### 2. Faction System
- **Status:** ~10% (basic in `Faction.lua`)
- **Zygor:** Tracks reputation, shows faction badges
- **Needed:**
  - Faction progress indicators
  - Standing-based guide filtering
- **Priority:** Low
- **Files:** `Faction.lua`

#### 3. Foglight / Map Reveal
- **Status:** 0%
- **Zygor:** Reveals unexplored areas on map
- **Needed:**
  - Map data integration
  - Area exploration tracking
- **Priority:** Low

#### 4. Dungeon System
- **Status:** ~5% (Dungeon category exists)
- **Zygor:** Full dungeon guide support with boss tactics
- **Needed:**
  - Dungeon-specific UI
  - Boss encounter steps
  - Party-ready guides
- **Priority:** Medium

#### 5. Bug Report System
- **Status:** 0%
- **Zygor:** In-game bug reporting
- **Needed:**
  - Screenshot capture
  - Formatted bug submission
- **Priority:** Low

#### 6. Sound System
- **Status:** Partial (step_complete sound reference only)
- **Zygor:** Multiple sounds for different events
- **Needed:**
  - Sound library
  - Event-triggered sounds
- **Priority:** Low

---

## Implementation Priority (Updated)

### Phase 1: Critical Parity Gaps ✅
1. **Guide Info Bar** — ✅ COMPLETED (Session 35)
2. **Options Button** — ✅ DONE via sidebar (real-time saving, no Apply/Cancel buttons)
3. **Title Bar Polish** — ⚠️ Menu button icon still needs hamburger icon

### Phase 2: Enhanced Features (Next Focus)
4. **Waypoint Arrow Polish** — Circular arrow, ant trails, quest blob
5. **Action Bar Integration** — Quest item highlighting
6. **Dungeon System** — Party guide support

### Phase 3: Step Completion Tracking (New Priority)
- **Status:** ✅ COMPLETED (Session 36)
- Was: Position-based (`i < currentStep`)
- Now: Actual `Goal:IsComplete()` per goal type via WoW API chain:
  - `C_QuestLog.IsQuestFlaggedCompleted` (Retail)
  - `IsQuestComplete` (WotLK/TBC/Vanilla)
  - `GetQuestLogTitle` scan (Vanilla/TBC fallback)
- New functions: `Guide:GetCompletedSteps()`, `Guide:GetFirstIncompleteStep()`, `Goal:IsQuestInLog()`
- Progress percent now reflects actual completion state, not position index
- Goal types implemented: `accept`, `turnin`, `complete`, `kill`, `collect`, `talk`, `use`, `achieve`, `rep`, `skill`, `level`, `spell`

### Phase 4: Polish
7. **Foglight/Map Reveal** — Area exploration
8. **Sound System** — Event sounds
9. **Bug Report System** — In-game reporting

---

## File Structure Reference

```
X-Plore/
├── Core.lua              # Main addon, guide loading, step navigation ✅
├── Viewer.lua            # Main viewer frame + step display ✅
│                         #   + Guide Info Bar (Session 35) ✅
├── GuideMenu.lua         # Guide browser + options panel ✅
│                         #   + Real-time settings, no Apply/Cancel (Session 34) ✅
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
├── X-Plore.toc           # TOC file (v2.0.0) ✅
├── CHANGELOG.md          # Version history ✅
├── PARITY_REPORT.md      # This file ✅
├── ViewerPlan.md         # Implementation roadmap ✅
├── selene.toml           # Selene linter config (Session 35) ✅
├── wow_classic.yml       # WoW API stdlib + 70+ additions (Session 35) ✅
├── Skins/                # Replaced textures/, matches Zygor hierarchy ✅
│   └── Default/          # Skin themes and ViewerFrame skin ⚠️
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
- **Selene linting enforced** — 0 errors required across all Lua files

---

## Changelog

### Session 36 (2026-05-04)
- **Step Completion Tracking** — Replaced position-based `i < currentStep` tracking with actual `Goal:IsComplete()` per goal type
  - `Guide:GetCompletedSteps()`, `Guide:GetFirstIncompleteStep()`, `Goal:IsQuestInLog()`, `Goal:CheckQuestTurnin()`, `Goal:CheckQuestAccepted()`, `Goal:CheckQuestCompletion()`
  - WoW API chain: `C_QuestLog.IsQuestFlaggedCompleted` (Retail) → `IsQuestComplete` (WotLK/TBC) → `GetQuestLogTitle` scan (Vanilla/TBC)
  - `wow_classic.yml` additions: C_QuestLog, IsQuestFlaggedCompleted, IsQuestComplete, GetQuestLogTitle, GetNumQuestLogEntries, C_AchievementInfo, GetAchievementNumCriteria
  - Viewer.lua step line styling now uses `step:IsComplete()` and `step:GetCompletionState(activeStepNum)` instead of cursor index
- **Debug Markers** — 1,831 commented DEBUG markers (ENTER/PARAM/EXIT/EVENT) across 25 code files; zero runtime cost until enabled
- **Files changed:** `Guide.lua`, `Viewer.lua`, `Goal.lua`, `wow_classic.yml`, `Options.lua`, `Parser.lua`, `GuideMenu.lua`, `Skins.lua`, `GoalTracker.lua`, `Core.lua`, + 18 more
- **Commits:** `e7dbb02` (feat), `8668132` (debug)

### Session 35 (2026-05-04)
- **Guide Info Bar** — New 28px bar between title bar and tabs showing guide name (left), level range (center), active step name (right)
  - `XP:UpdateInfoBar(frame)` method populates/clears all fields
  - Integrated into `XP:UpdateViewer()` guide load flow
  - Tab divider Y recalculated for info bar height
  - `INFO_HEIGHT = 28` constant added
- **Nil guide bug fix** (`GuideMenu.lua:870`) — `favBtn OnClick` referenced undefined `guide`; fixed via `row.guide = guide` storage
- **Selene linting** — `selene.toml` with `wow_classic` stdlib; 0 errors across all files
- **UTF-8 BOM removal** — Stripped BOM from all 87 Lua files
- **wow_classic.yml extended** — 70+ missing WoW API globals added (`GameFontNormalSmall`, `UIDropDownMenu_*`, `C_Timer.After`, `LibStub`, `IsInInstance`, and more)
- **Files changed:** `Viewer.lua` (+954/-303), `GuideMenu.lua`, `wow_classic.yml`, `selene.toml`
- **Commits:** `bd516c4` (feat), `b7c8a4d` (docs)

### Session 34 (2026-05-04)
- **Real-Time Settings** — Refactored options panel to save settings immediately on change
  - Removed Apply/Cancel/OK button row (135 lines deleted)
  - Removed pending-change tracking system (`DeepCopySettings`, `RestoreSettings`, `MarkPendingChange`)
  - Skin preview now applies immediately via `ApplySkin()`
  - `contentScroll` bottom padding reduced from 58px to 10px
- **README status update** — Updated from "broken/incomplete" to "in-development"
- **CHANGELOG cleanup** — Removed Session 33, stripped all [Unreleased] tags, deleted relay test spam
- **Files changed:** `GuideMenu.lua` (+8/-143), `README.md`, `CHANGELOG.md`
- **Commit:** `f5d5a2f`

### Session 33 (2026-05-04)
- **Relay test entries** — Removed (spam)

### Session 32 (2026-05-03)
- **Relay test entries** — Removed (spam)

### Session 31 (2026-05-03)
- **Relay test entries** — Removed (spam)

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
