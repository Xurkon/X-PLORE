local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_42_47_ZulFarrak")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Zul'Farrak (42-47)", "Maraudon (45-49)", "Alliance", nil, "I", nil, function()
return [[

N Level 40 Required |N|You will need to be at least level 40 to pick up the following quests| |QID|2861| |PL|40|

R City of Ironforge |QID|2861| |N|Travel to Ironforge (72.6, 93.4)| |Z|1455|
A Tabetha's Task |QID|2861| |N|(npc:5144) in {Ironforge} (27.0, 8.3)| |Z|1455| |NPC|5144|
A The Brassbolts Brothers |QID|2769| |N|(npc:6169) in {Ironforge} (72.6, 93.4)| |Z|1455| |NPC|6169|

R Stormwind City |QID|1448| |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|1453| 
h Stormwind City |QID|1448| |N|Speak to (npc:6740) and set hearth at {Stormwind City} (60.4, 75.3)| |Z|1453| |NPC|6740|
A In Search of The Temple |QID|1448| |N|(npc:5384) in {Stormwind City} (64.2, 20.8)| |Z|1453| |NPC|5384|

R Swamp of Sorrows |QID|1449| |N|Travel to Swamp of Sorrows (68.6, 49.5)| |Z|1435|
C In Search of The Temple |QID|1448| |N|Explore the area by the Temple (68.6, 49.5)| |Z|1435|

R Stormwind City |QID|1449| |N|Travel to {Stormwind City} (64.2, 20.8)| |Z|1453|
T In Search of The Temple |QID|1448| |N|(npc:5384) in {Dwarven District} (64.27, 20.74)| |Z|1453| |NPC|5384|
A To The Hinterlands |QID|1449| |N|(npc:5384) in {Dwarven District} (64.27, 20.74)| |Z|1453| |NPC|5384|

R Wildhammer Keep |QID|2880| |N|Travel to {Wildhammer Keep} (14.59, 44.60)| |Z|1425|
A Troll Necklace Bounty |QID|2880| |N|(npc:7884) in {Wildhammer Keep} (14.59, 44.60)| |Z|1425| |NPC|7884|
T To The Hinterlands |QID|1449| |N|(npc:2543) in {Aerie Peak} (11.80, 46.74)| |Z|1425| |NPC|2543|
A Gryphon Master Talonaxe |QID|1450| |N|(npc:5635) in {Aerie Peak} (11.90, 46.58)| |Z|1425| |NPC|5635|
T Gryphon Master Talonaxe |QID|1450| |N|(npc:2543) in {Aerie Peak} (9.77, 44.45)| |Z|1425| |NPC|2543|
A Rhapsody Shindigger |QID|1451| |N|(npc:5636) in {Aerie Peak} (9.77, 44.45)| |Z|1425| |NPC|5636|
A Witherbark Cages |QID|2988| |N|(npc:5636) in {Aerie Peak} (9.77, 44.45)| |Z|1425| |NPC|5636|

--A Featherbeard's Endorsement |QID|9469| |N|Ambassador Rualeth (15.1, 47.3)| |Z|1425|
--A A Gesture of Goodwill |QID|9470| |N|Ambassador Rualeth (15.1, 47.3)| |Z|1425|
--A Preying on the Predators |QID|9471| |N|Ambassador Rualeth (15.1, 47.3)| |Z|1425|

A Troll Necklace Bounty |QID|2880| |N|(npc:7884) in {Wildhammer Keep} (14.59, 44.60)| |Z|1425| |NPC|7884|
h Wildhammer Keep |QID|3661| |N|Speak to (npc:7744) and set hearth at {Wildhammer Keep} (13.52, 44.76) (13.46, 43.97) (13.46, 41.66) (13.91, 42.24)| |Z|1425| |NPC|7744|

--T Featherbeard's Endorsement |N|Featherbeard's Journal (13.4, 55.2)| |QID|9469| |Z|1425|
--A In Pursuit of Featherbeard |N|Featherbeard's Journal (13.4, 55.2)| |QID|9476| |Z|1425|

R Shindigger's Camp |QID|1452| |N|Travel to {Shindigger's Camp} (20.00, 48.33) (26.93, 48.60)| |Z|1425|
T Rhapsody Shindigger |QID|1451| |N|(npc:5634) in {Shindigger's Camp} (26.93, 48.60)| |Z|1425| |NPC|5634|
A Rhapsody's Kalimdor Kocktail |QID|1452| |N|(npc:5634) in {Shindigger's Camp} (26.93, 48.60)| |Z|1425| |NPC|5634|

--K Mangy Silverman Wolves |N|around (19, 52)| |QID|9471| |QO|Mangy Silvermane slain: 10/10| |Z|1425|
N Check First Cage |QID|2988.1| |N|Click First Witherbark Cage in {Zun'watha} (23.27, 58.71)| |Z|1425| |OBJ|676|
N Check Second Cage |QID|2988.2| |N|Click Second Witherbark Cage in {Zun'watha} (23.13, 58.73)| |Z|1425| |OBJ|676|
--C A Gesture of Goodwill |N|Kill Witch Doctor Mai'jin and his pet spider Tcha'kaz at (25, 66)| |QID|9470| |Z|1425|
N Check Third Cage |QID|2988.3| |N|Click Third Witherbark Cage in {Hiri'watha} (32.00, 57.38)| |Z|1425| |OBJ|676|
--C Preying on the Predators |N|Kill 5 Silvermane Wolves around (27, 62)| |QID|9471| |Z|1425|
C Troll Necklace Bounty |QID|2880| |N|Kill (npc:2649) or (npc:2650) collect 5 (item:9259) in {Hiri'watha} (32.00, 57.38)| |Z|1425| |W| |NPC|2649, 2650|

A Jammal'an the Prophet |QID|1446| |N|(npc:5598) in {The Hinterlands} (33.7, 75.2)| |Z|1425| |NPC|5598|

R Wildhammer Keep |TID|2988| |N|Travel or (item:6948) to {Wildhammer Keep} (14.82, 44.58)| |Z|1425|
T Troll Necklace Bounty |QID|2880| |N|(npc:7884) in {Wildhammer Keep} (14.82, 44.58)| |Z|1425| |NPC|7884|

--T A Gesture of Goodwill |QID|9470| |N|Ambassador Rualeth (15.1, 47.3)| |Z|1425|
--T Preying on the Predators |QID|9471| |N|Ambassador Rualeth (15.1, 47.3)| |Z|1425|
T Witherbark Cages |QID|2988| |N|(npc:5636) in {Aerie Peak} (9.74, 44.50)| |Z|1425| |NPC|5636|
A The Altar of Zul |QID|2989| |N|(npc:5636) in {Aerie Peak} (9.74, 44.50)| |Z|1425| |NPC|5636|

--T In Pursuit of Featherbeard |QID|9476| |N|Featherbeard's Remains (37.1, 71.5)| |Z|1425|
--A Reclaiming the Eggs |QID|9475| |N|Featherbeard's Remains (37.1, 71.5)| |Z|1425|

--C Reclaiming the Eggs |QID|9475| |N|Gather 5 [Gryphon Eggs] around (34, 72)| |Z|1425|

R The Altar of Zul |QID|2989| |N|Travel to {The Altar of Zul} (48.76, 68.35)| |Z|1425|
C The Altar of Zul |QID|2989| |N|Go up to the top of the stair to search {The Altar of Zul} (48.76, 68.35)| |Z|1425|

--T Reclaiming the Eggs |N|Ambassador Rualeth (15.1, 47.3)| |QID|9475| |Z|1425|
T The Altar of Zul |QID|2989| |N|(npc:5636) in {Aerie Peak}, on top of Aerie Peak (9.69, 44.47)| |Z|1425| |NPC|5636|
A Thadius Grimshade |QID|2990| |N|(npc:5636) in {Aerie Peak} (9.8, 44.5)| |Z|1425|

R Aerie Peak |QID|2991| |N|Travel to {Aerie Peak} (67.0, 19.5)| |Z|1419|
T Thadius Grimshade |QID|2990| |N|(npc:8022) in {Aerie Peak} (67.0, 19.5)| |Z|1419|
A Nekrum's Medallion |QID|2991| |N|(npc:8022) in {Aerie Peak} (67.0, 19.5)| |Z|1419|

R Booty Bay |QID|2864| |N|Travel to {Booty Bay} (28.2, 74.5)| |Z|1434|
A Tran'rek |QID|2864| |N|(npc:773) in {Booty Bay} (27.0, 77.2)| |Z|1434| |NPC|773|

R Dustwallow Marsh |QID|2846| |N|Travel to {Mudsprocket} (46.0, 57.1)| |Z|1445|
T A Tabetha's Task |QID|2861| |N|(npc:6546) in {Mudsprocket} (46.0, 57.1)| |Z|1445|
A Tiara of the Deep |QID|2846| |N|(npc:6546) in {Mudsprocket} (46.0, 57.1)| |Z|1445|

R Tanaris |QID|3520| |N|Travel to {Tanaris} (50.7, 24.3)| |Z|1446|
A Screecher Spirits |QID|3520| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446|
T Tran'rek |QID|2864| |N|(npc:7876) in {Tanaris} (51.6, 26.8)| |Z|1446| |NPC|7876|

R Gadgetzan |QID|2768| |N|Travel to Gadgetzan (51.6, 25.4)| |Z|1446|
h Gadgetzan |QID|2768| |N|Speak to (npc:7733) and set hearth in {Gadgetzan} (52.5, 27.9)| |Z|1446| |NPC|7733|
A Divino-matic Rod |QID|2768| |N|(npc:7407) in {Gadgetzan} (52.44, 28.48)| |Z|1446| |NPC|7407|
A Scarab Shells |QID|2865| |N|(npc:7876) in {Gadgetzan} (51.6, 26.8)| |Z|1446| |NPC|7876|
A Troll Temper |QID|3042| |N|(npc:7804) in {Gadgetzan} (51.5, 28.7)| |Z|1446| |NPC|7804|

K (npc:5430) |QID|1452.1| |N|Kill (npc:5430) and collect 3 (item:6257) (42.2, 63.78)| |Z|1446| |W| |L|6257 3| |NPC|5430|

R Thousand Needles |QID|2770| |N|Head North to Thousand Needles (75, 96)| |Z|1441|
T The Brassbolts Brothers |QID|2769| |N|(npc:4453) in {Thousand Needles} (78.1, 77.1)| |Z|1441| |NPC|4453|
A Gahz'rilla |QID|2770| |N|(npc:4453) in {Thousand Needles} (78.1, 77.1)| |Z|1441| |NPC|4453|

R The Forgotten Coast |N|Travel to {The Forgotten Coast} in {Feralas} (46.32, 49.78) (46.43, 49.08)| |Z|1444|
C Screecher Spirits |QID|3520| |N|Kill (npc:5308) and use (item:10699), then interact with the spirit in {The Forgotten Coast} (46.32, 49.78) (46.43, 49.08)| |Z|1444| |U|10699| |W| |NPC|5308|
C Rhapsody's Kalimdor Kocktail |QID|1452.3| |N|Kill (npc:5262) and (npc:5274) for 3 (item:6259) and 3 (item:6258) in {The Twin Colossals} (50.54, 28.24)| |Z|1444| |W| |NPC|5262, 5274|
C Rhapsody's Kalimdor Kocktail |QID|1452.2| |N|Kill (npc:5262) and (npc:5274) for 3 (item:6259) and 3 (item:6258) in {The Twin Colossals} (50.54, 28.24)| |Z|1444| |W| |NPC|5262, 5274|

R Tanaris |QID|3527| |N|Travel to {Tanaris} (66.9, 22.4)| |Z|1446|
T Screecher Spirits |QID|3520| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446|
A The Prophecy of Mosh'aru |QID|3527| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446|

R Zul'Farrak |QID|3527| |N|Zone into {Zul'Farrak} dungeon (38.70, 20.04)| |Z|1446| |I|
N (item:10660) |QID|3527.1| |N|Kill (npc:7272) and collect (item:10660) in {Zul'Farrak}| |L|10660| |DMAP|Zulfarrak_A|
C Divino-matic Rod |QID|2768| |N|Kill the (npc:7274) at the top of the Temple and get the (item:8444)| |Z|1446| |L|8444| |DMAP|Zulfarrak_A| |NPC|7274|
C Divino-matic Rod |QID|2768| |N|Use the (item:8444) free (npc:7604) from his cage, once the event is over you can talk to (npc:7604) to pick a fight<br/><br/>Do not talk to (npc:7604) until everybody is ready, Kill off the priest and lock first, then the rogue and finally (npc:7604) himself. Loot his body for the (item:8548)| |Z|1446| |DMAP|Zulfarrak_A| |NPC|7604|
C Nekrum's Medallion |QID|2991| |N|Kill (npc:7796) and collect (item:9471), the final boss| |DMAP|Zulfarrak_A| |NPC|7796|
C Gahz'rilla |QID|2770| |N|Ring the gong to summon and kill (npc:7273) and loot (item:8707)<br/><br/>You will need (item:9241) to ring the gong| |Z|1441| |L|9241| |O| |DMAP|Zulfarrak_A| |NPC|7273|
C Tiara of the Deep  |QID|2846| |N|Kill (npc:7795) who is in the same room as (npc:7273) and collect (item:9234)| |C|Mage| |DMAP|Zulfarrak_A| |NPC|7795|
N (item:10661) |QID|3527| |N|Collect (item:10661) dropped by (npc:7795) who is in the same room as (npc:7273)| |DMAP|Zulfarrak_A| |NPC|7795|
C Scarab Shells |QID|2865| |N|Collect 5 (item:9238) dropped by the (npc:7269) in the undead area| |Z|1446| |DMAP|Zulfarrak_A| |NPC|7269|
C Troll Temper |QID|3042| |N|Collect 20 (item:9523) by any troll from {Zul'Farrak} you should get 20 after 1 run| |Z|1446| |DMAP|Zulfarrak_A| |NPC|5648, 5649, 5650, 7246|

R Gadgetzan |QID|4787| |N|Travel to Gadgetzan (51.6, 26.8)| |Z|1446|
T Divino-matic Rod |QID|2768| |N|(npc:7407) in {Gadgetzan} (52.44, 28.48)| |Z|1446| |NPC|7407|
T Scarab Shells |QID|2865| |N|(npc:7876) in {Gadgetzan} (51.6, 26.8)| |Z|1446| |NPC|7876|
T Troll Temper |QID|3042| |N|(npc:7804) in {Gadgetzan} (51.5, 28.7)| |Z|1446| |NPC|7804|

T The Prophecy of Mosh'aru |QID|3527| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446|
A The Ancient Egg |QID|4787| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446|

R Thousand Needles |TID|2770|  |N|Travel to Thousand Needles (75, 96)| |Z|1441|
T Gahz'rilla |QID|2770| |N|(npc:4453) in {Thousand Needles} (78.1, 77.1)| |Z|1441| |NPC|4453| 

R Dustwallow Marsh |TID|2846| |N|Travel to {Mudsprocket} (46.0, 57.1)| |Z|1445|
T Tiara of the Deep |QID|2846| |N|(npc:6546) in {Mudsprocket} (46.0, 57.1)| |Z|1445|

R Nethergarde Keep|QID|2992| |N|Travel to {Nethergarde Keep} (67.0, 19.5)| |Z|1419|
T Nekrum's Medallion |QID|2991| |N|(npc:8022) in {Nethergarde Keep} (67.0, 19.5)| |Z|1419|
A The Divination |QID|2992| |N|(npc:8022) in {Nethergarde Keep} (67.0, 19.5)| |Z|1419|
T The Divination |QID|2992| |N|(npc:8022) in {Nethergarde Keep} (67.0, 19.5)| |Z|1419|
A Return to the Hinterlands |QID|2993| |N|(npc:8022) in {Nethergarde Keep} (67.0, 19.5)| |Z|1419|

R Aerie Peak |QID|2994| |N|Travel to {Aerie Peak} (9.8, 44.5)| |Z|1425|
T Return to the Hinterlands |QID|2993| |N|(npc:5636) in {Aerie Peak} (9.8, 44.5)| |Z|1425|
A Saving Sharpbeak |QID|2994| |N|(npc:5636) in {Aerie Peak} (9.8, 44.5)| |Z|1425|
T Rhapsody's Kalimdor Kocktail |QID|1452| |N|(npc:5634) in {Aerie Peak} (20, 47) (26.9, 48.5)| |Z|1425|
A Rhapsody's Tale |QID|1469| |N|(npc:5634) in {Aerie Peak} (26.9, 48.5)| |Z|1425|

R Jintha'Alor |QID|2994| |N|Travel to {Jintha'Alor} (58.7, 78.8) | |Z|1425| |REACH|
K (npc:7995) |QID|2994| |N|Head to Jintha'Alor ruins as you get to the last plateau turn left to go towards the altar to kill (npc:7995) and collect (item:9472) (58.7, 78.8) | |Z|1425| |NPC|7995|
C Saving Sharpbeak |QID|2994| |N|Head down the tunnel and find (npc:8023) (57.0, 68.0) (53.5, 67.0) (66.0, 62.0) | |Z|1425| |NPC|8023|
C The Ancient Egg |QID|4787| |N|Collect (item:12402) at {Jintha'Alor} (58.6, 79.1)| |Z|1425|

R Aerie Peak |TID|2994| |N|Travel to {Aerie Peak} (9.8, 44.5)| |Z|1425|
T Saving Sharpbeak |QID|2994| |N|(npc:5636) in {Aerie Peak} (9.8, 44.5)| |Z|1425|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end