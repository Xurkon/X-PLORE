local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Fractured_Faerie_Tales")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Fractured Faerie Tales", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to find 5 lost books around (map:1565), you need to find and kill to complete the achievement.<br/><b>Each book drops a quest item which you return to (npc:165867) in the {Grove of Memory}.<br/><b>We suggest to use the "Target Button" to help locate the NPC.<br/><br/>Tick this step|

C (npc:174721) |AID|14788| |AC|1| |N|Find and kill (npc:174721) along the road in {Tirna Vaal} (58.81, 37.12)<br/><b>Take the first road on the right towards the water and return to the waypoint.<br/><b>Turn right on the main road, follow that to (54.44, 43.14, 1565, "Loaction 2")<br/><b>Turn right at the second waypoint, follow that road east of {Glitterfall Basin} Flight Master, and return to the second waypoint<br/><b>Turn right on the main road and follow that to the third waypoint (50.04, 45.61, 1565, "Location 3")<br/><b>Head to the fourth waypoint (50.81, 50.34, 1565, "Location 4") and follow that path towards {Hibernal Hollow}, rinse and repeat if you haven't found the npc yet.| |Z|1565| |NPC|174721| |L|183877|
A A Meandering Story |QID|62619| |N|Accept the quest by clicking the quest in the Objective Tracker| |E| |AID|14788| |AC|1|
C (npc:174724) |AID|14788| |AC|3| |N|Find and kill (npc:174724) (32.60, 31.60)<br/><b>Second Location (40.00, 44.60, 1565, "Location 2")<br/><b>Third Location (40.60, 27.60, 1565, "Location 3")<br/><b>Fourth Location (40.94, 42.30, 1565, "Location 4")| |Z|1565| |NPC|174724| |L|183879|
A An Escapist Novel |QID|62621| |N|Accept the quest by clicking the quest in the Objective Tracker| |E| |AID|14788| |AC|3|
C (npc:174726) |AID|14788| |AC|5| |N|Find and kill (npc:174726) (24.75, 51.97)<br/><b>Second Location (33.60, 57.40, 1565, "Location 2")<br/><b>Third Location (39.80, 65.60, 1565, "Location 3")<br/><b>Fourth Location (51.00, 54.80, 1565, "Location 4")| |Z|1565| |NPC|174726| |L|183881|
A A Naughty Story |QID|62623| |N|Accept the quest by clicking the quest in the Objective Tracker| |E| |AID|14788| |AC|5|
C (npc:174723) |AID|14788| |AC|2| |N|Find and kill (npc:174723) (30.00, 44.80)<br/><b>Second Location (35.60, 26.80, 1565, "Location 2")<br/><b>Third Location (36.40, 48.00, 1565, "Location 3")<br/><b>Fourth Location (37.89, 40.05, 1565, "Location 4")| |Z|1565| |NPC|174723| |L|183878|
A A Wandering Tale |QID|62620| |N|Accept the quest by clicking the quest in the Objective Tracker| |E| |AID|14788| |AC|2|
C (npc:174725) |AID|14788| |AC|4| |N|Find and kill (npc:174725) (40.09, 41.68)<br/><b>Second Location (49.66, 40.16, 1565, "Location 2")<br/><b>Third Location (50.20, 25.00, 1565, "Location 3")<br/><b>Fourth Location (50.17, 41.87, 1565, "Location 4")<br/><b>Fifth Location (56.00, 21.00, 1565, "Location 5")| |Z|1565| |NPC|174725| |L|183880|
A A Travel Journal |QID|62622| |N|Accept the quest by clicking the quest in the Objective Tracker| |E| |AID|14788| |AC|4|

T A Meandering Story |QID|62619| |N|(npc:165867) in {Grove of Memory} (63.6, 22.6)| |Z|1565| |NPC|165867| |AID|14788| |AC|1|
T An Escapist Novel |QID|62621| |N|(npc:165867) in {Grove of Memory} (63.6, 22.6)| |Z|1565| |NPC|165867| |AID|14788| |AC|3|
T A Naughty Story |QID|62623| |N|(npc:165867) in {Grove of Memory} (63.6, 22.6)| |Z|1565| |NPC|165867| |AID|14788| |AC|5|
T A Wandering Tale |QID|62620| |N|(npc:165867) in {Grove of Memory} (63.6, 22.6)| |Z|1565| |NPC|165867| |AID|14788| |AC|2|
T A Travel Journal |QID|62622| |N|(npc:165867) in {Grove of Memory} (63.6, 22.6)| |Z|1565| |NPC|165867| |AID|14788| |AC|4|

N Guide Complete |N|You earned the (aid:14788) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14788) achievement]]})
	end

	function Guide:Unload()
	end
end
