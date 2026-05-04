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

| Component | Status |
|-----------|--------|
| Core framework | ⚙️ Partial |
| Guide menu / viewer | ⚙️ Partial |
| Skin system | ⚙️ Partial |
| Waypoint arrows | ⚙️ Partial |
| Goal tracker | ⚙️ Partial |
| Guide Info Bar | 🔴 Not started |
| Zygor guide parsing | ⚙️ Partial |
| Localization | ⚙️ Partial |

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
├── Compat.lua                # WoW version detection + API shims
├── Init.lua                  # Early initialization
├── Config.lua                # Configuration system
├── GuideMenu.lua             # Main guide menu UI
├── Viewer.lua                # Guide viewer frame
├── GuideLoader.lua           # Guide parsing and loading
├── Guide.lua                 # Guide data structures
├── Skins.lua                 # Skin system
├── Skins/Default/            # Default skin assets
├── Arrows/                   # Navigation arrow skins
├── Waypoints.lua             # Map waypoint system
├── GoalTracker.lua           # Step/goal tracking
├── QuestTracking.lua         # Quest auto-tracking
├── ui/                       # Shared UI templates
├── UiWidgets/                # Reusable widget library
├── Localization/             # enUS + base localization
└── sounds/                  # Audio (step_complete.ogg)
```

### Key Technologies

- **Lua** — all addon logic
- **XML** — UI frame definitions
- **AceDB** — profile/settings persistence via `XPloreDB`
- **Git LFS** — binary asset management (`.tga`, `.blp`, `.ogg`)

---

## Skins

X-PLORE includes a multi-skin system. Currently available:

| Skin | Status |
|------|--------|
| Stealth | ✅ Working |
| Starlight | ✅ Working |
| Default | 🔜 Coming |
| Midnight | 🔜 Coming |
| Starlight-glass | 🔜 Coming |
| Stealth-glass | 🔜 Coming |

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
