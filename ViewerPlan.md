# X-PLORE Viewer & Step Completion Plan

## Audit Summary

### Zygor's ViewerFrame.xml (772 lines)
- Frame template with TitleBar, TabContainer, Toolbar, Scroll, Flash animation, Resizers
- StepLine template with back (fade animation), icon, label, clicker
- Step templates with slideup/fadeout animations
- TitleButton template with KeyValue for buttonkey (CLOSE, BURGER, etc.)
- All using Mixin pattern for OOP

### X-Plore Viewer.lua (658 lines)
- Main frame with title bar, tabs, toolbar, scroll, progress, footer
- Step lines created programmatically (not XML template)
- Step completion based on position (i < currentStep), NOT actual completion tracking
- No step animations

---

## Implementation Plan

### Phase 1: ViewerFrame.xml Template

Create `ui/ViewerFrame.xml` with:

1. **XPlore_StepLine_Template**
   - `back` texture (for background color with animation)
   - `icon` texture (14x14)
   - `label` FontString
   - `clicker` button overlay for mouse events
   - Fade animation on completion

2. **XPlore_DefaultStep_Template** (for special steps)
   - Border frame
   - Animations (slideup for step 1, fadeout)

3. **XPlore_TitleButton_Template**
   - NormalTexture, PushedTexture, HighlightTexture
   - KeyValue for buttonkey mapping to ButtonSets

4. **XPlore_ViewerFrame_Template**
   - TitleBar with Logo, CloseButton, MenuButton
   - TabContainer
   - Toolbar with PrevButton, StepNum, NextButton, NextButtonSpecial
   - Scroll with StepContainer
   - Flash frame for completion animation
   - Resizer frames

### Phase 2: Step Completion Logic

#### Goal:IsComplete()
Track completion for each goal type:
- `accept`/`turnin` — C_QuestLog.IsQuestFlaggedCompleted(questID)
- `kill`/`collect` — Event-driven tracking via COMBAT_LOG, BAG_UPDATE
- `talk`/`gossip` — C_GossipInfo.GetOptions()
- `use`/`equip` — Item existence checks
- `skill`/`rep` — API calls for skill level, faction standing
- `achieve` — IsAchievementCompleted()
- `learn`/`cast` — Spellbook / action checks

#### Step:IsComplete()
Returns true if:
- All goals complete (AND logic)
- OR `noComplete` flag is set on any goal
- OR `manual` flag (user must click manually)

#### Step:getCompletionState()
Returns: `"complete"` | `"active"` | `"upcoming"` | `"skipped"`

### Phase 3: Expansion Filtering

Add `expansion` field to guides:
- `0` = Classic/Vanilla
- `1` = TBC
- `2` = WotLK
- `3` = Cataclysm
- `4` = Mists
- `5` = Warlords
- `6` = Legion
- `7+` = Retail

Filter guides in GuideMenu based on `XP.IsVanilla`, `XP.IsWotLK`, etc.

### Phase 4: Test Guides

Create test guides for each expansion:
- `Test_Leveling_1_10_Vanilla` (expansion 0)
- `Test_Leveling_1_10_TBC` (expansion 1)
- `Test_Leveling_1_10_WotLK` (expansion 2)

---

## Key Mappings

| Zygor Concept | X-Plore Implementation |
|---------------|------------------------|
| SkinData() | XP:SD() |
| ZGV.Frame.Controls.Scroll.Child | XP.ViewerFrame.ScrollChild |
| ZGV.StepLineBack_Template | XPlore_StepLine_Template |
| ZGV_DefaultSkin_Frame_Mixin | XP.ViewerFrame mixin |
| Step:IsComplete() | XP.Step:IsComplete() |
| Goal:IsComplete() | XP.Goal:IsComplete() |
| GUIDE_EXPANSION | guide.expansion |
