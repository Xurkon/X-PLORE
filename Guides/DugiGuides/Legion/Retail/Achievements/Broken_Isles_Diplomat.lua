local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Legion_Broken_Isles_Diplomat")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Legion|r", "|cffffd200Reputation|r"}, "Broken Isles Diplomat", nil, nil, nil, "A", nil, function()
return [[

N (fac:1900) |N|Reach revered status with (fac:1900)<br/><b>Complete (guide:"630(10-50)#630(10-50)#630(10-50)")<br/><b>Complete World Quests| |AID|10672| |AC|1|
N (fac:1828) |N|Reach revered status with (fac:1828)<br/><b>Complete (guide:"650(10-50)#650(10-50)#650(10-50)")<br/><b>Complete World Quests| |AID|10672| |AC|3|
N (fac:1859) |N|Reach revered status with (fac:1859)<br/><b>Complete (guide:"680(45+)#680(45+)#680(45+)")<br/><b>Complete World Quests| |AID|10672| |AC|5|
N (fac:1883) |N|Reach revered status with (fac:1883)<br/><b>Complete (guide:"641(10-50)#641(10-50)#641(10-50)")<br/><b>Complete World Quests| |AID|10672| |AC|2|
N (fac:1948) |N|Reach revered status with (fac:1948)<br/><b>Complete (guide:"634(10-50)#634(10-50)#634(10-50)")<br/><b>Complete World Quests| |AID|10672| |AC|4|
N (fac:1894) |N|Reach revered status with (fac:1894)<br/><b>Complete World Quests| |AID|10672| |AC|6|

N Guide Complete |N|You earned the (aid:10672) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:10672) achievement]]})
	end
	
	function Guide:Unload()
	end
end
