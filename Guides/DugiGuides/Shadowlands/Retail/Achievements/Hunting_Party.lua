local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Hunting_Party")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Hunting Party", nil, nil, nil, "A", nil, function()
return [[

N Reach Ambivalent |N|To start this achievement you will need (spell:340351) buff, to get that you will need to reach Ambivalent status with (fac:2432)<br/><b>Complete quests in (map:1543) from (npc:162804)<br/><b>These quests are weekly.|

A Rule 6: Concealment is Everything |QID|60285| |N|(npc:162804) in {Ve'nari's Refuge} (46.89, 41.73)| |Z|1543| |NPC|162804|
C Rule 6: Concealment is Everything |QID|60285.1| |N|Use (item:182955) in {The Beastwarrens} (46.8, 58.8)| |Z|1543| |U|182955|
C Rule 6: Concealment is Everything |QID|60285.2| |N|Kill mobs and collect 15 (item:182956) in {Desmotaeron} (57.0, 55.0)| |Z|1543| |L|182956 15|
T Rule 6: Concealment is Everything |QID|60285| |N|(npc:162804) in {Ve'nari's Refuge} (46.89, 41.73)| |Z|1543| |NPC|162804|
A Stalking the Warrens |QID|62461| |N|(npc:162804) in {Ve'nari's Refuge} (46.89, 41.73)| |Z|1543| |NPC|162804|
C Stalking the Warrens |QID|62461.1| |N|Check your map for an active Hunt. Hunts rotate weekly.<br/><b>Complete a Hunt in (map:1543)| |Z|1543| |POI|
T Stalking the Warrens |QID|62461| |N|(npc:162804) in {Ve'nari's Refuge} (46.89, 41.73)| |Z|1543| |NPC|162804|

K (npc:174861) |AID|14738| |N|Kill (npc:174861) in {The Beastwarrens} (53.6, 78.6)| |Z|1543| |NPC|174961| |AC|1|
K (npc:172962) |AID|14738| |N|Kill (npc:172962) in {The Beastwarrens} (47.8, 80.4)| |Z|1543| |NPC|172962| |AC|3|
K (npc:172112) |AID|14738| |N|Kill (npc:172112) in {The Beastwarrens} (53.4, 68.8)| |Z|1543| |NPC|172112| |AC|2|
K (npc:175851) |AID|14738| |N|Kill (npc:175851) in {The Beastwarrens} (46.6, 65.2)| |Z|1543| |NPC|175851| |AC|4|

N Guide Complete |N|You earned the (aid:14738) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14738) achievement]]})
	end

	function Guide:Unload()
	end
end
