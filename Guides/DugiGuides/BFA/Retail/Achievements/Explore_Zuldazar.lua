local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Explore_Zuldazar")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Explore Zuldazar", nil, nil, nil, "A", nil, function()
return [[

R Atal'Dazar |AID|12559| |AC|1| |N|Explore {Atal'Dazar} (43.75, 39.35)| |Z|862|
R Atal'Gral |AID|12559| |AC|2| |N|Explore {Atal'Gral} (69.50, 66.98)| |Z|862|
R Blood Gate |AID|12559| |AC|3| |N|Explore {Blood Gate} (60.39, 22.03)| |Z|862|
R Dazar'alor |AID|12559| |AC|4| |N|Explore {Dazar'alor} (61.89, 48.02) (61.29, 48.19) (61.67, 47.30) (60.63, 47.73)| |Z|862| |FAC|Horde|
R Dazar'alor |AID|12559| |AC|4| |N|Explore {Dazar'alor} (40.86, 60.95)| |Z|1165| |FAC|Alliance|
R Dreadpearl Shallows |AID|12559| |AC|5| |N|Explore {Dreadpearl Shallows} (71.08, 64.56)| |Z|862|
R Garden of the Loa |AID|12559| |AC|6| |N|Explore {Garden of the Loa} (35.94, 5.29) (48.21, 32.26)| |Z|862|
R Savagelands |AID|12559| |AC|7| |N|Explore {Savagelands} (70.87, 36.59)| |Z|862|
R The Sliver |AID|12559| |AC|8| |N|Explore {The Sliver} (61.11, 27.01)| |Z|1165|
R Tusk Isle |AID|12559| |AC|9| |N|Explore {Tusk Isle} (54.70, 89.76)| |Z|862|
R Talanji's Rebuke |AID|12559| |AC|10| |N|Explore {Talanji's Rebuke} (76.29, 52.66)| |Z|862|
R Xibala |AID|12559| |AC|11| |N|Explore {Xibala} (45.44, 61.79) (43.11, 66.99) (43.94, 72.07)| |Z|862|
R Zeb'ahari |AID|12559| |AC|12| |N|Explore {Zeb'ahari} (79.46, 16.25)| |Z|862|

N Guide Complete |N|You earned the (aid:12559) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12559) achievement]]})
	end

	function Guide:Unload()
	end
end
