local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Zandalar_Forever")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "Zandalar Forever!", nil, "Horde", nil, "A", nil, function()
return [[

N (aid:11861) |N|Complete (guide:"862(10-50)#862(10-50)#862(10-50)")| |AC|1|
N (aid:11868) |N|Complete (guide:"863(10-50)#863(10-50)#863(10-50)")| |AC|2|
N (aid:12478) |N|Complete (guide:"864(10-50)#864(10-50)#864(10-50)")| |AC|3|
N (aid:12480) |N|Complete (guide:"The Blood Gate")| |AC|4|
N (aid:12481) |N|Complete (guide:"The Final Seal")| |AC|5|

N Guide Complete |N|You earned the (aid:12479) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12479) achievement]]}) end

	function Guide:Unload()
	end
end
