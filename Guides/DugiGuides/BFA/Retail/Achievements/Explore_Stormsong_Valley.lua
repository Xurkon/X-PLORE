local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Stormsong_Valley")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Stormsong Valley", nil, nil, nil, "A", nil, function()
return [[

R Brennadam |AID|12558| |AC|1| |N|Explore {Brennadam} (57.46, 80.67) (58.94, 80.58) (59.15, 69.52)| |Z|942|
R Briarback Kraul |AID|12558| |AC|2| |N|Explore {Briarback Kraul} (42.45, 67.42) (44.02, 72.40)| |Z|942|
R Mariner's Strand |AID|12558| |AC|3| |N|Explore {Mariner's Strand} (63.46, 64.78)| |Z|942|
R Warfang Hold |AID|12558| |AC|4| |N|Explore {Warfang Hold} (49.21, 34.27)| |Z|942|
R Deadwash |AID|12558| |AC|5| |N|Explore {Deadwash} (43.02, 56.63)| |Z|942|
R Fort Daelin |AID|12558| |AC|6| |N|Explore {Fort Daelin} (34.29, 47.31)| |Z|942|
R Sagehold |AID|12558| |AC|7| |N|Explore {Sagehold} (62.99, 40.83)| |Z|942|
R Shrine of the Storm |AID|12558| |AC|8| |N|Explore {Shrine of the Storm} (74.20, 30.67) (74.95, 30.17) (74.36, 28.07) (73.63, 26.35) (73.88, 24.84) (61.75, 36.33)| |Z|942|
R Millstone Hamlet |AID|12558| |AC|9| |N|Explore {Millstone Hamlet} (30.64, 68.07)| |Z|942|

N Guide Complete |N|You earned the (aid:12558) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12558) achievement]]})
	end

	function Guide:Unload()
	end
end
