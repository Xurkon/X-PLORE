local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Count_Your_Blessings")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Count_Your_Blessings", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to place (item:178915) in tribute bowls around (map:1533)<br/>You don't need to be in the Kyrian Covenant to obtain (item:178915).<br/><br/>Tick this step|
N Required |PRE|62730| |N|You need to complete (qid:62730) quest in order to pick up (item:178915) and place them in tribute bowls|

C (item:178915) |N|Farm 3 (item:178915) around (map:1533), they are found in bowls on tables etc| |L|178915 3|

C (spell:327974) |AID|14767| |N|Click the Tribute to place (item:178915) in the Tribute Bowl (53.70, 28.85)| |Z|1533| |AC|1| |BUFF|3536180|
C (spell:327975) |AID|14767| |N|Click the Tribute to place (item:178915) in the Tribute Bowl (45.40, 59.70)| |Z|1533| |AC|2| |BUFF|3536181|
C (spell:327976) |AID|14767| |N|Click the Tribute to place (item:178915) in the Tribute Bowl (34.72, 30.08)| |Z|1533| |AC|3| |BUFF|3536183|

N Guide Complete |N|You earned the (aid:14767) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14767) achievement]]})
	end

	function Guide:Unload()
	end
end