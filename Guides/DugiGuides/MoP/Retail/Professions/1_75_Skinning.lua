local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Skinning")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Skinning (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Worgen characters have +15 Skinning skill because of their passive (spell:68978). An extra 15 Skinning skill will stay orange for 15 points longer. Worgen characters also get the ability to skin faster.| |P|1052 1|

R Nesingwary's Safari |N|Travel to {Nesingwary's Safari} (16.09, 82.57)| |Z|376| |P|1052 1|
N Train Pandaria Skinning |N|(npc:63825) in {Nesingwary's Safari} (15.97, 82.98)| |Z|376| |NPC|63825| |P|1052 1|

R Pools of Purity |N|Travel to {Pools of Purity} (63.67, 26.59)| |Z|376| |P|1052 2|
N 1-75 (map:376) |SK| |LOOP| |N|Kill and Skin:<br/><b>(npc:56256)<br/><b>(npc:56239) (66.58, 29.18)(68.79, 26.86)(72.40, 26.01)(72.42, 30.91)(69.91, 31.29)(68.10, 29.17)| |Z|376| |NPC|56256, 56239| |P|1052 75|

R The Heartlands |N|Travel to {The Heartlands} (30.13, 44.81)| |Z|376| |P|1052 2| |O|
N 1-75 (map:376) |SK| |LOOP| |N|Kill and Skin:<br/><b>(npc:59139)<br/><b>(npc:64309) (30.26, 46.37)(30.16, 44.72)(30.09, 42.01)(29.90, 39.56)(30.68, 36.52)(31.09, 32.58)(28.94, 31.08)(27.67, 34.35)| |Z|376| |NPC|59139, 64309| |P|1052 75| |O|

N Guide Complete |N|You have reach level 75 Pandaria Skinning|

]]
end, {description = [[This guide covers how to level the Pandaria Skinning profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
