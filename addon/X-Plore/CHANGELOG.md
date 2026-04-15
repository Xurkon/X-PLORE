# X-PLORE Changelog

All notable changes to X-PLORE are documented here.

---

## [Unreleased] — Session 18 — 2026-04-14

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

## [Unreleased] — Session 17 — 2026-04-14

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

## [Unreleased] — Session 16 — 2026-04-14

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

## [Unreleased] — Session 15 — 2026-04-14

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

## [Unreleased] — Session 14 — 2026-04-14

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

## [Unreleased] — Session 13 — 2026-04-14

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

## [Unreleased] — Session 12 — 2026-04-14

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

## [Unreleased] — Session 11 — 2026-04-13

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

## [Unreleased] — Session 10 — 2026-04-13

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

## [Unreleased] — Session 8 — 2026-04-13

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

## [Unreleased] — Session 7 — 2026-04-13

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

## [Unreleased] — Session 6 — 2026-04-13

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

## [Unreleased] — Session 5 — 2026-04-13

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

## [Unreleased] — Session 4 — 2026-04-13

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

## [Unreleased] — Session 3 — 2026-04-13

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

## [Unreleased] — Session 2 — 2026-04-13

### Bug Fixes

- **Guide registration conflict** — Both `Core.lua` and `Guide.lua` defined `XP:RegisterGuide()`. Removed the Core.lua version (raw table storage). `Guide.lua` now exclusively owns it (creates proper `Guide:New()` objects with Step/Goal metatables).

- **Core.lua guide management** — Rewrote to use Guide object model:
  - `LoadGuide()` now clamps step to `guide.numSteps`
  - `NextStep()` / `PrevStep()` / `GoToStep()` use `guide.numSteps`
  - `CheckAutoAdvance()` iterates `step.goals[]` array, checks `goal.action:upper()` and `goal.questID` per-goal

---

## [Unreleased] — Session 1 — 2026-04-13

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
