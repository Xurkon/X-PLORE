local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Classic_1_300_Skinning")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Classic Leveling|r", "Skinning (1-300)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|1060 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|1060 1| |FAC|Horde|
N Note! |N|Worgen characters have +15 Skinning skill because of their passive (spell:68978). An extra 15 Skinning skill will stay orange for 15 points longer. Worgen characters also get the ability to skin faster.| |P|1060 1|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |P|1060 1| |FAC|Alliance|
N Train Skinning |N|(npc:1292) (72.2, 62.2)| |Z|84| |P|1060 1| |NPC|1292| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |P|1060 1| |FAC|Horde|
N Train Skinning |N|(npc:7088) (61.1, 54.7)| |P|1060 1| |Z|85| |NPC|7088| |FAC|Horde|

R Wetlands |N|Travel to {Wetlands} (57.24, 71.58)| |Z|56|
N 1-300 (npc:42043) |SK| |N|Kill and Skin (npc:42043)'s.<br/>The respawn rate is fast enough that once you are finished skinning the 2nd (npc:42043), two new (npc:42043) will be there already. (67.60, 47.08)| |NPC|42043| |P|1060 300|

N Guide Complete |N|You have reach level 300 Skinning|

]]
end, {description = [[This guide covers how to level the Skinning profession from 1-300.]]})
	end

	function Guide:Unload()
	end
end
