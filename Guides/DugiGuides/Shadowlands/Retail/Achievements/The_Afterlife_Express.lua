local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_The_Afterlife_Express")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "The Afterlife Express", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to ride the carriages in (map:1525)<br/>You dont need to have full rides for the achievement, just hop in and leave if you dont want to ride.<br/>We suggest to complete the following guides to help get Flight Master's and to be able to pass Stonehead:<br/><b>(guide:"Explore Revendreth")<br/><b>(guide:"Best Bud With Benifits")<br/><br/>Tick this step|

R Charred Ramparts |AID|14771| |N|Travel to {Charred Ramparts} (38.99, 49.27)| |Z|1525| |REACH|
C Chalice Carriage |AID|14771| |N|Hop on to (npc:174750) (46.91, 48.14)| |Z|1525| |NPC|174750| |V| |AC|1|
C The Catstle Carriage |AID|14771| |N|Hop on to (npc:174754) (45.80, 46.08)| |Z|1525| |NPC|174754| |V| |AC|6|

R Old Gate |AID|14771| |N|Travel to {Old Gate} (61.21, 38.81)| |Z|1525| |REACH|
C Old Gate Carriage |AID|14771| |N|Hop on to (npc:174751) (59.61, 39.39)| |Z|1525| |NPC|174751| |V| |AC|2|

R Wanecrypt Hill |AID|14771| |N|Travel to {Wanecrypt Hill} (47.90, 69.53)| |Z|1525| |REACH|
C Banewood Carriage |AID|14771| |N|Hop on to (npc:158365) (49.84, 70.47)| |Z|1525| |NPC|158365| |V| |AC|3|

R Pridefall Hamlet |AID|14771| |N|Travel to {Pridefall Hamlet} (70.29, 81.13)| |Z|1525| |REACH|
C Pridefall Carriage |AID|14771| |N|Hop on to (npc:) (69.16, 81.46)| |Z|1525| |NPC|| |V| |AC|4|

R Darkhaven |AID|14771| |N|Travel to {Darkhaven} (63.60, 62.31)| |Z|1525| |REACH|
C Darkhaven Carriage |AID|14771| |N|Hop on to (npc:158336) (62.46, 60.51)| |Z|1525| |NPC|158336| |V| |AC|5|

N Guide Complete |N|You earned the (aid:14771|) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14771) achievement]]})
	end

	function Guide:Unload()
	end
end