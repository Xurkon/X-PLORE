local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Explore_Thaldraszus")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Explore Thaldraszus", nil, nil, nil, "A", "nil", function()
return [[

N Reach Level 60 |N|You must be at least this level before you can proceed| |PL|60|
N Note |N|Wherever possible, use a Dragonriding Mount. If you haven't unlocked it yet, complete (qid:68795) quest.<br/><b>Even if you are in a PvE realm, some areas may flag you for PvP.<br/><b>Tick this step.|

R South Hold Gate |AID|16518| |N|{South Hold Gate} (38.35, 80.81)| |Z|2025| |AC|4|
R Valdrakken |AID|16518| |N|{Valdrakken} (55.60, 82.79)| |Z|2025| |AC|1|
R Gelikyr Post |AID|16518| |N|{Gelikyr Post} (50.95, 67.46)| |Z|2025| |AC|3|
R Temporal Conflux |AID|16518| |N|{Temporal Conflux} (59.87, 81.77)| |Z|2025| |AC|5|
R Tyrhold |AID|16518| |N|{Tyrhold} (58.76, 61.03)| |Z|2025| |AC|2|
R Algeth'ar Academy |AID|16518| |N|{Algeth'ar Academy} (59.68, 43.40)| |Z|2025| |AC|6|
R Vield Ossuary |AID|16518| |N|{Vield Ossuary} (60.31, 22.22)| |Z|2025| AC|8|
R Vault of the Incarnates |AID|16518| |N|{Vault of the Incarnates} (72.79, 55.97)| |Z|2025| |AC|7|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:16518) achievement]]})
   end

   function Guide:Unload()
   end
end