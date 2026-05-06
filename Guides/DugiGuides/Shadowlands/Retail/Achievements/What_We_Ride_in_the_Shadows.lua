local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_What_we_Ride_in_the_Shadows")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "What We Ride in the Shadows", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to rent Castle Sinrunners to give you a ride to four locations in (map:1525)<br/><b>We recommend to stay on the horse. Doing so will cost 15 (cur:1820) in total for the achievement<br/><br/>Tick this step|

R Charred Ramparts |AID|14770| |N|Travel to {Charred Ramparts} (38.99, 49.27)| |Z|1525| |REACH|
C Hole in the Wall |AID|14770| |N|Click on Castle Sinrunner and accept the payment of 5 (cur:1820) in {Hole in the Wall} (41.27, 47.22)| |Z|1525| |AC|2|
C Dominance Gate Battlement |AID|14770| |N|Click on Castle Sinrunner and accept the payment of 5 (cur:1820) in {Hole in the Hall} (41.27, 47.22)| |Z|1525| |AC|3|

R Darkhaven |AID|14770| |N|Travel to {Darkhaven} (60.53, 60.77)| |Z|1525| |REACH|
C Darkhaven |AID|14770| |N|Click on Castle Sinrunner and accept the payment of 5 (cur:1820) in {Darkhaven} (69.61, 58.12)| |Z|1525| |AC|4|
C Old Gate |AID|14770| |N|Click on Castle Sinrunner and accept the payment of 5 (cur:1820) in {Darkhaven} (60.36, 62.65)| |Z|1525| |AC|1|

N Guide Complete |N|You earned the (aid:14770) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14770) achievement]]})
	end

	function Guide:Unload()
	end
end