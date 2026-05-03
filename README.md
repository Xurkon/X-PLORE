<div align="center">

# ⚠️ X-PLORE — INCOMPLETE / BROKEN ⚠️

**This project is actively in development and is currently in a broken, non-functional state.**
It is publicly visible for transparency and to allow curious users to follow progress.
Do not attempt to use this addon — it will not work correctly.

---

![Version](https://img.shields.io/badge/version-v2.0.0--dev-blue.svg?style=for-the-badge)
![Status](https://img.shields.io/badge/status-BROKEN-red.svg?style=for-the-badge)
![Downloads](https://img.shields.io/github/downloads/Xurkon/X-PLORE/total?style=for-the-badge&color=e67e22)
[![Patreon](https://img.shields.io/badge/Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white)](https://www.patreon.com/Xurkon)
[![PayPal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://www.paypal.me/Xurkon)
![Platform](https://img.shields.io/badge/PLATFORM-WoW%20(All%20Versions)-blue?style=for-the-badge&logo=windows&logoColor=white)
![WoW Versions](https://img.shields.io/badge/WoW-Vanilla%201.12%20%7C%20TBC%20%7C%20WotLK%203.3.5%20%7C%20Retail-blue?style=for-the-badge)

<br/>

**Universal guide viewer and navigation engine for all World of Warcraft versions**

<br/>

[📂 **View Source**](https://github.com/Xurkon/X-PLORE) &nbsp;&nbsp;•&nbsp;&nbsp; [📋 **Changelog**](CHANGELOG.md)

</div>

---

## ⚠️ Disclaimer

**X-PLORE is incomplete and currently broken.** This repository is published for transparency and progress tracking purposes only. The addon is not loadable in-game. Features are partially implemented, UI is non-functional, and the codebase is under active development.

If you are looking for a working guide addon, use the reference implementation: [ZygorGuidesViewer](https://github.com/Xurkon/ZygorGuidesViewer).

---

## What Is X-PLORE?

X-PLORE is a universal guide viewer and navigation engine targeting full parity with **ZygorGuides** — the gold-standard quest guide addon for World of Warcraft. It is being built to work across **all WoW versions**: Vanilla 1.12, The Burning Crusade, Wrath of the Lich King 3.3.5a, and current Retail.

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
| Retail (Dragonflight) | 40402 | ✔️ Core + UI |

**Universal baseline rule:** All version-specific code **must** include a fallback that works on Vanilla 1.12 through current retail. Core functionality is never allowed to break on any supported version.

---

## Dependencies

- **[!X-Libs](https://github.com/Xurkon/-X-Libs)** — shared utility library (required)

---

## Installation (Source Build)

Since this is source-only and not a release build, installation requires a manual build step.

### Prerequisites

- [Git](https://git-scm.com/)
- [Git LFS](https://git-lfs.github.com/) (for `.tga`, `.blp`, `.ogg` binary assets)

### Clone with Git LFS

```bash
git clone https://github.com/Xurkon/X-PLORE.git
cd X-PLORE
git lfs install
git lfs pull
```

### Game Load Path

After cloning, the addon must be placed in your WoW `Interface/AddOns/` directory:

```
<WoW Directory>/Interface/AddOns/X-Plore/
```

**Note:** The in-game load path (`/mnt/c/Ebonhold/Ebonhold/Interface/AddOns/`) differs from the GitHub source path. Ensure the addon folder is named `X-Plore` (with hyphen) for proper TOC loading.

### Required Dependency

**!X-Libs** must be installed in the same `AddOns/` directory:

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

## Source vs. Game Paths

| Purpose | Path |
|---------|------|
| **GitHub source** | `/mnt/c/Users/kance/Documents/GitHub/X-PLORE/` |
| **Game load (Ebonhold)** | `/mnt/c/Ebonhold/Ebonhold/Interface/AddOns/X-Plore/` |

The `addon/X-Plore/` subdirectory shown in some older documentation is **deprecated** — as of the May 2 2026 refactor, all addon source files live at the repo root.

---

## Contributing

This is a private project under active development. The repository is public for transparency purposes. Issues and pull requests are not currently being accepted.

---

## License

Private — All rights reserved.

---

## Links

- **[ZygorGuidesViewer](https://github.com/Xurkon/ZygorGuidesViewer)** — reference implementation (WotLK 3.3.5a)
- **[!X-Libs](https://github.com/Xurkon/-X-Libs)** — Required dependency
- **[PE-ElvUI](https://github.com/Xurkon/PE-ElvUI)** — Related Ebonhold UI project
- **[Patreon](https://www.patreon.com/Xurkon)** — Support development
- **[PayPal](https://www.paypal.me/Xurkon)** — One-time support
