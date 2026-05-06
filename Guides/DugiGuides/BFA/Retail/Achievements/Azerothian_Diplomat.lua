local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Azerothian_Diplomat")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Reputation|r"}, "Azerothian Diplomat", nil, nil, nil, "A", nil, function()
return [[

N (aid:12947) |AID|12947| |N|Earn Revered with all of the reputations listed below<br/><b>(fac:2160), complete (guide:"895(10-50)#895(10-50)#895(10-50)") and world quests<br/><b>(fac:2161), complete (guide:"896(10-50)#896(10-50)#896(10-50)") and world quests<br/><b>(fac:2162), complete (guide:"942(10-50)#942(10-50)#942(10-50)") and world quests<br/><b>(fac:2159), complete (guide:"War Campaign (10-50)") and world quests<br/><b>(fac:2164), purchase (item:153668) from the auction house<br/><b>(fac:2163), purchase (item:153667) from the auction house<br/><b>Complete World Quests| |FAC|Alliance|
N (aid:12947) |AID|12947| |N|Earn Revered with all of the reputations listed below<br/><b>(fac:2103), complete (guide:"862(10-50)#862(10-50)#862(10-50)")<br/><b>(fac:2156), complete (guide:"863(10-50)#863(10-50)#863(10-50)")<br/><b>(fac:2158), complete (guide:"864(10-50)#864(10-50)#864(10-50)")<br/><b>(fac:2157), complete (guide:"War Campaign (10-50)")<br/><b>(fac:2164), purchase (item:153668) from the auction house<br/><b>(fac:2163), purchase (item:153667) from the auction house| |FAC|Horde|

N Guide Complete |N|You earned the (aid:12947) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12947) achievement]]})
	end

	function Guide:Unload()
	end
end
