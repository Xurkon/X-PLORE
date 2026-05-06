local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Explore_the_Waking_Shores")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Explore the Waking Shores", nil, nil, nil, "A", "nil", function()
return [[

N Reach Level 60 |N|You must be at least this level before you can proceed| |PL|60|
N Note |N|Wherever possible, use a Dragonriding Mount. If you haven't unlocked it yet, complete (qid:68795) quest.<br/><b>Even if you are in a PvE realm, some areas may flag you for PvP.<br/><b>Tick this step.|

R Wild Coast |AID|16400| |N|{Wild Coast} (77.16, 33.43)| |AC|11| |Z|2022|
R Dragonheart Outpost |AID|16400| |N|{Dragonheart Outpost} (70.94, 42.77)| |AC|2| |Z|2022|
R Scalecracker Keep |AID|16400| |N|{Scalecracker Keep} (67.53, 38.90)| |AC|9| |Z|2022|
R Life Binder Conservatory |AID|16400| |N|{Life Binder Conservatory} (55.15, 27.39)| |AC|4| |Z|2022|
R Overflowing Rapids |AID|16400| |N|{Overflowing Rapids} (50.14, 39.05)| |AC|7| |Z|2022|
R Skytop Observatory |AID|16400| |N|{Skytop Observatory} (72.65, 51.79)| |AC|10| |Z|2022|
R Ruby Life Pools |AID|16400| |N|{Ruby Life Pools} (51.75, 66.71)| |AC|8| |Z|2022|
R Obsidian Bulwark |AID|16400| |N|{Obsidian Bulwark} (44.77, 65.97)| |AC|5| |Z|2022|
R Obsidian Citadel |AID|16400| |N|{Obsidian Citadel} (32.70, 62.06)| |AC|6| |Z|2022|
R Apex Canopy |AID|16400| |N|{Apex Canopy} (30.48, 82.25)| |AC|1| |Z|2022|
R Wild Preserve |AID|16400| |N|{Wild Preserve} (39.05, 77.94)| |AC|10| |Z|2022|
R Frostflash Assault |AID|16400| |N|{Frostflash Assault} (51.67, 77.78)| |AC|3| |Z|2022|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:16400) achievement]]})
   end

   function Guide:Unload()
   end
end