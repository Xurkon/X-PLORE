local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Nazmir")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Nazmir", nil, nil, nil, "A", nil, function()
return [[

R Primal Wetlands |AID|12561| |AC|1| |N|Explore {Primal Wetlands} (37.72, 73.63)| |Z|863|
R Heart of Darkness |AID|12561| |AC|2| |N|Explore {Heart of Darkness} (50.41, 58.22)| |Z|863|
R The Rivermarsh |AID|12561| |AC|3| |N|Explore {The Rivermarsh} (40.48, 82.09) (41.69, 80.14) (42.36, 78.76) (43.59, 79.74)| |Z|863|
R The Necropolis |AID|12561| |AC|4| |N|Explore {The Necropolis} (39.57, 34.48)| |Z|863|
R Zalamar |AID|12561| |AC|5| |N|Explore {Zalamar} (30.94, 50.22)| |Z|863|
R Torga's Rest |AID|12561| |AC|6| |N|Explore {Torga's Rest} (61.65, 30.04)| |Z|863|
R Nazwatha |AID|12561| |AC|7| |N|Explore {Nazwatha} (64.49, 41.32)| |Z|863|
R Zal'amak |AID|12561| |AC|8| |N|Explore {Zal'amak} (62.79, 62.39)| |Z|863|
R The Frogmarsh |AID|12561| |AC|9| |N|Explore {The Frogmarsh} (71.24, 46.16)| |Z|863|

N Guide Complete |N|You earned the (aid:12561) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12561) achievement]]})
	end

	function Guide:Unload()
	end
end
