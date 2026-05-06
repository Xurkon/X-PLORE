local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Skinning")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Skinning (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|1054 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|1054 1| |FAC|Horde|
N Note! |N|Worgen characters have +15 Skinning skill because of their passive (spell:68978). An extra 15 Skinning skill will stay orange for 15 points longer. Worgen characters also get the ability to skin faster.| |P|1054 1|

R Stormwind City |N|Travel to {Stormwind City} (63, 71)| |Z|84| |FAC|Alliance|
N Train Cataclysm Skinning |N|(npc:1292) in {The Protective Hide} (72.2, 62.2)| |Z|84| |NPC|1292| |P|1054 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Train Cataclysm Skinning |N|(npc:7088) in {Kodohide Leatherworkers} (61.1, 54.7)| |Z|85| |NPC|7088| |P|1054 1| |FAC|Horde|

R Twilight Highlands |N|Travel to {Twilight Highlands} (79.48, 77.79)| |Z|241| |FAC|Alliance|
R Twilight Highlands |N|Travel to {Twilight Highlands} (73.63, 53.39)| |Z|241| |FAC|Horde|
N 1-75 (map:241) |SK| |LOOP| |N|Kill and Skin:<br/><b>(npc:46153)<br/><b>(npc:46970)<br/><b>(npc:46162)<br/><b>(npc:46158) (67.96, 36.57)(67.79, 31.89)(69.52, 31.99)(71.93, 31.23)(72.21, 29.36)(70.34, 26.46)(69.28, 21.96)(66.83, 22.07)(65.64, 14.72)(63.12, 9.84)(61.57, 9.70)(59.32, 10.82)(57.19, 7.42)(54.26, 12.30)(52.18, 17.83)(50.77, 22.66)(52.50, 25.04)(55.70, 27.79)(57.56, 26.82)(62.39, 33.11)(63.55, 37.20)(65.45, 38.13)(66.57, 37.69)| |Z|241| |NPC|46153, 46970, 46162, 46158| |P|1054 75|

N Guide Complete |N|You have reach level 75 Cataclysm Skinning|

]]
end, {description = [[This guide covers how to level the Cataclysm Skinning profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
