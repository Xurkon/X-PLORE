local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Explore_the_Ohn'ahran_Plains")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Explore the Ohn'ahran Plains", nil, nil, nil, "A", "nil", function()
return [[

N Reach Level 60 |N|You must be at least this level before you can proceed| |PL|60|
N Note |N|Wherever possible, use a Dragonriding Mount. If you haven't unlocked it yet, complete (qid:68795) quest.<br/><b>Even if you are in a PvE realm, some areas may flag you for PvP.<br/><b>Tick this step.|

R Emberwatch |AID|16457| |N|{Emberwatch} (65.03, 23.93)| |Z|2023| |AC|3|
R Rusza'thar Reach	|AID|16457| |N|{Rusza'thar Reach (84.89, 36.34)| |Z|2023| |AC|9|
R Horn of Drusahl |AID|16457| |N|{Horn of Drusahl} (72.72, 40.25)| |Z|2023| |AC|8|
R Forkriver Crossing |AID|16457| |N|{Forkriver Crossing} (70.89, 79.66)| |Z|2023| |AC|5|
R Windsong Rise |AID|16457| |N|{Windsong Rise} (62.27, 67.81)| |Z|2023| |AC|12|
R Maruukai |AID|16457| |N|{Maruukai} (60.98, 43.50)| |Z|2023| |AC|6|
R Broadhoof Outpost |AID|16457| |N|{Broadhoof Outpost} (45.81, 41.44)| |Z|2023| |AC|2|
R Nokhuddon Hold |AID|16457| |N|{Nokhuddon Hold} (35.10, 38.04)| |Z|2023| |AC|7|
R Emerald Gardens |AID|16457| |N|{Emerald Gardens} (36.56, 45.95)| |Z|2023| |AC|4|
R Teerakai |AID|16457| |N|{Teerakai} (40.32, 62.76)| |Z|2023| |AC|10|
R Ancient Bough |AID|16457| |N|{Ancient Bough} (23.04, 51.85)| |Z|2023| |AC|1|
R Mirewood Fen |AID|16457| |N|{Mirewood Fen} (81.35, 27.06)| |Z|2023| |AC|11|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:16457) achievement]]})
   end

   function Guide:Unload()
   end
end