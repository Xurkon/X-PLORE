<div align="center">

# X-PLORE — Universal WoW Guide Viewer

**A community-built guide viewer for World of Warcraft, compatible with all expansions.**

---

![Version](https://img.shields.io/badge/version-v2.0.0--dev-blue.svg?style=for-the-badge)
![Status](https://img.shields.io/badge/status-IN%20DEVELOPMENT-orange.svg?style=for-the-badge)
![Downloads](https://img.shields.io/github/downloads/Xurkon/X-PLORE/total?style=for-the-badge&color=e67e22)
[![Patreon](https://img.shields.io/badge/Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white)](https://www.patreon.com/Xurkon)
[![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.me/Xurkon)
![Platform](https://img.shields.io/badge/PLATFORM-WoW%20(All%20Versions)-blue?style=for-the-badge&logo=windows&logoColor=white)
![WoW Versions](https://img.shields.io/badge/WoW-Vanilla%E2%80%93Retail-blue?style=for-the-badge)

<br/>

**Universal guide viewer and navigation engine for all World of Warcraft versions**

<br/>

[📂 **View Source**](https://github.com/Xurkon/X-PLORE) &nbsp;&nbsp;•&nbsp;&nbsp; [📋 **Changelog**](CHANGELOG.md)

</div>

---

## ⚠️ Disclaimer

**X-PLORE is in active development.** This repository hosts the in-progress codebase. The addon is loadable in-game with partial functionality: the guide menu, skin system, options panel, and guide loading are functional, but core features like waypoints and goal tracking are still being implemented.

For a working reference implementation, see [ZygorGuidesViewer](https://github.com/Xurkon/ZygorGuidesViewer).

---

## What Is X-PLORE?

X-PLORE is a universal guide viewer and navigation engine targeting full parity with **ZygorGuides** — the gold-standard quest guide addon for World of Warcraft. It is being built to work across **all WoW versions**: Vanilla through current Retail.

### Core Goals

- **Zygor-compatible guide format** — parse and display guides in the same format Zygor uses
- **Universal WoW version support** — one codebase, all expansions, with proper version shims
- **Guide Info Bar** — the next major component being implemented
- **Full skin system** — multiple visual themes (Stealth and Starlight are functional; more coming)
- **Arrow & waypoint navigation** — in-game directional arrows and map waypoints
- **Goal & quest tracking** — step-by-step goal progress with auto-accept/turn-in logic

### Current Status

| Component | Status | Notes |
|-----------|--------|-------|
| Core framework | ✅ Functional | AceDB profiles, version detection, skin system |
| Guide menu / viewer | ✅ Functional | Frame, tabs, step scrolling, progress bar, navigation buttons |
| Skin engine | ✅ Zygor-matching | Separated architecture: engine + Skin.lua + per-style Style.lua files |
| Skin styles | ✅ All 4 populated | Starlight, Stealth, Starlight-glass, Stealth-glass — each in own Style.lua |
| Waypoint arrow | ✅ Functional | Arrow frame, rotation, distance, ETA, cycling, turn audio cues |
| Arrow themes | ✅ Complete | 5 themes wired; UI selector dropdown in Options panel |
| Ant trail | ✅ Functional | Dot fallback wired for WotLK/Classic (915407d); world line for Retail |
| Goal tracker | ⚙️ Partial | Step/goal structures defined; display rendering in progress |
| Guide Info Bar | ⚙️ Partial | Info bar frame present; content wiring in progress |
| Zygor guide parsing | ✅ Functional | Guides load and appear in Guide Menu (Session 54) |
| Guide folder hierarchy | ✅ Functional | Category → Folder → Guide drill-down; correct path grouping + Zygor-style hover (Session 55) |
| Multi-source guide support | ✅ Functional | 6 guide sources: ZygorOfficial, CoreysGuides, Epoch, Ding80, DugiGuides, RXP; format shims in GuidesCompat.lua |
| Options panel | ⚙️ Partial | Arrow options wired; remaining sections in progress |
| Tabs system | ✅ Complete | STEPS + LEVELING GUIDES static tabs; dynamic multi-guide tabs with overflow |

#### 🔄 Recently Completed — Shim Missing Fields + TalentAdvisor Guard

**4 more ZGV shim fields added + TalentAdvisor Retail guard** (`8f5e0ce`): Fixed 7 runtime errors. (1) `BETAEND = function() end` — 4 Classic/Anniversary guide files call `BETAEND()` between guide blocks; was missing while `BETASTART` existed. (2) `ItemScore = { Items = {} }` — gear guides write `ItemScore.Items["Dungeon\\Name"]`; old `ItemScore = {}` had no `.Items`. (3) `TalentAdvisor = { Builds = {} }` — defensive stub for TalentAdvisor-Builds.lua. (4) `L = setmetatable proxy` — AH/Gold guides use `ZGV.L["type_armor"]` etc. for item type strings. TalentAdvisor-Builds.lua now has a `GetBuildInfo() < 100000 → return` guard so Retail Hero-Talent builds don't load on Classic/WotLK/Era.

#### 🔄 Recently Completed — DugisGuideViewer Protected Proxy

**DugisGuideViewer shim hardened** (`332c826`): Fixed 50+ `GetCreateTable nil` errors and silent shim corruption caused by DugiGuides infrastructure files. `DugisGuideViewer` is now an empty proxy table backed by a private `_dgv` data table. `__newindex` silently blocks writes to `RegisterGuide` and `RegisterModule` so `Modules.common.lua`'s `PlaceUtilityStubs()` cannot overwrite them with no-ops. `RegisterModule` now returns a **MakeModule proxy** that intercepts the assignment of `Initialize` via `__newindex` and immediately calls it, then auto-calls `Load()` — matching the DugiGuides module lifecycle without needing the DugiGuides core. Also added `NoOp` and `GetCreateTable` (pool factory) stubs.

#### 🔄 Recently Completed — Guide Load Error Fixes

**ZGV shim completed + DugiGuides compat stubs** (`33ade5c`): Fixed 8 runtime load errors across ZygorOfficial, DugiGuides, and RXP guide sources. (1) Six missing ZGV sub-namespace fields added to shim: `IMAGESDIR`, `BETASTART`, `InPhase`, `NoOp`, `Gold`, `Poi` — unblocks Gold/Gathering/POI/Starter guide files. (2) `LuaUtils` and `DugisLocals` global stubs added in `GuidesCompat.lua` for legacy DugiGuides module files. (3) Two truncated DugiGuides files (`Keymaster_A.lua`, `Keymaster_H.lua`) had missing `end` statements appended. (4) `20th_Anniversary_Daily_Weekly.lua` unclosed `[[` long string fixed.

#### 🔄 Recently Completed — Guide Infrastructure Rebuild

**Multi-source guide support + API bug fixes**: (1) `SetColorTexture` crash on WotLK/Vanilla fixed — replaced with universal `SetTexture(r,g,b,a)`. (2) Minimap button invisible — wrong icon path (`minimap_button.tga` → `XPIcon.tga`) and wrong `SetTexCoord` crop fixed. (3) `Guides/` folder restructured into 6 source groups: `ZygorOfficial/`, `CoreysGuides/`, `Epoch/`, `Ding80Guides/`, `DugiGuides/`, `RXP/`. (4) `Autoload.xml` fully regenerated — 3,704 entries, `DugiGuides/Legacy_Core_5.15/` excluded. (5) New `GuidesCompat.lua` with full runtime shims: DugisGuideViewer (old + new API variants) and RXPGuides → ZygorGuidesViewer translation. All Lua 5.0–5.4 compatible.

#### 🔄 Recently Completed — Session 55

**Guide Folder Hierarchy + Visual Fixes** (`542648b` + fix): Guides displayed as a flat list inside each category. Now clicking a category shows **folder rows** grouped by `pathParts[2]` (guide-set section name), and clicking a folder drills in to show individual guides. Three follow-up bugs also fixed: (1) folder grouping used `pathParts[n-1]` causing deep sub-zone names to appear at top level — fixed to `pathParts[2]`; (2) bare guides still appeared below folder rows at category level — now suppressed; (3) guide rows had solid black backgrounds from `bg_deep` fill — removed, rows now transparent; (4) hover highlight was dark `selection.tga` — replaced with `SetColorTexture(1,1,1,0.08)` for Zygor-style subtle light-grey hover.

#### 🔄 Recently Completed — Session 54

**Guide Registration Pipeline Fixed** (`b20f87b`, `dffb9ec`): Two compounding bugs prevented guides from appearing in the Guide Menu. (1) `_RegisterGuideFromZygor` discarded all guides due to a 2-arg calling convention not being detected — fixed with early reassignment when `data == nil`. (2) `GuideSorting.lua::InitCategories()` wiped `GuidesByCategory = {}` on `ADDON_LOADED` after guides were already registered — fixed to save and restore guide data around the category rebuild. Guides now load and populate the Guide Menu.

#### 🔄 Recently Completed — Sessions 49–50

**Zygor Skin Architecture** (`356180f`): `Skins.lua` slimmed to engine-only (~1260 lines). `Skins\Default\Skin.lua` registers 4 styles. Individual `Style.lua` files hold all style data. `Skin.xml` controls load order. `X-Plore.toc` Skins section reduced to 2 entries.

**Orange Tab Fix** (`356180f`): Removed fabricated `TabDecorTex`/`TabsDecor`/`viewer8-tabs` concept — `tabDecorTex:SetAllPoints()` was flooding the tab container orange. Deleted from `Viewer.lua` and `ViewerFrame.lua`.

**Runtime Error Fixes** (`5142bff`): `SetMaxLines` nil guard; `Faction.lua`/`ActionBar.lua` `step` number/object crash; `SetPoint("MIDDLE")` → `"CENTER"`.

#### 🔜 Remaining Parity Gaps

- **Viewer visual parity** — Step list styling, separators, step height/spacing to exactly match Zygor screenshots
- **Tab visual parity** — Tab textures/sprites to match Zygor's sprite-sheet-based tab appearance
- **Action Bar integration** — Highlight action bar slots for quest items (`ActionBar.lua` stub)
- **Minimap** — Quest area blob / foglight reveal
- **Faction system** — Reputation badges and standing-based guide filtering
- **Sound system** — Multiple event sounds beyond step_complete

---

## Version Compatibility

X-PLORE targets all major WoW versions simultaneously. The `Compat.lua` module handles version detection and API shims:

| Version | Interface | Support Level |
|---------|-----------|--------------|
| Vanilla 1.12 | 110100 | ✔️ Core + UI |
| TBC 2.5.x | 11507 | ✔️ Core + UI |
| WotLK 3.3.5a | 30403 | ✔️ Core + UI |
| Retail (Midnight) | 120000 | ✔️ Core + UI |

**Universal baseline rule:** All version-specific code **must** include a fallback that works on Vanilla 1.12 through current Retail. Core functionality is never allowed to break on any supported version.

---

## Dependencies

- **[!X-Libs](https://github.com/Xurkon/-X-Libs)** — shared utility library (required)

---

## Installation

Download and extract the addon to your WoW `Interface/AddOns/` directory:

```
<WoW Directory>/Interface/AddOns/X-Plore/
```

Ensure the addon folder is named `X-Plore` (with hyphen) for proper TOC loading.

### Required Dependency

**!X-Libs** must also be installed:

```
<WoW Directory>/Interface/AddOns/!X-Libs/
```

Get it here: https://github.com/Xurkon/-X-Libs

---

## Development

### Repository Structure

```
X-PLORE/
├── X-Plore.toc              # Addon manifest (TOC)
├── Core.lua                 # Addon initialization and core
├── Compat.lua               # WoW version detection + API shims
├── Init.lua                 # Early initialization
├── Config.lua               # Configuration system
├── GuideMenu.lua            # Main guide menu UI
├── Viewer.lua               # Guide viewer frame
├── GuideLoader.lua          # Guide parsing and loading
├── Guide.lua                # Guide data structures
├── Skins.lua                # Skin engine (SkinProto, API, helpers)
├── Skins/Default/
│   ├── Skin.xml             # Load order: ViewerFrame → Skin.lua → Style files
│   ├── Skin.lua             # Registers skin + 4 styles; CreateFrame/UpdateSkin
│   ├── ViewerFrame.lua/.xml # Frame widget definitions
│   ├── Starlight/Style.lua  # Starlight style data
│   ├── Starlight-glass/Style.lua
│   ├── Stealth/Style.lua    # Stealth style data
│   └── Stealth-glass/Style.lua
├── Arrows/                  # Navigation arrow skins
├── Waypoints.lua            # Map waypoint system
├── GoalTracker.lua          # Step/goal tracking
├── QuestTracking.lua        # Quest auto-tracking
├── UiWidgets/               # Reusable widget library
├── Localization/            # enUS + base localization
└── sounds/                  # Audio (step_complete.ogg)
```

### Key Technologies

- **Lua** — all addon logic
- **XML** — UI frame definitions
- **AceDB** — profile/settings persistence via `XPloreDB`
- **Git LFS** — binary asset management (`.tga`, `.blp`, `.ogg`)

---

## Skins

X-PLORE includes a multi-skin system matching Zygor's separated architecture. All 4 styles are fully populated in their own `Style.lua` files:

| Skin | Status |
|------|--------|
| Starlight | ✅ Working |
| Stealth | ✅ Working |
| Starlight-glass | ✅ Data populated |
| Stealth-glass | ✅ Data populated |

### Skin Architecture

```
Skins.lua                              ← engine only (SkinProto, API, helpers)
Skins\Default\Skin.xml                 ← load order orchestration
Skins\Default\ViewerFrame.lua/.xml     ← frame widget definitions
Skins\Default\Skin.lua                 ← registers skin + 4 styles
Skins\Default\Starlight\Style.lua      ← Starlight style data
Skins\Default\Starlight-glass\Style.lua
Skins\Default\Stealth\Style.lua        ← Stealth style data
Skins\Default\Stealth-glass\Style.lua
```

---

## Contributing

This is an open-source community project under active development. Issues and pull requests are welcome!

---

## License

MIT License — see [LICENSE](LICENSE) for details.

---

## Links

- **[ZygorGuidesViewer](https://github.com/Xurkon/ZygorGuidesViewer)** — reference implementation (WotLK 3.3.5a)
- **[!X-Libs](https://github.com/Xurkon/-X-Libs)** — Required dependency
- **[PE-ElvUI](https://github.com/Xurkon/PE-ElvUI)** — Related Ebonhold UI project
- **[Patreon](https://www.patreon.com/Xurkon)** — Support development
- **[PayPal](https://www.paypal.me/Xurkon)** — One-time support
