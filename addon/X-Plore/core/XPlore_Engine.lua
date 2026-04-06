-- X-Plore Auto-Progression Engine
XPlore_Engine = {}
XPlore_Engine.ActiveStep = 1

function XPlore_Engine:OnUpdate(elapsed)
    if not XPlore_Settings.auto_advance then return end
    
    local guide = XPlore_CMS.ActiveGuide
    if not guide then return end
    
    local step = guide.steps[self.ActiveStep]
    if not step then return end
    
    -- Check Completion based on type
    local isDone = false
    if step.type == "ACCEPT_QUEST" then
        isDone = self:IsQuestInLog(step.questID)
    elseif step.type == "TURNIN_QUEST" then
        isDone = XPlore_Compat:IsQuestCompleted(step.questID)
    elseif step.type == "TRAVEL" then
        isDone = self:IsPlayerAtCoords(step.coords)
    end
    
    if isDone then
        self:NextStep()
    end
end

function XPlore_Engine:IsQuestInLog(questID)
    for i = 1, GetNumQuestLogEntries() do
        local _, _, _, _, _, _, _, qID = GetQuestLogTitle(i)
        if qID == questID then return true end
    end
    return false
end

function XPlore_Engine:IsPlayerAtCoords(coords)
    if not coords then return false end
    local x, y = GetPlayerMapPosition("player")
    x, y = x * 100, y * 100
    local dist = math.sqrt((x - coords.x)^2 + (y - coords.y)^2)
    return dist < 2 -- 2 yard radius
end

function XPlore_Engine:NextStep()
    local guide = XPlore_CMS.ActiveGuide
    if not guide or self.ActiveStep >= table.getn(guide.steps) then return end
    
    self.ActiveStep = self.ActiveStep + 1
    if XPlore_MainFrame and XPlore_MainFrame.UpdateUI then XPlore_MainFrame:UpdateUI() end
    PlaySoundFile("Interface\\AddOns\\X-Plore\\sounds\\step_complete.ogg", "Master")
end

function XPlore_Engine:PrevStep()
    if self.ActiveStep <= 1 then return end
    
    self.ActiveStep = self.ActiveStep - 1
    if XPlore_MainFrame and XPlore_MainFrame.UpdateUI then XPlore_MainFrame:UpdateUI() end
end
