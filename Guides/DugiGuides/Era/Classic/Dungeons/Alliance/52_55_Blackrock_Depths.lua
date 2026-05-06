local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_52_55_Blackrock")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Blackrock Depths: Prison (52-55)", "Scholomance / Stratholme (55-58)", "Alliance", nil, "I", nil, function()
return [[

N Level 52 Required |N|You will need to be at least level 52 to pick up the following quests| |QID|4341| |PL|52|

R City of Ironforge |QID|4341| |N|Travel to Ironforge (40, 55.1)| |Z|1455|
h Ironforge |QID|4341| |N|Speak to (npc:5111) and set hearth in {Ironforge} (18.50, 51.61)| |Z|1455| |NPC|5111|
A The Smoldering Ruins of Thaurissan (1) |QID|3702| |N|(npc:8879) in {Ironforge} (38.6, 55.4)| |Z|1455| |NPC|8879|
T The Smoldering Ruins of Thaurissan (1) |QID|3702| |N|(npc:8879) in {Ironforge} (38.6, 55.4)| |Z|1455| |NPC|8879|
A The Smoldering Ruins of Thaurissan (2) |QID|3701| |N|(npc:8879) in {Ironforge} (38.6, 55.4)| |Z|1455| |NPC|8879|

R Burning Steppes |QID|3701| |N|Travel to {Burning Steppes} (61.9, 36.6)| |Z|1428|
C The Smoldering Ruins of Thaurissan (2) |QID|3701| |N|Click on the Thaurissan Relic to recover 12 information  (61.9, 36.6)| |Z|1428| |W| |OBJ|1027|

R City of Ironforge |TID|3701| |N|Travel to Ironforge (40, 55.1)| |Z|1455|
T The Smoldering Ruins of Thaurissan (2) |QID|3701| |N|(npc:8879) in {Ironforge} (38.6, 55.4)| |Z|1455| |NPC|8879|
A Kharan Mighthammer |QID|4341| |N|(npc:2784) in {Ironforge} (40, 55.1)| |Z|1455| |NPC|2784|

R Morgan's Vigil |QID|4286| |N|Borgus Stoutarm (84.3, 68.3)| |Z|1428|
A The Good Stuff |QID|4286| |N|(npc:9177) in {Morgan's Vigil} (84.6, 68.4)| |Z|1428| |NPC|9177|
A Overmaster Pyron |QID|4262| |N|(npc:9561) in {Morgan's Vigil} (85.5, 70)|  |Z|1428| |NPC|9561|

R Slither Rock |QID|4022| |N|Travel to {Slither Rock} (93.66, 32.10)| |Z|1428| |OID|4023|
A A Taste of Flame (1) |QID|4022| |N|(npc:9459) in {Slither Rock} (93.66, 32.10) (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
C A Taste of Flame (1) |QID|4022| |N|Speak to (npc:9459) with (item:10575) in {Slither Rock} (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
T A Taste of Flame (1) |QID|4022| |N|(npc:9459) in {Slither Rock} (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
A A Taste of Flame (2) |QID|4024| |N|(npc:9459) in {Slither Rock} (95.05, 31.57)| |Z|1428| |NPC|9459|

R Blackrock Mountain |QID|4262| |N|Travel to Blackrock Mountain (34.88, 84.8)| |Z|1427| |QID|4023|
C Overmaster Pyron |QID|4262| |N|Kill (npc:9026), you can either jump down to the lava or follow the Chain to the middle structure and down to the mines  (26.44, 79.4)| |Z|1427| |NPC|9026|

R Morgan's Vigil |QID|4023| |N|Travel to {Morgan's Vigil} (85.5, 70)| |Z|1428|
T Overmaster Pyron |QID|4262| |N|(npc:9561) in {Morgan's Vigil} (85.5, 70)| |Z|1428|
A Incendius! |QID|4263| |N|(npc:9561) in {Morgan's Vigil} (85.5, 70)| |Z|1428|

R Blackrock Depths |QID|3982| |N|Zone into Blackrock Depths dungeon| |I|
K (npc:9018) |QID|4342| |N|Kill (npc:9018), from the entrance she is on the right side North East and collect (item:11140)| |L|11140| |DMAP|Blackrock_Depths_A| |NPC|9018|

T Kharan Mighthammer |QID|4341| |N|Free (npc:9021), After you enter BRD, walk forward into the main room, then look to your right. You'll see three pathways. The outer two loop around to each other in a big ring. (npc:9021) is in a cell on the left side| |DMAP|Blackrock_Depths_A| |NPC|9021|
A Kharan's Tale (1) |QID|4342| |N|(npc:9021) in {Blackrock Depths}| |DMAP|Blackrock_Depths_A| |NPC|9021|
C Kharan's Tale (1) |QID|4342| |N|Escort and defend (npc:9021) in {Blackrock Depths}| |DMAP|Blackrock_Depths_A| |NPC|9021|
T Kharan's Tale (1)  |QID|4342| |N|(npc:9021) in {Blackrock Depths}| |DMAP|Blackrock_Depths_A| |NPC|9021|
A The Bearer of Bad News |QID|4361| |N|(npc:9021) in {Blackrock Depths}| |DMAP|Blackrock_Depths_A| |NPC|9021|
C The Good Stuff |QID|4286| |N|Kill Dwarves NPC until you collect 20 (item:11468) you can also farm these from the non-elite dwarves outside the instance| |NPC|8896, 8889, 8893, 8895|
C A Taste of Flame (2) |QID|4024| |N|If someone in your party can unlock the doors, Kill (npc:9016) and loot (item:11230) by using the (item:11231)| |L|11230| |U|11231| |DMAP|Blackrock_Depths_A| |NPC|9016|
K (npc:9017) |QID|4263| |N|Follow the large hallway from (npc:9016) straight to (npc:9017) and collect (item:11126)| |DMAP|Blackrock_Depths_A| |NPC|9017|

R Morgan's Vigil |TID|4024| |N|Travel to {Morgan's Vigil} (84.6, 68.4)| |I| |Z|1428|
T The Good Stuff  |QID|4286| |N|(npc:9177) in {Morgan's Vigil} (84.6, 68.4)| |Z|1428|
T Incendius! |QID|4263| |N|(npc:9561) in {Morgan's Vigil} (85.5, 70)| |Z|1428|
T A Taste of Flame (2) |QID|4024| |N|(npc:9459) in {Burning Steppes}s (95.0, 31.6)| |Z|1428|

R City of Ironforge |TID|4341| |N|Travel to Ironforge (40, 55.1)| |Z|1455|
T The Bearer of Bad News |QID|4361| |N|(npc:2784) in {Ironforge} (40, 55.1)| |Z|1455|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
