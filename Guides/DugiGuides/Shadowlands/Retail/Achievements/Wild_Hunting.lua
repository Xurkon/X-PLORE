local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Wild_Hunting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Wild Hunting", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to kill the listed 12 regular beasts in (map:1565)<br/><b>We suggest to use the Target Button to help locate the NPCs<br/><br/>Tick this step|

C Nightsong Wader |AID|14779| |N|Kill (npc:161889) in {Garden of Night} (37.69, 56.91)| |Z|1565| |NPC|161889| |AC|1|
C Decayfly |AID|14779| |N|Kill (npc:170734) in {Shrouded Mire} (64.53, 24.23)| |Z|1565| |NPC|170734| |AC|2|
C Basin Vulpin |AID|14779| |N|Kill (npc:163093) in {Dreamshrine Basin} (61.51, 50.31)| |Z|1565| |NPC|163093| |AC|3|
C Greater Ardenmoth |AID|14779| |N|Kill (npc:166073) in {Tranquil Pools} (60.51, 38.60)| |Z|1565| |NPC|166073| |AC|4|
C Verdent Prowler |AID|14779| |N|Kill (npc:161917) in (map:1565) (42.68, 58.72)| |Z|1565| |NPC|161917| |AC|5|
C Veilwing Guardian |AID|14779| |N|Kill (npc:167503) flying around in (map:1565) (47.64, 43.29)| |Z|1565| |NPC|167503| |AC|6|
C Highland Runestag |AID|14779| |N|Kill (npc:170856) in {Highland Path} (58.07, 57.78)| |Z|1565| |NPC|170856| |AC|7|
C Wild Gloomrunner |AID|14779| |N|Kill (npc:169750) in (map:1565) (39.69, 34.29)| |Z|1565| |NPC|169750| |AC|8|
C Voracious Lasher |AID|14779| |N|Kill (npc:169819) in (map:1565) (35.46, 37.05)| |Z|1565| |NPC|169819| |AC|9|
C Mystic Gulper |AID|14779| |N|Kill (npc:169768) in (map:1565) (36.03, 38.49)| |Z|1565| |NPC|169768| |AC|10|
C Roving Gladechewer |AID|14779| |N|Kill (npc:165912) in {Soryn's Meadow} (66.07, 51.19)| |Z|1565| |NPC|165912| |AC|11|
C Wild Gormling |AID|14779| |N|Kill (npc:158946) in {Soryn's Meadow} (65.85, 51.57)| |Z|1565| |NPC|158946| |AC|12|

N Guide Complete |N|You earned the (aid:14779) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14779) achievement]]})
	end

	function Guide:Unload()
	end
end
