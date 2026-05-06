local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_39_45_Uldaman")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Uldaman (39-45)", "Zul'Farrak (42-47)", "Alliance", nil, "I", nil, function()
return [[

N Level 38 Required |N|You will need to be at least level 38 to pick up the following quests| |QID|707| |PL|38|

R City of (npc:7292) in {Ironforge} |QID|707| |N|Travel to {Ironforge} (18.41, 51.49)| |Z|1455| 
h (npc:7292) in {Ironforge} |QID|707| |N|Speak to (npc:5111) and set hearth in {Ironforge} (18.41, 51.49)| |Z|1455| |NPC|5111|
A Ironband Wants You! |QID|707| |N|(npc:1356) in {The Library} (74.57, 11.68)| |Z|1455| |NPC|1356|
A Reclaimed Treasures |QID|1360| |N|(npc:6294) in {Ironforge} (74.6, 10.5)| |Z|1455|
B (item:3829) |QID|713| |N|Buy (item:3829) from Auction House<br/><br/>Skip this if not available<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (24, 70)| |L|3829| |Z|1455| 
B (item:4389) |QID|713| |N|Buy (item:4389) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (24, 70)| |L|4389| |Z|1455|
B (item:929) |QID|713| |N|Buy (item:929) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829) and (item:4389)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (24, 70)| |L|929| |Z|1455|
B (item:3823) |QID|713| |N|Buy (item:3823) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829) and (item:4389)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (24, 70)| |L|3823| |Z|1455|
B 4 (item:3404) |QID|713| |N|Buy 4 (item:3404) from Auction House - Skip this if not available (24, 70)| |L|3404 4| |Z|1455|

R Loch Modan |QID|2500| |N|Travel to {Loch Modan} (37, 49.2)| |Z|1432|
A Badlands Reagent Run |QID|2500| |N|(npc:1470) in {Thelsamar} (37.06, 49.36)| |Z|1432| |NPC|1470|

R Ironband's Excavation Site |QID|738| |N|Travel to {Ironband's Excavation Site} (65.94, 65.62)| |Z|1432|
T Ironband Wants You! |QID|707| |N|(npc:1344) in {Ironband's Excavation Site} (65.94, 65.62)| |Z|1432| |NPC|1344|
A Find Agmond |QID|738| |N|(npc:1344) in {Ironband's Excavation Site} (65.94, 65.62)| |Z|1432| |PRE|707| |NPC|1344|

R Hammertoe's Digsite |QID|719| |N|Travel to {Hammertoe's Digsite} (53, 34.1)| |Z|1418|
A A Sign of Hope (1) |QID|720| |N|Crumpled Map in {Hammertoe's Digsite} (53, 34.1)| |Z|1418| |OBJ|222|
T A Sign of Hope (1) |QID|720| |N|(npc:2910) in {Badlands} (53.4, 43.4)| |Z|1418| |NPC|2910|
A A Sign of Hope (2) |QID|720| |N|(npc:2910) in {Badlands} (53.4, 43.4)| |Z|1418| |NPC|2910|

R Valley of Fangs |QID|703| |N|Travel to {Valley of Fangs} (42.37, 52.94)| |Z|1418|
A Power Stones |QID|2418| |N|(npc:2817) in {Valley of Fangs} (42.37, 52.94)| |Z|1418| |NPC|2817|
A Barbecued Buzzard Wings |QID|703| |N|(npc:2817) in {Valley of Fangs} (42.37, 52.94)| |Z|1418| |NPC|2817|

T Find Agmond |QID|738| |N|Battered Dwarven Skeleton in {Agmond's End} (50.92, 62.36)| |Z|1418| |PRE|707| |OBJ|211|
A Murdaloc |QID|739| |N|Battered Dwarven Skeleton in {Agmond's End} (50.92, 62.36)| |Z|1418| |PRE|707| |OBJ|211|
C Murdaloc |QID|739.2| |N|Kill 12 (npc:2893) or (npc:2894) found nearby at Agmond's End (50, 70)| |Z|1418| |PRE|707| |W| |NPC|2945, 2893|
C Barbecued Buzzard Wings |QID|703| |N|Kill (npc:2829) and collect 4 (item:3404) (52.75, 26.28)| |Z|1418| |W| |NPC|2829|
N (item:7847) |QID|2258.1| |N|Kill any Buzzards and collect 5 (item:7847) in {Apocryphan's Rest} (15.10, 59.84)| |Z|1418| |W| |NPC|2831, 2829, 2830|

A Solution to Doom |QID|709| |N|(npc:2785) in {Badlands} (51.5, 76.8)| |Z|1418| |NPC|2785|

R The Dustbowl |QID|710| |N|Travel to {The Dustbowl} (25.91, 44.91)| |Z|1418|
A Study of the Elements: Rock (1) |QID|710| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Coolant Heads Prevail |QID|713| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |L|3829| |O| |NPC|2921|
T Coolant Heads Prevail |QID|713| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |O| |NPC|2921| 
A Gyro... What? |QID|714| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |L|4389| |O| |NPC|2921| 
T Gyro... What? |QID|714| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |O| |NPC|2921|
A Liquid Stone |QID|715| |N|(npc:2920) in {The Dustbowl} (25.83, 44.29)| |Z|1418| |L|3823| |O| |NPC|2920| 
T Liquid Stone |QID|715| |N|(npc:2920) in {The Dustbowl} (25.83, 44.29)| |Z|1418| |O| |NPC|2920| 

C Study of the Elements: Rock (1) |QID|710| |N|Kill the (npc:2735) and collect 10 (item:4626) (13.12, 38.86)| |W| |NPC|2735|
N (item:7848) |QID|2500.3| |N|Kill Rock Elementals to collect 5 (item:7848) (13.12, 38.86)| |W| |NPC|2735, 92|
T Study of the Elements: Rock (1) |QID|710| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|

C Badlands Reagent Run |QID|2500| |N|Kill Coyotes for 10 (item:7846) (13, 36) (14, 60) (11, 63)| |Z|1418| |LOOP| |NPC|2727, 2728, 2729|

T A Sign of Hope (2) |QID|721| |N|(npc:2909) (37.91, 10.58)| |Z|1418|

A Amulet of Secrets |QID|722| |N|(npc:2909) (37.91, 10.58)| |Z|1418|
C Amulet of Secrets |QID|722| |N|Kill (npc:2932) and collect (item:4635) who patrol near Dig One of Uldaman's Front Entrance<br/><br/>He is a level 38 elite, you may need help (39.37, 16.28) | |Z|1418|
C Solution to Doom |QID|709| |N|Collect (item:4631) from the chest in Uldaman pre-instance area (39.32, 18.81)| |Z|1418|
C Reclaimed Treasures |QID|1360| |N|Find the (item:8026) from the chest in Uldaman pre-instance area head into the area with the trogs, entrance  (35.56, 23.51)  (37.84, 16.76)| |Z|1418|
T Amulet of Secrets |QID|722| |N|(npc:2909) (37.91, 10.58)| |Z|1418|

A Prospect of Faith (1) |QID|723| |N|(npc:2909) (37.91, 10.58)| |Z|1418|
C Power Stones |QID|2418| |N|You can complete this by killing the Dwarves outside Uldaman Instance (44.5, 12.16)| |Z|1418|
N (item:7666) |QID|2198| |N|Kill the Stonevault or Shadowforge mods outside the instance until you find the (item:7666) (44.5, 12.16)| |L|7666| |Z|1418| |NPC|4852, 4851, 4856, 4846|
A The Shattered Necklace |QID|2198| |N|Use (item:7666) to accept quest| |U|7666| |Z|1418|
T Prospect of Faith (1) |QID|723| |N|(npc:2910) in {Badlands} (53.4, 43.4)| |Z|1418| |NPC|2910|
A Prospect of Faith (2) |QID|724| |N|(npc:2910) in {Badlands} (53.4, 43.4)| |Z|1418| |NPC|2910|
T Barbecued Buzzard Wings |QID|703| |N|(npc:2817) in {Valley of Fangs} (42.37, 52.94)| |Z|1418| |NPC|2817|
T Power Stones |QID|2418| |N|(npc:2817) in {Valley of Fangs} (42.37, 52.94)| |Z|1418| |NPC|2817|

R Ironforge|QID|2199| |N|Travel to {Ironforge} (36.0, 4.2)| |Z|1455|
T The Shattered Necklace |QID|2198| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455|
A Lore for a Price |QID|2199| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455|
C Lore for a Price |QID|2199| |N|Collect or Buy 5 (item:2842) at the Auction House| |Z|1455|
T Lore for a Price |QID|2199| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455|
A Back to Uldaman |QID|2200| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455|

T Reclaimed Treasures |QID|1360| |N|(npc:6294) in {Ironforge} (74.6, 10.5)| |Z|1455|
T Prospect of Faith (2) |QID|724| |N|(npc:2916) in {Ironforge} (77.3, 10.1)| |Z|1455|
A Passing Word of a Threat (1) |QID|725| |N|(npc:2916) in {Ironforge} (77.3, 10.1)| |Z|1455|
T Passing Word of a Threat (1) |QID|725| |N|(npc:2918) in {Ironforge} (77.6, 9.9)| |Z|1455|
A Passing Word of a Threat (2) |QID|726| |N|(npc:2918) in {Ironforge} (77.6, 9.9)| |Z|1455|
T Passing Word of a Threat (2) |QID|726| |N|(npc:2916) in {Ironforge} (77.3, 10.1)| |Z|1455|
A An Ambassador of Evil |QID|762| |N|(npc:2916) in {Ironforge} (77.3, 10.1)| |Z|1455|

R Loch Modan |QID|704| |N|Travel to {Loch Modan} (65.8, 65.6)| |Z|1432| 
T Murdaloc |QID|739| |N|(npc:1344) in {Loch Modan} (65.8, 65.6)| |Z|1432| |NPC|1344|
A Agmond's Fate |QID|704| |N|(npc:1344) in {Loch Modan} (65.8, 65.6)| |Z|1432| |NPC|1344|
T Badlands Reagent Run |QID|2500| |N|(npc:1470) in {Thelsamar}(37, 49.2)| |Z|1432| |NPC|1470|
A Uldaman Reagent Run |QID|17| |N|(npc:1470) in {Thelsamar}(37.0, 49.3)| |Z|1432| |NPC|1470|
C An Ambassador of Evil |QID|762| |N|Kill (npc:2745) (41.9, 28.4) in Angor Fortress<br/><br/>He's a level 42 elite, you will need help to kill him| |Z|1418| |NPC|2745|

R Badlands |TID|709| |N|Travel to {Badlands} (51.5, 76.8)| |Z|1418|
T Solution to Doom |QID|709| |N|(npc:2785) in {Badlands} (51.5, 76.8)| |Z|1418| |NPC|2785|

R Ironforge |QID|1139| |N|Travel to {Ironforge} (77.6, 9.9)| |Z|1455| 
T An Ambassador of Evil |QID|762| |N|(npc:2918) in {Ironforge} (77.6, 9.9)| |Z|1455| 
A The Lost Tablets of Will |QID|1139| |N|(npc:2918) in {Ironforge} (77.6, 9.9)| |Z|1455|
A The Lost Dwarves |QID|2398| |N|(npc:1356) in {Ironforge} (74.5, 12.2)| |Z|1455|

R Uldaman |QID|2201| |N|Zone into the Uldaman dungeon with your group| |I|
T Back to Uldaman |QID|2200| |N|Find (npc:6912), when you enter the instance, stick to the right side of the halls and you will find him on the 2nd hallway| |DMAP|Uldaman_A|
A Find the Gems |QID|2201| |N|(npc:6912)| |DMAP|Uldaman_A|
K (npc:6906) |QID|2339| |N|Kill (npc:6906) and collect (item:7740), you need this to unlock the rest of the instance, only one person in the party need to use it<br/><br/>Tick this step if someone else picked it up| |L|7740| |DMAP|Uldaman_A|
T The Lost Dwarves |QID|2398| |N|Find (npc:6906) in the area to the south of the entrance area| |DMAP|Uldaman_A| |NPC|6906|
A The Hidden Chamber |QID|2240| |N|(npc:6906), inside Uldaman| |DMAP|Uldaman_A| |NPC|6906|
N (item:7740) |QID|2240| |N|Loot this from (npc:6906)'s Chest| |L|7740| |DMAP|Uldaman_A| |NPC|6906|
N (item:7671) |QID|2201| |N|Get (item:7671) is in a Conspicuous Urn in the room with the three lost viking| |L|7671| |OBJ|53| |DMAP|Uldaman_A|
N (item:7670) |QID|2201| |N|Collect (item:7670) dropped from (npc:4854)| |L|7670| |DMAP|Uldaman_A| |NPC|4854|
C Uldaman Reagent Run |QID|17| |N|Collect 12 (item:8047) scattered in the {Uldaman} dungeon, If you don't find enough on your first time through, when the instance is finished, you can head back out through the instance and the mushrooms will have respawned. Just go pick from the newly spawned Mushrooms and you're done.| |Z|1418| |DMAP|Uldaman_A|
K (npc:6910) |QID|2240| |N|Kill (npc:6910) and collect (item:7741) clear next room then use the staff on the pedestal to summon (npc:7228)| |L|7741| |DMAP|Uldaman_A|
N (item:7733) |QID|2240| |N|Combine (item:7741) with the (item:7740) then use the staff on the pedestal (in the middle of the City Model)| |U|7740| |L|7733| |DMAP|Uldaman_A|

C The Hidden Chamber |QID|2240| |N|Explore the room (npc:7228) came from| |DMAP|Uldaman_A| |NPC|7228|
C The Lost Tablets of Will |QID|1139| |N|Find (item:5824) can be found inside the Uldaman instance next to (npc:7291)| |L|5824| |NPC|7291|
N (item:7669) |QID|2201| |N|Collect (item:7669) in the Shadowforge cache is in the room with (npc:7291)|| |L|7669| |OBJ|1387| |DMAP|Uldaman_A| |NPC|7291|
N (item:7670) |QID|2201| |N|Collect (item:7670) dropped from (npc:4854)| |L|7670| |DMAP|Uldaman_A| |NPC|4854|
T Find the Gems |QID|2201| |N|Use the item (item:7667) to summon Talvash's Scrying Bowl| |U|7667| |DMAP|Uldaman_A|
A Restoring the Necklace (1) |QID|2204| |N|Talvash's Scrying Bowl, from(item:7667)| |DMAP|Uldaman_A|
C Restoring the Necklace (1) |QID|2204| |N|Kill (npc:2748) and collect (item:7672)| |DMAP|Uldaman_A| |NPC|2748|
A The Platinum Discs (1) |QID|2278| |N|From The Platinum Discs in the room with (npc:2748)| |OBJ|1427| |DMAP|Uldaman_A|
N Talk to Stone Watcher |QID|2278| |N|Talk to Stone Watcher next to the disk and skip through all his story<br/><br/>Tick this step| |DMAP|Uldaman_A|
T The Platinum Discs (1) |QID|2278| |N|From The Platinum Discs in the room with (npc:2748)| |OBJ|1427| |DMAP|Uldaman_A|
A The Platinum Discs (2) |QID|2279| |N|From The Platinum Discs in the room with (npc:2748)| |OBJ|1427| |DMAP|Uldaman_A|

R Ironforge |QID|2361| |N|Travel to in {Ironforge} (36.0, 4.2)| |Z|1455|
T Restoring the Necklace (1) |QID|2204| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455| |NPC|6826|
A Restoring the Necklace (2) |QID|2361| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455| |NPC|6826|
T Restoring the Necklace (2) |QID|2361| |N|(npc:6826) in {Ironforge} (36.0, 4.2)| |Z|1455| |NPC|6826|
T The Platinum Discs (2) |QID|2279| |N|(npc:5387) in {Ironforge} (69.8, 18.4)| |Z|1455| |NPC|5387|
A The Platinum Discs (3) |QID|2439| |N|(npc:5387) in {Ironforge} (69.8, 18.4)| |Z|1455| |NPC|5387|
T The Lost Tablets of Will |QID|1139| |N|(npc:2918) in {Ironforge} (77.6, 9.9)| |Z|1455| |NPC|2918|
T The Hidden Chamber |QID|2240| |N|(npc:1356) in {Ironforge} (74.5, 12.2)| |Z|1455| |NPC|1356|
T The Platinum Discs (3) |QID|2439| |N|(npc:7292) in {Ironforge} (34.6, 60.0)| |Z|1455| |NPC|7292|

R Loch Modan |TID|17| |N|Travel to {Loch Modan} (37.0, 49.3)| |Z|1432| 
T Uldaman Reagent Run |QID|17| |N|(npc:1470) in {Loch Modan} (37.0, 49.3)| |Z|1432| |NPC|1470|
T Agmond's Fate |QID|704| |N|(npc:1344) in {Loch Modan} (65.8, 65.6)| |Z|1432| |NPC|1344|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end