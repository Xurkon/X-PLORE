local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Kul_Tourist")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "Kul Tourist", nil, "Alliance", nil, "A", nil, function()
return [[

N (aid:12473) |N|Complete (guide:"895(10-50)#895(10-50)#895(10-50)")| |AC|1|
N (aid:12497) |N|Complete (guide:"896(10-50)#896(10-50)#896(10-50)")| |AC|2|
N (aid:12496) |N|Complete (guide:"942(10-50)#942(10-50)#942(10-50)")| |AC|3|

N Guide Complete |N|You earned the (aid:12593) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12593) achievement]]}) end

	function Guide:Unload()
	end
end
