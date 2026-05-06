local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Mechagon")
function Guide:Initialize()
function Guide:Load()DugisGuideViewer:RegisterGuide(  {"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Mechagon", nil, nil, nil, "A", nil, function()
return [[

R The Outflow |AID|13776| |AC|7| |N|Explore  {The Outflow} (69.84, 58.48)| |Z|1462|
R Sparkweaver Point |AID|13776| |AC|25| |N|Explore {Sparkweaver Point} (84.96, 34.76)| |Z|1462|
R Rustbolt |AID|13776| |AC|1| |N|Explore {Rustbolt} (73.17, 29.23)| |Z|1462|
R The Heaps |AID|13776| |AC|4| |N|Explore {The Heaps} (69.90, 40.11)| |Z|1462|
R Scrapbone Den |AID|13776| |AC|5| |N|Explore {Scrapbone Den} (65.70, 32.57)| |Z|1462|
R The Fleeting Forrest |AID|13776| |AC|8| |N|Explore {The Fleeting Forrest} (49.47, 37.71)| |Z|1462|
R Junkwatt Depot |AID|13776| |AC|3| |N|Explore {Junkwatt Depot} (60.47, 54.23)| |Z|1462|
R Western Spray |AID|13776| |AC|6| |N|Explore {Western Spray} (28.88, 66.30)| |Z|1462|

N Guide Complete |N|You earned the (aid:13776) achievement|

]]
end,   {description = [[This guide will walk you through completing the (aid:13776) achievement]]})
end

function Guide:Unload()
end
end
