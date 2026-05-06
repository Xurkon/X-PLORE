local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Skinning")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Skinning (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|1056 1|
N Note! |N|Worgen characters have +15 Skinning skill because of their passive (spell:68978). An extra 15 Skinning skill will stay orange for 15 points longer. Worgen characters also get the ability to skin faster.| |P|1056 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Skinning |N|(npc:28696) in {Legendary Leathers} (35.11, 28.35)| |Z|125| |NPC|28696| |P|1056 1|

R Sholazar Basin |N|Travel to {Sholazar Basin} (31.61, 88.60)| |Z|119|
N 1-75 (map:119) |SK| |LOOP| |N|Kill (npc:28096) and (npc:28098) (56.89, 80.67)(55.81, 75.52)(58.13, 71.62)(58.81, 66.31)(63.16, 71.60)(67.22, 69.48)(71.49, 71.29)(69.74, 74.70)(66.54, 78.69)(63.68, 74.50)(56.97, 76.32)(54.74, 85.34)| |Z|119| |NPC|28096, 28098| |P|1056 75|

R Storm Peaks |N|Travel to {Storm Peaks} (32.46, 91.62)| |Z|120|
N 1-75 (map:120) |SK| |LOOP| |N|Kill (npc:29753) and (npc:29469) (46.32, 65.28)(44.48, 61.74)(40.94, 60.65)(37.88, 59.11)(38.28, 54.72)(40.35, 52.59)(42.24, 53.53)(43.28, 57.23)(45.17, 55.99)(45.17, 59.21)(46.60, 60.27)(46.68, 62.73)| |Z|120| |NPC|29753, 29469| |P|1056 75| |O|

N Guide Complete |N|You reach 75 Northrend Skinning|

]]
end, {description = [[This guide covers how to level the Northrend Skinning profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
