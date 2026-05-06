local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Legion_A_Cast_Azsuna_Matata")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Legion|r", "|cffffd200Quests|r"}, "Azsuna Matata", nil, nil, nil, "A", nil, function()
return [[

N Switch Guide |N|Switch to (guide:"630(10-50)#630(10-50)#630(10-50)") to complete the (aid:10763) achievement| |AID|10763|

N Guide Complete |N|You earned the (aid:10763) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:10763) achievement]]})
	end
	
	function Guide:Unload()
	end
end