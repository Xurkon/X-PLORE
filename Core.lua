-----------------------------------------------------------------------
-- X-Plore: Core.lua
-- Main addon entry point using AceAddon-3.0 from !X-Libs.
-- Handles initialization, saved variables, slash commands, and
-- orchestrates all subsystems.
-----------------------------------------------------------------------
local ADDON_NAME, ADDON_TABLE = ...
local XP = ADDON_TABLE.XP

-----------------------------------------------------------------------
-- Upgrade XP to a full AceAddon
-----------------------------------------------------------------------
local AceAddon = LibStub("AceAddon-3.0")
XP = AceAddon:NewAddon(XP, "X-Plore",
    "AceEvent-3.0",
    "AceTimer-3.0",
    "AceConsole-3.0",
    "AceHook-3.0"
)
-- Re-export after AceAddon mixes in
_G.XP = XP
ADDON_TABLE.XP = XP

-----------------------------------------------------------------------
-- Library references (all from !X-Libs)
-----------------------------------------------------------------------
local AceDB      = LibStub("AceDB-3.0")
local AceConfig  = LibStub("AceConfig-3.0", true)
local AceConfigDialog = LibStub("AceConfigDialog-3.0", true)

-----------------------------------------------------------------------
-- Saved variable defaults
-----------------------------------------------------------------------
local DB_DEFAULTS = {
    profile = {
        -- Viewer frame
        viewer = {
            scale    = 1.0,
            locked   = false,
            shown    = true,
            width    = 320,
            height   = 450,
        },
        -- Guide menu / browser
        menu = {
            width    = 825,
            height   = 630,
        },
        -- Waypoint arrow
        arrow = {
            enabled      = true,
            locked       = false,
            scale        = 1.0,
            theme        = "MODERN",
            showDistance  = true,
        },
        -- Skin
        skin  = "starlight",
        -- Auto-advance engine
        autoAdvance        = true,
        -- AutoComplete: skip already-completed quest steps when loading a guide
        autoSkipCompleted  = true,
        -- Minimap button
        showMinimapButton  = true,
        minimapAngle       = 45,
        -- Frame appearance
        frameScale         = 1.0,
        fontSize           = 12,
        -- Dungeon/raid hiding
        hideInDungeon      = false,
        showAfterDungeon   = true,
        -- Combat hiding
        hideInCombat       = false,
        -- Viewer repositioning
        repositionViewer   = true,
        -- Map button
        showMapButton      = true,
        -- Visible steps count in viewer
        showcountsteps     = 1,
        -- Announcements
        announcements = {
            enabled     = true,   -- show step-advance messages in chat
            shareParty  = false,  -- broadcast to party/raid chat
            showZoneHint = true,  -- suggest a guide when entering a new zone
        },
    },
    char = {
        currentGuide = nil,
        currentStep  = 1,
        tabGuides    = {},  -- saved tab state
        goalStates   = {},  -- persisted goal completion: goalStates[guideID][stepIdx][goalIdx] = true
    },
    profile = {
        featuredGuide = nil,  -- guide ID to auto-load on startup
    },
}
-- 96|-- OnInitialize: runs once when ADDON_LOADED fires for us
-----------------------------------------------------------------------
-- OnInitialize: runs once when ADDON_LOADED fires for us
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:OnInitialize()
function XP:OnInitialize()
    -- Saved variables via AceDB
    self.db = AceDB:New("XPloreDB", DB_DEFAULTS, true)

    -- Initialize skin system (must happen before creating frames)
    self:InitSkins()

    -- Register guide categories
    self:InitCategories()

    -- Register slash commands
    self:RegisterChatCommand("xp", "SlashCommand")
    self:RegisterChatCommand("xplore", "SlashCommand")

    -- Initialize options system (mirrors XP's Options_Initialize)
    self:Options_Initialize()

    -- Run Config profile management (mirrors XP's Config:Run)
    if XP.Config and XP.Config.Run then
        XP.Config:Run()
    end
-- DEBUG: EXIT XP:OnInitialize()
end

-----------------------------------------------------------------------
-- OnEnable: runs after all addons loaded and the player logs in
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:OnEnable()
function XP:OnEnable()
    -- Create UI frames
    self:CreateViewerFrame()
    self:CreateGuideMenu()
    self:CreateWaypointArrow()

    -- Register waypoint-related events
  -- DEBUG: EVENT self:RegisterEvent("PLAYER_CORPSE_EXPIRED")
    self:RegisterEvent("PLAYER_CORPSE_EXPIRED", function()
        self:ClearWaypoints()
    end)

    -- Initialize tabs (guard against re-entry from second OnEnable fire)
    if not self.tabsInitialized then
        self.tabsInitialized = true
        self:InitTabs()
    end

    -- Initialize minimap button
    if XP.Minimap then
        XP.Minimap:OnEnable()
    end

    -- Initialize AutoComplete suggestion maps (needs guides loaded first)
    if XP.AutoComplete then
        XP.AutoComplete:OnEnable()
    end

        -- Initialize GoalTracker event frame
        if XP.GoalTracker then
            XP.GoalTracker:OnEnable()
        end

        -- Initialize Tooltip hints (injects X-Plore context into GameTooltip)
        if XP.Tooltip then
            XP.Tooltip:OnEnable()
        end

        -- Initialize Announcements (step chat messages, party broadcast)
        if XP.Announcements then
            XP.Announcements:OnEnable()
        end

        -- Initialize ActionBar slot highlighting
        self:InitActionBar()

        -- Initialize Faction reputation tracking
        self:InitFaction()

    -- Register game events for auto-advance
  -- DEBUG: EVENT self:RegisterEvent("QUEST_ACCEPTED")
    self:RegisterEvent("QUEST_ACCEPTED", "OnQuestEvent")
  -- DEBUG: EVENT self:RegisterEvent("QUEST_LOG_UPDATE")
    self:RegisterEvent("QUEST_LOG_UPDATE", "OnQuestEvent")
  -- DEBUG: EVENT self:RegisterEvent("ZONE_CHANGED")
    self:RegisterEvent("ZONE_CHANGED", "OnZoneEvent")
  -- DEBUG: EVENT self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA", "OnZoneEvent")

    -- Register combat and zone events for viewer visibility
  -- DEBUG: EVENT self:RegisterEvent("PLAYER_REGEN_DISABLED")
    self:RegisterEvent("PLAYER_REGEN_DISABLED", function()
        if self.db.profile.hideInCombat then
            self:UpdateViewerVisibility()
        end
    end)
  -- DEBUG: EVENT self:RegisterEvent("PLAYER_REGEN_ENABLED")
    self:RegisterEvent("PLAYER_REGEN_ENABLED", function()
        if self.db.profile.hideInCombat then
            self:UpdateViewerVisibility()
        end
    end)
  -- DEBUG: EVENT self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA", function()
        self:UpdateViewerVisibility()
    end)

    -- WotLK / Classic specific events
    if not XP.isRetail then
  -- DEBUG: EVENT self:RegisterEvent("QUEST_COMPLETE")
        self:RegisterEvent("QUEST_COMPLETE", "OnQuestEvent")
    else
  -- DEBUG: EVENT self:RegisterEvent("QUEST_TURNED_IN")
        self:RegisterEvent("QUEST_TURNED_IN", "OnQuestEvent")
    end

    -- Load last-used guide
    local lastGuide = self.db.char.currentGuide
    if lastGuide and self.Guides[lastGuide] then
        self:LoadGuide(lastGuide)
    else
        -- No saved guide: force viewer to show "No Guide" state
        self:UpdateViewer()
    end

    -- Featured guide loading on startup (Item 9)
    local featuredGuide = self.db.profile.featuredGuide
    if featuredGuide and self.Guides[featuredGuide] then
        XP.Tabs:LoadGuideToTab(featuredGuide)
        if XP.ViewerFrame then
            XP.ViewerFrame:Show()
        end
    elseif not featuredGuide and not lastGuide then
        -- Neither featured nor last guide: ensure viewer is visible
        if XP.ViewerFrame then
            XP.ViewerFrame:Show()
        end
    end

    self:Print("v" .. self.version .. " loaded. Type |cff00e5ff/xp|r to open.")
-- DEBUG: EXIT XP:OnEnable()
end

-----------------------------------------------------------------------
-- Slash command handler
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:SlashCommand()
-- DEBUG: PARAM input = [input]
function XP:SlashCommand(input)
    input = input and input:lower():match("^%s*(.-)%s*$") or ""

    if input == "viewer" then
        self:ToggleViewer()
    elseif input == "menu" or input == "browser" then
        self:ToggleMenu()
    elseif input == "options" or input == "config" then
        self:OpenOptions()
    elseif input == "reset" then
        self:Print("Resetting frame positions...")
        self:ResetFrames()
    end
-- DEBUG: EXIT XP:SlashCommand()
end

-----------------------------------------------------------------------
-- Guide Management
-- NOTE: XP:RegisterGuide() is defined in Guide.lua (loaded after Core).
-- Guide data files call it to register guide objects.
-- Core.lua provides LoadGuide, NextStep, PrevStep, GoToStep which
-- operate on Guide objects (have .numSteps, .steps as Step objects, etc.)
-----------------------------------------------------------------------

-- DEBUG: ENTER XP:LoadGuide()
-- DEBUG: PARAM guideID = [guideID]
function XP:LoadGuide(guideID)
    local guide = self.Guides[guideID]
    if not guide then
        self:Print("|cffff0000Error:|r Guide not found: " .. tostring(guideID))
        return
    end

    self.CurrentGuide = guide
    self.CurrentStep  = self.db.char.currentGuide == guideID
                        and self.db.char.currentStep or 1

    -- Clamp step to valid range
    if guide.numSteps then
        self.CurrentStep = math.max(1, math.min(self.CurrentStep, guide.numSteps))
    end

    -- AutoComplete: advance past already-completed steps
    if XP.AutoComplete then
        local firstIncomplete = XP.AutoComplete:OnGuideLoaded(guide)
        if firstIncomplete and firstIncomplete > self.CurrentStep then
            self.CurrentStep = firstIncomplete
        end
    end

    -- Persist
    self.db.char.currentGuide = guideID
    self.db.char.currentStep  = self.CurrentStep

    -- Notify GoalTracker of the new step
    if XP.GoalTracker then
        XP.GoalTracker:OnStepChanged(guide, self.CurrentStep)
    end

    -- Update UI
    self:UpdateViewer()

    -- Send message so other subsystems can react
    self:SendMessage("XP_GUIDE_LOADED", guide)
-- DEBUG: EXIT XP:LoadGuide()
end

-- DEBUG: ENTER XP:NextStep()
function XP:NextStep()
    if not self.CurrentGuide then return end
    local numSteps = self.CurrentGuide.numSteps or #self.CurrentGuide.steps
    if self.CurrentStep >= numSteps then return end

    self.CurrentStep = self.CurrentStep + 1
    self.db.char.currentStep = self.CurrentStep

    -- Notify GoalTracker
    if XP.GoalTracker then
        XP.GoalTracker:OnStepChanged(self.CurrentGuide, self.CurrentStep)
    end

    self:UpdateViewer()
    self:SendMessage("XP_STEP_CHANGED", self.CurrentStep)

    -- Announce step advance to chat / party
    if XP.Announcements then
        XP.Announcements:OnStepAdvanced(self.CurrentStep)
    end

    -- Play completion sound
    local soundFile = XP.SOUND_PATH .. "step_complete.ogg"
    if PlaySoundFile then
        PlaySoundFile(soundFile, "Master")
    end
-- DEBUG: EXIT XP:NextStep()
end

-- DEBUG: ENTER XP:PrevStep()
function XP:PrevStep()
    if not self.CurrentGuide or self.CurrentStep <= 1 then return end
    self.CurrentStep = self.CurrentStep - 1
    self.db.char.currentStep = self.CurrentStep

    -- Notify GoalTracker
    if XP.GoalTracker then
        XP.GoalTracker:OnStepChanged(self.CurrentGuide, self.CurrentStep)
    end

    self:UpdateViewer()
    self:SendMessage("XP_STEP_CHANGED", self.CurrentStep)

    -- Announce step change (no party broadcast for prev — informational only)
    if XP.Announcements then
        XP.Announcements:OnStepAdvanced(self.CurrentStep)
    end
-- DEBUG: EXIT XP:PrevStep()
end

-- DEBUG: ENTER XP:GoToStep()
-- DEBUG: PARAM n = [n]
function XP:GoToStep(n)
    if not self.CurrentGuide then return end
    local numSteps = self.CurrentGuide.numSteps or #self.CurrentGuide.steps
    n = math.max(1, math.min(n, numSteps))
    self.CurrentStep = n
    self.db.char.currentStep = n

    -- Notify GoalTracker
    if XP.GoalTracker then
        XP.GoalTracker:OnStepChanged(self.CurrentGuide, n)
    end

    self:UpdateViewer()
    self:SendMessage("XP_STEP_CHANGED", n)

    -- Announce step jump
    if XP.Announcements then
        XP.Announcements:OnStepAdvanced(n)
    end
-- DEBUG: EXIT XP:GoToStep()
end

---------------------------------------------------------------------
-- Persistent Goal State Management (Item 10)
---------------------------------------------------------------------
-- DEBUG: ENTER XP:SaveGoalState()
function XP:SaveGoalState(guideID, stepIdx, goalIdx)
    if not guideID or not stepIdx or not goalIdx then return end
    self.db.char.goalStates[guideID] = self.db.char.goalStates[guideID] or {}
    self.db.char.goalStates[guideID][stepIdx] = self.db.char.goalStates[guideID][stepIdx] or {}
    self.db.char.goalStates[guideID][stepIdx][goalIdx] = true
end

-- DEBUG: ENTER XP:LoadGoalState()
function XP:LoadGoalState(guideID)
    if not guideID or not self.CurrentGuide then return end
    local stored = self.db.char.goalStates[guideID]
    if not stored then return end
    local guide = self.CurrentGuide
    for stepIdx, goals in pairs(stored) do
        local step = guide:GetStep(stepIdx)
        if step and step.goals then
            for goalIdx in pairs(goals) do
                if step.goals[goalIdx] then
                    step.goals[goalIdx].complete = true
                end
            end
        end
    end
end

-- DEBUG: ENTER XP:ClearGoalState()
function XP:ClearGoalState(guideID)
    if not guideID then return end
    self.db.char.goalStates[guideID] = nil
end

---------------------------------------------------------------------
-- Event Handlers
---------------------------------------------------------------------
-- DEBUG: ENTER XP:OnQuestEvent()
-- DEBUG: PARAM event = [event]
function XP:OnQuestEvent(event, ...)
    -- Trigger auto-advance check
    if self.db.profile.autoAdvance and self.CurrentGuide then
        self:CheckAutoAdvance()
    end

    -- Scan active guide goals and refresh the viewer when quest milestones are hit.
    -- This catches goals that were not auto-completed by CheckAutoAdvance but whose
    -- quest state changed externally (e.g. manual quest completion, Ziel-Quest挂钩, etc.).
    if (event == "QUEST_COMPLETE" or event == "QUEST_ACCEPTED" or event == "QUEST_TURNED_IN")
       and self.CurrentGuide then
        local step = self.CurrentGuide:GetStep(self.CurrentStep)
        if step and step.goals then
            local changed = false
            for goalIdx, goal in ipairs(step.goals) do
                if not goal.complete and not goal.noComplete then
                    local action = (goal.action or ""):lower()
                    if (action == "accept" or action == "accept_quest") and goal.questID then
                        if self:IsQuestInLog(goal.questID) then
                            goal.complete = true
                            goal.current = goal.count or 1
                            changed = true
                            self:SaveGoalState(self.CurrentGuide.id, self.CurrentStep, goalIdx)
                        end
                    elseif (action == "turnin" or action == "turnin_quest") and goal.questID then
                        if self:IsQuestCompleted(goal.questID) then
                            goal.complete = true
                            goal.current = goal.count or 1
                            changed = true
                            self:SaveGoalState(self.CurrentGuide.id, self.CurrentStep, goalIdx)
                        end
                    elseif goal.questID and goal.questObjective then
                        if self:IsQuestObjectiveComplete(goal.questID, goal.questObjective) then
                            goal.complete = true
                            goal.current = goal.count or 1
                            changed = true
                            self:SaveGoalState(self.CurrentGuide.id, self.CurrentStep, goalIdx)
                        end
                    end
                end
            end
            if changed then
                self:UpdateViewer()
            end
        end
    end
-- DEBUG: EXIT XP:OnQuestEvent()
end

-- DEBUG: ENTER XP:OnZoneEvent()
-- DEBUG: PARAM event = [event]
function XP:OnZoneEvent(event, ...)
    -- Update waypoint if needed
    if self.CurrentGuide then
        self:UpdateWaypoint()
    end
    -- AutoComplete: check for zone-based guide suggestion
    if XP.AutoComplete then
        XP.AutoComplete:OnZoneChanged()
    end
-- DEBUG: EXIT XP:OnZoneEvent()
end

-- DEBUG: ENTER XP:CheckAutoAdvance()
function XP:CheckAutoAdvance()
    if not self.CurrentGuide then return end
    local step = self.CurrentGuide:GetStep(self.CurrentStep)
    if not step then return end

    -- Check each goal in the step for quest-based completion
    local allComplete = true
    for _, goal in ipairs(step.goals) do
        if not goal.complete and not goal.noComplete then
            local action = (goal.action or ""):lower()
            -- Accept quest: check if quest is in log
            if (action == "accept" or action == "accept_quest") and goal.questID then
                if self:IsQuestInLog(goal.questID) then
                    goal.complete = true
                    goal.current = goal.count or 1
                else
                    allComplete = false
                end
            -- Turn in quest: check if quest is flagged completed
            elseif (action == "turnin" or action == "turnin_quest") and goal.questID then
                if self:IsQuestCompleted(goal.questID) then
                    goal.complete = true
                    goal.current = goal.count or 1
                else
                    allComplete = false
                end
            -- Confirm: requires manual click, can't auto-complete
            elseif action == "confirm" then
                allComplete = false
            -- Goals with quest objective tracking
            elseif goal.questID and goal.questObjective then
                if self:IsQuestObjectiveComplete(goal.questID, goal.questObjective) then
                    goal.complete = true
                    goal.current = goal.count or 1
                else
                    allComplete = false
                end
            end
        end
    end

    -- If all goals in the step are complete, advance
    if allComplete and step:IsComplete() then
        self:NextStep()
    end
-- DEBUG: EXIT XP:CheckAutoAdvance()
end

-----------------------------------------------------------------------
-- Quest Objective Completion Check
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:IsQuestObjectiveComplete()
-- DEBUG: PARAM questID = [questID]
-- DEBUG: PARAM objectiveIndex = [objectiveIndex]
function XP:IsQuestObjectiveComplete(questID, objectiveIndex)
    if not questID or not objectiveIndex then return false end
    if XP.isRetail then
        -- Retail: C_QuestLog API
        if C_QuestLog and C_QuestLog.GetQuestObjectives then
            local objectives = C_QuestLog.GetQuestObjectives(questID)
            if objectives and objectives[objectiveIndex] then
                return objectives[objectiveIndex].finished
            end
        end
    else
        -- Classic/WotLK: scan quest log
        for i = 1, GetNumQuestLogEntries() do
            local _, _, _, isHeader, _, _, _, qID = GetQuestLogTitle(i)
            if qID == questID then
                SelectQuestLogEntry(i)
                local _, _, completed = GetQuestLogLeaderBoard(objectiveIndex)
                return completed
            end
        end
    end
    return false
-- DEBUG: EXIT XP:IsQuestObjectiveComplete()
end

-----------------------------------------------------------------------
-- Quest Helpers (universal across versions)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:IsQuestInLog()
-- DEBUG: PARAM questID = [questID]
function XP:IsQuestInLog(questID)
    if XP.isRetail then
        return C_QuestLog and C_QuestLog.IsOnQuest and C_QuestLog.IsOnQuest(questID)
    else
        for i = 1, GetNumQuestLogEntries() do
            local _, _, _, _, _, _, _, qID = GetQuestLogTitle(i)
            if qID == questID then return true end
        end
    end
    return false
-- DEBUG: EXIT XP:IsQuestInLog()
end

-- DEBUG: ENTER XP:IsQuestCompleted()
-- DEBUG: PARAM questID = [questID]
function XP:IsQuestCompleted(questID)
    if XP.isRetail then
        return C_QuestLog and C_QuestLog.IsQuestFlaggedCompleted
               and C_QuestLog.IsQuestFlaggedCompleted(questID)
    else
        -- 3.3.5a / Classic: check the quest log for completion flag
        for i = 1, GetNumQuestLogEntries() do
            local title, _, _, isHeader, _, isComplete, _, qID = GetQuestLogTitle(i)
            if qID == questID then
                return isComplete and isComplete > 0
            end
        end
    end
    return false
-- DEBUG: EXIT XP:IsQuestCompleted()
end

-----------------------------------------------------------------------
-- Frame Toggle Helpers (actual frame creation is in Viewer.lua / GuideMenu.lua)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:ToggleViewer()
function XP:ToggleViewer()
    if self.ViewerFrame and self.ViewerFrameCreated then
        if self.ViewerFrame:IsShown() then
            self.ViewerFrame:Hide()
        else
            self.ViewerFrame:Show()
            self:UpdateViewer()
        end
    else
        -- Either no frame or stub only (ViewerFrameCreated not set) — create now
        self:CreateViewerFrame()
        if self.ViewerFrame and self.ViewerFrameCreated then
            self.ViewerFrame:Show()
            self:UpdateViewer()
        end
    end
-- DEBUG: EXIT XP:ToggleViewer()
end

-- DEBUG: ENTER XP:ToggleMenu()
function XP:ToggleMenu()
    if self.MenuFrame then
        if self.MenuFrame:IsShown() then
            self.MenuFrame:Hide()
        else
            self.MenuFrame:Show()
            self:UpdateMenu()
        end
    end
-- DEBUG: EXIT XP:ToggleMenu()
end

-- DEBUG: ENTER XP:SetDisplayMode()
function XP:SetDisplayMode(mode)
    -- XP parity: "guide" shows step content, "gold" shows gold spots.
    -- X-PLORE only has guide content, so this primarily records the mode.
    -- Currently "guide" is the only supported mode.
    self.db = self.db or {}
    self.db.profile = self.db.profile or {}
    self.db.profile.displaymode = mode
    -- Re-render the viewer to reflect any mode-specific UI changes
    if self.ViewerFrame and self.ViewerFrameCreated then
        self:UpdateViewer()
    end
-- DEBUG: EXIT XP:SetDisplayMode()
end

-- DEBUG: ENTER XP:ResetFrames()
function XP:ResetFrames()
    if self.ViewerFrame then
        self.ViewerFrame:ClearAllPoints()
        self.ViewerFrame:SetPoint("RIGHT", UIParent, "RIGHT", -50, 0)
    end
    if self.MenuFrame then
        self.MenuFrame:ClearAllPoints()
        self.MenuFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
    end
-- DEBUG: EXIT XP:ResetFrames()
end

-----------------------------------------------------------------------
-- Options Table (basic; expandable later)
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:GetOptionsTable()
function XP:GetOptionsTable()
    return {
        type = "group",
        name = "X-Plore",
        args = {
            general = {
                type = "group",
                name = "General",
                order = 1,
                args = {
                    autoAdvance = {
                        type = "toggle",
                        name = "Auto-Advance Steps",
                        desc = "Automatically advance to the next step when the current step is completed.",
                        -- DEBUG: ENTER get()
                        get = function() return self.db.profile.autoAdvance end,
                        -- DEBUG: ENTER set()
                        -- DEBUG: PARAM _ = [_]
                        -- DEBUG: PARAM val = [val]
                        set = function(_, val) self.db.profile.autoAdvance = val end,
                        order = 1,
                    },
                    viewerScale = {
                        type = "range",
                        name = "Viewer Scale",
                        desc = "Scale of the step viewer frame.",
                        min = 0.5, max = 2.0, step = 0.05,
                        -- DEBUG: ENTER get()
                        get = function() return self.db.profile.viewer.scale end,
                        -- DEBUG: ENTER set()
                        -- DEBUG: PARAM _ = [_]
                        -- DEBUG: PARAM val = [val]
                        set = function(_, val)
                            self.db.profile.viewer.scale = val
                            if self.ViewerFrame then
                                self.ViewerFrame:SetScale(val)
                            end
                        end,
                        order = 2,
                    },
                    lockViewer = {
                        type = "toggle",
                        name = "Lock Viewer",
                        desc = "Prevent the viewer from being moved.",
                        -- DEBUG: ENTER get()
                        get = function() return self.db.profile.viewer.locked end,
                        -- DEBUG: ENTER set()
                        -- DEBUG: PARAM _ = [_]
                        -- DEBUG: PARAM val = [val]
                        set = function(_, val)
                            self.db.profile.viewer.locked = val
                            if self.ViewerFrame then
                                self.ViewerFrame:SetMovable(not val)
                            end
                        end,
                        order = 3,
                    },
                },
            },
            arrow = {
                type = "group",
                name = "Waypoint Arrow",
                order = 2,
                args = {
                    enabled = {
                        type = "toggle",
                        name = "Enable Arrow",
                        -- DEBUG: ENTER get()
                        get = function() return self.db.profile.arrow.enabled end,
                        -- DEBUG: ENTER set()
                        -- DEBUG: PARAM _ = [_]
                        -- DEBUG: PARAM val = [val]
                        set = function(_, val) self.db.profile.arrow.enabled = val end,
                        order = 1,
                    },
                    arrowScale = {
                        type = "range",
                        name = "Arrow Scale",
                        min = 0.5, max = 2.0, step = 0.05,
                        -- DEBUG: ENTER get()
                        get = function() return self.db.profile.arrow.scale end,
                        -- DEBUG: ENTER set()
                        -- DEBUG: PARAM _ = [_]
                        -- DEBUG: PARAM val = [val]
                        set = function(_, val) self.db.profile.arrow.scale = val end,
                        order = 2,
                    },
                },
            },
        },
    }
-- DEBUG: EXIT XP:GetOptionsTable()
end

-----------------------------------------------------------------------
-- Update Viewer Visibility: apply combat and dungeon visibility rules
-----------------------------------------------------------------------
-- DEBUG: ENTER XP:UpdateViewerVisibility()
function XP:UpdateViewerVisibility()
    if not self.ViewerFrame then return end
    local p = self.db.profile
    local show = true

    -- Check combat hiding
    if p.hideInCombat and InCombatLockdown() then
        show = false
    end

    -- Check dungeon/raid hiding
    if p.hideInDungeon and IsInInstance() then
        show = false
    end

    if show then
        self.ViewerFrame:Show()
    else
        self.ViewerFrame:Hide()
    end
-- DEBUG: EXIT XP:UpdateViewerVisibility()
end
