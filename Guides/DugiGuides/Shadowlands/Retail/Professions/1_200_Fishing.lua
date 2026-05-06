local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Shadowlands_En_1_200_Fishing")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands Leveling|r", "Shadowlands Fishing (1-200)", nil, nil, nil, "P", nil, function()
return [[

N Level 50 Required |N|You will need to be level 50 to use these guides| |PL|50|
N Train (spell:310675) |N|Speak to (npc:156671) and Train (spell:310675) (47.53,23.59)| |Z|1670| |P|1391 1| |NPC|156671|

N 1-200 |FIS| |N|Fish in the Shadowlands open water<br/><b>You can fish anywhere and gain skill.<br/><b>If you want to fish up specific fish, refer to one of our farming guides and reach level 200 Shadowlands Fishing| |P|1391 200|

N Guide Complete |N|You Reached 200 Shadowlands Fishing Skill|

]]
end) end

 function Guide:Unload()
 end
end