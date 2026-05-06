local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_48_52_Sunken_Temple")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Sunken Temple (48-52)", "Blackrock Depths: Prison (52-55)", "Horde", nil, "I", nil, function()
return [[

N Level 48 Required |N|You will need to be at least level 48 to pick up the following quests| |QID|3380| |PL|48|

R Camp Mojache |QID|3444| |N|Travel to {Camp Mojache} in {Feralas} (75.2, 43.7)| |Z|1444|
A The Sunken Temple |QID|3380| |N|(npc:8115) in {Camp Mojache} (74.5, 43.4)| |Z|1444| |NPC|8115|

R Tanaris |QID|3444| |N|Travel to {Tanaris} (75.2, 43.7)| |Z|1444|
T The Sunken Temple |QID|3380| |N|(npc:7771) in {Tanaris} (52.7, 45.9)| |Z|1446| |NPC|7771|
A The Stone Circle |QID|3444| |N|(npc:7771) in {Tanaris} (52.7, 45.9)| |Z|1446| |NPC|7771|

R Ratchet |QID|3444| |N|Travel to {Ratchet} (62.5, 38.5)| |Z|1413|
C The Stone Circle |QID|3444| |N|Get the (item:10556) from Marvon's Chest (62.5, 38.5)| |Z|1413| |OBJ|2450|

R Gadgetzan |QID|3444| |N|Travel to {Tanaris} (52.7, 45.9)| |Z|1446| 
T The Stone Circle |QID|3444| |N|(npc:7771) in {Tanaris} (52.7, 45.9)| |Z|1446| |NPC|7771|
A Into the Depths |QID|3446| |N|(npc:7771) in {Tanaris} (52.7, 45.9)| |Z|1446| |NPC|7771|
A Secret of the Circle |QID|3447| |N|(npc:7771) in {Tanaris} (52.7, 45.9)| |Z|1446| |NPC|7771|

R Stonard |QID|1424| |N|Travel to Stonard (46.1, 54.8)| |Z|1435|
A Pool of Tears |QID|1424| |N|(npc:1443) in {Stonard} (47.9, 55)| |Z|1435| |NPC|1443|

R Pool of Tears |QID|1424| |N|Travel to {Pool of Tears} (66.47, 59.14)|
C Pool of Tears |QID|1424| |N|Collect 10 (item:6175) in and around {Pool of Tears}, quite hard to spot look for objects like plate, urn, sack in each waypoint (66.47, 59.14) (65.40, 55.41) (65.89, 47.04) (68.27, 43.12) (73.76, 42.29) (75.51, 60.15) (74.21, 61.62)(73.58, 64.66) (71.52, 59.42)| |LOOP| |OBJ|653, 652, 651|

R Stonard |TID|1424| |N|Travel to Stonard (46.1, 54.8)| |Z|1435|
T Pool of Tears |QID|1424| |N|(npc:1443) in {Stonard} (47.9, 55)| |Z|1435| |NPC|1443|
A The Atal'ai Exile |QID|1429| |N|(npc:1443) in {Stonard} (47.9, 54.9)| |Z|1435| |NPC|1443|

R The Hinterlands |N|Travel to The Hinterlands (10, 54.5)| |Z|1425| |QID|1444|
T The Atal'ai Exile |QID|1429| |N|(npc:5598) in {Shadra'Alor} (33.74, 75.16)| |Z|1425| |NPC|5598|
A Return to Fel'Zerul |QID|1444| |N|(npc:5598) in {Shadra'Alor} (33.74, 75.16)| |Z|1425| |NPC|5598|
A Jammal'an the Prophet |QID|1446| |N|(npc:5598) in {Shadra'Alor} (33.74, 75.16)| |Z|1425| |NPC|5598|

R Revantusk Village |QID|7850| |N|Travel to {Raventusk Village} (78, 80) | |Z|1425| |QID|7850|
h Revantusk Village |QID|7850| |N|(npc:14731) in {Raventusk Village} (78.1, 81.4)| |Z|1425||NPC|14731|
A Dark Vessels |QID|7850| |N|(npc:14736) in {Raventusk Village} (78.2, 81.3)||Z|1425| |NPC|14736|
A Kidnapped Elder Torntusk! |QID|7845| |N|(npc:14736) in {Raventusk Village} (78.2, 81.3)| |Z|1425| |NPC|14736|
A Job Opening: Guard Captain of Revantusk Village |QID|7862| |N|Call to Arms! sign (79, 79.1)| |Z|1425|
A Wanted: Vile Priestess Hexx and Her Minions |QID|7861| |N|Call to Arms! sign (79, 79.1)| |Z|1425|
A Separation Anxiety |QID|7849| |N|(npc:14741) in {Raventusk Village} (79.1, 79.6)| |Z|1425| |NPC|14741|

N (item:19069) |QID|7849.1| |N|Collect (item:19069) from the Pile of Skulls in {Jintha'alor}<br/><br/>You may need help with quests in {Jintha'alor} (58.6, 64.9)| |L|19069| |Z|1425| |OBJ|293|
N (item:19070) |QID|7849.2| |N|Collect (item:19070) from the Pile of Bones in {Jintha'alor}<br/><br/>You may need help with quests in {Jintha'alor} (62.2, 75.5)| |L|19070| |Z|1425| |OBJ|293|
C Wanted: Vile Priestess Hexx and Her Minions |QID|7861| |N|Kill (npc:7995) and 20 (npc:2648) in {Jintha'alor}<br/><br/>You may need help with quests in {Jintha'alor} (59, 78)| |Z|1425| |W| |NPC|7995, 2648|

T Kidnapped Elder Torntusk! |N|(npc:14757) in {Jintha'alor} (58.8, 79.3)| |QID|7845| |Z|1425| |NPC|14757|
A Recover the Key! |QID|7846| |N|(npc:14757) in {Jintha'alor} (58.8, 79.3)| |QID|7846| |Z|1425| |NPC|14757|
C Recover the Key! |QID|7846| |N|Kill (npc:10802) in {Jintha'alor} and get the (item:19064) (57.5, 86.7)| |Z|1425| |NPC|10802|
C The Ancient Egg |QID|4787| |N|Get the (item:12402) (57.5, 86.7)| |Z|1425| |O|
T Recover the Key! |QID|7846| |N|(npc:14757) in {Jintha'alor} (58.8, 79.3)| |Z|1425| |NPC|14757|
A Return to Primal Torntusk |QID|7847| |N|(npc:14757) in {Jintha'alor} (58.8, 79.3)| |Z|1425| |NPC|14757)|

C Job Opening: Guard Captain of Revantusk Village |QID|7862| |N|Kill all the required Trolls in {Jin'Althor} (63.4, 73.0)| |Z|1425| |W| |NPC|2643, 2645, 2646, 2647|
C Dark Vessels |QID|7850| |N|Get 5 (item:19071) it is scattered all over {Jin'Althor} (63.4, 73.0)| |Z|1425| |W|

R Revantusk Village |QID|7850| |N|Travel to {Raventusk Village} (78.2, 81.3)|
T Dark Vessels |QID|7850| |N|(npc:14736) in {Raventusk Village} (78.2, 81.3)| |Z|1425| |NPC|14736|
T Job Opening: Guard Captain of Revantusk Village |QID|7862| |N|Call to Arms! (79, 79.1)| |Z|1425|
T Wanted: Vile Priestess Hexx and Her Minions |QID|7861| |N|Call to Arms! (79, 79.1)||Z|1425|
T Separation Anxiety |QID|7849| |N|(npc:14741) in {Raventusk Village} (79.1, 79.6)| |Z|1425| |NPC|14741|
T Return to Primal Torntusk |QID|7847| |N|(npc:14736) in {Raventusk Village} (78.2, 81.3)| |Z|1425| |NPC|14736|

C Summoning Shadra |QID|2937| |N|You will need a group to kill (npc:2707) as it is a level 55 Elite NPC, if you're able to kite well you can solo it. You can only summon the NPC once with the scroll, you will have to get another scroll from Orgrimmar to resummon. If you don't have any help you will just have to abandon this quest  (34, 73)| |U|9323| |Z|1425| |NPC|2707|

R Tarren Mill |QID|2938| |N|Travel to {Tarren Mill} (61.5, 19.2)| |Z|1424|
T Summoning Shadra |QID|2937| |N|(npc:2216) in {Tarren Mill} (61.5, 19.2)| |Z|1424| |NPC|2216|
A Venom to the Undercity |QID|2938| |N|(npc:2216) in {Tarren Mill} (61.5, 19.2)| |Z|1424| |NPC|2216|

R Undercity |QID|2938| |N|Travel to {Undercity} (61.5, 19.2)| |Z|1424|
T Venom to the Undercity |QID|2938| |N|(npc:2055) in {Undercity} (49.6, 68.5)| |Z|1458| |NPC|2055|

R Gadgetzan  |QID|3528| |N|Travel to {Tanaris} (66.9, 22.4)| |Z|1446|
T The Ancient Egg |QID|4787| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446| |O| |NPC|8579|
A The God Hakkar |QID|3528| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446| |PRE|4787| |NPC|8579|

R Stonard |N|Gringer (26.9, 77.1)| |Z|1434| |QID|1445|
T Return to Fel'Zerul |N|(npc:1443) in {Stonard} (47.9, 55)| |Z|1435| |QID|1444|
A The Temple of Atal'Hakkar |N|(npc:1443) in {Stonard} (47.9, 55)| |Z|1435| |QID|1445|

R Sunken Temple |QID|3447| |N|Zone into {Sunken Temple} Dungeon (69.45, 56.34)| |Z|1435| |I|
C Secret of the Circle |QID|3447| |N|Activate the statues on the 2nd floor in this order S, N, SW, SE, NW, NE, then you have to go back down to the bottom floor, a good idea is to have everybody jump down on the bottom floor except for 1 person who can activate the last statue, and kill the boss| |DMAP|Sunken_Temple_H|
T Secret of the Circle |QID|3447| |N|Idol of Hakkar| |Z|1444| |OBJ|212| |DMAP|Sunken_Temple_H|
T Into the Depths |QID|3446| |N|Altar of Hakkar at the bottom floor| |Z|1444| |OBJ|2615| |DMAP|Sunken_Temple_H|
C Jammal'an the Prophet |QID|1446| |N|Travel to the northern part of the {Sunken Temple} and kill 6 Atalai Defenders which must be defeated to remove the force field then kill (npc:5710) and collect (item:6212), he is on the Fourth floor on the very right side of the room| |Z|1425| |DMAP|Sunken_Temple_H| |NPC|5710|
C The God Hakkar |QID|3528| |N|Kill the (npc:8443) and collect (item:10663)<br/><br/>To summon him use the (item:10465) on the temple fourth floor on the left side of the map within the circle, You must advise the party to loot every NPC for the blood & click on the flames<br/><br/>Use (item:10663) in your inventory to fill the egg||U|10465| |Z|1446| |PRE|4787| |DMAP|Sunken_Temple_H| |NPC|8443|
K (npc:5709) |QID|3373| |N|Defeat (npc:5710) and the two drakes that spawn afterwards in order to fight (npc:5709), make sure you clear all the dragons in the large room first as they will all agro if you attack (npc:5709)<br/><br/>Collect (item:10454) from (npc:5709)| |L|10454| |DMAP|Sunken_Temple_H| |NPC|5710, 5709|
A The Essence of Eranikus |QID|3373| |N|Use (item:10454) to accept quest| |U|10454| |O| |DMAP|Sunken_Temple_H|
T The Essence of Eranikus |QID|3373| |N|Essence Font, the back corner in the same room as Eranikus| |O| |DMAP|Sunken_Temple_H|
C The Temple of Atal'Hakkar |QID|1445| |N|Collect 20 (item:6181) from any of enemies in the Sunken Temple| |Z|1435| |DMAP|Sunken_Temple_H|

R Stonard |TID|1445| |N|Teleport back to Stonard (47.9, 55)| |Z|1435|
T The Temple of Atal'Hakkar |TID|1445| |N|(npc:1443) in {Stonard} (47.9, 55)| |Z|1435| |NPC|1443|

R The Hinterlands |TID|1446| |N|Travel to The Hinterlands (33.7, 75.2)| |Z|1425|
T Jammal'an the Prophet |QID|1446| |N|(npc:5598) in {The Hinterlands} (33.7, 75.2)| |Z|1425| |NPC|5598|

R Gadgetzan |TID|3528| |N|Travel to {Gadgetzan} (66.9, 22.4)| |Z|1446| |PRE|4787|
T The God Hakkar |QID|3528| |N|(npc:8579) in {Tanaris} (66.9, 22.4)| |Z|1446| |PRE|4787| |NPC|8579|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end