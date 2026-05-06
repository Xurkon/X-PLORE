local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Explore_the_Azure_Span")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Explore the Azure Span", nil, nil, nil, "A", "nil", function()
return [[

N Reach Level 60 |N|You must be at least this level before you can proceed| |PL|60|
N Note |N|Wherever possible, use a Dragonriding Mount. If you haven't unlocked it yet, complete (qid:68795) quest.<br/><b>Even if you are in a PvE realm, some areas may flag you for PvP.<br/><b>Tick this step.|

R Three-Falls Lookout |AID|16460| |N|{Three-Falls Lookout} (18.14, 23.92)| |Z|2024| |AC|10|
R Brackenhide Hollow |AID|16460| |N|{Brackenhide Hollow} (14.80, 37.11)| |Z|2024| |AC|4|
R Iskaara |AID|16460| |N|{Iskaara} (14.16, 46.60)| |Z|2024| |AC|7|
R Big Tree Hills |AID|16460| |N|{Big Tree Hills} (34.29, 35.42)| |Z|2024| |AC|3|
R Camp Antonidas |AID|16460| |N|{Camp Antonidas} (44.75, 40.10)| |Z|2024| |AC|1|
R Cobalt Assembly |AID|16460| |N|{Cobalt Assembly} (49.71, 26.97)| |Z|2024| |AC|6|
R Theron's Watch |AID|16460| |N|{Theron's Watch} (64.95, 16.49)| |Z|2024| |AC|9|
R Valkthros |AID|16460| |N|{Valkthros} (77.51, 31.24)| |Z|2024| |AC|11|
R Camp Nowhere |AID|16460| |N|{Camp Nowhere} (63.82, 57.62)| |Z|2024| |AC|5|
R Snowhide Den |AID|16460| |N|{Snowhide Den} (57.38, 43.93)| |Z|2024| |AC|8|
R Azure Archives |AID|16460| |N|{Azure Archives} (40.01, 62.20)| |Z|2024| |AC|2|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:16460) achievement]]})
   end

   function Guide:Unload()
   end
end