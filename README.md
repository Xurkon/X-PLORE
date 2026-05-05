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

**X-PLORE is in active development.** This repository hosts the in-progress codebase. The addon is loadable in-game with partial functionality: the guide menu, skin system, and options panel are functional, but core features like guide loading, waypoints, and goal tracking are still being implemented.

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
| Zygor guide parsing | ⚙️ Partial | Parser structures exist; guide loading in progress |
| Options panel | ⚙️ Partial | Arrow options wired; remaining sections in progress |
| Tabs system | ✅ Complete | STEPS + LEVELING GUIDES static tabs; dynamic multi-guide tabs with overflow |

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
