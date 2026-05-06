local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Bat!")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Bat!", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to infuse 5 (cur:1820) on 5 (npc:162704), you will need a total of 25 (cur:1820) to complete (aid:14769), however, the location of each bat is random and you may need more (cur:1820). For it to count the end location must be different from the others. The bats can be repeated<br/><br/>Tick this step|
N Prerequisite |N|Use our (guide:"1525(58-60)#1525(58-60)#1525(58-60)") guide to complete (qid:60480) quest so you can see the Bats| |PRE|60480|

C Dredbat Statue 1 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) in {Darkhaven} (60.39, 61.16)| |Z|1525| |NPC|162704| |AC|1|
C Dredbat Statue 2 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) in {Darkhaven} (64.10, 62.09)| |Z|1525| |NPC|162704| |AC|2|
C Dredbat Statue 3 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) in {Wildwall} (56.27, 62.23)| |Z|1525| |NPC|162704| |AC|3|
C Dredbat Statue 4 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) in {The Endmire} (57.27, 61.27)| |Z|1525| |NPC|162704| |AC|4|
C Dredbat Statue 5 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) in {Ember Ward} (31.86, 59.17)| |Z|1525| |NPC|162704| |AC|5|
C Dredbat Statue 6 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) in {Ember Ward} (25.10, 37.56)| |Z|1525| |NPC|162704| |AC|6|
C Dredbat Statue 7 |AID|14769| |N|Infuse 5 (cur:1820) on (npc:162704) (21.68, 50.23) up on the broken ledge| |Z|1525| |NPC|162704| |AC|7|

N Guide Complete |N|You earned the (aid:14769) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14769) achievement]]})
	end

	function Guide:Unload()
	end
end