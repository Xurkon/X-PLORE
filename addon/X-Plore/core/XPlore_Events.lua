-- X-Plore Event Handler
XPlore_Events = {}

function XPlore_Events:OnEvent(event, ...)
    if event == "QUEST_ACCEPTED" or event == "QUEST_TURNED_IN" or event == "QUEST_LOG_UPDATE" then
        XPlore_Engine:OnUpdate(0) -- Force check
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("QUEST_ACCEPTED")
f:RegisterEvent("QUEST_TURNED_IN")
f:RegisterEvent("QUEST_LOG_UPDATE")
f:RegisterEvent("PLAYER_LEVEL_UP")
f:SetScript("OnEvent", function(self, event, ...) XPlore_Events:OnEvent(event, ...) end)
