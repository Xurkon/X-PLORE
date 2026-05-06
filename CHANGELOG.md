# X-PLORE Changelog

All notable changes to X-PLORE are documented here.

---

## [Unreleased] — DugisGuideViewer Protected Proxy (2026-05-06)

### Summary

Rewrote the `DugisGuideViewer` shim in `GuidesCompat.lua` to fix 50+ `GetCreateTable` nil errors and prevent DugiGuides infrastructure files from silently overwriting our `RegisterGuide` shim.

### Bug Fixes

#### GuidesCompat.lua — DugisGuideViewer shim overwrite + 50+ GetCreateTable nil errors

**Root cause (three compounding issues):**

1. `DugiGuides/Era/Legacy_MoP/Leveling/Modules.common.lua` runs on load and calls `PlaceUtilityStubs()`, which does `DGV.RegisterGuide = DGV.NoOp` — silently destroying our guide translation shim.
2. The same file redefines `DGV.RegisterModule` using `DGV.GetCreateTable()`, which was nil, causing the 50+ crashes.
3. The old `RegisterModule` returned a plain stub table — `Initialize()` and `Load()` were never called, so `RegisterGuide` was never reached even when the shim was intact.

**Fix — Protected proxy + auto-init `RegisterModule`:**

- `DugisGuideViewer` is now an empty proxy table backed by a private `_dgv` data table.
- `__index` reads all fields from `_dgv`; `__newindex` silently ignores writes to `RegisterGuide` and `RegisterModule` so infrastructure files cannot overwrite them.
- `RegisterModule` now returns a **MakeModule proxy**: a table whose `__newindex` intercepts the assignment of `Initialize` and immediately calls it via `pcall`, then auto-calls `Load()` if it was defined inside `Initialize` — matching the DugiGuides module lifecycle without requiring the DugiGuides core.
- Added `NoOp` (empty function) and `GetCreateTable` (pool factory with `:Insert()` / `:Pool()`) to `_dgv` so infrastructure files that use them do not crash.

---

## [Unreleased] — Guide Load Error Fixes (2026-05-05)

### Summary

Fixed 8 runtime errors from ZygorOfficial, DugiGuides, and RXP guide files failing to load. Root causes were missing ZGV shim sub-namespaces, missing DugiGuides global stubs, and syntax errors in two DugiGuides source files.

### Bug Fixes

#### GuideLoader.lua — ZGV shim missing sub-namespace fields (commit `33ade5c`)

ZygorOfficial guide files reference several ZGV sub-tables and fields that were absent from the compatibility shim, causing load-time index/call errors:

- `ZGV.IMAGESDIR = ""` — string prefix for guide image paths (e.g. `ZGV.IMAGESDIR .. "BfAIntro"`)
- `ZGV.BETASTART = function() end` — no-op; called between guide registrations in `ZygorLevelingCommonMID.lua`
- `ZGV.InPhase = function() return false end` — no-op; used in guide condition functions
- `ZGV.NoOp = function() end` — standard no-op reference used by DugiGuides
- `ZGV.Gold = { guides_loaded = false }` — sub-namespace for gold/gathering guides; `.guides_loaded` set by those files
- `ZGV.Poi = { Sets = {}, db = {} }` — sub-namespace for POI data; Rare spawn guides store `ZGV.Poi.Sets.SetName = {...}`

Affected files: `ZygorGatheringAllianceWODTrial.lua`, `StartersAlliance.lua`, `ZygorLevelingCommonMID.lua`, `BFA_A_Rares.lua`.

#### GuidesCompat.lua — DugiGuides global stubs (commit `33ade5c`)

Legacy DugiGuides files (especially `Legacy_MoP/Leveling/Modules.common.lua`) reference two globals that only exist when the full DugiGuides addon core is loaded. Added minimal stubs before guide files execute:

- `LuaUtils = { DugiGuidesIsLoading = false }` — utility table; `Modules.common.lua` accesses `LuaUtils.DugiGuidesIsLoading`
- `DugisLocals = setmetatable({}, {__index = function(_, k) return tostring(k) end })` — localization table; returns key as fallback string for any unknown entry

#### DugiGuides — Syntax errors in truncated source files (commit `33ade5c`)

Two DugiGuides files were truncated, missing their closing `end` statements:

- `Era/Legacy_MoP/Achievements/Alliance/Keymaster_A.lua` — Appended `\n    end\nend` to close `Guide:Load()` and `Guide:Initialize()` (file ended at `end)` which only closed the step function and `RegisterGuide` call)
- `Era/Legacy_MoP/Achievements/Horde/Keymaster_H.lua` — Same fix applied

#### DugiGuides — Unclosed long string (commit `33ade5c`)

- `TWW/Retail/Events/20th_Anniversary_Daily_Weekly.lua` line 67: `{description = [[...quests]})` had only one `]` before `})`, leaving the `[[` long string open through the rest of the file. Fixed: `]})` → `]]})`

---

## [Unreleased] — Guide Infrastructure Rebuild

### Summary

Full multi-source guide infrastructure implemented. Three bug fixes applied, Autoload.xml rebuilt from disk, and a runtime guide format conversion layer added.

### Bug Fixes

#### GuideMenu.lua — SetColorTexture API crash (commit `463b384`)
- `SetColorTexture` is a Legion+ API not present in WotLK/Vanilla.
- Replaced `SetColorTexture(1,1,1,0.08)` with `SetTexture(1,1,1,0.08)` which works universally across all WoW versions.

#### Minimap.lua — Invisible minimap button (commit `a01c721`)
- `ICON_PATH` pointed to `minimap_button.tga` (doesn't exist). Fixed to `Skins/XPIcon.tga`.
- `SetTexCoord(0,1, 0,1/4)` was cropping the icon assuming a 4-row sprite sheet. Fixed to `SetTexCoord(0,1, 0,1)` for a single-frame icon.

### Guide Infrastructure

#### Guides/ — Directory restructured into 6 source groups
- `ZygorOfficial/` — official Zygor guides organized by expansion
- `CoreysGuides/` — Corey's WotLK leveling guides
- `Epoch/` — Epoch server-specific guides (ZygorGuidesViewer fork)
- `Ding80Guides/` — Ding80 leveling guides
- `DugiGuides/` — Dugi's Guide Viewer format guides (`Legacy_Core_5.15/` addon core excluded)
- `RXP/` — RestedXP format guides

#### Guides/Autoload.xml — Fully regenerated
- Previous flat root-level `<Script>` entries replaced by 3,704 entries covering all 6 source groups.
- `XPCommon.lua` and new `GuidesCompat.lua` load first; `DugiGuides/Legacy_Core_5.15/` (273 conflicting core files) excluded.

#### Guides/GuidesCompat.lua — New file: runtime format conversion shims
- **DugisGuideViewer shim** — translates both old (string title) and new (category array) API variants to `ZygorGuidesViewer:RegisterGuide()`. Handles faction filtering, step prefix commands (`A/T/C/K/R/h`), and all pipe-delimited tags (`|QID|`, `|N|`, `|NPC|`, `|Z|`, `|OBJ|`, `|ITEM|`).
- **RXPGuides shim** — parses `#group`/`#subgroup` directives for guide path, `<< Alliance/Horde` faction filters, and translates `.goto/.accept/.turnin/.kill/.collect/.use/.hs/.train` step commands to ZygorGuidesViewer format.
- Both shims: universal Lua 5.0–5.4, no `goto`, no `table.unpack`.

#### Guides/XPCommon.lua — Removed no-op stubs
- Previous no-op `DugisGuideViewer` and `RXPGuides` stubs removed; replaced by comment pointing to `GuidesCompat.lua`.

### Documentation

#### CHANGELOG.md — Updated with all changes above

#### README.md — Updated guide sources table and status

---

## Session 55 — 2026-05-05

### Summary

**Guide folder hierarchy implemented; folder grouping and visual bugs fixed.** Two passes of work this session:

**Pass 1 (commit `542648b`):** Guides displayed as a flat list; now clicking a category shows folder rows grouped by the guide-set section name, and clicking a folder drills in to show guides within.

**Pass 2:** Three visual/logic bugs fixed after in-game testing:
- Folder grouping used the wrong path segment (`pathParts[n-1]` → deep sub-zone names at top level). Fixed to always use `pathParts[2]` for depth-3+ guides and `pathParts[1]` for depth-2 guides.
- Bare guides still appeared below folder rows at the category level. Now suppressed — category level shows ONLY folder rows when folders exist.
- Guide rows had solid black backgrounds (`bg_deep` backdrop fill). Removed fill; rows are now transparent so the panel background shows through.
- Hover highlight used `selection.tga` (opaque dark). Replaced with `SetColorTexture(1,1,1,0.08)` — subtle light-grey overlay matching Zygor.

### Changes

#### Guide.lua — `folder` field on guide objects

- `folder` in `guideData`: depth ≥ 3 → `pathParts[2]` (first sub-section); depth 2 → `pathParts[1]` (guide-set name); depth 1 → nil.
- `obj.folder = data.folder` in `Guide:New` persists the field on the guide object.

#### GuideMenu.lua — Folder hierarchy in the guide browser

- **`currentFolder`** state variable added.
- **`MAX_GUIDE_ROWS`** raised 20 → 100.
- **`GetFoldersForCategory(catID)`** — groups guides by `.folder`, returns `folders[]` + `bareGuides[]`.
- **`PopulateFolderList(folders, bareGuides)`** — renders folder rows then bare guides.
- **`MenuNavigate("category")`** — bare guides suppressed at category level (`{}`) when folders exist.
- **`MenuNavigate("folder", catID, folderName)`** — new drill-in view with breadcrumb.
- **Row backdrop** — removed `"bg_deep"` fill; rows transparent.
- **Selection highlight** — `SetColorTexture(1,1,1,0.08)` replaces dark `SelectionTexture`.
- **`PopulateGuideList`** — resets `isFolder=false` and icon vertex color on reuse.

**Commits:** `542648b` + fix commit (this pass)

---



### Summary

**Guide registration pipeline fully fixed; guides now populate the Guide Menu.** Two compounding bugs prevented all registered guides from appearing in the UI. First, `_RegisterGuideFromZygor` was receiving `header=rawText, data=nil` for all Zygor-format guide files (2-arg calling convention not detected), causing silent discard of every guide. Second, `InitCategories()` in `GuideSorting.lua` was unconditionally resetting `GuidesByCategory = {}` on `ADDON_LOADED`, destroying all guide data that had already been registered during the loading screen. Both bugs are now fixed; guides load and appear in the Guide Menu.

### Changes

#### Guide.lua — 2-Arg Calling Convention Detection

- **Bug (fixes bug: all guides silently discarded):** Zygor guide files call `:RegisterGuide(title, rawText)` (2 args). The shim dispatched to `XP:RegisterGuide(title, rawText, nil)`, but `_RegisterGuideFromZygor` expected `(header, data)` — receiving `header=rawText` and `data=nil`, it could not locate any `|S` data block and discarded every guide.
- **Fix:** Added 2-arg detection at the top of `_RegisterGuideFromZygor`: when `type(header) == "string" and data == nil`, reassign `data = header; header = nil` before processing.

**Commit:** `b20f87b`

#### GuideSorting.lua — InitCategories No Longer Wipes Pre-Registered Guides

- **Bug (fixes bug: guide menu empty on every load):** `InitCategories()` (called from `OnInitialize` / `ADDON_LOADED`) had `self.GuidesByCategory = {}` unconditionally. This ran *after* all guide files had already populated `GuidesByCategory` during the loading screen, silently wiping every registered guide before `CreateGuideMenu()` could read them.
- **Fix:** `InitCategories()` now saves `existingGuides = self.GuidesByCategory or {}` before resetting, then restores each category's guide list after rebuilding the category map. Guides registered to unknown categories are also preserved via a fallback loop.

**Commit:** `dffb9ec`

---

## Session 53 — 2026-05-05

### Summary

**Guide shim fully implemented; all guide files renamed Zygor* → XP*; category routing expanded.** ~28 guide files were crashing at load with `attempt to call method 'DoMutex' (a nil value)` and `ZygorCommon.lua` crashed with `attempt to call method 'RegisterGuideSorting' (a nil value)`. The shim now implements all methods and properties that Zygor guide files expect. All 60+ guide data files renamed from `ZygorXxx.lua` to `XPXxx.lua`; `Autoload.xml` updated to match. Guide category routing expanded to cover Macros, Gear, Scenarios, Hunter Pets, and Battle Pets.

### Changes

#### GuideLoader.lua — Shim Full Implementation

1. **`DoMutex(key)`** — Deduplication guard: first call per key → `false` (continue loading), repeat calls with same key → `true` (abort). Fixes all ~28 guide files using `if ZGV:DoMutex("KeyName") then return end` at top
2. **`RegisterGuideSorting(order)`** — Accepts Zygor's category sort order table; delegates to `XP:RegisterGuideSorting()` in GuideSorting.lua
3. **No-op stubs** — `FocusStep`, `FocusStepQuiet`, `GetReputation`, `DoEmote`, `SetGuide`, `Print` all stubbed safely
4. **Default properties** — `AllianceInstalled=true`, `HordeInstalled=true`, `AllianceDailiesInstalled=true`, `HordeDailiesInstalled=true`, `CommonGear=true`, `CommonPets=true`, `guide_images_installed=true`, `guidesets={}`, `questsbyid={}`, `completedQuests={}`, `completioninterval=1`, `ItemScore={}`
5. **New aliases** — Shim now also installs as `_G.XPViewer = shim` and `_G.XPV = shim` alongside the existing `ZygorGuidesViewer` / `ZGV` aliases

#### GuideSorting.lua — Category Additions

1. **MACROS category** — Added `{ id="MACROS", name="Macros", icon={3,3}, order=12 }` to CATEGORIES table
2. **`XP:RegisterGuideSorting(order)`** — New method that maps incoming Zygor category names (e.g. `"Pets & Mounts"`, `"Loremaster"`) to X-PLORE category IDs and re-sorts the CATEGORIES table by order

#### Parser.lua — DeriveCategory Expansion

- Added keyword mappings missing from `DeriveCategory`:
  - `macro` → `MACROS`
  - `gear` → `DUNGEONS`
  - `scenario` → `DUNGEONS`
  - `hunter` → `PETS_MOUNTS`
  - `battlepet` / `battle pet` → `PETS_MOUNTS`
  - `include` → `LEVELING` (shared include data, no display category needed)
  - `starter` → `LEVELING`

#### Guide File Rename — All Zygor* → XP*

All 60+ guide data files in `Guides/` renamed from `ZygorXxx.lua` to `XPXxx.lua`:

| Subfolder | Files renamed |
|---|---|
| Root (`Guides/`) | XPCommon, XPMacros, XPGuidesAlliance, XPGuidesHorde, XPIncludesAlliance, XPIncludesHorde, XPDailiesAlliance, XPDailiesHorde, XPAchievementAlliance |
| `Achievements/` | 5 files (XPAchievements*) |
| `Dailies/` | 4 files (XPDailies*) |
| `Dungeons/` | 7 files (XPDungeon*, XPGear*) |
| `Leveling/` | 5 files (XPLeveling*) |
| `PetsMounts/` | 16 files (XPBattlePet*, XPHunterPet*, XPMounts*, XPPets*) |
| `Professions/` | 6 files (XPProfessions*) |
| `Reputations/` | 4 files (XPReputations*) |
| `Titles/` | 4 files (XPTitles*) |

- `Guides\Autoload.xml` fully rewritten with all XP* paths
- Guide file internal content unchanged (still references `ZygorGuidesViewer` global, which the shim provides)

**Commit:** `5d3a8df`

---

## Session 50 — 2026-05-05

### Summary

**Zygor skin architecture replicated exactly.** The monolithic `Skins.lua` (~1900 lines with all style data embedded) has been refactored into Zygor's separated architecture: a slim engine file plus independent `Skin.lua` and per-style `Style.lua` files. The fabricated `TabDecorTex`/`TabsDecor` concept (which caused an orange overlay across the tab container) has been fully removed. Dynamic `ADDON_NAME` path fix ensures correct texture loading regardless of installed folder name.

### Changes

#### Skin Engine (`Skins.lua`)

1. **Slimmed to engine only** — All 4 style data blocks (STARLIGHT, STEALTH, STARLIGHT_GLASS, STEALTH_GLASS) extracted; file reduced from ~1900 to ~1260 lines
2. **`XP:AddSkin(id, name)`** — New function matching Zygor's `ZGV:AddSkin()`; creates and registers a skin, returns the skin table
3. **`XP:GetSkinPath(skin, style)`** — New function matching Zygor's `ZGV:GetSkinPath()`; builds texture path from skin/style IDs
4. **`XP.InitStyleTables(style)`** — New wrapper calling `InitColors` + `InitFonts` + `InitSizes` + `InitBackdrops`; called at end of each Style.lua
5. **Helper exposure** — `XP.HTML`, `XP.SolidBackdrop`, `XP.TiledBackdrop`, `XP.NoEdgeBackdrop` now exposed on XP namespace for use in Style.lua files
6. **Removed premature init** — `activeSkin`/`activeStyle` lines at file bottom deleted; initialization now happens at addon load via `XP:InitSkins()` → `XP:SetSkin()`
7. **Removed ZGV shim** — Legacy `ZygorGuidesViewer` compatibility block deleted

#### `Skins\Default\Skin.lua`

- Replaced stub with full skin registration matching Zygor's `Skins\Default\Skin.lua`
- `XP:AddSkin("default", "Default")` → returns `Skin`
- Registers 4 styles: `starlight`, `starlight-glass`, `stealth`, `stealth-glass`
- `Skin.defaultstyle = starlight`; glass variants marked `GUIHidden = true` with `inheritedStyle` set
- Defines `Skin:CreateFrame()`, `Skin:UpdateSkin()`, `Skin:UpdateLocking()`, `Skin:AlignFrame()`

#### Style Files (4 files)

- **`Skins\Default\Starlight\Style.lua`** — Populated with all STARLIGHT style data; Zygor-pattern namespace guard + STYLEDIR/SKINSDIR locals; ends with `XP.InitStyleTables(STYLE)`
- **`Skins\Default\Stealth\Style.lua`** — Populated with all STEALTH style data; same pattern
- **`Skins\Default\Starlight-glass\Style.lua`** — Replaced ZGV retail namespace (used `local name,ZGV=...`) with correct X-PLORE version; STARLIGHT_GLASS data
- **`Skins\Default\Stealth-glass\Style.lua`** — Replaced ZGV retail namespace; STEALTH_GLASS data

#### `Skins\Default\Skin.xml`

- Replaced empty TODO stub with valid XML matching Zygor's load order:
  `ViewerFrame.lua` → `ViewerFrame.xml` → `Skin.lua` → `Starlight\Style.lua` → `Starlight-glass\Style.lua` → `Stealth\Style.lua` → `Stealth-glass\Style.lua`

#### `X-Plore.toc`

- Skins section reduced from 9 entries to 2: `Skins.lua` + `Skins\Default\Skin.xml`
- Removed: `Skin.lua`, all `Style.lua`, `ViewerFrame.lua`, `ViewerFrame.xml`, `Midnight\Style.lua` (now loaded via Skin.xml — no double-loading)

#### Orange Tab Fix — TabDecorTex Removed (`Viewer.lua`, `Skins\Default\ViewerFrame.lua`)

- Deleted `tabDecorTex` creation block in `Viewer.lua` (~lines 144–154): `tabContainer:CreateTexture` + `SetAllPoints()` that was flooding the tab container with an orange overlay
- Deleted `TabDecorTex` skin-update block in `Viewer.lua` (~lines 434–443)
- Deleted `if f.TabDecorTex then` update block in `ViewerFrame.lua` (~lines 54–63)
- `TabsDecor`/`TabDecorTex`/`viewer8-tabs` concepts do not exist in Zygor — they were fabricated and caused the orange tab container bug

#### Dev Docs

- `SKIN_REFACTOR_PLAN.md` added to X-PLORE folder (not tracked)
- `.gitignore` updated: `*_PLAN.md`, `*_REPORT.md`, `*_ANALYSIS.md` patterns excluded

**Commits:** `356180f`, `fbc5846`

---

## Session 51 — 2026-05-05

### Summary

**Tab button template overhaul.** Three root causes of broken tab appearance identified and fixed: (1) `UIPanelButtonTemplate` was applying Blizzard's silver gradient to all tab buttons; (2) plain `CreateFrame("Button")` in WotLK has no built-in font string, causing `SetText` to silently fail; (3) `f.TabBg` is a Texture, not a Frame, so `SetBackdrop` silently no-ops on it. All three fixed. Tab container background now uses the correct `TabsContainerBackdropInactive` color instead of `bg_medium`.

### Changes

#### `Tabs.lua`

1. **No template** — All button creations switched to `XP.CreateBackdropFrame("Button", ...)` (plain backdrop buttons, no Blizzard silver gradient)
2. **Font string** — Added `CreateFontString` + `SetFontString` before `SetText` (WotLK requires explicit font string on plain buttons)
3. **`TabBackdrop()`, `SetTabInactive()`, `SetTabActive()`** — New helpers for consistent tab state management
4. **`SkinTabButton()`** — Now creates + sets a font string before calling `SetText`
5. **`SetAsCurrent`** — Uses `SetBackdropColor` instead of `LockHighlight`/`UnlockHighlight`
6. **Hover feedback** — `ShowInteraction`/`HideInteraction` backdrop color changes on enter/leave

#### `Skins\Default\ViewerFrame.lua`

- `ApplySkin`: replaced broken `XP:ApplyBackdrop(f.TabBg, "TabBackdrop")` with `XP.SetTexColor(f.TabBg, ...)` using `TabsContainerBackdropInactive` color (TabBg is a Texture, not a Frame)

#### `Viewer.lua`

- Tab container bg now uses `XP:SD("TabsContainerBackdropInactive")` instead of hardcoded `bg_medium = #202020`

**Commit:** `7de0e70`

---

## Session 52 — 2026-05-05

### Summary

**Guides path fixed, step colors corrected, icon paths fixed.** The TOC referenced `Guides-Retail\Autoload.xml` after the user renamed the folder; WoW silently ignored the missing include so no real guides loaded. `Autoload.xml` was completely rewritten to load all ~70 guide files. The orange active-step background (`#FE610026`) was traced to a missing `StepActiveColor` in Starlight/Style.lua and fixed. Icon paths now correctly resolve to `Interface\Icons\<name>`.

### Changes

#### `X-Plore.toc`

- Line 52: `Guides-Retail\Autoload.xml` → `Guides\Autoload.xml`

#### `Guides\Autoload.xml`

- Completely rewritten — loads all ~70 real guide files organized by category (Common, Root bundles, Leveling, Dailies, Dungeons, Achievements, Professions, Reputations, PetsMounts, Titles)
- All 193 guide/image files added to git tracking (previously untracked)

#### `Skins\Default\Starlight\Style.lua`

- Added three missing color definitions:
  ```lua
  STYLE.StepActiveColor   = HTML("#202020FF")   -- all steps same dark bg (Zygor parity)
  STYLE.StepCompleteColor = HTML("#1A2B1AFF")   -- subtle green tint for completed
  STYLE.StepUpcomingColor = HTML("#202020FF")   -- same dark bg for upcoming
  ```
- Root cause: `InitColors()` fallback was `HTML("#FE610026")` — 15% alpha orange — whenever `StepActiveColor` was nil

#### `Viewer.lua`

- Icon paths: bare icon names now resolve to `Interface\Icons\<name>`; full `Interface\...` paths pass through unchanged; missing icons clear texture with `""` (no white placeholder squares)

**Commit:** `2f6df9c`

---

## Session 49 — 2026-05-05

### Summary

**Visual bug fixes and runtime error resolution.** Multiple crashes and visual issues resolved: `SetMaxLines` nil guard, `UpdateForStep` number/object mismatch, tab sprite sheet icons replacing solid colors, invalid anchor point `MIDDLE→CENTER`, hamburger icon fallback to standalone `.tga`. Dynamic `ADDON_NAME` path used throughout to fix texture loading on non-standard folder names.

### Changes

#### Runtime Errors Fixed

1. **`SetMaxLines` nil guard** (`Viewer.lua:572`) — Added `if f.StepText and f.StepText.SetMaxLines then` guard; `SetMaxLines` is absent on some WotLK frames
2. **`UpdateForStep` number/object crash** (`Faction.lua:273`, `ActionBar.lua:204`) — Both files now guard `if type(step) ~= "table" then return end` before indexing step properties
3. **Invalid anchor `MIDDLE`→`CENTER`** (`Viewer.lua:579`) — `SetPoint("MIDDLE", ...)` replaced with `SetPoint("CENTER", ...)`; `MIDDLE` is not a valid WoW region anchor point

#### Tab Icons — Sprite Sheet (`Tabs.lua`, `Viewer.lua`)

- Tab icons now use `guideicons-small` sprite sheet (extracted per-tab via `SetTexCoord`) instead of solid-color textures
- Active tab icon highlighted; inactive tabs use dimmed version of same sprite

#### Orange Bleed Fix — NoEdge Backdrops (`Skins.lua`, `ViewerFrame.lua`)

- Step and tab backdrops changed to `NoEdgeBackdrop()` — removes the edge tile that was bleeding orange color into adjacent elements
- `c8cf7d7`

#### Dynamic Addon Path (`Skins.lua`, Style files)

- `ADDON_DIR` now computed from `ADDON_NAME` vararg: `"Interface\\AddOns\\" .. ADDON_NAME`
- Fixes texture loading when addon is installed as `X-Plore-2.0.0` instead of `X-Plore`

#### Hamburger Icon (`Viewer.lua`)

- Replaced corrupted `titlebuttons-thin` sprite sheet reference with standalone `hamburger-icon.tga`
- `177a221`

**Commits:** `d17e054`, `5142bff`, `177a221`, `918c594`, `fc4e624`, `c8cf7d7`, `5c88ede`

---

## Session 44 — 2026-05-05

### Summary

**Hamburger menu button implemented.** The viewer frame's menu button now uses the hamburger/menu icon from Zygor's `titlebuttons-thin` sprite sheet (column 3 = menu/hamburger) instead of the generic `INV_Misc_Map_01` map icon. Also removed a stale `UpdateSkin` override that was resetting the button texture back to the old icon every skin refresh.

### Changes

#### Viewer Menu Button (Viewer.lua)

1. **Sprite-sheet icon** — Menu button now uses `titleBtnPath` (`titlebuttons-thin`) with `SetTexCoord(3/8, 4/8, row)` to extract the hamburger icon from column 3, row 0 (normal), row 1 (pushed), row 2 (highlight)
2. **Full button states** — Normal, pushed, and highlight textures all properly set (previously had no pushed/highlight states)
3. **Removed stale override** — `UpdateSkin` function had a reset at line 477 that called `SetNormalTexture("Interface\\Icons\\INV_Misc_Map_01")` on the menu button, overriding the sprite — removed

**Commit:** `1fd700a`

---

## Session 45 — 2026-05-05

### Summary

**Tab bar visual parity fixes.** Three key visual issues addressed based on Zygor screenshot analysis: (1) Main viewer frame backdrop changed from `"main"` to `"WindowBackdrop"` for rounded glass corners instead of sharp square corners. (2) Empty state now shows "Welcome to Zygor Guides" title + "Click here to load a guide" text centered in the scroll area. (3) Tab bar styling cleaned up — tabs use flat dark background with text icons (no panel backdrop borders).

### Changes

#### Viewer.lua

1. **WindowBackdrop** — Main viewer frame now uses `ApplyBackdrop(frame, "WindowBackdrop", "bg_deep", nil)` + `SetBackdropBorderColor` for hairline border; produces rounded glass corners matching Zygor
2. **Empty state title** — Added `EmptyTitleText:CreateFontString` with "Welcome to Zygor Guides" in `text_bright` 18pt above the click-here text
3. **Title button path** — `titleBtnPath` now uses `XP:SD("TitleButtons")` for style-specific skin path instead of hardcoded root path
4. **RegisterSkinSubscriber backdrop** — Updated to use same WindowBackdrop approach

#### Tabs.lua

1. **ReanchorTabs() + button anchor** — + button now anchored RIGHT of container at all times; tabs anchor LEFT and fill left-to-right
2. **Flat tab styling** — Removed panel backdrop from tabs (tabs use flat dark background with text+icon, matching Zygor)

**Commit:** `7a133bc`

---

## Session 46 — 2026-05-05

### Summary

**Tab overflow system implemented.** When too many guide tabs are open to fit in the tab bar width, tabs shrink to minimum 60px and overflowed tabs are hidden. A ">" overflow button appears at the right side of the tab bar (before the + button) showing how many tabs are hidden. Clicking ">" opens a dropdown listing overflowed guide tabs — clicking one activates it. Zygor pattern: `> [+]` at right edge, tabs fill left-to-right.

### Changes

#### Tabs.lua

1. **OverflowButton** — New `>` button created in `InitTabs()` next to AddButton; hidden when all tabs fit, shown when overflow exists
2. **isOverflowed flag** — Each tab tracks `isOverflowed = true/false`; set during `ReanchorTabs()` based on whether the tab's right edge fits before the overflow button zone
3. **ReanchorTabs() overflow logic** — Rewritten: hides all tabs first, then reveals only tabs whose right edge fits before the overflow button zone; tab width shrinks to `math.max(60, floor(availWidth / count))`; overflow button positioned before + button
4. **ToggleOverflowMenu()** — Toggles overflow dropdown visibility
5. **ShowOverflowMenu()** — Creates dropdown (if needed) using `UIDropDownMenuTemplate` + `UIDropDownMenu_Initialize`; lists all overflowed tabs with their titles; `ToggleDropDownMenu(1, nil, menu)` to open
6. **HideOverflowMenu()** — Hides the overflow dropdown
7. **Empty tab bar case** — With no tabs, + button now anchors LEFT (not RIGHT)

**Commit:** `790ddde`

---

## Session 48 — 2026-05-05

### Summary

**Hamburger icon fix.** The menu button in the title bar was showing a wrong icon (column 3 of the titlebuttons sprite sheet produced a H/dumbbell shape) instead of the three horizontal lines. Fixed to use column 0 which contains the hamburger/menu icon. Also changed the highlight texture from ADD blend (overbright) to a proper highlight using the same row as hover state.

### Changes

#### Viewer.lua

1. **Hamburger icon column** — Menu button `SetTexCoord` changed from `(3/8, 4/8, 0, 1/4)` to `(0, 1/8, 1/4, 2/4)` for normal, `(0, 1/8, 2/4, 3/4)` for pushed, `(0, 1/8, 1/4, 2/4)` for highlight
2. **Highlight blend mode** — Removed `SetBlendMode("ADD")` from highlight texture (was causing overbright glow); highlight now uses standard alpha blend matching the hover row

**Commit:** `ec3aa75`

---

## Session 47 — 2026-05-05

### Summary

**Empty state gap fix.** The viewer frame had an extra 28px "InfoBar" element between the title bar and tab bar that Zygor doesn't have. This created a large empty gap between the tab bar bottom and the dark gray body when no guide was loaded. Removed the InfoBar entirely — the tab bar now flows directly into the toolbar with no gap, matching Zygor's layout of: TitleBar → Tab bar → Toolbar → Dark gray body (no large blank area).

### Changes

#### Viewer.lua

1. **Removed InfoBar** — Deleted the `InfoBar`, `InfoGuideName`, `InfoLevel`, `InfoStep`, `InfoBarDivider` elements and their update logic
2. **Tab bar anchor fix** — `tabY` changed from `infoBarY - INFO_HEIGHT - 1` to `-(self:Size("titlebar_height") + 1)` so tab bar starts immediately after title divider
3. **Removed TabDivider** — Deleted `TabDivider` (was an extra divider line between tab bar and toolbar that Zygor doesn't have)
4. **Toolbar anchor fix** — `toolbarY` changed from `tabDivY - 1` to `-(self:Size("titlebar_height") + self:Size("tab_height") + 1)` so toolbar starts immediately after tab bar
5. **ToolbarDivider color fix** — Removed `TabDivider` reference from `ApplySkin` divider list

**Commit:** `1456671`

---

## Session 39 — 2026-05-04

### Summary

**CIRCULAR theme mask fixed.** The circular arrow theme now uses `UI-Minimap-ZoomButton-Mask` (a filled circle) instead of `Interface/Common/RoundFrame` (which is an annulus/ring). Added `AddMaskTexture` availability guard for pre-WotLK 3.3.5 clients.

### Changes

#### CIRCULAR Theme Fix (Waypoints.lua)

1. **Mask texture corrected** — `UI-Minimap-ZoomButton-Mask` is a filled circle; `Interface/Common/RoundFrame` is a ring/annulus — wrong shape for clipping a waypoint arrow to a circle
2. **WotLK compatibility guard** — `AddMaskTexture` method existence checked before use; pre-3.3.5 clients fall back to square arrow (no crash)
3. **Reset on non-circular** — `SetTexCoord(0,1,0,1)` now properly resets arrow UV when switching away from CIRCULAR theme

**Commit:** `06a8282`

---

## Session 38 — 2026-05-04

### Summary

**Arrow theme system implemented.** The Options.lua arrow theme selector now works — five arrow variants are available (Modern, Classic, Minimal, Circular, Waypoint). Fixed namespace mismatch between `XP.Waypoints:` calls from Options.lua and the `XP:` function definitions in Waypoints.lua. Added `SetArrowScale` and fixed `ToggleArrow` to accept an enabled boolean.

### Changes

#### Arrow Theme System (Waypoints.lua)

1. **`XP:GetArrowThemes()`** — Returns a table of 5 available themes:
   - `MODERN` → `XPArrow.tga`
   - `CLASSIC` → `XPArrow2.tga`
   - `MINIMAL` → `XPArrow3.tga`
   - `CIRCULAR` → `XPArrow.tga` with circular mask via `AddMaskTexture`
   - `WAYPOINT` → `waypoint_arrow.tga`

2. **`XP:SetArrowTheme(themeID)`** — Applies the selected theme:
   - Sets arrow texture
   - Creates/removes circular mask texture (using WoW `Interface/Common/RoundFrame`)
   - Saves selection to `XP.db.profile.arrow.theme`
   - Updates `Waypoint.currentTheme`

3. **`XP:SetArrowScale(scale)`** — Sets arrow frame scale and persists to `XP.db.profile.arrow.scale`.

4. **`XP:ToggleArrow(enabled)`** — Now accepts an explicit `enabled` boolean (previously toggle-only). `nil` = toggle.

5. **`XP.Waypoints:` proxy** — Created to bridge Options.lua's `XP.Waypoints:Method()` calls to actual `XP:Method()` implementations:
   - `GetArrowThemes`, `SetArrowTheme`, `ToggleArrow`, `SetArrowScale`, `RefreshWaypointArrow`, `UpdateArrowSettings`

6. **Theme auto-load on creation** — `CreateWaypointArrow()` now calls `XP:SetArrowTheme(savedTheme)` if `XP.db.profile.arrow.theme` is set.

#### Background

- Init.lua has `XP.Waypoint = {}` (singular) but Options.lua calls `XP.Waypoints:` (plural) — the proxy resolves this without renaming anything.
- Functions were already on `XP:` not `XP.Waypoint:` — Options.lua was calling the wrong namespace entirely.

---

## Session 37 — 2026-05-04

### Summary

**TALK/USE goal handlers, selene error resolution, Guide40.lua added.** Implemented two missing goal type handlers (TALK and USE) that were confirmed in active guide data. Resolved all 266 selene errors down to 0. Added Guide40.lua from Zygor3.3.5 repo.

### Changes

#### TALK Goal Handler (commit `3f931f8`)

1. **`OnGossipShow()`** (`GoalTracker.lua`) — New event handler for `GOSSIP_SHOW` event. Extracts npcID from `UnitGUID("npc")` by parsing bits 6-10 of the GUID string, matches against watched TALK goals.

2. **`_talkGoalsByNpcID`, `_talkGoalsByName` caches** (`GoalTracker.lua`) — Two-cache system: npcID-based matching for numeric IDs and name-based matching as fallback.

3. **`RebuildTalkCache()`** (`GoalTracker.lua`) — Rebuilds TALK goal cache on `QUEST_ACCEPTED` and guide load events.

4. **`CheckTalkGoals(npcID, npcName)`** (`GoalTracker.lua`) — Checks both npcID and npcName against watched TALK goals.

#### USE Goal Handler (commit `3f931f8`)

5. **`OnItemUsed(spellID, spellName)`** (`GoalTracker.lua`) — New handler for `UNIT_SPELLCAST_SUCCEEDED`. Matches spellID against `_useGoalsBySpellID` and itemID caches. Handles "use on target" scenarios (e.g. First Aid Kit on soldiers).

6. **`_useGoalsBySpellID`, `_useGoalsByItemID` caches** (`GoalTracker.lua`) — Dual-index cache for USE goals: spellID-based (primary for cast events) and itemID-based (for item consumption events).

7. **`GetItemSpellID(itemID)`** (`GoalTracker.lua`) — Resolves itemID → spellID via `GetItemInfo`. For items where itemID == spellID (most consumables), returns itemID directly.

8. **`RebuildUseCache()`** (`GoalTracker.lua`) — Populates both spellID and itemID indexes when a goal is tracked.

9. **`CheckUseGoals(itemID, spellID)`** (`GoalTracker.lua`) — Checks both caches when an item is used or consumed.

10. **`OnEvent` dispatch** (`GoalTracker.lua`) — Extended to handle `GOSSIP_SHOW` and `UNIT_SPELLCAST_SUCCEEDED` events.

#### USE Parser Update (commit `3f931f8`)

11. **`use` parser** (`Parser.lua`) — Updated to extract spellID via `GetItemSpellID` and pass both itemID and spellID to `TrackGoal`.

#### Selene Error Resolution (commit `baf84a2`)

12. **`Skins.lua` fixes** — Fixed two copy-paste bugs: `AssignToTexture` used undefined `name` instead of `icon`; `AssignToButton` used undefined `name` instead of `texture`.

13. **`Core.lua` if_same_then_else fixes** — Consolidated duplicate `self:ResetFrames()` call; added `allComplete = false` + inner `else` to match branch structure.

14. **`GoalTracker.lua` if_same_then_else fix** — Merged duplicate `goal.complete = true` branches for `IsQuestCompleted` and `IsQuestInLog`.

15. **`selene.toml`** — Created with `[lints]` section and `incorrect_standard_library_use = "allow"` to handle variadic WoW API calls with flexible arg counts.

16. **`wow_classic.yml` globals** — Added `XP`, `CombatLogGetCurrentEventInfo`, `X_Plore_L`, `format`, `UnitIsVisible`, `UnitGUID`, `C_QuestLog`, `C_AchievementInfo`, `GameFontNormalSmall`. All use `property: new-fields` (NOT `type: global`).

#### Guide40.lua Added (commit `baf84a2`)

17. **Guide40.lua** — Copied from Zygor3.3.5 repo (`ZygorGuidesViewer/Guides/Guide40.lua`). 133KB, 4,497 lines of guide data.

---

## Session 36 — 2026-05-04

### Summary

**Event-Driven Step Completion Tracking + Comprehensive Debug Infrastructure.** Two major improvements: (1) step progress now uses actual quest completion APIs instead of position-based tracking, and (2) 1,831 commented debug markers added across all 25 code files for future troubleshooting.

### Changes

#### Step Completion Tracking (commit `e7dbb02`)

1. **`Guide:GetCompletedSteps()`** (`Guide.lua`) — Counts steps where all goals are complete, using `Goal:IsComplete()` per-goal assessment. Replaces position-based `currentStep` index.

2. **`Guide:GetFirstIncompleteStep()`** (`Guide.lua`) — Scans from step 1 and returns the first step that has any incomplete goals. Used to auto-advance to the correct position when loading a guide.

3. **`Guide:GetProgressPercent()`** (`Guide.lua`) — Now uses `GetCompletedSteps()` divided by `numSteps × 100` instead of the raw `currentStep` index. Reflects actual completion state.

4. **`Step:GetCompletionState(activeStepNum)`** (`Guide.lua`) — Replaced stub with completion-based logic:
   - `"complete"` — all goals done, or step index < first incomplete step
   - `"active"` — step is the first incomplete step
   - `"upcoming"` — future step with incomplete goals

5. **`Goal:CheckQuestTurnin()`** (`Guide.lua`) — Full implementation with API fallback chain: `C_QuestLog.IsQuestFlaggedCompleted` (retail) → `IsQuestComplete` (WotLK/TBC/Vanilla) → `false` (fallback).

6. **`Goal:IsQuestInLog()`** (`Goal.lua`) — New function: checks if a quest is in the player's quest log. Uses `C_QuestLog.GetLogIndexForQuestID` (retail) with `GetQuestLogTitle` scan fallback (Vanilla/TBC).

7. **`Goal:CheckQuestAccepted()`** (`Goal.lua`) — Reordered to check retail API first (`C_QuestLog.GetLogIndexForQuestID`), then fallback scan.

8. **`Goal:CheckQuestCompletion()`** (`Goal.lua`) — Updated to use `C_QuestLog.IsQuestFlaggedCompleted` (retail) → `IsQuestComplete` (WotLK/TBC/Vanilla).

9. **`Viewer.lua:620`** — `UpdateViewer()` now calls `guide:GetFirstIncompleteStep()` to determine the active step for progress display.

10. **`Viewer.lua:694`** — Step line styling now uses `step:IsComplete()` and `step:GetCompletionState(activeStepNum)` instead of `i < currentStep`.

11. **Merged skipped/upcoming branches** (`Viewer.lua:724-738`) — `skipped` and `upcoming` had identical code; merged into single `else` block. Fixes `if_same_then_else` selene warning.

12. **`wow_classic.yml` additions** — Added: `C_QuestLog` (property), `C_QuestLog.IsQuestFlaggedCompleted`, `IsQuestComplete`, `GetQuestLogTitle`, `GetNumQuestLogEntries`, `C_AchievementInfo`, `GameFontNormalSmall`, `GetAchievementNumCriteria`.

#### Debug Markers (commit `8668132`)

13. **Comprehensive debug infrastructure** — Added 1,831 commented debug markers across all 25 code files:

| Method | Count | Purpose |
|--------|-------|---------|
| `ENTER` | 661 | Function entry points |
| `PARAM` | 691 | Named parameter values |
| `EXIT` | 461 | Function exit points |
| `EVENT` | 18 | Event registrations |

All markers are purely commented (zero runtime cost until enabled). Search with `grep -n 'DEBUG:'`.

Files receiving markers: `Guide.lua`, `Viewer.lua`, `Options.lua`, `Parser.lua`, `GuideMenu.lua`, `Skins.lua`, `GoalTracker.lua`, `Waypoints.lua`, `Core.lua`, `UiWidgets/Main.lua`, `Tabs.lua`, `StaticPopups.lua`, `Minimap.lua`, `ActionBar.lua`, `AutoComplete.lua`, `Compat.lua`, `Tooltip.lua`, `Faction.lua`, `GuideLoader.lua`, `Announcements.lua`, `GuideSorting.lua`, `Keybinds.lua`, `Init.lua`, `Skins/Default/ViewerFrame.lua`, `Config.lua`.

### Files Modified

- `Guide.lua` — Completion tracking: `GetCompletedSteps()`, `GetFirstIncompleteStep()`, `GetProgressPercent()`, `Step:GetCompletionState()`, `Goal:CheckQuestTurnin()`, `IsQuestInLog()`, `CheckQuestAccepted()`, `CheckQuestCompletion()`; debug markers: +108
- `Viewer.lua` — Active step detection, step line styling, merged skipped/upcoming branches; debug markers: +10
- `wow_classic.yml` — Added C_QuestLog, IsQuestFlaggedCompleted, IsQuestComplete, GetQuestLogTitle, GetNumQuestLogEntries, C_AchievementInfo, GameFontNormalSmall, GetAchievementNumCriteria
- `Goal.lua` — `IsQuestInLog()`, reordered `CheckQuestAccepted()`
- `Options.lua` — Debug markers: +390
- `Parser.lua` — Debug markers: +223
- `GuideMenu.lua` — Debug markers: +211
- `Skins.lua` — Debug markers: +196
- `GoalTracker.lua` — Debug markers: +76 (incl. 12 EVENT markers)
- `Core.lua` — Debug markers: +75 (incl. 10 EVENT markers)
- `UiWidgets/Main.lua`, `Tabs.lua`, `StaticPopups.lua`, `Minimap.lua`, `ActionBar.lua`, `AutoComplete.lua`, `Compat.lua`, `Tooltip.lua`, `Faction.lua`, `GuideLoader.lua`, `Announcements.lua`, `GuideSorting.lua`, `Keybinds.lua`, `Init.lua`, `Skins/Default/ViewerFrame.lua`, `Config.lua` — Debug markers

### Selene

- `0 errors` on key files (Guide.lua, Viewer.lua, GoalTracker.lua, Step.lua)
- 37 pre-existing warnings about missing WoW API globals (unchanged)

### Commits

- `e7dbb02` — `feat: event-driven step completion tracking with WoW API fallback`
- `8668132` — `debug: comprehensive ENTER/EXIT/PARAM/EVENT markers across entire codebase`

---

## Session 35 — 2026-05-04

### Summary

**Guide Info Bar.** Added a new info bar between the title bar and tabs that displays the currently loaded guide's name, level range, and active step title — matching Zygor's GuideInfo frame layout.

### Changes

1. **Added Guide Info Bar frame** (`Viewer.lua`) — New `InfoBar` frame (28px) positioned below the title divider and above the tab container. Three sub-elements:
   - `InfoGuideName` (left, bold white, 40% width) — shows `guide.titleShort` or `guide.title`
   - `InfoLevel` (center, cyan, 20% width) — shows `Lv X-Y` or `Lv X+` for range
   - `InfoStep` (right, dim white, 40% width) — shows active step name via `step:GetTitle()` or `Step X / Y` fallback

2. **Added `XP:UpdateInfoBar(frame)` method** (`Viewer.lua`) — Populates all three InfoBar fields when a guide is loaded; clears all fields when no guide is active.

3. **Integrated into viewer update flow** (`Viewer.lua`) — `XP:UpdateViewer()` now calls `UpdateInfoBar()` after loading/unloading a guide.

4. **Recalculated tab divider Y** (`Viewer.lua`) — Fixed `tabDivider` Y offset to account for the new info bar height (`INFO_HEIGHT = 28`).

5. **Extended WoW stdlib** (`wow_classic.yml`) — Added 70+ missing WoW API globals (`GameFontNormalSmall`, `GameFontHighlightSmall`, `UIDropDownMenu_*`, `C_Timer.After`, `LibStub`, `StaticPopupDialogs`, `MinimapCluster`, `IsInInstance`, `IsShiftKeyDown`, `IsControlKeyDown`, `IsAltKeyDown`, `IsModifiedClick`, and many more) to achieve 0 selene errors across all Lua files.

6. **Fixed nil guide bug** (`GuideMenu.lua:870`) — `favBtn OnClick` referenced undefined `guide` variable; fixed by storing `row.guide = guide` in `CreateGuideRow` scope and using `self_btn:GetParent().guide`.

7. **Added selene config** (`selene.toml`) — Configured `std = "wow_classic"` for linting.

### Files Modified

- `Viewer.lua` — Guide Info Bar: 954 insertions, 303 deletions
- `GuideMenu.lua` — Fixed nil guide bug
- `wow_classic.yml` — Added 70+ WoW API globals
- `selene.toml` — Added selene linter config
- `wow_classic_additions.yml` — Created as supplemental stdlib (placeholder)

### Selene

- `0 errors` across all Lua files
- All 87 Lua files had UTF-8 BOM stripped

---

## Session 34 — 2026-05-04

### Summary

**Remove Apply/Cancel/OK Buttons — Real-Time Settings.** Refactored the options panel to save settings immediately on change, removing the pending-change tracking system entirely. Settings now behave like modern applications — no Apply, no Cancel, no OK button.

### Changes

1. **Removed Apply/Cancel/OK button row** (`GuideMenu.lua:1278–1322`) — Deleted the entire `btnRow` frame, `MakeActionButton` factory, `okBtn`, `applyBtn`, and `cancelBtn`. Replaced with a no-op `MarkPendingChange` stub to satisfy existing call sites.

2. **Removed pending-change tracking system** (`GuideMenu.lua:1325–1409`) — Deleted `DeepCopySettings`, `RestoreSettings`, `MarkPendingChange`, and all three button `OnClick` scripts. Deleted module-level `hasPendingChanges` and `savedSettings` variables.

3. **Simplified skin preview** (`GuideMenu.lua:2787–2790`) — `SkinButton OnClick` no longer marks pending; skin now applies immediately via `ApplySkin(profile.skin or "default")`.

4. **Reduced content scroll bottom padding** (`GuideMenu.lua:1244`) — Changed `contentScroll` bottom offset from `58` to `10` to remove the space reserved for the button row.

### Files Modified

- `GuideMenu.lua` — Removed ~135 lines; skin OnClick simplified; content scroll padding reduced
- `README.md` — Updated status from broken/incomplete to in-development
- `CHANGELOG.md` — Removed Session 33, stripped [Unreleased] from all sessions, deleted relay test spam

---

## Session 31 — 2026-05-02

### Summary

**Universal Minimap Button (Retail + WotLK) + Masque Support + Options Panel Fixes.** Five iterative fixes to get the minimap button working across all WoW versions. Added Masque library integration so users with Masque get proper circular icons. Fixed options panel button overlap (btnRow width collapse). Comprehensive documentation update.

### Bugs Fixed

1. **Options panel buttons overlap** (`GuideMenu.lua:1281`) — `btnRow` frame had `SetHeight(48)` with only `BOTTOMLEFT`/`BOTTOMRIGHT` anchors to `contentScroll` and no explicit width. Without `SetWidth`, the frame collapsed to minimal width, stacking all buttons at identical coordinates. Fix: `SetSize(440, 48)` to give explicit width.

2. **`AddMaskTexture` nil on WotLK** (`Minimap.lua`) — `AddMaskTexture` is WoW 8.0+ only. Added `if self._masqueSkinned then return end` guard at start of mask path.

3. **WotLK mask fixes (multiple iterations)** — `SetMaskTexture` is a Minimap method, not a texture method; `TextureBase:SetMask` does not exist; `SetPortraitToTexture` calls `SetTexture(path)` internally resetting `SetTexCoord` (incompatible with atlas UV selection). Final universal pattern: Retail uses `AddMaskTexture(mask)`; WotLK renders square (fully functional). Masque overrides this entirely when installed.

4. **GuideMenu cancel → SetSkin numeric skinID crash** (`Skins.lua:962`) — `RestoreSettings()` restores `XP.db.profile` with `skin=numeric` from DeepCopy; Cancel calls `SetSkin(revertedSkin)` with a number. Fix: combined-format parser guarded with `if type(skinID) == "string" and ...`.

### Features Added

1. **Masque support** (`Minimap.lua`) — After button creation, probe `LibStub("Masque", true)`. If present: `Masque:Group("X-PLORE", "Minimap Button"):AddButton(btn, {Icon=ICON_PATH, Square=true})`. Masque handles circular masking on all WoW versions including WotLK. Manual `AddMaskTexture` path skipped when `_masqueSkinned` is true.

### Files Modified

- `Minimap.lua` — Universal button (SetNormalTexture/SetHighlightTexture/SetPushedTexture), Masque registration, pcall guard on `AddMaskTexture`
- `GuideMenu.lua` — btnRow `SetSize(440, 48)` fix
- `Skins.lua` — skinID type guard on combined-format parser

---

## Session 27 — 2026-04-29

### Summary

**Theme Tab Apply/Cancel Fix + Two Critical Load-Crashes Fixed.** Skin preview now properly respects Apply/Cancel — pending selection survives tab switches and reverts on Cancel. Two nil-index errors that prevented the addon from loading at all were fixed.

### Bugs Fixed

1. **Skin preview commits immediately on click** (GuideMenu.lua) — `SkinButton OnClick` was calling `XP:SetSkin()` and writing `XP.db.profile.skin` directly, committing the skin before the user could Cancel. Fix: `PendingSkin` stored on parent frame, Apply/OK commits, Cancel reverts.

2. **`XP.ViewerFrame` nil at file-load time** (`Skins/Default/ViewerFrame.lua:14`) — `XP.ViewerFrame:ApplySkin(self)` colon syntax crashed because the file loads before `XP.ViewerFrame` is created at runtime. Fix: `XP.ViewerFrame.ApplySkin(self)` (dot notation, explicit self).

3. **`self.db.profile.arrow` nil on all reads** (`Waypoints.lua:101`) — AceDB doesn't auto-vivify nested default tables on read. `self.db.profile.arrow.enabled` returned nil. Fix: nil-chain guards added to all 4 affected `arrow.*` accesses.

### Files Modified

- `GuideMenu.lua` — SkinButton OnClick → set PendingSkin; MarkPendingChange/RefreshSkinButtons/ApplySkin handlers updated
- `Skins/Default/ViewerFrame.lua` — colon syntax → dot notation
- `Waypoints.lua` — 4 nil-chain guards added around arrow profile reads

---

## Session 26 — 2026-04-29

### Summary

**Options Sidebar Layout COMPLETED.** Refactored GuideMenu.lua inline options from a broken inline tab bar into a proper Zygor-matching layout with left sidebar + content area. Full StaticPopup system implemented (197-line replacement of stub). Localization infrastructure (Base.lua + Core_enUS.lua) completed and wired. Multiple crash bugs fixed.

### Files Modified

#### GuideMenu.lua (5 patches)
- **Stray dots** (line ~1543): `child:Destroy()` instead of Hide+SetParent nil
- **Divider cutoff** (line ~1420): `TOPRIGHT` → `BOTTOMRIGHT` anchor
- **scrollChild nil** (lines ~1551–1564): dynamic height + ContentChild/ContentScroll stored on parent
- **Orphan square** (line ~1260): `BOTTOMLEFT` anchor added to content scroll area
- **SetVerticalScrollRange crash** (line 1559): replaced with `ContentScrollBar:SetMinMaxValues()`
- **SetLockHighlight API fix** (line ~1165): replaced non-existent `SetLockHighlight(isActive)` with `LockHighlight()` / `UnlockHighlight()` calls in `CreateTabButtons`
- **Tab closure capture bug** (line ~1165): moved `tabButtons = {}` before the tab loop; added `local tabId = tabInfo.id` capture; inlined `SetActiveTab` into OnClick so all closures reference the correct captured `tabId`
- **XP.Viewer:UpdateSteps nil guard** (line ~1786): `if XP.Viewer and XP.Viewer.UpdateSteps then XP.Viewer:UpdateSteps() end`

#### Init.lua (patch)
- `XP:OpenURL()` — replaced broken `StaticPopup_Show("CONFIRM_REDIRECT_LINK", url)` with `XP:StaticPopup_ShowRedirect(url)`
- Added `XP.OnRedirectConfirmed` callback — fires after user accepts the redirect popup, then populates the chat editbox with the URL
- Font objects (`XP.font_dialog`, `XP.font_dialog_gray`) now created here instead of Options.lua so they're available at StaticPopup text rendering time

#### Viewer.lua (patch)
- **Nil viewer profile** (line 359): `local viewerProfile = self.db.profile.viewer or {}` nil-guard
- **Drag script nil guard** (line ~359): guarded `XP.db.profile.viewer.locked` with `XP.db and XP.db.profile and XP.db.profile.viewer`

#### Core.lua (patch)
- `OnInitialize`: wired `Config:Run()` + `Options_Initialize()`
- `/xp options`: replaced AceConfigDialog:Open with `self:OpenOptions()`

#### X-Plore.toc (patch)
- Load order: Base → Localizers → Core_enUS → Options → Config → Core
- Removed duplicate Options.lua at line 125
- Added Localization\Base.lua and Localization\Core_enUS.lua

#### Options.lua (patch)
- Removed `local L = XP.L or {}` fallback — XP.L is now properly set by Localizers.lua

### New Files

#### StaticPopups.lua (197 lines) — REPLACES STUB
Full WoW StaticPopupDialogs implementation:
- 6 popup types: `XPLORE_DEFAULT`, `XPLORE_CONFIRM_REDIRECT`, `XPLORE_BADGUIDE`, `XPLORE_NEXTGUIDE`, `XPLORE_CHOICE`, `XPLORE_INFO`
- `XP:StaticPopup_Show(name, text, ...)` — central helper with multi-signature support
- `XP:StaticPopup_ShowChoice(text, acceptCb, cancelCb)` — yes/no convenience
- `XP:StaticPopup_ShowRedirect(url)` — URL redirect confirmation
- `XP:StaticPopup_ShowInfo(text)` — OK-only info popup
- `XP:StaticPopup_ShowError(text)` — generic error popup
- Fonts created inline (XP.font_dialog, XP.font_dialog_gray) since this loads before Options.lua

#### Localization/Base.lua (47 lines)
Mirrors Zygor's `ZygorGuidesViewer_L()` factory:
- `X_Plore_L(name, locale, translations)` global function
- Shared `data` table keyed by locale name
- `__index` metatable: auto-creates missing keys as their own string value
- enUS replaces entire data["Main"]; other locales merge

#### Localization/Core_enUS.lua (68 lines)
All 19 option strings from Options.lua + MainFont/MainFontBold paths (lowercase opensans.ttf/opensansb.ttf).

#### Localizers.lua — REWRITTEN (was 3-line stub)
Wires `XP.L = X_Plore_L("Main")` after Base.lua defines the factory.

#### Config.lua (68 lines)
Character-specific profile management, auto-default, stored at `XP.Config`.

#### Options.lua (639 lines)
Full AceConfig option tree: Cover, Display, Waypoint Arrow, Behaviour, Theme, About. All 19 `L["..."]` references now resolve via XP.L.

#### Skins/Default/ViewerFrame.lua (NEW — 148 lines)
Implements `XP.ViewerFrame:ApplySkin()` — the critical missing link between the skin system and the ViewerFrame:
- Re-applies backdrop, title bar, tabs, toolbar, scroll, progress, footer, sync dot
- Called by `Skins:CreateFrame()` after skin changes
- Calls `XP:UpdateViewer()` at end to re-render step lines with new skin colors
- Fixes silent no-op when switching skins

### Bugs Fixed

1. `SKINSDIR` nil — removed SetFont calls referencing XP.SKINSDIR in Options.lua
2. `XP.L` nil crash — localization infrastructure now properly sets XP.L before Options.lua
3. `Options_Initialize` nil — moved Options.lua before Core.lua in .toc
4. `scrollChild` nil — stored ContentChild/ContentScroll on parent frame
5. "X-Plore" parent not found — passed `nil` to AddToBlizOptions
6. `viewer` nil at Viewer.lua:359 — added nil-guard
7. `SetVerticalScrollRange` nil at GuideMenu.lua:1559 — replaced with Slider:SetMinMaxValues
8. Skin switching silently no-op — `XP.ViewerFrame:ApplySkin()` was undefined; Skins:CreateFrame() skipped ViewerFrame. Now fixed.
9. `SetLockHighlight` not a valid WoW API in GuideMenu.lua — replaced with LockHighlight()/UnlockHighlight()
10. Tab button closure capturing wrong `tabId` — all tabs activated the last registered tab; moved `tabButtons = {}` before loop and captured `tabId` locally in OnClick
11. `XP.Viewer:UpdateSteps()` crash in GuideMenu dropdown — method doesn't exist; added `if XP.Viewer and XP.Viewer.UpdateSteps then` guard
12. `CONFIRM_REDIRECT_LINK` StaticPopup not defined — Init.lua was calling a non-existent popup; replaced with proper `XP:StaticPopup_ShowRedirect(url)` using the new XPLORE_CONFIRM_REDIRECT popup
13. Font objects not available for StaticPopup text rendering — XP.font_dialog and XP.font_dialog_gray created in StaticPopups.lua (loads before Options.lua)

---

## Session 25 — 2026-04-25

### Summary

**Architecture Restructure** — Dismantled Zygor-style expansion-specific folders (`Code-Retail`, `Code-TBC`, `Code-MOP`). Consolidated all unique stub files into a single unified `Code/` directory to enforce the "100% Universal Code" requirement. All expansion-specific gating now happens internally via `XP.isRetail` and `XP.isTBC` constants from `Compat.lua`, rather than via `.toc` load gating. **Asset Hierarchy** — Migrated `textures/` to `Skins/` to align with Zygor's asset management.

### Changes

- Consolidated all expansion-specific code into `Code/` (universal, no .toc gating)
- `Compat.lua` now provides `XP.isRetail`, `XP.isTBC`, `XP.isWotLK`, `XP.isClassic`, `XP.isVanilla`
- All version-gated logic uses `if XP.isRetail then ... end` internally
- `textures/` directory migrated to `Skins/` matching Zygor's hierarchy

---

## Session 24 — 2026-04-16

### Summary

In-depth audit comparing Zygor screenshot (Screenshot 2026-04-14 170458) against X-PLORE implementation. Created comprehensive PARITY_REPORT.md documenting all gaps.

### Parity Analysis Results

#### Complete (Matching Zygor)
- Title bar with close button (sprite sheet)
- Viewer frame structure and backdrop
- Step progress system with completion states
- Multi-guide tab system with drag/reorder
- Guide registration (table + Zygor format)
- Goal tracking (quest/kill/collect/achievement/rep)
- Auto-advance engine with event-driven completion

#### Partial (Needs Refinement)
- **Waypoint Arrow**: Basic arrow works, missing circular styling, ant trails, quest blob
- **Tabs in Viewer**: Custom tabs built, missing Zygor's "STEPS" + "LEVELING GUIDES" tabs
- **Menu Button**: Uses map icon instead of Zygor's hamburger menu
- **Minimap Integration**: Basic dots, missing Zygor icon + quest blob

#### Missing (Critical Gaps)
- **Guide Info Bar**: NOT IMPLEMENTED — Zygor shows guide name, level range, active step, breadcrumb in bar below title
- **Options Button**: Missing from viewer title bar (Zygor has hamburger + gear)
- **Action Bar Integration**: ~0% — stub exists, no quest item highlighting
- **Faction System**: ~10% — basic tracking only
- **Foglight/Map Reveal**: 0% — not implemented
- **Dungeon System**: ~5% — category exists, no boss UI
- **Bug Report System**: 0% — not implemented

### Files
- **PARITY_REPORT.md** (NEW) — Comprehensive 300+ line parity analysis document

---

## Session 23 — 2026-04-16

### Summary

Fixed the close button to use Zygor's proper titlebuttons-thin sprite sheet instead of WoW's built-in close button. Redesigned the options panel to use a tabbed interface matching Zygor's style with tabs for Display, Waypoint Arrow, Behaviour, Theme, and About.

### Changes

#### Close Button Fix
- Both GuideMenu.lua and Viewer.lua close buttons now use the proper `titlebuttons-thin.tga` sprite sheet
- Correct texcoords applied for CLOSE button (n=6):
  - Normal state: row 1 (0.0156 to 0.2344 vertical)
  - Pushed state: row 2 (0.2656 to 0.4844 vertical)
  - Highlight state: row 3 (0.5156 to 0.7344 vertical)
- Close button icon now properly visible instead of blank/white

#### Options Panel Redesign
- Complete redesign from single-scroll list to tabbed interface
- 5 tabs: Display, Waypoint Arrow, Behaviour, Theme, About
- Tab buttons with active indicator (cyan bottom border)
- Scrollable content area with custom scrollbar
- Each tab's content is dynamically populated via `RefreshOptionsTab()`
- Skin selector in Theme tab now uses 4-column grid layout

#### Files Modified
- `GuideMenu.lua` — Close button + full options panel rewrite
- `Viewer.lua` — Close button sprite sheet fix

#### Files Added
- `textures/titlebuttons-thin.tga` — Copied from ZygorGuidesViewer (2048x128, 64 icons)

---

## Session 22 — 2026-04-15

### GuideMenu Navigation & Views

#### GuideMenu.lua — Breadcrumb Navigation
- **Added Breadcrumb element** to section header — shows "All Guides > CategoryName" in category view
- Breadcrumb text is dim color, section name is bright color
- Section header is clickable — clicking navigates back to home
- `BreadcrumbBackFunc` callback handles back navigation

#### GuideMenu.lua — Favourites View
- **Added "favourites" view** — shows all favourited guides when clicking Favourites sidebar category
- `GetFavouriteGuides()` function in GuideSorting.lua — returns guides matching `db.char.favourites`
- Sidebar FAVOURITES button click handler routes to `MenuNavigate("favourites")`

#### GuideMenu.lua — Featured View
- **Created FeaturedView frame** — shown when clicking "Featured" header tab
- `CreateFeaturedView(parent)` — creates featured view with title, dropdown selector, and scrollable content
- `PopulateFeaturedView(parent, dataset)` — populates content based on selected dataset (leveling/dungeons/professions)
- Featured dropdown with 3 sets: Leveling Guides, Dungeon Guides, Profession Guides

---

## Session 21 — 2026-04-15

### Viewer & Step Completion System

#### ui/ViewerFrame.xml (NEW)
- Created XML template file with Zygor-compatible frame structure
- `XPlore_StepLine_Template` — Step line button with back texture, icon, label, clicker
- All textures and font strings use Zygor skin variables
- Templates set up for 8 visible steps with 22px line height

#### Viewer.lua — Step Line System
- **Step line pool** implemented — `stepLinePool` and `activeStepLines` for efficient recycling
- `MAX_VISIBLE_STEPS = 8`, `STEP_LINE_HEIGHT = 22`
- `UpdateStepLine(line, index)` — configures a single step line with icon, label, complete state, current-step highlight
- `UpdateSteps()` — clears and repopulates visible step lines, handles scroll range
- Step states: completed (green check + dimmed), current (bright + arrow indicator), upcoming (normal)
- Guide name displayed in toolbar left of step counter

#### Viewer.lua — Step Navigation
- `NextStep()` / `PrevStep()` — navigate with bounds clamping
- `UpdateViewer()` — full viewer refresh: step lines, progress bar, step counter, guide name
- Step completion events fire `XP:UpdateViewer()` which re-renders

---

## Session 19 — 2026-04-15

### Full Zygor Skin System Parity

#### Bug Fixes
- **GuideMenu.lua — Missing `XP.ApplySkin` function** — Created named `XP.ApplySkin(f)` function from extracted skin subscriber code; called after `CreateGuideMenu()` to apply skin to newly created frame
- **GuideMenu.lua — Skin subscriber simplified** — Now calls `XP.ApplySkin(XP.MenuFrame)` directly instead of duplicating all skin code
- **GuideMenu.lua — HomeView visibility** — Added `homeView:Show()` after `CreateHomeView()` so the home view is visible on first open

#### Skins.lua — Complete Rewrite
- Complete rewrite (80 lines → 616 lines). Replaced single hardcoded dark navy/cyan skin with full three-skin system using Zygor's flat `STYLE.KeyName` architecture:
  - `HTML(hex)` helper — converts '#RRGGBBAA' strings to `{r,g,b,a}` tables
  - `SolidBackdrop()` / `NoEdgeBackdrop()` helpers — backdrop table factories
  - `ACTION_ICON_PATHS` table — 15 action type → WoW icon path mappings; exposed as `XP.ActionIconPaths`
  - Three skins: **STARLIGHT** (dark navy `#070E19`), **MIDNIGHT** (dark `#060810`), **STEALTH** (near-black `#040406`)
  - Each skin has: `Colors`, `Fonts`, `TextPaths`, `Backdrops`, `IconSets`, `Decors`, `ScrollBars`, `ProgressBars`, `Buttons`, `SortUpDown`, `Borders`, `Tabs`, `GuideIcons`, `GuideIconsBig`
  - Each color key maps to a `{r,g,b,a}` table (0–1 float)
  - `XP:SD(key)` — skin key lookup with fallback to STARLIGHT if skin key missing
  - `XP:ColorRGBA(key)` — returns unpacked `{r,g,b,a}` for font/string color calls
  - `XP:ApplySkin(frame)` — calls `skin:apply(frame)` which recolors all texture and font children recursively
  - `Skins:CreateFrame(name, template, parent)` — factory that creates a skinned frame; wraps AceGUI/HTML/scroll hybrid
  - `XP.ViewerFrame:apply()` method added to Skins system — applies current skin's `Viewer` section to the frame

---

## Session 18 — 2026-04-14

### Color & Icon Fixes

#### GuideSorting.lua

- **All 14 category icons now use sprite sheet** (`guideicons-big.tga`, 512x512, 8x4 grid, 64x64 per icon) via `XP.IconSets.TabsIcons` — replaces individual TGA files
- Category icons changed from string names (`"dailies"`, `"gold"`, etc.) to `{col, row}` table format matching Zygor's grid positions (e.g., `DAILIES = {3, 1}`, `GOLD = {1, 2}`)

#### Skins.lua

- **`XP.IconSets` table added** — mirrors Zygor's IconSets with `TabsIcons` (guideicons-big) and `GuideIconsSmall` (guideicons-small) grids
- Each icon set has `getTexCoord(name)` and `getIconPath()` methods for easy sprite lookup
- `GUIDEICONS_DIR` added as shared path constant
- `STARLIGHT.TabsIcons` changed from `ICONSDIR` (individual icons folder) to `GUIDEICONS_DIR .. "-big"` (sprite sheet)
- `STEALTH.TabsIcons` updated same way
- Both skins now also define `GuideMenuSmallIcons` key

#### GuideMenu.lua

- **Sidebar background** now reads `XP:SD("GuideMenuMenuBackground")` directly instead of `XP:ColorRGBA("bg_deep")` fallback; fallback changed from `#111111` to `#2B2B2B` (matching Zygor's lighter sidebar)
- **Placeholder `SetPoint("MIDDLE"...)` → `SetPoint("CENTER"...)`** (WoW anchor name fix)
- **Search icon added**: magnifying glass texture inside search box on right side, shows only when user is typing

#### GuideMenu.lua — Color Hierarchy Fixes

- **Center column background** now uses `XP:SD("GuideMenuContentBackground")` (`#202020`) instead of `XP:SD("GuideMenuMenuBackground")` (`#2B2B2B`) — sidebar is now visually lighter than center panel, matching Zygor
- **Section header background** now uses `XP:ColorRGBA("bg_deep")` (`#111111`) instead of `bg_medium` (`#202020`) — matches Zygor's dark header bar
- **Detail panel background** now uses `XP:SD("GuideMenuMenuBackground")` (`#2B2B2B`) instead of `bg_medium` (`#202020`) — matches Zygor's detail panel color
- **Home view background** now uses `XP:SD("GuideMenuContentBackground")` (`#202020`) instead of `bg_deep` (`#111111`)
- **Skin subscriber center column/home view/detail panel** now all re-read their respective SD keys at runtime instead of hardcoded color fallbacks
- **Category button backdrop** in skin subscriber changed from `bg_deep` to `bg_medium` (`#202020`) — visible when hovering/active
- **Guide row backdrop** in skin subscriber changed from `bg_deep` to `bg_medium` (`#202020`)

#### GuideMenu.lua — Sprite Sheet Icon System

- **`GetCategoryIconPath`** now returns `(path, l, r, t, b)` — sprite sheet path + normalized texcoords (0-1 range)
- **`ResolveIconPath`** still used for non-sprite icons (About/Options buttons) — uses `XP.ICON_PATH` and handles extension properly
- All icon `SetTexture` calls now followed by `SetTexCoord` — category buttons, guide rows, home view cards, and detail panel icons
- Skin subscriber re-applies icons with `SetTexCoord` on skin change

---

## Session 17 — 2026-04-14

### Skin System — GuideMenu Row/Header Audit Fixes + Viewer Step Line Audit Fixes

#### GuideMenu.lua

- **DETAIL_WIDTH** reduced from 260 to **219** (matches Zygor exactly)

- **Section header height** reduced from 36px to **22px**; section divider offset updated from -36 to **-22**; list scroll top offset updated from -37 to **-23**; scrollbar top offset updated from -37 to **-23**

- **Header tabs** reduced from 80x40 to **70x24**; starting X changed from 120 to **3**; spacing changed from 85 to **71** (70 + 1px gap). `tab:GetFontString():GetStringWidth() + 6` used for dynamic indicator width (Zygor-style text-width sizing)

- **Header close button** changed from 24x24 red text "x" to **15x15 icon texture** using `XP:SD("TitleButtonsTexture")` with `SetTexCoord(0, 0.25, 0, 0.5)` to crop the close sprite. OnEnter/OnLeave use `XP.SetTexColor` for tint swap instead of font string color

- **Guide row height** reduced from 36px to **26px** (matches Zygor's 26px); subtitle FontString removed entirely; load button hidden by default, shown on hover; icon size reduced from 20x20 to **15x15 bottom-aligned** (BOTTOMLEFT at 12, 5)

- **Category button font** changed from "small" to **"normal"**; icon X offset changed from 12 to **11**; **2px LeftDecor vertical bar** added on left edge (shown when category is active, hidden when not). `MenuNavigate` updated to toggle `LeftDecor:Show()/Hide()` alongside `SelectionHighlight`

- **Home view** now hides `DetailColumn` and expands `CenterColumn` to full width (same treatment as options/about). Condition changed from `fullWidth = (view == "options" or view == "about")` to `fullWidth = (view == "options" or view == "about" or view == "home")`

- **`CreateGuideRows`** — removed `row.Subtitle` entirely; load button starts hidden; icon is 15x15 BOTTOMLEFT; hover shows both selection highlight + load button

- **`MenuNavigate`** — updated sidebar block to show/hide `LeftDecor` on active/inactive categories

- **`PopulateGuideList`** — `rowHeight` changed from 36 to **26**; removed subtitle population code; updated `ApplyFont` call for active guide (uses `cyan` color)

- **Re-skin subscriber** — removed `row.Subtitle` block; added `btn.LeftDecor` re-skin with `XP.SetTexColor`; updated category button `Text` font from "small" to "normal"

#### Viewer.lua

- **STEP_LINE_HEIGHT** reduced from **50px to 22px** (CRITICAL fix — Zygor is ~22px, was 2.3x too tall)

- **CreateStepLine** redesign (matches Zygor's single-line step style):
  - 2px left edge indicator (was 3px)
  - 14x14 icon (was 20x20) centered vertically with `MIDDLE` anchor
  - New `stepNum2` badge: small font, right of icon, shows step number
  - Title uses `MIDDLE` vertical anchor (single line, no description below)
  - Status shows UTF-8 checkmark `✓` for completed steps (was "Done" text)
  - Progress bar removed from step line (moved to separate area)
  - `UpdateViewer` — `line.Desc` reference removed; `line.StepNum2` populated; `line.Progress` removed from upcoming/completed branches; completed status shows checkmark character

- **Progress bar relocated** from Footer frame to a new `ProgressArea` frame (20px tall, between scroll content and footer). `scrollFrame` and `scrollBar` bottom anchor updated to `footerH + progressH` instead of `scrollBottom`. Progress bar now spans full width with `pctText` on the right. `footerH` and `progressH` variables introduced.

- **Footer simplified** to contain only sync indicator (dot + "AUTO"/"MANUAL" text, centered). Footer divider removed. Sync dot repositioned from `LEFT, 10` to `CENTER, -16` offset.

- **Viewer close button** changed from 20x20 red text "x" to **15x15 icon texture** using `XP:SD("TitleButtonsTexture")`. Re-skin subscriber updated accordingly.

- **`OK_CHAR` constant** defined as UTF-8 checkmark for completed step status.

---

## Session 16 — 2026-04-14

### Skin System — Selection Highlights, Tab Decoration, Re-skin Audit

#### GuideMenu.lua

- **selection.tga hover/active highlight on category buttons** (`CreateCategoryButtons`):
  - Each button now has `btn.SelectionHighlight` (OVERLAY texture, `SetAllPoints`, initially hidden)
  - `OnEnter`: show highlight + use `cyan_light` text color (if not active category)
  - `OnLeave`: hide highlight + restore `text_normal` (if not active category)
  - `MenuNavigate` sidebar block replaced `SetBackdropColor` calls with `SelectionHighlight:Show()/Hide()`; active category button keeps highlight shown + text set to `cyan`

- **selection.tga hover highlight on guide rows** (`CreateGuideRows`):
  - Each row now has `row.SelectionHighlight` (OVERLAY texture, `SetAllPoints`, initially hidden)
  - `OnEnter`: show highlight; `OnLeave`: hide highlight

- **Sidebar background now uses `GuideMenuMenuBackground` SD key** (`#2B2B2BFF`) instead of `bg_deep` (`#111111`), creating proper visual separation from the center panel.

- **New frame references stored for re-skin**:
  - `frame.HomeView.HomeViewBg` — home view background texture
  - `detailCol.DetailBorderL` and `detailCol.DetailBg` — detail column textures
  - `frame.HeaderDivider` — header divider (was missing from subscriber)
  - `frame.SectionHeaderBg` and `frame.SectionDivider` — section header elements

- **Re-skin subscriber fully audited and expanded**:
  - `HeaderDivider` re-skinned with `border` color
  - `SidebarBg` now uses `GuideMenuMenuBackground` SD key
  - `HomeView.HomeViewBg` re-skinned with `bg_deep`
  - Detail column block (`dc`): covers `DetailBorderL`, `DetailBg`, `DetailScrollTrack`, `DetailScrollThumb`, `EmptyMsg`, `DetailTitle`, `DetailInfo`, `DetailDesc`, `DetailSteps`, `DetailExpansion`, `DetailLoadBtn` (backdrop + label) — all in one merged block
  - `SectionHeaderBg` + `SectionDivider` re-skinned
  - Category buttons: `SelectionHighlight` texture updated + hidden on skin switch
  - Guide rows: `SelectionHighlight` texture updated + hidden on skin switch
  - Removed duplicate `dc` block (was causing re-skin issues)

#### Viewer.lua

- **`viewer8-tabs.tga` decoration applied to tab container**:
  - `frame.TabDecorTex` texture (ARTWORK layer, `SetAllPoints`)
  - Shown when `XP:SD("TabsDecor") == true` (STARLIGHT skin), hidden when false (MIDNIGHT, STEALTH)
  - Re-skin subscriber updates texture path and toggles show/hide based on `TabsDecor` SD key

- **New divider frame references stored**:
  - `frame.TitleDivider`, `frame.TabDivider`, `frame.ToolbarDivider` (were not persisted before, so could not be re-skinned)

- **Re-skin subscriber updated**:
  - `TitleDivider` uses `border` color
  - `TabDivider` uses `border_dim` color
  - `ToolbarDivider` uses `border_dim` color
  - Tab decor block: sets texture path, shows/hides based on `TabsDecor` key

### Commit

- **4ed6aeb** — `feat: selection.tga highlights, viewer8-tabs decor, full re-skin subscriber audit`

---

## Session 15 — 2026-04-14

### Bug Fixes / Skin System Completion

- **Skins.lua** — Added `red_light` color to all skin Colors tables (STARLIGHT, MIDNIGHT, STEALTH). STARLIGHT_GLASS and STEALTH_GLASS inherit it automatically via the copy-all pattern.
  - STARLIGHT: `red_light = #FF8080FF`
  - MIDNIGHT: `red_light = #FF8080FF`
  - STEALTH: `red_light = #FF9070FF` (slightly warmer to match the amber tone)

- **Viewer.lua** — Applied `logo.tga` texture to logo icon: `logoIcon:SetTexture("Interface\\AddOns\\X-Plore\\textures\\logo")`. Removed hardcoded `XP.SetTexColor` tint that made it a solid cyan square. Re-skin subscriber updated to not re-tint the logo.

- **Viewer.lua** — Close button hover now uses `XP:ColorRGBA("red_light")` instead of hardcoded `1, 0.5, 0.5, 1`.

- **Viewer.lua** — Scrollbar track background now uses `XP:SD("ScrollBackColor")` (transparent for STARLIGHT, `#333333` for MIDNIGHT). Track reference saved as `frame.ScrollTrack`. Thumb now uses `XP:SD("ScrollBarTexture")` + `XP:SD("ScrollBarColor")`. References saved as `frame.ScrollTrack` / `frame.ScrollThumb`. Re-skin subscriber updated.

- **Viewer.lua** — Progress bar now uses `XP:SD("ProgressBarTextureFile")` for fill texture and `XP:SD("ProgressBarTextureColor")` for color (was hardcoded `UI-StatusBar + cyan`). Background uses `XP:SD("ProgressBarBackdropColor")` (was hardcoded `0,0,0,0.4`). References saved as `frame.ProgressBarBg`. Re-skin subscriber updated.

- **GuideMenu.lua** — Applied `logo.tga` texture to header logo. Saved as `frame.LogoIcon`. `frame.LogoText` also stored. Re-skin subscriber no longer tints the logo.

- **GuideMenu.lua** — Close button hover now uses `XP:ColorRGBA("red_light")` instead of hardcoded `1, 0.5, 0.5`.

- **GuideMenu.lua** — Added search box background texture using `XP:SD("GuideMenuSearchTexture")` path, colored with `XP:SD("GuideMenuSearchEdit")` color. Saved as `frame.SearchBg` and `frame.SearchBorder`. Re-skin subscriber updates both.

- **GuideMenu.lua** — List scrollbar track/thumb now use `XP:SD("ScrollBackColor")` / `XP:SD("ScrollBarTexture")` / `XP:SD("ScrollBarColor")`. References saved as `frame.ListScrollTrack` / `frame.ListScrollThumb`. Re-skin subscriber updated.

- **GuideMenu.lua** — Detail panel scrollbar track/thumb now use `XP:SD("ScrollBackColor")` / `XP:SD("ScrollBarTexture")` / `XP:SD("ScrollBarColor")`. References saved as `f.DetailColumn.DetailScrollTrack` / `DetailScrollThumb`. Re-skin subscriber updated.

- **GuideMenu.lua** — Re-skin subscriber fully audited and expanded to cover: logo text, close button, search bg, search border, list scroll track/thumb, detail scroll track/thumb — in addition to existing elements.

### Commit

- **1845dc6** — `feat: integrate skin TGA assets for scrollbars, logo, search, progress bar`

---

## Session 14 — 2026-04-14

### Bug Fixes

- **GuideMenu.lua** — Fixed center panel background not filling the full area:
  - Added `frame.CenterBg` texture on `centerCol` with `XP:ColorRGBA("bg_deep")` — previously `centerCol` had no background, causing the main frame backdrop to show inconsistently
  - Added `homeViewBg` texture on the `homeView` frame — without it the frame was transparent, and the `listScrollBar` Slider (a sibling under `centerCol`) bled through visually as a "vertical dark block ending abruptly"

- **GuideMenu.lua** — Fixed list scrollbar not hidden when navigating to HomeView:
  - `listScrollBar` was only a local variable; `MenuNavigate` hid `ListScroll` but had no way to hide the Slider track
  - Now saved as `frame.ListScrollBar` and hidden/shown in all `MenuNavigate` branches alongside `ListScroll`

- **GuideMenu.lua** — Fixed `InputBoxTemplate` grey artifact (light-grey bar visible at sidebar bottom on WotLK):
  - `InputBoxTemplate` auto-generates `Left`, `Right`, `Mid`, `Background`, `FocusLeft`, `FocusRight`, `FocusMid` textures that render as a visible grey bar in WotLK
  - Now hidden after creation; replaced with a custom 1px `border_dim` line to maintain visual separator

- **GuideMenu.lua** — Skin subscriber now also re-colors `frame.CenterBg` on skin change

### Notes

- "4 guides available" / empty category lists are expected — no guide data files have been registered yet for most categories. The count reflects `XP.Guides` table which only has any guides if guide files register them via `XP:RegisterGuide()`.

### Commit

- **35359e3** — `fix: center panel layout, scrollbar visibility, InputBoxTemplate artifacts`

---

## Session 13 — 2026-04-14

### Bug Fixes

- **GuideMenu.lua** — Fixed hardcoded navy-blue header and sidebar background textures:
  - `headerBg` was hardcoded `XP.SetTexColor(headerBg, 0.02, 0.04, 0.08, 1.0)` — now stored as `frame.HeaderBg` and colored with `XP:ColorRGBA("bg_deep")` (skin-aware, dark charcoal `#111111`)
  - `sidebarBg` was hardcoded `XP.SetTexColor(sidebarBg, 0.03, 0.05, 0.10, 0.95)` — now stored as `frame.SidebarBg` and colored with `XP:ColorRGBA("bg_deep")`
  - Skin subscriber updated to re-color `frame.HeaderBg` and `frame.SidebarBg` on skin change

- **Viewer.lua** — Fixed skin-unaware UI elements:
  - `tabBg` was hardcoded semi-transparent black `{0, 0, 0, 0.3}` — now stored as `frame.TabBg` and colored with `XP:ColorRGBA("bg_medium")` (skin-aware `#202020`)
  - `toolbarBg` was not stored on frame — now stored as `frame.ToolbarBg`
  - `footerBg` was not stored on frame — now stored as `frame.FooterBg`
  - Skin subscriber updated to re-color all three on skin change
  - Fixed step icon path resolution: `step:GetPrimaryIcon()` returns full `Interface\\Icons\\...` paths for most steps. Code previously blindly prepended `XP.ICON_PATH` turning them into invalid paths. Now detects `Interface\\` prefix and uses the path directly.

### Asset Analysis

- Ran full comparison of X-Plore skin TGA assets vs Zygor source (`tools/compare_skin_assets.ps1`).
  The only file "missing" is `Style.lua` — Zygor's Lua skin definition file, which is not needed (we use `Skins.lua`). All TGA texture files are present in every skin directory. No copies needed.

- Confirmed `{0, 0, 0, 0}` backdrop border colors in Skins.lua are **intentional and correct** — Zygor's Starlight `Style.lua` uses `TRANSPARENT` for the same fields. The visual border is rendered by the TGA edge files, not by `SetBackdropBorderColor`.

### Commit

- **b24011c** — `fix: skin-aware header/sidebar bg, step icon path resolution, ReskinSubscribers`

---

## Session 12 — 2026-04-14

### Bug Fixes

- **GuideMenu.lua** — Fixed skin subscriber callback field names:
  - `row.Sub` → `row.Subtitle` (correct field on guide row objects)
  - Removed non-existent `row.LevelRange` reference
  - Fixed backdrop names: `"panel"` → `"none"`, `"bg_medium"` → `"bg_deep"` to match those used in `CreateGuideRows`

- **Skins.lua** — Added missing `"tiny"` (9pt) font entry to `STARLIGHT`, `MIDNIGHT`, and `STEALTH` `Fonts` tables.
  - `XP:ApplyFont(..., "tiny", ...)` previously silently fell back to 12pt FRIZQT__ for all skins because no `tiny` key was defined.
  - `STARLIGHT_GLASS` and `STEALTH_GLASS` inherit the fix via reference copy from their base skins.

### Commit

- **d87c171** — `fix: skin subscriber field names and add tiny font to all skins`

---

## Session 11 — 2026-04-13

### New Files / Directories

- **textures/skins/starlight/** (39 TGA files) — Starlight per-skin texture assets copied from Zygor:
  `scroll-bar.tga`, `scroll-arrows.tga`, `scrollbutton.tga`, `stepicons.tga`, `titlebuttons-thin.tga`, `titlebuttons-thick.tga`, `titlebuttons.tga`, `progressbarcaps.tga`, `progressbar.tga`, `checkradio-thin.tga`, `floatingbuttons-thin.tga`, `viewer8-tabs.tga`, `border-glow.tga`, `border.tga`, `border_.tga`, `border-08.tga`, `backdrop-opaque.tga`, `backdrop-opaque-small.tga`, `backdrop-opaque-small-outline.tga`, `button-small-opaque.tga`, `button.tga`, `dropdown-opaque.tga`, `search-bgr.tga`, `ui-sliderbar-background.tga`, `ui-sliderbar-border.tga`, `options-slider-button.tga`, `selection.tga`, `mv-arrow.tga`, `guideicons-small.tga`, `minimap-icon.tga`, `corner.tga`, `mapicons.tga`, `poi_icons.tga`, `zglogo_circ.tga`, `zygorlogo.tga`, + glass variants

- **textures/skins/starlight-glass/** (38 TGA files) — Starlight Glass per-skin assets:
  All of the above plus `backdrop-glass.tga`, `backdrop-glass-all.tga`, `backdrop-glass-full.tga`, `backdrop-glass-small.tga`, `backdrop-glass-upsidedown.tga`

- **textures/skins/midnight/** (12 TGA files) — Midnight per-skin assets:
  `roundcorners.tga`, `border.tga`, `border_.tga`, `border-08.tga`, `border-glow.tga`, `button.tga`, `corner.tga`, `scrollbutton.tga`, `selection.tga`, `titlebuttons.tga`, `mv-arrow.tga`, `zglogo_circ.tga`

- **textures/skins/stealth/** (23 TGA files) — Stealth per-skin assets:
  `scroll-bar.tga`, `scroll-arrows.tga`, `scrollbutton.tga`, `stepicons.tga`, `titlebuttons-thick.tga`, `progressbar.tga`, `checkradio-thick.tga`, `floatingbuttons-thick.tga`, `border.tga`, `border_.tga`, `border-08.tga`, `border-glow.tga`, `button.tga`, `corner.tga`, `search-bgr.tga`, `guideicons-small.tga`, `minimap-icon.tga`, `selection.tga`, `mv-arrow.tga`, `mapicons.tga`, `poi_icons.tga`, `zglogo_circ.tga`, `zygorlogo.blp`

- **textures/skins/stealth-glass/** (23 TGA files) — Stealth Glass per-skin assets (same set as stealth)

- **textures/white.tga** — Solid white TGA for backdrop bgFile/edgeFile (1px border support)
- **textures/loading.tga** — Loading spinner for tabs/busy state
- **textures/guideicons-big.tga** — Large guide category icon sprite sheet
- **textures/guideicons-small.tga** — Small guide icons (root fallback)
- **textures/messagetoastbg.tga** — Notification toast background
- **textures/messagetoastbg-classicwotlk.tga** — WotLK-specific notification background
- **textures/arrowdown.tga**, **textures/arrowup.tga** — Collapse/expand arrows
- **textures/newcheckon.tga**, **textures/newcheckoff.tga** — Custom checkboxes
- **textures/search.tga** — Search icon
- **textures/separator.tga** — Horizontal separator line

### Changed Files

- **Skins.lua** — Full rewrite (616 → 985 lines):
  - `WHITE_TEX` changed from `"Interface\\Buttons\\WHITE8X8"` to `SKINSDIR .. "white"` (uses copied `white.tga`)
  - Added `TiledBackdrop(bgFile, edgeFile, edgeSize, inset)` helper for texture-file backdrops
  - Added per-skin directory constants: `STARLIGHT_DIR`, `STARLIGHT_GLASS_DIR`, `MIDNIGHT_DIR`, `STEALTH_DIR`, `STEALTH_GLASS_DIR`
  - **Starlight** skin: now primary default; all backdrops use TGA edge files from `textures/skins/starlight/`; added `TabsDecor=true` + `TabsDecorTexture`; added 20+ new texture data keys
  - **Starlight-glass** skin (NEW): inherits Starlight; `UseOpacity=true`; `MainBackdropColor=#22222277`; all glass-specific backdrop TGAs from `textures/skins/starlight-glass/`; `GUIHidden=true`
  - **Midnight** skin: backdrops now use `roundcorners.tga` (edgeSize=20) and `border.tga`; updated color scheme; added texture keys
  - **Stealth** skin (NEW): warm brown theme (`#1A1410FF` bg, `#C47A33FF` amber accent); thick-variant textures from `textures/skins/stealth/`
  - **Stealth-glass** skin (NEW): inherits Stealth; `UseOpacity=true`; `MainBackdropColor=#22181077`; `GUIHidden=true`
  - `"default"` alias: now maps to Starlight (was its own separate skin)
  - `XP:GetSkinList()`: now filters `GUIHidden=true` entries from UI dropdown
  - `XP:InitSkins()`: default skin changed from `"default"` to `"starlight"`
  - Fixed Lua 5.2+ reserved-keyword bug: `goto = "..."` → `["goto"] = "..."`
  - All 14 public API functions preserved: `InitSkins`, `SetSkin`, `RegisterSkin`, `GetSkinList`, `SD`, `Color`, `ColorRGBA`, `Font`, `Backdrop`, `Size`, `ActionIcon`, `ApplyBackdrop`, `ApplyFont`, `SkinButton`, `CreateDivider`

---

## Session 10 — 2026-04-13

### New Files

- **Tooltip.lua** (~250 lines) — In-guide tooltip enhancements.
  - `TP:BuildLookupTables(stepIndex)` — scans current step ±2 for goal data (NPC names/IDs, item names/IDs, quest names/IDs) and builds `npcIndex`, `itemIndex`, `questIndex` lookup tables.
  - `TP:InjectNPCHint(tooltip, unit)` — called from `GameTooltip:OnTooltipSetUnit`; if the unit matches an NPC in the current step goals, appends a cyan `[X-Plore] Step N — Action` line.
  - `TP:InjectItemHint(tooltip, itemName)` — called from `GameTooltip:OnTooltipSetItem`; if item name matches a collect/use goal, appends the step hint.
  - `TP:InjectQuestHint(tooltip, questName)` — appended when quest log title buttons are hovered (WotLK hook on `QuestLogTitle` buttons).
  - `TP:OnEnable()` — hooks `GameTooltip:HookScript("OnTooltipSetUnit")` and `HookScript("OnTooltipSetItem")`; on WotLK also hooks 25 quest log title buttons.
  - Universal: WotLK uses `HookScript`; Retail also hooks via `TooltipDataProcessor` if available.
  - `XP.Tooltip` sub-table registered in `Init.lua`-style pattern.

- **Announcements.lua** (~190 lines) — Chat output on step navigation.
  - `AN:OnStepAdvanced(stepIndex)` — called by `NextStep`, `PrevStep`, `GoToStep` in Core.lua; prints a chat message with the step title if `db.profile.announcements.enabled` is true; optionally broadcasts to party/raid if `shareParty` is enabled and player is in a group.
  - `AN:OnZoneChanged(zoneName)` — called by `OnZoneEvent`; checks if current guide has steps in the new zone, prints a one-line zone hint if `showZoneHint` is enabled.
  - `AN:GetGroupChannel()` — returns `"PARTY"`, `"RAID"`, or nil based on group state; universal (handles `GetNumGroupMembers` Retail/WotLK 4.x and `GetNumRaidMembers`/`GetNumPartyMembers` WotLK 3.3.5a fallbacks).
  - `AN:OnEnable()` — called from `XP:OnEnable()`; no-op if `XP.db` not ready (safe to call before DB is set up).
  - `XP.Announcements` sub-table.

- **Bindings.xml** — WoW key binding declarations for four X-Plore actions:
  - `XPLORE_TOGGLE_VIEWER` — toggle step viewer window (header: `X-PLORE`)
  - `XPLORE_TOGGLE_MENU` — open/close guide browser
  - `XPLORE_NEXT_STEP` — advance to next step
  - `XPLORE_PREV_STEP` — go back to previous step

- **Keybinds.lua** — Global stub functions called by Bindings.xml:
  - `XPLORE_BINDING_ToggleViewer()` / `ToggleMenu()` / `NextStep()` / `PrevStep()` — delegate to `XP:` method after nil-checking that XP is initialized.

- **textures/ui/minimap_button.tga** — 32×32 RGBA uncompressed TGA (4114 bytes) converted from `textures/icons/XPIcon.png` via Python/Pillow script.

### Modified Files

- **GuideMenu.lua**
  - Added `DETAIL_WIDTH = 260` constant (top of file, before State section).
  - Added `selectedGuideID` state variable.
  - `centerCol` BOTTOMRIGHT anchor changed to `-(DETAIL_WIDTH + 1), 0` to leave room for the detail column.
  - Added `detailCol` frame (right 260px panel): background texture + left border.
  - Added `CreateDetailPanel(parent)` (~130 lines) — guide icon, title, info line (level/faction/category), description, step count, expansion label, Load Guide button anchored to bottom of panel.
  - Added `ShowGuideDetail(guideID)` (~110 lines) — populates detail panel from a guide object; shows empty state if no guide selected; labels load button "Active Guide" (green) if guide is already loaded.
  - `PopulateGuideList` row click handler changed from loading immediately to `XP:ShowGuideDetail(guide.id)`.
  - Header `tabNames` changed from `{ "Home", "Current", "Recent", "Options" }` to `{ "Home", "Current", "Recent" }` — Options button moved to sidebar bottom.

- **Core.lua**
  - `DB_DEFAULTS.profile` — added `announcements = { enabled=true, shareParty=false, showZoneHint=true }` sub-table.
  - `OnEnable()` — added `XP.Tooltip:OnEnable()` and `XP.Announcements:OnEnable()` calls after GoalTracker.
  - `NextStep()` — calls `XP.Announcements:OnStepAdvanced(self.CurrentStep)` after updating viewer.
  - `PrevStep()` — calls `XP.Announcements:OnStepAdvanced(self.CurrentStep)`.
  - `GoToStep()` — calls `XP.Announcements:OnStepAdvanced(n)`.

- **X-Plore.toc**
  - Added `Bindings.xml` and `Keybinds.lua` before `Core.lua` (globals must exist before they are called).
  - Added `Tooltip.lua` and `Announcements.lua` after `Minimap.lua`.

### Notes

- Total new lines this session: ~680 (Tooltip.lua ~250, Announcements.lua ~190, Bindings.xml ~25, Keybinds.lua ~35, GuideMenu detail panel additions ~300)
- Announcements.lua uses `GetNumGroupMembers()` with fallback to `GetNumRaidMembers()` / `GetNumPartyMembers()` for WotLK 3.3.5a compatibility.
- Tooltip.lua `GetItem()` on tooltips may be nil on WotLK — falls back to reading the first text region of the tooltip.
- Keybinding globals are defined before the XP AceAddon object is created (Keybinds.lua loads before Core.lua); they nil-check `_G.XP` before delegating.

---


### New Files

- **AutoComplete.lua** (~270 lines) — Auto-detection of already-completed content when loading a guide.
  - `AC:AutoAdvanceToFirstIncomplete(guide, skipFromCurrent)` — scans guide steps from the start and returns the index of the first incomplete step, skipping steps whose quest goals are already done or already in the quest log.
  - `StepShouldSkip(step)` — local helper; evaluates `accept`/`turnin`/`kill`/`collect` goals using `XP:IsQuestCompleted()` and `XP:IsQuestInLog()`.
  - `AC:BuildSuggestionMaps()` — indexes all registered guides by zone name (case-insensitive) and level range for O(1) suggestion lookups.
  - `AC:GetZoneSuggestions(zoneName)` / `AC:GetLevelSuggestions(playerLevel)` — return guide ID lists matching the player's current state.
  - `AC:GetBestSuggestion()` — returns the single best guide ID by zone+level > level-only > zone-only priority.
  - `AC:ShowSuggestion(guideID)` — one-time in-chat suggestion toast (de-duped per session via `AC._suggested`).
  - `AC:OnEnable()` — called from `XP:OnEnable()`; builds suggestion maps and schedules a 3-second delayed first-login suggestion.
  - `AC:OnGuideLoaded(guide)` — called from `XP:LoadGuide()`; returns recommended start step (respects `db.profile.autoSkipCompleted`).
  - `AC:OnZoneChanged()` — called from `XP:OnZoneEvent()`; re-checks suggestion on zone change.

- **GoalTracker.lua** (~400 lines) — Event-driven goal completion tracking for the current step.
  - Registers a bare `CreateFrame` event listener (not an AceAddon mixin) for: `QUEST_ACCEPTED`, `QUEST_TURNED_IN`/`QUEST_COMPLETE`, `COMBAT_LOG_EVENT_UNFILTERED`, `BAG_UPDATE_DELAYED`, `ACHIEVEMENT_EARNED`, `UPDATE_FACTION`, `SKILL_LINES_CHANGED`, `LEARNED_SPELL_IN_TAB`, `PLAYER_LEVEL_UP`.
  - `GT:RegisterStep(step)` / `GT:ClearGoals()` — goal list management on step change.
  - Kill tracking: `RebuildKillCache()` builds npcID → goal and name → goal maps; `OnUnitDied(destGUID, destName)` increments kill goals via GUID creature-ID extraction (`GUIDToNPCID`).
  - Collect tracking: `RebuildCollectCache()` builds itemID → goal map; `OnBagUpdate()` scans all bag slots with `GetContainerItemInfo` and updates progress.
  - Quest goals: `OnQuestAccepted(questID)` / `OnQuestTurnedIn(questID)` directly mark matching goals complete.
  - Achievement goals: `OnAchievementEarned(achievementID)` marks `achieve` and `discover` goals complete.
  - Rep goals: `OnFactionUpdate()` uses `GetFactionInfoByID` (Retail) / `GetFactionInfo` scan (WotLK) against goal's `factionID` + `standing`.
  - Skill goals: `OnSkillUpdate()` scans `GetSkillLineInfo` for matching skill name and rank threshold.
  - Spell/learn goals: `OnSpellLearned(spellID)` matches by spellID or spell name via `GetSpellInfo`.
  - Level goals: `OnPlayerLevelUp(newLevel)` marks `level` goals complete when threshold reached.
  - `CompleteGoal(goal)` / `IncrementGoal(goal, amount)` — completion helpers that fire `XP_GOAL_COMPLETED` / `XP_STEP_COMPLETED` messages and trigger `XP:NextStep()` when auto-advance is on.
  - `GT:OnStepChanged(guide, stepIndex)` — called on every step navigation; clears goals, registers new step, rebuilds caches, immediately re-checks bag state and quest state.
  - Universal: handles `CombatLogGetCurrentEventInfo()` on Retail vs. direct args on WotLK.

- **Minimap.lua** (~230 lines) — Draggable minimap orbital button.
  - Circular button anchored at BUTTON_RADIUS=80px from the minimap centre at a configurable angle.
  - `AngleToPos(angle)` / `PosToAngle(x, y)` — convert between orbital angle and x,y offset for drag positioning.
  - `MM:PlaceButton(angle)` / `MM:SetAngle(angle)` — place and persist button position; angle saved to `db.profile.minimapAngle`.
  - Left-click calls `XP:ToggleViewer()`.
  - Right-click opens a `UIDropDownMenuTemplate` context menu with: Open Guide Menu, Toggle Guide Viewer, Options, Reset Button Position.
  - Drag reorder: `OnDragStart` sets an `OnUpdate` script that continuously recalculates the orbital angle from cursor position and calls `SetAngle`.
  - Button uses `MiniMap-TrackingBorder` border texture and `UI-Minimap-ZoomButton-Highlight` highlight.
  - Tooltip on hover shows left-click/right-click/drag hints.
  - `MM:OnEnable()` — called from `XP:OnEnable()`; creates the button and honours `db.profile.showMinimapButton`.

### Modified Files

- **Core.lua**
  - `DB_DEFAULTS` — added `autoSkipCompleted = true`, `showMinimapButton = true`, `minimapAngle = 45` to profile defaults.
  - `OnEnable()` — now calls `XP.Minimap:OnEnable()`, `XP.AutoComplete:OnEnable()`, `XP.GoalTracker:OnEnable()` after tabs are initialized.
  - `LoadGuide()` — after clamping `CurrentStep`, calls `XP.AutoComplete:OnGuideLoaded(guide)` to advance past done steps; calls `XP.GoalTracker:OnStepChanged()` after setting the step.
  - `NextStep()`, `PrevStep()`, `GoToStep()` — each now calls `XP.GoalTracker:OnStepChanged()` after updating `CurrentStep`.
  - `OnZoneEvent()` — now calls `XP.AutoComplete:OnZoneChanged()` for zone-based guide suggestion.

- **X-Plore.toc** — added `AutoComplete.lua`, `GoalTracker.lua`, `Minimap.lua` to the `# UI Components` section.

### Notes

- Total new lines this session: ~900 (3 new files + Core.lua wiring)
- GoalTracker uses a bare `CreateFrame` event listener (not AceEvent) to avoid double-registration conflicts with Core.lua's own AceEvent registration.
- GoalTracker is nil-safe: all callbacks guard against `XP.CurrentGuide` being nil.

---

## Session 8 — 2026-04-13

### New / Expanded

- **Skins.lua** — Complete rewrite (80 lines → 616 lines). Replaced the single hardcoded dark navy/cyan skin with a full three-skin system using Zygor's flat `STYLE.KeyName` architecture:
  - `HTML(hex)` helper — converts `#RRGGBBAA` strings to `{r,g,b,a}` tables
  - `SolidBackdrop()` / `NoEdgeBackdrop()` helpers — backdrop table factories
  - `ACTION_ICON_PATHS` table — 15 action type → WoW icon path mappings; exposed as `XP.ActionIconPaths`
  - **Style: "default"** — Dark navy (`#0A0E1A`) + cyan (`#00E5FF`) accent; 80+ style keys
  - **Style: "starlight"** — Dark charcoal (`#111111`) + orange (`#FE6100`) accent; inherits DEFAULT sizes via copy loop, overrides colors/backdrops
  - **Style: "midnight"** — Semi-transparent black + warm orange (`#E5661A`) accent; same inheritance pattern
  - Each style has: `Colors{}`, `Fonts{}`, `Sizes{}`, `Backdrops{}` sub-tables plus flat keys for every UI element
  - `XP:SD(key)` — flat accessor matching Zygor's `SkinData("KeyName")` pattern
  - `XP:Color(name)` / `XP:ColorRGBA(name)` — named color access
  - `XP:Font(name)` — font triplet `{path, size, flags}` access
  - `XP:Backdrop(name)` — backdrop preset access
  - `XP:Size(name)` — size constant access
  - `XP:ActionIcon(actionName)` — action type icon path access
  - `XP:InitSkins()` — reads `db.profile.skin`, activates the saved style
  - `XP:SetSkin(styleID)` — activates a style, fires `XP_SKIN_UPDATED` message, sets `XP.CurrentSkin` / `XP.CurrentSkinStyle`
  - `XP:RegisterSkin(skinData)` — registers external/user-supplied skin
  - `XP:GetSkinList()` — returns sorted `[{id, name}]` array for UI
  - `XP:ApplyBackdrop(frame, backdropName, bgColor, borderColor)` — one-call frame styling
  - `XP:ApplyFont(fontString, fontName, colorName)` — one-call FontString styling
  - `XP:SkinButton(button, options)` — full button theming with hover callbacks
  - `XP:CreateDivider(parent, yOffset, colorName)` — horizontal 1px divider helper

- **GuideMenu.lua** — Added "Theme" section to `CreateInlineOptions`:
  - Segmented skin selector: one button per registered skin (Default / Starlight / Midnight)
  - Active skin highlighted with bright cyan border and accent text colour
  - Clicking a button calls `XP:SetSkin(id)` and saves to `XP.db.profile.skin`
  - `RefreshSkinButtons()` helper keeps highlight state in sync with `OnLeave` resets

### Notes

- Total files changed this session: `Skins.lua` (rewrite), `GuideMenu.lua` (skin selector in options)

---

## Session 7 — 2026-04-13

### Bug Fixes (from second in-game test on WotLK 3.3.5a)

- **Core.lua** — `OnEnable` now calls `self:UpdateViewer()` when no saved guide exists on login. Previously the viewer always showed "Step 1 / 1" as initial state because `StepNum` was set at creation time and `UpdateViewer()` was never called without a guide loaded. Now correctly shows "No Guide".

- **GuideMenu.lua** — Fixed `bottomY = -10` → `bottomY = 10` in `CreateCategoryButtons`. The Options and About buttons were anchored via `BOTTOMLEFT` with a **negative** Y offset, placing them below the sidebar frame's bottom edge (invisible/out of frame). The value must be positive (10px inset from the bottom).

- **GuideSorting.lua** — Fixed white-square icons for GOLD and MACROS categories. The custom `gold.tga` and `note.tga` icon files were 4 KB stubs (not valid textures). These two entries now use full WoW built-in icon paths (`Interface\Icons\INV_Misc_Coin_01` and `Interface\Icons\INV_Misc_Note_05`) flagged with `iconFull = true`.

- **GuideMenu.lua** — Added `GetCategoryIconPath(cat)` helper function (local, top of file) that returns the full icon path. If `cat.iconFull` is true the path is used verbatim (WoW built-in); otherwise it's prefixed with `XP.ICON_PATH` and `.tga` appended. All three icon-loading sites in `GuideMenu.lua` updated to use this helper (sidebar buttons, home view cards, guide row list icons).

- **Viewer.lua** — Replaced `UIPanelScrollFrameTemplate` with a plain `ScrollFrame` + mousewheel handler + a narrow internal `Slider`-based scrollbar. `UIPanelScrollFrameTemplate` adds scroll-arrow button widgets that are positioned relative to the `ScrollFrame` and bleed outside the parent frame on WotLK. The new implementation keeps everything inside the viewer bounds, hides the scrollbar when content fits, and supports mousewheel scrolling.

- **GuideMenu.lua** — Replaced `UIPanelScrollFrameTemplate` on the guide list scroll frame for the same reason as above.

- **GuideMenu.lua** — Replaced the `options` tab behaviour: removed `AceConfigDialog:Open("X-Plore")` call (which opened a separate floating Blizzard-themed dialog). Added new `CreateInlineOptions(parent)` method that builds a fully themed options panel inside the center column. The panel includes:
  - Display section: Show Viewer on Login, Lock Viewer Position, Viewer Scale slider
  - Behaviour section: Auto-Advance Steps, Show Waypoint Arrow
  - About section: version string and command hint
  - All controls read/write `XP.db.profile` directly (no AceConfig indirection needed for the displayed options)

### Notes

- Total files changed this session: `Core.lua`, `GuideSorting.lua`, `Viewer.lua`, `GuideMenu.lua`

---

## Session 6 — 2026-04-13

### Bug Fixes

- **Compat.lua** — Added `XP.SetTexColor(tex, r, g, b, a)` — universal solid-color texture fill that uses `SetColorTexture` on Retail/Cata (where it exists) and falls back to `SetTexture(r,g,b,a)` on WotLK/Vanilla. Patching the WoW texture metatable was rejected after discovering that `Compat-335.lua` documents this as causing UI Taint on WotLK; a safe wrapper function is the correct approach.

- **Viewer.lua** — Replaced all 13 `tex:SetColorTexture(...)` calls with `XP.SetTexColor(tex, ...)`. This was the source of the first in-game crash: `attempt to call method 'SetColorTexture' (a nil value)` at Viewer.lua:67 on WotLK 3.3.5a.

- **GuideMenu.lua** — Replaced all 11 `tex:SetColorTexture(...)` calls with `XP.SetTexColor(tex, ...)`.

- **Skins.lua** — Replaced 1 `tex:SetColorTexture(...)` call in `CreateDivider` with `XP.SetTexColor(tex, ...)`.

- **Tabs.lua** — Replaced 2 `tex:SetColorTexture(...)` calls with `XP.SetTexColor(tex, ...)`.

### Notes

- Total: 27 `SetColorTexture` call sites replaced across 4 files.
- `Compat.lua` now documents why metatable patching was rejected (UI Taint on WotLK per !X-Libs Compat-335.lua:775-780).

---

## Session 5 — 2026-04-13

### Bug Fixes

- **Viewer.lua** — `guide.numSteps` was read before `Parse()` was triggered. Changed `guide.numSteps` to `guide:GetNumSteps()` which calls `self:Parse()` internally before returning the count. Previously always showed "Step 1/0" with no step lines visible when loading a Zygor-format guide.

- **GuideMenu.lua** — `centerCol:GetWidth() or (width - sideW - 22)` always evaluated to 0 because `GetWidth()` returns a number (not nil) before the frame is laid out. Changed to always use the explicit formula `(width - sideW - 22)` at creation time. Added an `OnSizeChanged` hook on `centerCol` to keep `listChild` width correct if the frame ever changes size. Previously caused the guide list scroll content to be invisible (zero-width).

- **GuideLoader.lua** — Removed `setmetatable(shim, { __index = shim })` which was a no-op self-reference. A table with `__index` pointing to itself adds nothing (all fields are already directly accessible). No functional change, just cleanup.

- **Waypoints.lua** — Arrow texture path pointed to `minimap\waypoint_arrow.tga`, a 28-byte stub placeholder file. Changed to `waypoints\XPArrow.tga`, which is the real arrow texture restored from backup in Session 3.

### Verified Clean (no changes needed)

- **Guides/Autoload.xml** — Correctly references `Test_Alliance_1_10.lua` and `Test_Horde_1_10.lua`.
- **Guides/Test_Alliance_1_10.lua** — Valid Zygor DSL; 2 guides (Northshire Valley 1-5, Elwynn Forest 5-10).
- **Guides/Test_Horde_1_10.lua** — Valid Zygor DSL; 2 guides (Valley of Trials 1-5, Durotar 5-10).
- **Guide.lua `XP:RegisterGuide()`** — Correctly dispatches both `(string, table, string)` Zygor-format and `(table)` legacy-format calls. The shim's 3-arg forwarding is compatible.

---

## Session 4 — 2026-04-13

### New Files

- **Parser.lua** — Full Zygor-format guide text parser (DSL → Step/Goal arrays). Handles 40+ goal types, pipe modifiers, `##ID` notation, coordinate formats, include expansion, condition compilation, path classification.

- **GuideLoader.lua** — Guide data file loading infrastructure. Installs a `ZygorGuidesViewer` / `ZGV` compatibility shim that intercepts `RegisterGuide()`, `RegisterInclude()`, `RegisterGuidePlaceholder()` and redirects to `XP:`. Handles both `:` method syntax and `.` function syntax.

- **Guides/Test_Alliance_1_10.lua** — Test guide data: Northshire Valley 1-5 (18 steps) + Elwynn Forest 5-10 (7 steps). Written in Zygor DSL format; calls `ZygorGuidesViewer:RegisterGuide()` to test the shim.

- **Guides/Test_Horde_1_10.lua** — Test guide data: Valley of Trials 1-5 (15 steps) + Durotar 5-10 (10 steps). Same format.

- **Guides/Autoload.xml** — XML manifest listing guide data files to load. Added to TOC between `GuideLoader.lua` and `Viewer.lua`.

### Changed

- **Guide.lua** — Rewritten to support dual registration modes:
  - Table-based (legacy): `XP:RegisterGuide({ id=..., steps={...} })`
  - Zygor-format: `XP:RegisterGuide("Path\\Title", {header}, [[raw text]])`
  - Added `Guide:Parse()` for deferred parsing (raw text stored, parsed on first access)
  - Added `RegisterInclude()`, `RegisterGuidePlaceholder()`
  - `GetProgressPercent()`, `GetStep()`, `GetNumSteps()`, `GetProgress()` all call `self:Parse()` first
  - `GetDisplayText()` handles all Zygor action names
  - `GetActionIcon()` expanded with 30+ icon mappings

- **Core.lua** — `CheckAutoAdvance()` rewritten:
  - Handles lowercase action names (`accept`, `turnin`) alongside legacy uppercase
  - Added `noComplete` goal flag support
  - Added `confirm` action bypass
  - Added `IsQuestObjectiveComplete()` for `|q QuestID/ObjectiveNum` tracking
  - Works with Retail (C_QuestLog) and Classic (GetQuestLogTitle) APIs

- **X-Plore.toc** — Added `Parser.lua`, `GuideLoader.lua`, `Guides\Autoload.xml` to load order.

### Bug Fixes

- **Parser.lua** — `UnitClass` nil check broken: `local _, playerClass = UnitClass and UnitClass("player") or nil, nil` always assigned `nil, nil` when `UnitClass` was nil because the `or` bound to the whole first expression. Fixed with correct parenthesization.

---

## Session 3 — 2026-04-13

### Changed

- **Textures** — Restored from backup at `C:\Ebonhold\...\X-PloreOLD\textures`:
  - `logo2.tga`
  - `ui/` directory: `backdrop_bg.tga`, `backdrop_edge.tga`, `glow.tga`, `gradient_v.tga`
  - `waypoints/` directory: `waypoint_arrow.tga`, `XPArrow.tga/png`, `XPArrow2.tga/png`, `XPArrow3.tga/png`, `XPArrow4.tga/png`

- **Waypoints.lua `UpdateWaypoint()`** — Rewrote to use Guide object model:
  - Uses `guide:GetStep(stepIndex)` instead of raw `guide.steps[index]`
  - Uses `step:GetPrimaryCoords()` instead of raw `step.coords`
  - Uses `step:GetTitle()` instead of raw `step.title`
  - Handles both `{x, y}` array and `{x=.., y=..}` hash coord formats
  - Extracts `mapID` from goal object that owns the coords
  - Smart normalization: coords >1 treated as 0–100 scale

- **GuideMenu.lua** — Load button and row click route through `XP.Tabs:LoadGuideToTab(guide.id)`. Fixed closure references from `self.MenuFrame` to `XP.MenuFrame`.

### Removed

- **guides/alliance_classic_1_60.lua** — Fake sample guide data removed.
- **guides/guides.xml** — Removed; entry removed from TOC.
- **guides/** directory — Empty directory removed.

---

## Session 2 — 2026-04-13

### Bug Fixes

- **Guide registration conflict** — Both `Core.lua` and `Guide.lua` defined `XP:RegisterGuide()`. Removed the Core.lua version (raw table storage). `Guide.lua` now exclusively owns it (creates proper `Guide:New()` objects with Step/Goal metatables).

- **Core.lua guide management** — Rewrote to use Guide object model:
  - `LoadGuide()` now clamps step to `guide.numSteps`
  - `NextStep()` / `PrevStep()` / `GoToStep()` use `guide.numSteps`
  - `CheckAutoAdvance()` iterates `step.goals[]` array, checks `goal.action:upper()` and `goal.questID` per-goal

---

## Session 1 — 2026-04-13

### New Files (complete rewrite from scratch)

- **X-Plore.toc** — `## Dependencies: !X-Libs`, `## SavedVariables: XPloreDB`. Multi-interface (`110100, 11507, 30403, 40402`).
- **Init.lua** — Global `XP` namespace, sub-tables, texture/sound path constants.
- **Compat.lua** — Version detection using `!X-Libs` globals + TOC fallback. `XP.CreateFrame()` / `XP.CreateBackdropFrame()` helpers. String/table utilities, `XP.UnpackColor()`.
- **ui/Templates.xml** — `XPlore_ButtonTemplate`, `XPlore_CategoryButtonTemplate`, `XPlore_TabButtonTemplate`.
- **Core.lua** — AceAddon-3.0 lifecycle (`OnInitialize`/`OnEnable`), AceDB saved variables, slash commands (`/xp`, `/xplore`), guide management, auto-advance engine, AceConfig options table.
- **Skins.lua** — Theme system with skin registry, default dark navy/cyan skin, color/font/size/backdrop accessors.
- **GuideSorting.lua** — 14 guide categories with faction/expansion sub-grouping. `GetCategories()`, `GetGuidesForCategory()`, `GetGuideCounts()`.
- **Guide.lua** — `XP.Goal`, `XP.Step`, `XP.Guide` prototypes with metatables. `XP:RegisterGuide()` API. `Guide:GetProgress()`, `GetProgressPercent()`, `GetStep()`, `GetNumSteps()`.
- **Viewer.lua** — Compact step viewer HUD. Step line pool, progress bar, sync indicator, prev/next nav buttons.
- **GuideMenu.lua** — Guide browser frame (825×630, DIALOG strata). Sidebar categories, search box, guide list scroll, home view, category navigation, `PopulateGuideList()`, `MenuSearch()`.
- **Tabs.lua** — Pool-based tab system. Drag reorder, AceDB persistence, `LoadGuideToTab()`, `CloseTab()`, `SwitchToTab()`.
- **Waypoints.lua** — Waypoint arrow using HereBeDragons-2.0 for player position. LibRover-1.0 pathfinding integration. `ShowWaypoint()`, `UpdateWaypoint()`, `HideWaypoint()`.

### Removed

- All files from prior XPV_Main/XPV_Guide/XPV_Sorting iteration (16 files deleted).
