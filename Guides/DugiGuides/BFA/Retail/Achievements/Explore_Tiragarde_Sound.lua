local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Tiragarde_Sound")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Tiragarde Sound", nil, nil, nil, "A", nil, function()
return [[

R Anglepoint Wharf |AID|12556| |AC|1| |N|Explore {Anglepoint Wharf}  (44.38, 28.02)| |Z|895|
R Boralus |AID|12556| |AC|2| |N|Explore {Boralus} (43.91, 33.15)| |Z|895| |FAC|Alliance|
R Boralus |AID|12556| |AC|2| |N|Explore {Boralus} (34.85, 40.30)| |Z|895| |FAC|Horde|
R Fernwood Ridge |AID|12556| |AC|3| |N|Explore {Fernwood Ridge} (69.77, 19.08)| |Z|895| |FAC|Alliance|
R Fernwood Ridge |AID|12556| |AC|3| |N|Explore {Fernwood Ridge} (69.26, 21.58)| |Z|895| |FAC|Horde|
R Freehold |AID|12556| |AC|4| |N|Explore {Freehold} (78.81, 78.60)| |Z|895|
R Norwington Estate |AID|12556| |AC|5| |N|Explore {Norwington Estate} (52.66, 28.66) (49.85, 25.35)| |Z|895|
R Krakenbane Cove |AID|12556| |AC|6| |N|Explore {Krakenbane Cove} (31.99, 21.87)| |Z|895|
R Abandoned Junkheap |AID|12556| |AC|7| |N|Explore {Abandoned Junkheap} (65.06, 61.07)| |Z|895|
R Kennings Lodge |AID|12556| |AC|8| |N|Explore {Kennings Lodge} (75.85, 65.84)| |Z|895|
R The Wailing Tideway |AID|12556| |AC|9| |N|Explore {The Wailing Tideway} (86.31, 79.75)| |Z|895|
R Vigil Hill |AID|12556| |AC|10| |N|Explore {Vigil Hill} (60.16, 59.50) (57.72, 61.50)| |Z|895|
R Waning Glacier |AID|12556| |AC|11| |N|Explore {Waning Glacier} (43.12, 22.28) (42.15, 17.25) (39.74, 13.01)| |Z|895|

N Guide Complete |N|You earned the (aid:12556) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12556) achievement]]})
	end

	function Guide:Unload()
	end
end
