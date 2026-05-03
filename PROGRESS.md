# X-PLORE Development Progress

**Started:** April 13, 2026  
**Last Updated:** April 29, 2026
**Status:** In Progress — Session 27 Complete (ViewerFrame Nil Guard + Theme Tab Apply Fix)
**Target:** Universal (Retail, WotLK, TBC, Classic) via !X-Libs

---

## Overview

X-PLORE is a full recreation of ZygorGuidesViewer as a standalone guide viewer addon. It uses the `!X-Libs` library hub for all dependencies (AceAddon-3.0, AceDB-3.0, AceEvent-3.0, HereBeDragons-2.0, LibRover-1.0, etc.) via LibStub. The global addon namespace is `XP` (replacing Zygor's `ZGV`).

The approach is **front-end first** — build a fully working UI, test it, then wire up backend logic. Real guide data will come from Zygor guide files and other addon formats via a parser (no fake/sample data).

---

## Architecture

### How It Differs From the Old Approach

The earlier XPV_Main/XPV_Guide/XPV_Sorting approach (Phase 1-4) was scrapped entirely. All old files were deleted. The new architecture:

- Uses **AceAddon-3.0** lifecycle (`OnInitialize` / `OnEnable`) instead of raw frame events
- Uses **AceDB-3.0** for saved variables instead of manual SavedVariables
- Uses **!X-Libs** for all libraries — no embedded libs, no stubs
- Follows Zygor's actual architecture more closely (Skins, Tabs, Guide object model, Waypoints)
- All UI is built programmatically in Lua (not XML, except minimal button templates)

### Load Order (from TOC)

```
Init.lua          → Global XP namespace, sub-tables, constants
Compat.lua        → Version detection, CreateFrame helpers, utility functions
ui/Templates.xml  → Minimal XML button templates
Core.lua          → AceAddon entry, DB defaults, slash commands, guide management
Skins.lua         → Theme/skin system with color/font accessors
GuideSorting.lua  → 14 guide categories with faction/expansion grouping
Parser.lua        → Zygor-format guide text parser (DSL → Step/Goal objects)
Guide.lua         → Guide/Step/Goal data model, dual RegisterGuide API
GuideLoader.lua   → Zygor shim, guide file loading infrastructure
Guides/Autoload.xml → Guide data file manifest (includes .lua guide files)
Viewer.lua        → Compact step viewer frame (main HUD)
GuideMenu.lua     → Guide browser/menu (825x630, DIALOG strata)
Tabs.lua          → Multi-guide tab system with drag reorder
Waypoints.lua     → Waypoint arrow using HereBeDragons-2.0 + LibRover-1.0
```

### Key Design Decisions

| Decision | Rationale |
|----------|-----------|
| `XP` global namespace | Short, unique, replaces ZGV |
| `!X-Libs` dependency | Single library source for all WoW versions |
| AceAddon-3.0 lifecycle | Matches Zygor's init pattern, proper enable/disable |
| Programmatic UI (Lua) | More flexible than XML, easier version compat |
| Guide object model | Proper metatables (Guide/Step/Goal) not raw tables |
| Tabs system | Multiple guides open simultaneously like Zygor |

---

## Zygor Reference Analysis

### Source Location
`C:\Users\kance\Documents\GitHub\ZygorGuidesViewer\` (1013 files, 83 top-level entries)

### Key Files Analyzed

| File | Lines | What We Learned |
|------|-------|-----------------|
| `ZygorGuidesViewer.lua` | 6243 | AceAddon lifecycle, OnInitialize/OnEnable flow |
| `Guide.lua` | 1269 | Guide/Step/Goal prototypes, guide activation |
| `GuideSorting.lua` | 114 | 16 category registrations |
| `GuideMenu.lua` + `GuideMenu-View.lua` | ~2500 | Menu navigation, column system, Open(path) dispatch |
| `Skins.lua` | 713 | SkinProto, AddStyle, SkinData accessor pattern |
| `Tabs.lua` | ~600 | Tab pool, drag reorder, save/restore, metatable inheritance |
| `Pointer.lua` | 6300+ | Arrow display, map markers, ant trails, pathfinding |
| `Waypoints.lua` | ~327 | ShowWaypoints orchestration, goal coord extraction |
| `Step.lua` / `Goal.lua` | various | Step completion, goal action types |
| `Widgets.lua` / `UiWidgets/` | various | Factory pattern UI:Create(type), 19+ widget types |
| `MasterFrame.lua` | various | Main frame creation from skin XML template |

### Architecture Patterns Discovered

- **Frame hierarchy**: `ZygorGuidesViewerFrame` (viewer) from XML template; `ZygorGuidesViewer_GuideMenu` (browser, 825x630) built in Lua
- **GuideMenu navigation**: `GuideMenu:Open(path)` dispatches to ShowHome/ShowGuides/ShowFeatured/ShowOptions with column visibility toggling
- **Skin system**: `Skins:AddSkin()` → `SkinProto:AddStyle()` → `SkinData(prop, ...)` accessor
- **Custom widgets**: `UI:Create(type, parent)` factory with `CHAIN()` fluent syntax
- **Tab system**: Pool-based with metatable inheritance, drag-reorder, AceDB persistence
- **Icon sets**: Sprite sheets with grid-based texcoord lookups
- **Pointer/Waypoints**: Separate concerns — Pointer handles display, Waypoints orchestrates which goals to show

---

## !X-Libs Integration

### Source Location
`C:\Users\kance\Documents\GitHub\!X-Libs\` (391 files)

### Libraries Used

| Library | Registration Name | Purpose |
|---------|------------------|---------|
| AceAddon-3.0 | `LibStub("AceAddon-3.0")` | Addon lifecycle |
| AceDB-3.0 | `LibStub("AceDB-3.0")` | Saved variables |
| AceEvent-3.0 | `LibStub("AceEvent-3.0")` | Event handling |
| AceTimer-3.0 | `LibStub("AceTimer-3.0")` | Scheduled timers |
| AceConsole-3.0 | `LibStub("AceConsole-3.0")` | Slash commands, Print |
| AceHook-3.0 | `LibStub("AceHook-3.0")` | Secure hooks |
| AceConfig-3.0 | `LibStub("AceConfig-3.0")` | Options registration |
| AceConfigDialog-3.0 | `LibStub("AceConfigDialog-3.0")` | Options UI |
| AceGUI-3.0 | `LibStub("AceGUI-3.0")` | Widget framework |
| HereBeDragons-2.0 | `LibStub("HereBeDragons-2.0")` | Player position, coord conversion |
| LibRover-1.0 | `LibStub("LibRover-1.0")` | A-to-B pathfinding |

### !X-Libs Compatibility Layer

- `Compat-Lua.lua`: `C_Map`, `C_Timer`, `C_QuestLog` stubs, `CreateFramePool`, `XP_IsRetail`/`XP_IsWOTLK`/`XP_IsVanilla` globals, BackdropTemplate polyfills
- `Compat-335.lua`: Runs only on WotLK (TOC 30000-40000) — `BackdropTemplateMixin` stub, safe `unpack`, `C_AddOns` shim
- `GlobalCompat.xml`: Defines `XLIB_BackdropTemplate` virtual frame

---

## Completed Work

### Session 1: Initial Architecture & File Creation

1. **Deleted all old files** — Removed 16 files from the prior XPV_Main/XPV_Guide iteration
2. **X-Plore.toc** — New TOC with `## Dependencies: !X-Libs`, proper load order
3. **Init.lua** — Global `XP` namespace, sub-tables (`XP.Guides`, `XP.Categories`, `XP.Menu`, `XP.Viewer`, `XP.Tabs`, `XP.Skins`, `XP.Waypoint`), texture/sound path constants
4. **Compat.lua** — Version detection using !X-Libs globals + TOC fallback, `XP.CreateFrame()` / `XP.CreateBackdropFrame()` helpers, `XP.tlen()`, string/table helpers, `XP.UnpackColor()`
5. **ui/Templates.xml** — Minimal XML templates: `XPlore_ButtonTemplate`, `XPlore_CategoryButtonTemplate`, `XPlore_TabButtonTemplate`
6. **Core.lua** — Full AceAddon-3.0 integration via `AceAddon:NewAddon(XP, "X-Plore", "AceEvent-3.0", "AceTimer-3.0", "AceConsole-3.0", "AceHook-3.0")`. AceDB saved variables (`XPloreDB` with `DB_DEFAULTS`), slash commands (`/xp`, `/xplore`), guide management, auto-advance engine, quest helpers (universal), AceConfig options table
7. **Skins.lua** — Theme system with skin registry, default dark navy/cyan skin, color/font accessor functions
8. **GuideSorting.lua** — 14 categories with faction groups and expansion sub-categories
9. **Guide.lua** — Full data model with `XP.Goal`, `XP.Step`, `XP.Guide` prototypes using metatables, `XP:RegisterGuide()` API
10. **Viewer.lua** — Complete compact step viewer frame (main HUD display)
11. **GuideMenu.lua** — Complete guide browser/menu (825x630, DIALOG strata) with sidebar categories, search, home view, guide list
12. **Tabs.lua** — Full tab management: pool-based, drag reorder, AceDB persistence, LoadGuideToTab API
13. **Waypoints.lua** — Waypoint arrow system using HereBeDragons-2.0 for positioning and optionally LibRover-1.0 for pathfinding

### Session 2: Bug Fixes & Integration

14. **Fixed duplicate RegisterGuide conflict** — Both Core.lua and Guide.lua defined `XP:RegisterGuide()`. Removed the Core.lua version (raw table storage); Guide.lua now exclusively owns it (creates proper Guide:New() objects with Step/Goal metatables)
15. **Fixed Core.lua guide management functions** — Rewrote to use Guide object model:
    - `LoadGuide()` now clamps step to `guide.numSteps`
    - `NextStep()`/`PrevStep()`/`GoToStep()` use `guide.numSteps` instead of `XP.tlen()`
    - `CheckAutoAdvance()` iterates `step.goals[]` array, checks `goal.action:upper()` and `goal.questID` per-goal
16. **Fixed guide registration call** in sample data — `XPlore_CMS:RegisterGuide(guide)` → `XP:RegisterGuide(guide)` (prior to removal)

### Session 3: Cleanup, Textures & Remaining Integration

17. **Restored missing textures** from backup at `C:\Ebonhold\Ebonhold\Interface\AddOns\X-PloreOLD\textures`:
    - `logo2.tga` (1 file, 1MB)
    - `ui/` directory (4 files): `backdrop_bg.tga`, `backdrop_edge.tga`, `glow.tga`, `gradient_v.tga`
    - `waypoints/` directory (8 files): `waypoint_arrow.tga`, `XPArrow.tga/png`, `XPArrow2.tga/png`, `XPArrow3.tga/png`, `XPArrow4.tga/png`
18. **Removed fake guide data** — Deleted `guides/alliance_classic_1_60.lua`, `guides/guides.xml`, empty `guides/` directory, and removed `guides\guides.xml` from the TOC
19. **Fixed Waypoints.lua `UpdateWaypoint()`** — Rewrote to use Guide object model:
    - Uses `guide:GetStep(stepIndex)` instead of raw `guide.steps[index]`
    - Uses `step:GetPrimaryCoords()` instead of raw `step.coords`
    - Uses `step:GetTitle()` instead of raw `step.title`
    - Handles both array `{x, y}` and hash `{x=.., y=..}` coord formats
    - Extracts `mapID` from the goal object that owns the coords
    - Smart normalization: coords >1 treated as 0-100 scale, otherwise 0-1
20. **Wired GuideMenu → Tabs integration** — Load button and row click in `PopulateGuideList()` now route through `XP.Tabs:LoadGuideToTab(guide.id)` instead of calling `XP:LoadGuide()` directly. Fixed closure references from `self.MenuFrame` to `XP.MenuFrame`

---

### Session 4: Guide Parser, Loader & Zygor Compatibility

21. **Parser.lua** — Full Zygor-format guide text parser:
    - `ParseID()`: Parses `Name##ID` and `Name##ID/suffix` patterns
    - `ParseMapXYDist()`: Parses coordinate strings (`MapName/Floor X.XX,Y.YY`, `X,Y < Dist`)
    - `ParseRanges()`: Parses `3-5`, `3+`, `3` range strings
    - `ParseCount()`: Parses `#6#` count markers in text
    - `ParseModifier()`: Parses pipe-delimited modifiers (`|tip`, `|q`, `|goto`, `|or`, `|only if`, `|confirm`, `|daily`, etc.)
    - `FormatText()`: Strips Zygor markup (`{color}text{}`, `_gold_`, `#count#`, `$NAME`)
    - `ParseEntry()`: **Main parser** — converts raw multi-line guide text into Step/Goal arrays. Handles:
        - `step` keyword (new step creation)
        - `stickystart`/`label` (sticky step regions)
        - Line splitting by `|` (pipe) into goal + modifiers
        - Goal type dispatch via `GOALTYPES` table
        - Comment stripping (`--`, `//`)
        - `||` line continuation
    - `ParseHeader()`: Processes guide header metadata (description, conditions, levels, etc.)
    - `MakeCondition()`: Compiles condition strings into safe Lua functions with restricted environment
    - `ExpandIncludes()`: Expands `#include "name"` directives with parameter substitution
    - `ParseGuidePath()`: Splits backslash-delimited paths into segments
    - `DeriveCategory()` / `DeriveFaction()` / `DeriveExpansion()`: Auto-classifies guides from path
    - **40+ goal types** defined: accept, turnin, kill, collect, buy, use, talk, click, clicknpc, goto, home, confirm, skill, learn, learnmount, learnpet, equipped, rep, create, gossip, vendor, trainer, level, grind, fpath, fly, achieve, image, info, cast, goal, discover, loadguide, nexttab, and aliases

22. **Guide.lua rewritten** — Now supports two registration modes:
    - **Table-based** (legacy): `XP:RegisterGuide({ id=..., steps={...} })`
    - **Zygor-format**: `XP:RegisterGuide("Path\\Title", {header}, [[raw text]])`
    - `Guide:Parse()`: Deferred parsing — raw text is stored and only parsed on first access (saves memory for thousands of guides)
    - `RegisterInclude()`: Stores reusable text snippets for `#include` expansion
    - `RegisterGuidePlaceholder()`: Registers locked/placeholder guides
    - Goal/Step objects now carry full parser output fields (tips, modifiers, coords, questObjective, etc.)
    - `GetDisplayText()` updated to handle all Zygor action names (accept, turnin, kill, collect, etc.)
    - `GetActionIcon()` expanded with 30+ icon mappings for both Zygor and legacy action names

23. **GuideLoader.lua** — Guide data file loading infrastructure:
    - **Zygor Compatibility Shim**: Creates fake `ZygorGuidesViewer` and `ZGV` globals that redirect `RegisterGuide()`, `RegisterInclude()`, `RegisterGuidePlaceholder()` calls to `XP:`
    - Handles both `:` method syntax and `.` function syntax
    - Only installs shim if the real Zygor addon isn't loaded
    - Stats tracking: loaded files, loaded guides, errors

24. **Core.lua updated** — `CheckAutoAdvance()` rewritten for Zygor-format action names:
    - Handles lowercase action names (`accept`, `turnin`) alongside legacy uppercase
    - Added `noComplete` goal flag support
    - Added `confirm` action bypass (can't auto-complete manual confirms)
    - Added `IsQuestObjectiveComplete()` for `|q QuestID/ObjectiveNum` tracking
    - Works with both Retail (C_QuestLog) and Classic (GetQuestLogTitle) APIs

25. **Test guide data files** — Two test guides in Zygor format:
    - `Guides/Test_Alliance_1_10.lua`: Northshire Valley 1-5 (18 steps) + Elwynn Forest 5-10 (7 steps)
    - `Guides/Test_Horde_1_10.lua`: Valley of Trials 1-5 (15 steps) + Durotar 5-10 (10 steps)
    - Use `ZygorGuidesViewer:RegisterGuide()` to test the shim
    - Realistic quest data with coords, tips, kill counts, multiple goals per step

26. **TOC updated** — Added Parser.lua, GuideLoader.lua, and `Guides\Autoload.xml` to load order

### Session 5: Pre-flight Bug Fixes

27. **Pre-flight review** — All 14 Lua files + 2 XML files + TOC reviewed against the full known bug list.

28. **Bug #1 fix (Parser.lua)** — `UnitClass` nil check was broken:
    - Old: `local _, playerClass = UnitClass and UnitClass("player") or nil, nil` (silent fail — `nil, nil` always assigned when `UnitClass` is nil because the `or` binds to the whole first expression)
    - Fixed: `local _, playerClass = (UnitClass and UnitClass("player")) or (nil, nil)` — proper parens with explicit nil,nil fallback

29. **Bug #2 fix (Viewer.lua:349)** — `guide.numSteps` was read before `Parse()` was triggered:
    - Old: `local numSteps = guide.numSteps` → always 0 for Zygor-format guides
    - Fixed: `local numSteps = guide:GetNumSteps()` → triggers `Parse()` first, returns real count

30. **Bug #3 fix (GuideMenu.lua:233)** — `centerCol:GetWidth()` returns 0 at frame creation time (frame not yet laid out):
    - Old: `listChild:SetWidth(centerCol:GetWidth() or (width - sideW - 22))` → the `or` fallback never fires (0 is not nil)
    - Fixed: Always use explicit `(width - sideW - 22)` at creation; added `OnSizeChanged` hook on `centerCol` to keep `listChild` width in sync dynamically

31. **Bug #4 fix (GuideLoader.lua:99)** — Useless `setmetatable(shim, { __index = shim })` self-reference:
    - Removed entirely (a table pointing `__index` at itself adds nothing — methods already accessible directly)

32. **Bug #5 fix (Waypoints.lua:124)** — Arrow texture path pointed to 28-byte stub:
    - Old: `XP.TEXTURE_PATH .. "minimap\\waypoint_arrow.tga"` (28-byte placeholder)
    - Fixed: `XP.TEXTURE_PATH .. "waypoints\\XPArrow.tga"` (real texture from backup)

33. **Guide data files verified** — `Guides/Autoload.xml`, `Test_Alliance_1_10.lua`, `Test_Horde_1_10.lua` all reviewed. Syntax is correct Zygor DSL. All 4 guides will register via the shim.

34. **Confirmed Guide.lua multi-arg dispatch** — `XP:RegisterGuide()` (line 459) correctly handles both `(string, table, string)` for Zygor-format AND `(table)` for legacy table-based calls. The shim correctly passes 3 args; `_RegisterGuideFromZygor()` handles the path → category/faction derivation.

---



```
addon/X-Plore/
├── X-Plore.toc             — TOC: Dependencies !X-Libs, SavedVariables XPloreDB
├── Init.lua                — Global XP namespace, sub-tables, path constants
├── Compat.lua              — Version detection, BackdropTemplate compat, utilities
├── Core.lua                — AceAddon entry, DB, slash cmds, guide management
├── Skins.lua               — Theme system, color/font accessors
├── GuideSorting.lua        — 14 guide categories
├── Parser.lua              — Zygor-format guide text parser (DSL → Steps/Goals)
├── Guide.lua               — Guide/Step/Goal data model, dual RegisterGuide API
├── GuideLoader.lua         — Zygor shim, guide loading infrastructure
├── Guides/
│   ├── Autoload.xml        — Guide data file manifest
│   ├── Test_Alliance_1_10.lua — Test guide: Northshire + Elwynn
│   └── Test_Horde_1_10.lua   — Test guide: Valley of Trials + Durotar
├── Viewer.lua              — Compact step viewer (main HUD)
├── GuideMenu.lua           — Guide browser (825x630 DIALOG frame)
├── Tabs.lua                — Multi-guide tab system
├── Waypoints.lua           — Waypoint arrow + pathfinding
├── ui/
│   └── Templates.xml       — Button templates (XPlore_ButtonTemplate, etc.)
└── textures/
    ├── logo.tga
    ├── logo2.png / logo2.tga
    ├── icons/              — 22 action/category icons (.tga)
    ├── minimap/            — waypoint_arrow.tga (stub)
    ├── svg_exports/        — 22 SVG source files
    ├── ui/                 — backdrop_bg.tga, backdrop_edge.tga, glow.tga, gradient_v.tga
    └── waypoints/          — waypoint_arrow.tga, XPArrow 1-4 (.tga + .png)
```

---

## Design Theme

| Element | Color | Hex |
|---------|-------|-----|
| Background (deep) | Dark navy | `#0A0E1A` |
| Background (medium) | Medium navy | `#0E1525` |
| Accent (primary) | Cyan | `#00E5FF` |
| Accent (dark) | Dark cyan | `#0097A7` |
| Text (bright) | Light blue-white | `#E0F0FF` |
| Text (muted) | Muted blue | `#94B8D4` |
| Complete | Green | `#4ADE80` |
| Purple accent | Purple | `#9B30FF` |

---

## What's Next

### Priority 1: In-Game Testing
- All 14 Lua files + 2 XML files + TOC need first in-game test
- Test addon loads without errors on WotLK 3.3.5a
- Verify guide data loads via Zygor shim (4 test guides should register)
- Verify GuideMenu shows the 4 test guides in categories
- Verify guide loading and step display in Viewer
- Verify Waypoint arrow shows and tracks coordinates
- Verify Tabs system works with guide loading

### Priority 2: Load Real Zygor Guides
- Copy actual Zygor guide data files into `Guides/` directory
- Update `Autoload.xml` with the real files
- Test parser handles edge cases in real guide data (complex includes, conditions, etc.)
- Determine which Zygor guide versions to target (Retail, WotLK, Classic)

### Priority 3: Advanced Features (Not Yet Started)
- Full Pointer.lua equivalent (map pins, minimap markers)
- Ant trail route visualization on world/minimap
- Detailed right column in GuideMenu (guide preview/info)
- Featured/suggested guides views on Home
- Favourites system
- Tooltip enhancements
- Combat auto-hide
- Corpse arrow (death run assistance)
- Widget system expansion (ProgressBar, DropDown, ToggleButton, ScrollTable)

---

## Known Issues / Technical Debt

1. **Untested** — No in-game testing has been performed on any WoW client. The parser and guide loading are untested beyond static analysis.
2. ~~**GuideMenu ListChild width**~~ — **Fixed (Session 5)**
3. ~~**Waypoints arrow texture**~~ — **Fixed (Session 5)**
4. **Tab drag reorder** — Uses `GetCursorPosition()` which may need scaling adjustments on different clients.
5. **Parser edge cases** — The parser handles the core Zygor DSL but some advanced features need testing: deeply nested includes, complex conditions with `chromietime()`, scenario goals, vehicle goals, etc.
6. **No guide data beyond test files** — Real Zygor guide files haven't been copied in yet. Only 4 test guides exist.

---

## Reference Locations

| Resource | Path |
|----------|------|
| X-PLORE addon | `C:\Users\kance\Documents\GitHub\X-PLORE\addon\X-Plore\` |
| !X-Libs hub | `C:\Users\kance\Documents\GitHub\!X-Libs\` |
| Zygor reference | `C:\Users\kance\Documents\GitHub\ZygorGuidesViewer\` |
| Texture backup | `C:\Ebonhold\Ebonhold\Interface\AddOns\X-PloreOLD\textures\` |
| Testing junction | `C:\Ebonhold\...\Interface\AddOns\X-Plore` → GitHub source |
| This document | `C:\Users\kance\Documents\Research\X-Plore\PROGRESS.md` |

---

### Session 11: Full Skin System Rewrite + Per-Skin TGA Assets (2026-04-13)

53. **Per-skin TGA directories copied** from `ZygorGuidesViewer/Skins/Default/` → `textures/skins/`:
    - `textures/skins/starlight/` — 39 TGA files (scroll-bar, stepicons, titlebuttons-thin, progressbarcaps, checkradio-thin, floatingbuttons-thin, viewer8-tabs, border-glow, backdrop-opaque*, button-small-opaque, dropdown-opaque, search-bgr, ui-sliderbar*, selection, mv-arrow, guideicons-small, minimap-icon, scroll-arrows, scrollbutton, etc.)
    - `textures/skins/starlight-glass/` — 38 TGA files (all above plus backdrop-glass*, backdrop-glass-all, backdrop-glass-upsidedown)
    - `textures/skins/midnight/` — 12 TGA files (roundcorners, border, border-glow, titlebuttons, scrollbutton, selection, mv-arrow, corner, etc.)
    - `textures/skins/stealth/` — 23 TGA files (border-08, border, stepicons, titlebuttons-thick, checkradio-thick, floatingbuttons-thick, progressbar, scroll-bar, scroll-arrows, search-bgr, guideicons-small, minimap-icon, selection, mv-arrow, scrollbutton, etc.)
    - `textures/skins/stealth-glass/` — 23 TGA files (same as stealth)

54. **Root-level common assets copied** from `ZygorGuidesViewer/Skins/` → `textures/`:
    - `white.tga`, `loading.tga`, `guideicons-big.tga`, `guideicons-small.tga`
    - `messagetoastbg.tga`, `messagetoastbg-classicwotlk.tga`
    - `arrowdown.tga`, `arrowup.tga`, `newcheckon.tga`, `newcheckoff.tga`
    - `search.tga`, `separator.tga`

55. **Skins.lua fully rewritten** (985 lines, up from 616 with 3 partial skins):
    - `WHITE_TEX` changed to `SKINSDIR .. "white"` (TGA file); added `TiledBackdrop()` helper
    - Added `STARLIGHT_DIR`, `STARLIGHT_GLASS_DIR`, `MIDNIGHT_DIR`, `STEALTH_DIR`, `STEALTH_GLASS_DIR` constants
    - **Starlight** — primary default skin; full texture wiring (scroll-bar, scroll-arrows, stepicons, titlebuttons-thin, progressbarcaps, checkradio-thin, floatingbuttons-thin, viewer8-tabs+TabsDecor, border-glow, backdrop-opaque*, button-small-opaque, dropdown-opaque, search-bgr, ui-sliderbar*, options-slider-button, selection, mv-arrow, minimap-icon)
    - **Starlight-glass** (new, `GUIHidden=true`) — inherits Starlight; overrides all backdrops with `backdrop-glass*` TGAs; `UseOpacity=true`; `MainBackdropColor=#22222277`
    - **Midnight** — full texture wiring; `roundcorners.tga` edgeFile at edgeSize=20; warm orange accent; no TabsDecor
    - **Stealth** (new) — full texture wiring; thick-variant textures (`titlebuttons-thick`, `checkradio-thick`, `floatingbuttons-thick`); warm brown color scheme
    - **Stealth-glass** (new, `GUIHidden=true`) — inherits Stealth; semi-transparent backdrops; `UseOpacity=true`
    - `"default"` alias preserved → maps to Starlight for backward compat
    - `XP:GetSkinList()` filters `GUIHidden=true` skins from selector dropdown
    - `XP:InitSkins()` default changed from `"default"` to `"starlight"`
    - Added 20+ new skin data keys: `StepIconsTexture`, `StepLineIcons`, `TitleButtonsTexture`, `CheckRadioTexture`, `FloatingButtonsTexture`, `BorderGlowTexture`, `ScrollBarTexture`, `ScrollArrowsTexture`, `ScrollButtonTexture`, `SelectionTexture`, `MapArrowTexture`, `GuideMiniIconsTexture`, `GuideBigIconsTexture`, `TabsDecorTexture`, `ToastMessageBg`, `ToastMessageBgWOTLK`, `LoadingTexture`, `GuideMenuSearchTexture`, `GuideMenuDropdownBackdrop`, `UISliderBgTexture`, `UISliderBorderTexture`, `OptionsSliderButton`, `ButtonBackdrop1`
    - Fixed `goto` Lua 5.2+ reserved-keyword conflict: changed to `["goto"]`
    - All public API functions preserved intact

---

### Session 7: Third Round Bug Fixes (from second in-game test)

35. **Bug #1 fix (Core.lua)** — `OnEnable` now calls `UpdateViewer()` when no guide is loaded on login. Previously showed "Step 1 / 1" on fresh start. Now correctly shows "No Guide" state.

36. **Bug #2 fix (GuideMenu.lua)** — `bottomY = -10` → `bottomY = 10` in `CreateCategoryButtons`. Options and About buttons were anchored outside (below) the sidebar frame. Fixed by using a positive inset value.

37. **Bug #3 fix (GuideSorting.lua + GuideMenu.lua)** — GOLD and MACROS category icons were 4 KB stub files (not valid TGAs). Added `iconFull = true` flag for these two entries and pointed them at WoW built-in icons (`Interface\Icons\INV_Misc_Coin_01` and `Interface\Icons\INV_Misc_Note_05`). Added `GetCategoryIconPath(cat)` helper in `GuideMenu.lua` to handle both local `.tga` icons and full WoW interface paths.

38. **Bug #4 fix (Viewer.lua + GuideMenu.lua)** — Both scroll frames replaced `UIPanelScrollFrameTemplate` (which positions its scroll-arrow buttons outside the parent frame on WotLK) with plain `ScrollFrame` + mousewheel + narrow `Slider`-based scrollbar. The scrollbar hides when content fits, shows only when scrolling is needed.

39. **Bug #5 fix (GuideMenu.lua)** — Options tab no longer calls `AceConfigDialog:Open("X-Plore")` (which opened an external floating Blizzard-themed dialog). Added `CreateInlineOptions(parent)` which builds a themed options panel inside the center column: Display section (shown on login, lock position, scale slider), Behaviour section (auto-advance, arrow), About section.

---

*Last updated: April 14, 2026 — Session 16 (selection.tga highlights, viewer8-tabs decor, full re-skin audit)*

---

### Session 16: Selection Highlights, Tab Decoration, Re-skin Subscriber Audit (2026-04-14)

56. **GuideMenu.lua — `selection.tga` hover/active highlights on category buttons**:
    - `btn.SelectionHighlight` (OVERLAY texture, `SetAllPoints`, initially hidden)
    - `OnEnter`: show highlight + `cyan_light` text; `OnLeave`: hide + `text_normal`
    - `MenuNavigate` now uses `SelectionHighlight:Show()/Hide()` instead of `SetBackdropColor` for active state

57. **GuideMenu.lua — `selection.tga` hover highlights on guide rows**:
    - `row.SelectionHighlight` (OVERLAY texture, initially hidden)
    - `OnEnter`: show; `OnLeave`: hide

58. **GuideMenu.lua — Sidebar background uses `GuideMenuMenuBackground` SD key** (`#2B2B2BFF`) for proper visual separation from center panel (`#111111`).

59. **GuideMenu.lua — New frame references stored for re-skin**:
    - `frame.HomeView.HomeViewBg`, `detailCol.DetailBorderL`, `detailCol.DetailBg`
    - `frame.HeaderDivider`, `frame.SectionHeaderBg`, `frame.SectionDivider`

60. **GuideMenu.lua — Re-skin subscriber fully audited**:
    - All detail column elements in one merged block: `DetailBorderL`, `DetailBg`, `DetailScrollTrack`, `DetailScrollThumb`, `EmptyMsg`, `DetailTitle`, `DetailInfo`, `DetailDesc`, `DetailSteps`, `DetailExpansion`, `DetailLoadBtn`
    - Category buttons + guide rows: `SelectionHighlight` texture updated + hidden on skin switch
    - Duplicate `dc` block removed

61. **Viewer.lua — `viewer8-tabs.tga` decoration on tab container**:
    - `frame.TabDecorTex` (ARTWORK, `SetAllPoints`)
    - Shown when `XP:SD("TabsDecor") == true` (STARLIGHT), hidden otherwise (MIDNIGHT, STEALTH)
    - Re-skin subscriber updates texture path and show/hide state

62. **Viewer.lua — New divider references stored**:
    - `frame.TitleDivider`, `frame.TabDivider`, `frame.ToolbarDivider` — now re-skinnable

63. **Viewer.lua — Re-skin subscriber updated**: TitleDivider (`border`), TabDivider (`border_dim`), ToolbarDivider (`border_dim`)

- **Commit**: `4ed6aeb` — `feat: selection.tga highlights, viewer8-tabs decor, full re-skin subscriber audit`

---

### Session 17: GuideMenu Row/Header Audit Fixes + Viewer Step Line Audit Fixes (2026-04-14)

64. **GuideMenu.lua — DETAIL_WIDTH reduced from 260 to 219** (matches Zygor exactly).

65. **GuideMenu.lua — Section header height 36px→22px**; section divider offset -36→-22; list scroll top -37→-23; scrollbar top -37→-23.

66. **GuideMenu.lua — Header tabs 80x40→70x24**; starting X from 120→3; spacing from 85→71. Indicator now uses `tab:GetFontString():GetStringWidth() + 6` for dynamic text-width sizing (Zygor-style).

67. **GuideMenu.lua — Header close button 24x24 text→15x15 icon texture** using `XP:SD("TitleButtonsTexture")` with `SetTexCoord(0, 0.25, 0, 0.5)` for the close sprite. OnEnter/OnLeave use `XP.SetTexColor` tint swap.

68. **GuideMenu.lua — Guide row height 36px→26px** (matches Zygor); subtitle FontString removed entirely; load button hidden by default, shown on hover; icon 20x20→15x15, BOTTOMLEFT-aligned at (12, 5).

69. **GuideMenu.lua — Category button font "small"→"normal"**; icon X offset 12→11; **2px LeftDecor vertical bar** added on left edge (shows when active, hidden when not). `MenuNavigate` updated to toggle `LeftDecor:Show()/Hide()` alongside `SelectionHighlight`.

70. **GuideMenu.lua — Home view hides DetailColumn and expands CenterColumn** (same as options/about). Condition extended to include `view == "home"`.

71. **GuideMenu.lua — CreateGuideRows redesign**: no subtitle, load button starts hidden, hover shows selection highlight + load button, icon 15x15 bottom-aligned.

72. **GuideMenu.lua — PopulateGuideList**: `rowHeight` 36→26; subtitle population removed; active guide uses `cyan` color for title.

73. **Viewer.lua — STEP_LINE_HEIGHT 50px→22px** (CRITICAL — Zygor is ~22px, was 2.3x too tall).

74. **Viewer.lua — CreateStepLine redesign**:
  - 2px left edge indicator (was 3px), 14x14 icon (was 20x20) with MIDDLE anchor
  - `stepNum2` badge (small font) shows step number right of icon
  - Title uses MIDDLE vertical anchor (single line, no description)
  - Status shows UTF-8 checkmark `✓` for completed steps
  - `line.Desc` and `line.Progress` removed from CreateStepLine

75. **Viewer.lua — UpdateViewer updated** for new step line structure: `line.StepNum2` populated; `line.Desc` reference removed; `line.Progress` removed from upcoming/completed; completed shows checkmark.

76. **Viewer.lua — Progress bar relocated** from Footer to new `ProgressArea` frame (20px, between scroll content and footer). `scrollFrame`/`scrollBar` bottom anchors updated to `footerH + progressH`. Progress bar spans full width; `pctText` on right.

77. **Viewer.lua — Footer simplified** to sync indicator only (dot + AUTO/MANUAL text, centered). Footer divider removed.

78. **Viewer.lua — Viewer close button 20x20 text→15x15 icon texture** using `XP:SD("TitleButtonsTexture")`. Re-skin subscriber updated.

79. **`OK_CHAR` constant** defined as UTF-8 checkmark `\228\149\157` for completed step status.

---

### Session 19: Full Zygor Skin System Parity (2026-04-15)

93. **Skins.lua — Complete rewrite** (1530 lines):
    - **SkinProto/StyleProto system** — Full inheritance with `__index` metamethod, mirrors Zygor's architecture exactly
    - **4 skin variants**: `starlight`, `starlight-glass`, `stealth`, `stealth-glass`
    - **Glass variants inherit from base** via `AddStyle(id, name, inherit)` — no more flat duplicates
    - **Skin data accessor `XP:SD("Key")`** with full inheritance chain
    - **Subscriber pattern** via `XP:RegisterSkinSubscriber(fn)` — broadcasts `XP_SKIN_UPDATED`
    - **150+ skin data keys** — all Zygor SD keys implemented (WorldQuest, AuctionTools, GearFinder, BugReport, CreatureViewer, Notification, etc.)

94. **Skins.lua — Icon Sets (11 total)**:
    - `TabsIcons` — guideicons-big sprite sheet
    - `GuideIconsSmall` — guideicons-small sprite sheet
    - `OptionsIcons` — options-menu-icons (32x2 grid)
    - `GoldGuideIcons` — goldguideicons (8x2 grid)
    - `AuctionToolsPriceIcons` — goldpricestatusicons (16x1 grid)
    - `WorldQuest` — icons-worldquest (32x1 grid)
    - `TalentPoints` — zta_hints (8x2 grid)
    - `ActionBarIcons` — actionbar (8x1 grid)
    - `ExpansionIcons` — expansion-icons (16x1 grid)
    - `NotificationIcons` — icons-notificationcenter (32x1 grid)
    - `ItemUpgrades` — item-upgrade (1x4 grid)
    - `StepLineIcons` — stepicons (32x1 grid)

95. **Skins.lua — Button Sets (6 total)**:
    - `TitleButtons` — 45 icons from titlebuttons-thin/thick sprite sheet
    - `Interactions` — checkbox/radio states
    - `RatingButtons` / `RatingButtons_active` — zygor face ratings
    - `FloatingIcons` — floatingbuttons-thin/thick
    - `Minimap` — minimap icon states
    - `SpecialButton` — gear-logo-64

96. **Skins.lua — Arrow Skin System**:
    - `XP.ArrowSkins:AddArrowSkin(id, name)` — register arrow skins
    - `XP:SetArrowSkin(skinID)` / `XP:GetArrowSkin()` — manage active arrow skin
    - Full sprite animation support with special icons (here, waiting, upstairs, downstairs, error, instance, ship, taxi)

97. **Skins.lua — Path Fixes**:
    - **Fixed `SKINS_DIR`** — now correctly `Interface\AddOns\X-Plore\textures\skins\` (was incorrectly using `textures\default\`)
    - All style texture paths updated: `starlight\`, `stealth\`, `starlight-glass\`, `stealth-glass\`, `midnight\`

98. **Skins.lua — Color Fixes**:
    - **Search bar** `GuideMenuSearchEdit = #383838FF` (medium grey, not near-black)
    - **Tabs backdrop active** `TabsBackdropActive = #202020FF` (dark, not white — fixed hover/active state)
    - **Removed duplicate backdrop assignments** that were overriding color values (caused `attempt to index local 'texture' (a number value)` error)
    - **STEALTH search bar** fixed from `{1,1,1,1}` (white) to `#0D0D0DFF` (correct dark)

99. **Textures — Synced from Zygor**:
    - **Global skins folder** — 67 texture files copied from `ZygorGuidesViewer\Skins\*.tga`
    - **Skin subfolders synced** — starlight-glass, stealth-glass, midnight all have complete texture sets
    - **guideicons-big.tga** — copied to all skin folders (was missing)
    - **guideicons-small.tga** — copied to all skin folders

---

### Session 20: Viewer & Step Completion System (2026-04-15)

100. **ui/ViewerFrame.xml** (new) — XML template file with Zygor-compatible frame structure:
    - `XPlore_StepLine_Template` — Step line button with back texture, icon, label, clicker
    - `XPlore_StepLineBack_Template` — Background with fade animation
    - `XPlore_TitleButton_Template` — Title bar buttons with KeyValue buttonkey mapping
    - `XPlore_DefaultStep_Template` — Single step with slideup/fadeout animations
    - `XPlore_ViewerFrame_Template` — Main frame with TitleBar, TabContainer, Toolbar, Scroll, Flash, Resizers
    - Added to TOC load order

101. **Guide.lua — Step Completion Logic**:
    - **Goal:IsComplete()** rewritten with action-specific completion checks (quest accept/turnin/kill/collect/use/equip/talk/buy, achievement, skill, rep, travel/fly/explore/discover/home, confirm/click)
    - **Goal:CheckQuestAccepted()** — checks if quest is in quest log
    - **Goal:CheckQuestCompletion()** — checks if quest is complete
    - **Goal:CheckAchievementCompletion()** — version-aware achievement check
    - **Step:GetCompletionState()** — returns `"complete"` | `"active"` | `"upcoming"` | `"skipped"`

102. **Compat.lua — Expansion Constants**:
    - Added expansion constants: `EXPANSION_CLASSIC` (0) through `EXPANSION_DRAGONFLIGHT` (9)
    - Added `GetCurrentExpansion()` — returns current expansion based on WoW version
    - Added `IsGuideValidForCurrentVersion(guide)` — filters guides by expansion

103. **Parser.lua — Expansion Derivation**:
    - `DeriveExpansion()` now returns numeric expansion index (0-10) instead of string

104. **GuideSorting.lua — Expansion Filtering**:
    - `GetGuidesForCategory()` now filters guides when `filterByExpansion` profile option is enabled

105. **Test Guides** (new) — `Test_Classic_1_10.lua` (expansion=0), `Test_TBC_60_70.lua` (expansion=1), `Test_WotLK_68_80.lua` (expansion=2)

---

### Session 22: Breadcrumbs + Featured View + Favourites View (2026-04-15)

106. **GuideMenu.lua — Breadcrumb Navigation**:
    - **Breadcrumb element** added to section header — shows "All Guides > CategoryName" when in category view
    - Breadcrumb text in dim color, section name in bright color
    - Section header made clickable — clicking navigates back to home via `BreadcrumbBackFunc`
    - `BackBtn` click handler updated to use `MenuNavigate("home")`

107. **GuideMenu.lua — Favourites View**:
    - **Added "favourites" view** handler in `MenuNavigate()` — shows all favourited guides
    - **GetFavouriteGuides()** added to `GuideSorting.lua` — returns guides matching `XP.db.char.favourites`
    - **Sidebar FAVOURITES button** now routes to `MenuNavigate("favourites")` instead of category view

108. **GuideMenu.lua — Featured View**:
    - **FeaturedView frame** created and shown when clicking "Featured" header tab
    - **CreateFeaturedView(parent)** — creates view with title, description, dropdown selector, scrollable content
    - **PopulateFeaturedView(parent, dataset)** — populates content with guide cards for selected dataset
    - Dropdown with 3 datasets: Leveling Guides, Dungeon Guides, Profession Guides
    - Each dataset shows up to 5 guides as clickable cards with icon, title, and info

---

### Session 21: Tabs Context Menus + Favourites (2026-04-15)

106. **Tabs.lua — Context Menu Implementation**:
    - **TabMenuFrame** — `XPlore_TabMenuFrame` using `UIDropDownForkTemplate` created in `InitTabs()`
    - **ShowTabMenu()** — builds Zygor-style menu with: Recent guides (up to 3 from `guides_history`), Suggested guides (LEVELING type with SUGGESTED status), Open New Guide option
    - **HandleClick()** — left-click on active tab now shows context menu via EasyFork (was no-op)
    - **ShowContextMenu()** — right-click on inactive tab removes it; right-click on active tab shows menu
    - Added GLOBAL declarations for EasyFork, CloseDropDownForks, UIDropDownFork_separatorInfo, UIDropDownFork_SetAnchor

107. **Guide.lua — Favourite Methods**:
    - **Guide:ToggleFavourite()** — toggles guide in `XP.db.char.favourites` using `guide.title` as key
    - **Guide:IsFavourite()** — returns true if guide is in favourites
    - Favourites stored in AceDB char namespace as `{ [title] = true }`

108. **GuideMenu.lua — Star Button Support**:
    - **Favourite star button** (18×18) added to guide list rows, appears on hover
    - Uses STAR icon from `XP.IconSets.GuideIconsSmall` sprite sheet with proper texcoord mapping
    - Click toggles `guide:ToggleFavourite()` and updates star desaturation (gold=saturated, gray=desaturated)
    - Hover shows tooltip "Toggle Favorite"

---

### Session 18: GuideMenu Color Hierarchy Fixes + Sprite Sheet Icons (2026-04-14)

82. **GuideMenu.lua — Center column background** uses `XP:SD("GuideMenuContentBackground")` (`#202020`) instead of `XP:SD("GuideMenuMenuBackground")` (`#2B2B2B`) — center panel now darker than sidebar, matching Zygor's visual hierarchy.

83. **GuideMenu.lua — Section header background** uses `XP:ColorRGBA("bg_deep")` (`#111111`) instead of `bg_medium` (`#202020`) — matches Zygor's dark header bar.

84. **GuideMenu.lua — Detail panel background** uses `XP:SD("GuideMenuMenuBackground")` (`#2B2B2B`) instead of `bg_medium` (`#202020`) — matches Zygor's detail panel color.

85. **GuideMenu.lua — Home view background** uses `XP:SD("GuideMenuContentBackground")` (`#202020`) instead of `bg_deep` (`#111111`).

86. **GuideMenu.lua — Skin subscriber updates**: center column/home view/detail panel all re-read their respective SD keys at runtime; category button backdrop `bg_deep`→`bg_medium`; guide row backdrop `bg_deep`→`bg_medium`.

87. **GuideMenu.lua — ResolveIconPath** now uses `XP.ICON_PATH` and only appends `.tga` if no extension present (prevents double-extension like `icon.png.tga`).

88. **GuideMenu.lua — Skin subscriber now re-applies category button icons** on skin change by calling `GetCategoryIconPath(cat)` for each button with a `categoryID`.

89. **Skins.lua — `XP.IconSets` table added** — mirrors Zygor's IconSets with `TabsIcons` (guideicons-big, 512x512, 8 cols × 4 rows, 64×64 icons) and `GuideIconsSmall` (guideicons-small, 128×64, 4 cols × 2 rows, 32×32 icons). Each set has `getTexCoord(name)` and `getIconPath()` methods.

90. **Skins.lua — `GUIDEICONS_DIR` path added** (`textures/guideicons`); starlight and stealth `TabsIcons` now point to `GUIDEICONS_DIR .. "-big"` sprite sheet instead of individual icons folder.

91. **GuideSorting.lua — All 14 categories use sprite sheet** `{col, row}` table for icon field — maps to Zygor's `TabsIcons` grid (e.g., `DAILIES = {3, 1}`, `GOLD = {1, 2}`, `GEAR = {1, 4}`).

92. **GuideMenu.lua — `GetCategoryIconPath` now returns `(path, l, r, t, b)`** — sprite sheet path + normalized texcoords. All 4 icon-using sites updated to call `SetTexCoord` after `SetTexture` (category buttons, guide rows, home view cards, detail panel).

---

### Session 10: Tooltip, Announcements, Keybindings, GuideMenu Detail Panel (2026-04-13)

45. **Tooltip.lua** (new, ~250 lines) — Hooks `GameTooltip` to inject X-Plore step hints. Builds NPC/item/quest lookup tables from current step ±2. Appends `[X-Plore] Step N — Action` to matching unit/item/quest tooltips. Hooks quest log title buttons on WotLK.

46. **Announcements.lua** (new, ~190 lines) — Chat output on step navigation. Prints step title on advance; optional party/raid broadcast; zone-change guide hint. DB keys: `announcements.enabled/shareParty/showZoneHint`. Universal group detection (WotLK + Retail).

47. **Bindings.xml** (new) — Declares 4 key bindings: Toggle Viewer, Toggle Menu, Next Step, Prev Step. Header is `X-PLORE`.

48. **Keybinds.lua** (new) — Global stubs `XPLORE_BINDING_ToggleViewer/ToggleMenu/NextStep/PrevStep` called by Bindings.xml. Nil-checks `_G.XP` before delegating (safe to call before addon fully initializes).

49. **GuideMenu.lua** — Right detail panel fully implemented:
    - `DETAIL_WIDTH = 260` constant; `selectedGuideID` state variable
    - `centerCol` anchor adjusted to leave room for detail column
    - `detailCol` frame: background + left border
    - `CreateDetailPanel(parent)` — guide icon, title, info line, description, step count, expansion, Load button
    - `ShowGuideDetail(guideID)` — populates panel; marks active guide in green
    - `PopulateGuideList` row click now calls `XP:ShowGuideDetail(guide.id)` instead of loading immediately
    - Options tab removed from header; Options button is now sidebar-only

50. **textures/ui/minimap_button.tga** — 32×32 RGBA TGA generated from XPIcon.png via Python/Pillow.

51. **Core.lua** — `DB_DEFAULTS` extended with `announcements` sub-table; `OnEnable` wires Tooltip and Announcements; `NextStep`/`PrevStep`/`GoToStep` all call `XP.Announcements:OnStepAdvanced()`.

52. **X-Plore.toc** — Added Bindings.xml, Keybinds.lua (before Core.lua), Tooltip.lua, Announcements.lua (after Minimap.lua).

---

## Parity Gap Analysis (updated Session 22)

| Category | Zygor Files | X-PLORE Status |
|----------|-------------|----------------|
| Core lifecycle & addon frame | `ZygorGuidesViewer.lua`, `MasterFrame.lua`, `Config.lua`, `Class.lua` | ~65% |
| Guide data model | `Guide.lua`, `Step.lua`, `Goal.lua` | ~70% ✅ |
| Parser / loader | `ChainsParser.lua` | ~75% ✅ |
| UI — viewer (HUD) | `Viewer.lua` equivalent | ~70% ✅ |
| UI — guide menu | `GuideMenu.lua`, `GuideMenu-View.lua` | ~80% ✅ (featured, breadcrumbs, star button) |
| Skin system | `Skins.lua` | ~95% ✅ |
| Tab system | `Tabs.lua` | ~80% ✅ |
| Arrow / waypoints | `Pointer.lua`, `Waypoints.lua`, `Arrows/` | ~10% |
| Utility library | `Functions.lua` | ~25% |
| Sorting / categories | `GuideSorting.lua` | ~85% ✅ |
| Minimap button | `Minimap.lua` | ~80% |
| Auto-complete / detection | `AutoComplete.lua` | ~70% |
| Goal completion tracking | `Goal.lua` (74 symbols) | ~65% ✅ |
| Tooltip enhancements | `Tooltip.lua` | ~60% |
| Announcements | `Announcements.lua` | ~75% |
| Keybindings | `Bindings.xml` | ~80% |
| Widget factory | `Widgets.lua`, `UiWidgets/` | ~30% |
| Action bar integration | `ActionBar.lua` | 0% |
| Faction system | `Faction.lua` | 0% |
| Foglight (map reveal) | `Foglight.lua` | 0% |
| Dungeon system | `Dungeons.lua` | 0% |
| Bug report system | `BugReport.lua` | 0% |

### Session 22 Completed (2026-04-15)

1. **Tabs Context Menu** — `XPlore_TabMenuFrame` dropdown, `ShowTabMenu()` with recent/suggested guides, EasyFork integration
2. **Guide Favourites** — `Guide:ToggleFavourite()`, `Guide:IsFavourite()` methods, star button on guide rows using GuideIconsSmall sprite sheet
3. **GuideMenu Star Button** — Favourite button appears on row hover, toggles satiation state

### Recommended Session 23 Targets

1. **In-game test** — Verify skin system, tabs, favourites, featured view, breadcrumbs all work together
2. **Real guide data** — Load actual Zygor guide files instead of test guides
3. **Subcategory navigation** — Faction/expansion subgroups under Leveling category
4. **Action bar highlighting** — Flash action bar slot for cast/use/learn goals
5. **Arrow/Waypoints polish** — Complete the waypoint arrow system

---

### Session 23: Close Button Fix + Options Panel Redesign (2026-04-16)

109. **Close button sprite sheet fix** — `titlebuttons-thin.tga` was a 28-byte stub. Replaced with real 4-icon sprite sheet from Zygor (`close`, `close-hover`, `close-down`, `close-disabled` states). `SetTexCoord` mapping updated accordingly.

110. **Options panel redesign** — GuideMenu's inline options panel (`CreateInlineOptions`) completely redesigned:
    - New section layout: Display (scale, lock, skin selector), Arrow (enable, skin, size), Behaviour (auto-advance, skip completed, announcements), Theme (current tab Apply/Cancel preview)
    - Skin selector dropdown now shows actual skin names and previews apply on hover
    - **Bug fix**: Theme tab Apply/Cancel now correctly applies skin changes to `XP.ViewerFrame` instead of only `XP.MenuFrame`
    - **Bug fix**: ViewerFrame nil on startup — `XP.ViewerFrame` may not exist when `ApplySkin` is called, added nil check

111. **ViewerFrame.lua nil fix** — `XP.ViewerFrame` can be nil at skin application time if viewer hasn't been shown yet. Added nil guard in `XP:ApplySkin()` so it safely skips viewer skinning until the frame exists.

112. **Waypoints.lua nil fix** — `XP.Waypoints.ArrowFrame` nil check added to `UpdateWaypoint()`. Arrow frame may not exist yet when waypoint update fires on guide load.

---

### Session 24: PARITY_REPORT.md + Architecture Restructure (2026-04-16)

113. **PARITY_REPORT.md created** — Full gap analysis document created comparing X-PLORE to ZygorGuidesViewer across all systems. Covers 20+ categories with % parity scores and file-level detail.

114. **Architecture restructure** — All Lua files moved to `Code/` directory. All skins moved to `Skins/` directory. Complete universal directory structure:
    ```
    Code/
    ├── Core.lua, Compat.lua, Init.lua
    ├── Guide.lua, GuideLoader.lua, Parser.lua
    ├── Viewer.lua, GuideMenu.lua, Tabs.lua
    ├── Skins.lua, Localization/, Utils/
    Skins/
    ├── starlight/, midnight/, stealth/
    ├── starlight-glass/, stealth-glass/
    ```

---

### Session 25: GuideMenu Sidebar + Localization (2026-04-25)

115. **GuideMenu.lua — Options sidebar layout (13 bug fixes)**:
    - Sidebar categories now use `XP:SD()` skin-aware colors instead of hardcoded values
    - **NEW**: Options sidebar added to GuideMenu — GuideMenu no longer opens AceConfigDialog externally
    - `CreateInlineOptions()` builds a themed 14-tab sidebar panel (Display, Arrow, Behaviour, Theme, About)
    - Skin tab Apply/Cancel buttons now correctly scope `XP.ViewerFrame:ApplySkin()` to viewer
    - **Localization/Base.lua** — X_Plore_L string factory with `L["key"]` accessors
    - **Localization/Core_enUS.lua** — All English UI strings
    - **Localizers.lua** — Auto-detects locale and loads appropriate strings, wired to `XP.L`

---

### Session 26: ViewerFrame/Waypoints Load Fixes + Theme Tab Preview (2026-04-29)

116. **Theme tab Apply/Cancel preview** — Theme tab in options now shows live preview of skin on `XP.ViewerFrame` when selecting a skin, with Apply/Cancel to confirm or revert.

117. **ViewerFrame.lua nil fix** — `XP.ViewerFrame` may be nil when skin application or waypoint update fires. All such call sites now have nil guards.

118. **Waypoints.lua nil fix** — `XP.Waypoints.ArrowFrame` nil check added. Waypoint arrow only updated if frame exists.

---

### Session 27: ViewerFrame Nil Guard + Theme Tab Apply Fix (2026-04-29)

119. **ViewerFrame nil guard (extended)** — `XP.ViewerFrame` not yet created when ApplySkin is called from theme tab on startup. Added `if XP.ViewerFrame then` guard around viewer skinning in `XP:ApplySkin()`.

120. **Theme tab Apply/Cancel (corrected)** — Cancel now properly reverts to `XP.db.profile.skin` saved value instead of just re-applying current skin. Apply now saves to `XP.db.profile.skin` before calling `XP:ApplySkin()`.

---

### Session 9: AutoComplete, GoalTracker, Minimap (2026-04-13)

40. **AutoComplete.lua** (new, ~270 lines) — Auto-advances past already-completed quest steps when loading a guide; provides zone/level-based guide suggestion with one-time in-chat toast. Integrated into `LoadGuide()` and `OnZoneEvent()`.

41. **GoalTracker.lua** (new, ~400 lines) — Event-driven goal completion for every major action type: quest accept/turn-in, kill (COMBAT_LOG npcID + name matching), collect (bag scan), achievement, reputation, skill, spell learning, level. Per-step cache rebuilt on every step navigation. Fires `XP_GOAL_COMPLETED` / `XP_STEP_COMPLETED` messages and triggers auto-advance.

42. **Minimap.lua** (new, ~230 lines) — Draggable orbital minimap button. Left-click toggles Viewer, right-click UIDropDownMenu with Guide Menu / Options / Reset Position. Drag recalculates orbital angle from cursor. Position persisted in AceDB profile.

43. **Core.lua** — DB_DEFAULTS extended with `autoSkipCompleted`, `showMinimapButton`, `minimapAngle`. `OnEnable` wires Minimap, AutoComplete, GoalTracker. `LoadGuide`, `NextStep`, `PrevStep`, `GoToStep` all notify GoalTracker on step change. `OnZoneEvent` notifies AutoComplete.

44. **X-Plore.toc** — Added `AutoComplete.lua`, `GoalTracker.lua`, `Minimap.lua` to load order.

---

## Parity Gap Analysis (updated Session 9)

| Category | Zygor Files | X-PLORE Status |
|----------|-------------|----------------|
| Core lifecycle & addon frame | `ZygorGuidesViewer.lua`, `MasterFrame.lua`, `Config.lua`, `Class.lua` | ~65% |
| Guide data model | `Guide.lua`, `Step.lua`, `Goal.lua` | ~65% |
| Parser / loader | `ChainsParser.lua` | ~70% |
| UI — viewer (HUD) | `Viewer.lua` equivalent | ~65% |
| UI — guide menu | `GuideMenu.lua`, `GuideMenu-View.lua` | ~45% |
| Skin system | `Skins.lua` | ~85% (3 skins, runtime switch, selector) |
| Tab system | `Tabs.lua` | ~55% |
| Arrow / waypoints | `Pointer.lua`, `Waypoints.lua`, `Arrows/` | ~10% |
| Utility library | `Functions.lua` | ~25% |
| Sorting / categories | `GuideSorting.lua` | ~80% |
| Minimap button | `Minimap.lua` | ~80% ✅ |
| Auto-complete / detection | `AutoComplete.lua` | ~70% ✅ |
| Goal completion tracking | `Goal.lua` (74 symbols) | ~55% ✅ (kill/collect/rep/achieve/skill/learn) |
| Tooltip enhancements | `Tooltip.lua` | 0% |
| Widget factory | `Widgets.lua`, `UiWidgets/` | 0% |
| Action bar integration | `ActionBar.lua` | 0% |
| Announcements | `Announcements.lua` | 0% |
| Faction system | `Faction.lua` | 0% |
| Foglight (map reveal) | `Foglight.lua` | 0% |
| Dungeon system | `Dungeons.lua` | 0% |
| Keybindings | `Bindings.xml` | 0% |
| Bug report system | `BugReport.lua` | 0% |

### Recommended Session 10 Targets

1. **In-game test** — Verify all Session 9 additions work (minimap button appears, goal tracker fires, auto-skip works on login)
2. **Tooltip.lua** — Hook GameTooltip for NPC/item/quest hints from current step goals (~180 lines)
3. **Announcements.lua** — Chat output on step advance, optional party share (~80 lines, low effort)
4. **GuideMenu right column** — Guide detail panel (title, description, level range, estimated time) (~200 lines)
5. **Tabs: context menus** — Right-click on tab: Close, Close Others, Move Left/Right (~120 lines)


This section documents every Zygor system and file, X-PLORE's current coverage, and what work remains to reach 1:1 functional parity. Zygor source is at `C:\Users\kance\Documents\GitHub\ZygorGuidesViewer\` (1013 files, ~83 top-level Lua files + subdirectories).

### Summary Scorecard

| Category | Zygor Files | X-PLORE Status |
|----------|-------------|----------------|
| Core lifecycle & addon frame | `ZygorGuidesViewer.lua`, `MasterFrame.lua`, `Config.lua`, `Class.lua` | ~60% |
| Guide data model | `Guide.lua`, `Step.lua`, `Goal.lua` | ~55% |
| Parser / loader | `ChainsParser.lua` | ~70% (our Parser.lua covers ~70% of DSL) |
| UI — viewer (HUD) | `Viewer.lua` equivalent in ZGV main | ~65% |
| UI — guide menu | `GuideMenu.lua`, `GuideMenu-View.lua` | ~40% |
| Skin system | `Skins.lua` | ~35% (single hardcoded skin) |
| Tab system | `Tabs.lua` | ~55% |
| Arrow / waypoints | `Pointer.lua` (168 symbols), `Waypoints.lua`, `Arrows/` | ~10% |
| Utility library | `Functions.lua` (170 symbols) | ~25% |
| Sorting / categories | `GuideSorting.lua` | ~80% |
| Minimap button | `Minimap.lua` | 0% |
| Tooltip enhancements | `Tooltip.lua` | 0% |
| Auto-complete / detection | `AutoComplete.lua` | 0% |
| Widget factory | `Widgets.lua`, `UiWidgets/` (19 files) | 0% |
| Action bar integration | `ActionBar.lua` (33 symbols) | 0% |
| Announcements | `Announcements.lua` | 0% |
| Faction system | `Faction.lua` (30 symbols) | 0% |
| Foglight (map reveal) | `Foglight.lua` (22 symbols) | 0% |
| Dungeon system | `Dungeons.lua` | 0% |
| Gold/Auction UI | `GoldUI/` (11 files) | 0% (out of scope for WotLK target) |
| Retail-only systems | `Code-Retail/` (17 files) | 0% (out of scope) |
| Creature detector/viewer | `CreatureDetector.lua`, `CreatureViewer.lua` | 0% |
| Keybindings | `Bindings.xml` | 0% |
| Bug report system | `BugReport.lua` (53 symbols) | 0% |
| Error logger | `ErrorLogger.lua` | 0% |

---

### Detail: Systems With Partial Coverage

#### `Guide.lua` / `Step.lua` / `Goal.lua`

**Zygor has:**
- `Guide.lua` (10 symbols) — guide prototype, activation, deactivation
- `Step.lua` (30 symbols) — `New`, `IsComplete`, `RaceClassMatch`, `AreRequirementsMet`, `PrepareCompletion`, navigation helpers, waypoint cycling, sticky regions
- `Goal.lua` (74 symbols) — per-goal completion logic for every action type: quests, kills, collects, uses, gossip, rep, achievements, scenarios, dragonrace, skills, learning, discovery, fly paths; also tooltip integration, chat sharing, dot rendering

**X-PLORE has:**
- `Guide.lua` — Guide/Step/Goal metatables, `RegisterGuide` dual dispatch, deferred parse ✅
- Missing from Step: `IsComplete` full logic, `RaceClassMatch`, `AreRequirementsMet`, sticky step navigation, waypoint cycling per-step
- Missing from Goal: ~60 of 74 goal completion check functions; no per-goal tooltip, no chat share, no dot rendering

**Work remaining:**
1. Expand `Guide.lua` Goal prototype with per-action-type `IsComplete()` implementations (kill count tracking, collect count, use detection, gossip state, rep threshold, achievement, skill, discovery)
2. Add `Step:IsComplete()` that aggregates goal completion (all goals met OR `noComplete` bypass)
3. Add `Step:AreRequirementsMet()` for `|only if`, race/class filters, faction gates
4. Add sticky step region tracking in step navigation

---

#### `GuideMenu.lua` + `GuideMenu-View.lua`

**Zygor has (35 + 28 symbols across both files):**
- Three-column layout with home/guides/featured/options dispatch
- Guide detail/preview right column with description, level range, estimated time
- Breadcrumb navigation path (e.g. `Leveling > Alliance > Classic > 1-10`)
- Featured guides carousel / suggested-by-level system
- Guide search with level/zone/faction filters
- Favourites management (star/unstar)
- Right-click context menus on guide rows
- `GuideMenu-Home.lua` data: home page layout, spotlight entries
- `GuideMenu-Featured.lua` data: featured guide lists

**X-PLORE has:**
- Three-column layout ✅
- Sidebar category navigation ✅
- Guide list with load button ✅
- Inline options panel ✅
- Missing: breadcrumb nav, right column detail, featured/spotlight views, search filters (level/zone), favourites, context menus, Home data file, Featured data file

**Work remaining:**
1. Right column: guide detail panel (title, description, level range, faction icon, estimated time)
2. Home view: featured/suggested section, "continue where you left off" row
3. Breadcrumb bar at top of center column showing current navigation path
4. Guide search: filter by min/max level, zone name, faction
5. Favourites: `XPloreDB.profile.favourites[]` set + star toggle in guide rows + Favourites category
6. `GuideMenu_Home.lua` + `GuideMenu_Featured.lua` data files

---

#### `Pointer.lua` — Arrow, Map Markers, Ant Trail

**Zygor has (168 symbols):**
- `OnEvent` dispatcher for map open/close, zone change, player death, flight start/end
- `SanitizeMapFloor` — normalises floor/sublevel for map API differences across versions
- `HighlightTaxiDestination` / `HighlightFlightMapDestination` — highlights fly-path destinations on the flight map
- `getpin` / pin management — creates, moves, removes world map pins (POI dots)
- Arrow frame with directional texture, distance text, pulsing glow animation
- Minimap icon/dot tracking (separate from LibRover)
- Ant-trail animation — path of dots following the route to waypoint
- Coroutine-based smooth pathing — yields between path recalculations
- Corpse arrow — special mode shown on death to guide back to body
- Multi-waypoint cycling — cycles through sub-goals within a step
- POI tooltip on hover

**X-PLORE has:**
- `Waypoints.lua` — basic arrow using HereBeDragons + LibRover, updates on timer ✅
- Missing: world map pins, minimap dot, ant trail, coroutine pathing, corpse arrow, multi-waypoint cycling, flight path highlighting, POI hover tooltip

**Work remaining (high effort — ~400+ lines):**
1. Rewrite `Waypoints.lua` as `Pointer.lua`-equivalent or extend it substantially
2. World map pin: `WorldMapFrame` overlay frame with a visible POI dot at target coords
3. Minimap marker: small dot on the minimap edge or surface tracking waypoint bearing
4. Ant trail: animated dot-chain from player to waypoint using `OnUpdate` + coroutine
5. Corpse arrow: listen for `PLAYER_DEAD` / `PLAYER_ALIVE`, swap to corpse coords mode
6. Multi-waypoint: `step:GetNextCoords()` cycling through goal array
7. Flight path: hook `FlightMap_Frame` to highlight destination node

---

#### `Functions.lua` — Utility Library (170 symbols)

**Zygor has:** Deep utility library covering:
- Table ops: `TableKeys`, `CloneTable`, `MergeTable`, sorted iteration
- Animation: `MOVE`, `RotatePair`, frame alpha/size tweening
- UI helpers: frame pool management, backdrop setup, color manipulation
- Item processing: item link parsing, stat weight lookups
- Coroutine wrappers: promise-style async patterns
- String helpers: trim, split, color codes

**X-PLORE has:**
- `Compat.lua` — basic utilities: `XP.tlen()`, `XP.UnpackColor()`, string/table helpers (~20 functions)
- Missing: ~150 of 170 utility functions (animation tweening, coroutine wrappers, item parsing, advanced table ops, promise patterns)

**Work remaining:** Add to `Compat.lua` or create `Utils.lua` as needed when specific utilities are required by other systems. Implement lazily — add functions when a consumer needs them rather than porting all 170 upfront.

---

#### `Skins.lua` — Skin System

**Zygor has (713 lines):**
- `SkinProto` with `AddStyle()` method
- `SkinData(prop, ...)` accessor with fallback chain
- Multiple skins registered (at least 2-3 named skins)
- Per-element style overrides (fonts, colors, sizes, textures)
- Skin switching at runtime

**X-PLORE has:**
- Single hardcoded dark navy/cyan skin (~80 lines)
- `XP.Skins:GetColor()`, `XP.Skins:GetFont()` accessors ✅
- Missing: multiple skins, `SkinData` fallback chain, runtime skin switching, skin selector in options

**Work remaining:**
1. Define at least 2 named skins (dark + light/gold theme)
2. Implement `SkinData` accessor with fallback to default skin
3. Wire skin selector dropdown to `CreateInlineOptions` panel

---

#### `Tabs.lua` — Tab System

**Zygor has (~600 lines):**
- Tab pool with metatable inheritance
- Drag reorder with persistence
- Tab context menus (close, close others, move left/right)
- Tab colour by guide type
- AceDB `profile.tabs[]` persistence and restore on login

**X-PLORE has:**
- Pool-based tabs with drag reorder ✅
- AceDB persistence ✅
- Missing: context menus, tab colouring by guide type, close-others option, tab overflow scrolling when >6 tabs open

**Work remaining:**
1. Right-click context menu on tabs: Close, Close Others, Move Left/Right
2. Tab colour coding by guide category (leveling=blue, gold=yellow, dungeon=purple)
3. Tab overflow: horizontal scroll or `>>` overflow button when tabs exceed viewer width

---

### Detail: Systems Not Yet Started (0%)

#### `Minimap.lua` — Minimap Button

**What's needed:**
- Small icon button on the minimap border (standard WoW pattern: circular draggable)
- Left-click toggles viewer show/hide
- Right-click shows context menu: open guide menu, options, reset position
- Tooltip on hover
- Button position persisted in AceDB (`DB.profile.minimapPos`)
- Uses `LibDBIcon-1.0` (available in !X-Libs) or manual minimap button

**Estimated effort:** ~100-150 lines. Medium complexity — standard WoW minimap button pattern.

---

#### `Tooltip.lua` — Tooltip Enhancements

**What's needed:**
- Hook `GameTooltip:OnTooltipSetUnit` — add NPC notes for NPCs in current step goals
- Hook `GameTooltip:OnTooltipSetItem` — add item notes for collect/use goals
- Hook `GameTooltip:OnTooltipSetQuest` — add quest status indicator
- Show step-type icon next to relevant tooltips
- Universal: must work on WotLK (`GameTooltip:HookScript`) and Retail (`TooltipDataProcessor`)

**Estimated effort:** ~150-200 lines. Medium complexity, significant API difference between WotLK and Retail.

---

#### `AutoComplete.lua` — Auto Guide Detection / Step Skip

**What's needed:**
- On guide load, scan all steps and skip already-completed quests (`C_QuestLog.IsQuestFlaggedCompleted` / `IsQuestComplete`)
- On login, detect current quests in quest log and suggest or auto-jump to matching step
- `Step:ShouldSkip()` — returns true if all goals are already completed at load time
- Zone-based suggestion: if player is in Elwynn Forest, suggest Alliance leveling guides for that zone
- Level-based suggestion: suggest guide whose level range brackets the player's current level

**Estimated effort:** ~200-300 lines. Moderate complexity — mostly quest log API calls.

---

#### `UiWidgets/` — Widget Factory (19 files)

**Zygor has:**
- `Main.lua` — `UI:Create(type, parent)` factory dispatch
- `Button.lua` (17 symbols) — styled button widget
- `ToggleButton.lua` (21 symbols) — on/off toggle with state
- `DropDown.lua` (16 symbols) — dropdown selector
- `DropDownFork.lua` (13 symbols) — cascading dropdown
- `RadioButton.lua` (25 symbols) — radio group
- `ProgressBar.lua` (14 symbols) — XP/rep/kill progress bar
- `ScrollBar.lua` (15 symbols) — custom scrollbar
- `ScrollItems.lua` (8 symbols) — virtualized scroll list
- `ScrollTable.lua` (9 symbols) — table with sortable columns
- `EditBox.lua` (6 symbols) — styled edit box
- `HyperEditBox.lua` (5 symbols) — hyperlink-aware edit box
- `SuggestBox.lua` (11 symbols) — edit box with autocomplete suggestions
- `Multiselect.lua` (17 symbols) — multi-checkbox selector
- `Frame.lua` (10 symbols) — base container frame widget
- `ActionButton.lua` (23 symbols) — action button with spell/item binding
- `ScrollChild.lua` (1 symbol) — scroll child sizing helper
- `Visuals.lua` (5 symbols) — visual decoration helpers

**X-PLORE has:** Nothing — all widgets built inline using raw `CreateFrame`. No factory, no widget reuse.

**Work remaining:** The widget factory is consumed heavily by `GuideMenu`, `Viewer`, and `Options`. Priority order for implementation:
1. `Button` and `ToggleButton` — used in options panel and menu
2. `DropDown` — needed for skin selector, sort options
3. `ProgressBar` — needed for kill/collect goal display in Viewer
4. `ScrollItems` — needed for virtualized guide list in GuideMenu (performance at 1000+ guides)
5. Others as needed

**Estimated effort:** ~600-800 lines total. High effort but highly reusable.

---

#### `ActionBar.lua` — Action Bar Integration (33 symbols)

**What's needed:**
- Highlight spell/ability in action bar when current goal is `cast`, `use`, or `learn`
- Flash border effect on the relevant action bar slot
- Support for multi-bar layouts (main bar, extra bars)
- Works on WotLK (fixed bar layout) and Retail (dynamic action bar API)

**Estimated effort:** ~150-200 lines.

---

#### `Faction.lua` — Faction Tracking (30 symbols)

**What's needed:**
- Track player's rep with factions mentioned in current guide goals
- Display rep progress bar in Viewer for `rep` goals
- Hook `COMBAT_TEXT_UPDATE` or `UPDATE_FACTION` events
- Universal rep API (WotLK: `GetFactionInfo()`, Retail: `C_Reputation.*`)

**Estimated effort:** ~200 lines.

---

#### `Announcements.lua` — Chat Announcements (4 symbols)

**What's needed:**
- Optional chat output when player advances to next step
- `ZONE_CHANGED` announcement when entering a new zone relevant to guide
- Party/raid share: broadcast current step info to group

**Estimated effort:** ~80 lines. Low complexity.

---

#### `Foglight.lua` — Minimap Reveal (22 symbols)

**What's needed:**
- Fills in the minimap fog of war for zones/areas in the current guide
- Uses `Minimap:SetZoom()` + coordinate scanning pattern
- WotLK: `FillLocalMinimap()` pattern; Retail: different API

**Estimated effort:** ~250 lines. Complex — fog API is version-sensitive.

---

#### `Dungeons.lua` — Dungeon System (2 symbols)

**What's needed:**
- Detect when player enters a dungeon/instance
- Switch guide to dungeon mode (instance map, boss encounter steps)
- `GetRealZoneText()` / `IsInInstance()` based detection

**Estimated effort:** ~100 lines. Low complexity initially.

---

#### `Bindings.xml` — Key Bindings

**What's needed:**
- `BINDING_HEADER_XPLORE` header
- Bindings: toggle viewer, open menu, next step, prev step, toggle arrow

**Estimated effort:** ~30 lines XML + ~30 lines Lua handler.

---

#### `BugReport.lua` / `ErrorLogger.lua`

**What's needed:**
- In-game error capture with stack traces
- Bug report dialog with copy-to-clipboard
- `pcall` wrappers around critical paths

**Estimated effort:** ~200 lines. Lower priority (dev tooling).

---

### Retail-Only / Out-of-Scope Systems

The following Zygor systems are **Retail-only** and out of scope for the WotLK 3.3.5a target. They should be implemented in gated `if XP_IsRetail then` blocks only if demand exists:

| System | Files | Notes |
|--------|-------|-------|
| Pet Battle system | `Code-Retail/PetBattle.lua` | Battle pet goal tracking |
| Talent Advisor | `Code-Retail/TalentAdvisor.lua` | Spec/talent suggestions |
| Gold UI / Auction Tools | `GoldUI/`, `Code-Retail/GoldUI/` | Auction house scanner |
| World Quests | `Code-Retail/WorldQuests.lua` | BFA+ world quest tracking |
| Gear Finder / Item Score | `Code-Retail/Item-GearFinder.lua` | Stat weight item comparison |
| Profession system | `Code-Retail/Profession.lua` | Crafting order tracking |
| Dragon Race goals | `Code-Retail/Goal-Dragonrace.lua` | Dragonflight racing mini-game |
| Retail Pointer Map | `Code-Retail/PointerMap.lua` | Retail-specific map overlay |

---

### Effort Estimation Summary

| Priority | System | Estimated Lines | Effort |
|----------|--------|----------------|--------|
| P1 | Goal completion logic (kill/collect/use/gossip/rep/achieve) | ~400 | High |
| P1 | Arrow system rewrite (world map pin, minimap dot, ant trail) | ~400 | High |
| P1 | AutoComplete (skip completed steps on load, zone/level suggest) | ~250 | Medium |
| P2 | Minimap button | ~130 | Low |
| P2 | GuideMenu right column + breadcrumbs + search filters | ~300 | Medium |
| P2 | Widget factory (Button, Toggle, DropDown, ProgressBar, ScrollItems) | ~700 | High |
| P3 | Tooltip enhancements | ~180 | Medium |
| P3 | Action bar highlighting | ~180 | Medium |
| P3 | Faction tracking + rep bar | ~200 | Medium |
| P3 | Skins (multi-skin + runtime switch) | ~150 | Low |
| P3 | Tabs (context menu, colour, overflow) | ~120 | Low |
| P4 | Announcements | ~80 | Low |
| P4 | Dungeons (instance detection) | ~100 | Low |
| P4 | Keybindings | ~60 | Low |
| P4 | Foglight (minimap fog reveal) | ~250 | Medium |
| P4 | BugReport / ErrorLogger | ~200 | Low |

**Total estimated remaining work: ~3,700 lines of new Lua** across ~10-15 new/expanded files.

---

### Recommended Session 8 Targets

Based on impact vs. effort, the recommended next work items are:

1. **Third in-game test** — Verify all 5 Session 7 fixes work on WotLK 3.3.5a before adding more code
2. **AutoComplete.lua** — Skip completed quests on guide load (immediately improves usability for real guides)
3. **Minimap button** — Low effort, high visibility; makes the addon feel complete
4. **Goal completion wiring** — At minimum: `accept`/`turnin` (already partial), `kill` (COMBAT_LOG event), `collect` (BAG_UPDATE event)
5. **Copy real Zygor guides** — Copy WotLK guide files from Zygor source into `Guides/` and update `Autoload.xml` to test with real data at scale


