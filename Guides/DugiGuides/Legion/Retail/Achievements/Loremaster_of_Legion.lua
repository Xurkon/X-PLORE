local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Legion_Loremaster_of_Legion")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Legion|r", "|cffffd200Quests|r"}, "Loremaster of Legion", nil, nil, nil, "A", nil, function()
return [[

N (aid:10763) |N|Complete (guide:"630(10-50)#630(10-50)#630(10-50)")<br/><b>Complete World Quests| |AID|10763|
N (aid:10698) |N|Complete (guide:"641(10-50)#641(10-50)#641(10-50)")<br/><b>Complete World Quests| |AID|10698|
N (aid:10790) |N|Complete (guide:"634(10-50)#634(10-50)#634(10-50)")<br/><b>Complete World Quests| |AID|10790|
N (aid:10059) |N|Complete (guide:"650(10-50)#650(10-50)#650(10-50)")<br/><b>Complete World Quests| |AID|10059|
N (aid:11124) |N|Complete (guide:"680(45+)#680(45+)#680(45+)")<br/><b>Complete World Quests| |AID|11124| 

N Guide Complete |N|You earned the (aid:11157) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:11157) achievement]]})
	end
	
	function Guide:Unload()
	end
end
