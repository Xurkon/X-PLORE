local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Skinning")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Skinning (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|1058 1|
N Note! |N|Worgen characters have +15 Skinning skill because of their passive (spell:68978). An extra 15 Skinning skill will stay orange for 15 points longer. Worgen characters also get the ability to skin faster.| |P|1058 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111| |P|1058 1|
N Train outland Skinning |N|(npc:19180) in {Lower City} (64.10, 65.57)| |Z|111| |NPC|19180| |P|1058 1|

R Hellfire Peninsula |N|Travel to {Hellfire Peninsula} (4.67, 50.76)| |Z|100|
N 1-75 (map:100) |SK| |LOOP| |N|Kill and Skin:<br/><b>(npc:19349)<br/><b>(npc:19350) (5.86, 50.72)(8.19, 49.93)(8.95, 51.90)(10.59, 55.35)(12.36, 54.70)(12.41, 51.50)(10.97, 51.60)(11.78, 48.06, 9.35, 49.60)| |Z|100| |NPC|19349, 19350| |P|1058 75|

R Netherstorm |N|Travel to {Netherstorm} (22.66, 55.67)| |Z|109| |O|
N 1-75 (map:109) |SK| |LOOP| |N|Kill and Skin:<br/><b>(npc:20671)<br/><b>(npc:20773) (43.55, 54.91)(43.36, 50.57)(45.75, 50.36)(47.11, 52.06)(48.47, 52.26)(47.57, 55.32)(45.70, 57.36)| |Z|109| |NPC|20671, 20773| |P|1058 75| |O|

R Nagrand |N|Travel to {Nagrand} (77.52, 76.77)| |Z|107| |O|
N 1-75 (map:107) |SK| |LOOP| |N|Kill and Skin:<br/><b>(npc:17131) (47.63, 33.25)(46.98, 31.22)(47.86, 29.23)(48.66, 27.57)(50.16, 26.81)(51.55, 26.78)(51.74, 24.14)(52.78, 23.41)(54.28, 24.28)(55.55, 21.49)(56.57, 23.10)(57.93, 21.04)(53.17, 28.46)(53.82, 30.51)(49.84, 37.25)(50.11, 39.45)(50.96, 40.52)(51.88, 42.31)(53.65, 42.50)(54.88, 43.82)(56.22, 46.96)(55.60, 48.13)(53.35, 48.19)(52.74, 49.47)(52.11, 48.66)(51.02, 48.49)(48.10, 47.44)(48.70, 46.36)(48.60, 44.27)(49.14, 43.16)(47.54, 41.99)(47.13, 39.59)(49.06, 37.10)| |Z|107| |NPC|17131| |P|1058 75| |O|

N Guide Complete |N|You have reach level 75 Outland Skinning|

]]
end, {description = [[This guide covers how to level the Outland Skinning profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
