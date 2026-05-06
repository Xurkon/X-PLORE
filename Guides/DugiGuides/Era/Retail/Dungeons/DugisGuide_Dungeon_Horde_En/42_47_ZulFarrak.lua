local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_42_47_ZulFarrak")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Zul'Farrak (42-47)", "Maraudon (45-49)", "Horde", nil, "I", nil, function()
return [[

N Level 40 Required |N|You will need to be at least level 40 to pick up the following quests| |QID|2770| |PL|40|

R Dustwallow Marsh |N|Travel to Dustwallow Marsh (46, 57.1)| |Z|1445| |QID|2770| |C|Mage| 
A Tiara of the Deep |N|(npc:6546) in {Dustwallow Marsh} (46, 57.1)|  |QID|2846| |Z|1445| |C|Mage| |NPC|6546|

R Mirage Raceway |QID|2770| |N|Travel to {Mirage Raceway} (78.13, 77.10)| |Z|1441|
A Gahz'rilla |QID|2770| |N|(npc:4453) in {Mirage Raceway} (78.13, 77.10)| |Z|1441| |NPC|4453|

R Gadgetzan |N|Travel to Gadgetzan (51.6, 25.4)| |Z|1446| |QID|2768|
A Divino-matic Rod |QID|2768| |N|(npc:7407) in {Gadgetzan} (52.44, 28.48)| |Z|1446| |NPC|7407|
A Scarab Shells |QID|2865| |N|(npc:7876) in {Gadgetzan} (51.6, 26.8)| |Z|1446| |NPC|7876|
A Troll Temper |QID|3042| |N|(npc:7804) in {Gadgetzan} (51.5, 28.7)| |Z|1446| |NPC|7804|
A Screecher Spirits |QID|3520| |N|(npc:8579) in {Gadgetzan} (66.9, 22.4)| |Z|1446| |NPC|8579|

R Feralas |QID|7067| |N|Travel to Feralas (88.4, 41.1)| |Z|1444|
C Screecher Spirits |QID|3520| |N|Kill (npc:5308) and use (item:10699), then interact with the spirit in {The Forgotten Coast} (46.32, 49.78) (46.43, 49.08)| |Z|1444| |U|10699| |W| |NPC|5308|

--R Desolace |QID|7067| |N|Travel to Desolace (41.4, 89)| |Z|1443| |QID|7067|
--A The Pariah's Instructions |QID|7067| |N|(npc:13717) in {Desolace} (43.4, 84.8) (50.5, 86.6)| |LOOP| |Z|1443| |NPC|13717|

R The Hinterlands |N|Travel to The Hinterlands (10, 54.5)| |Z|1425| |QID|2933|
A Venom Bottles |QID|2933| |N|Venom Bottle (23, 55)| |Z|1425|

R Tarren Mill |QID|2934| |N|Travel to {Tarren Mill} (61.46, 19.15)| |Z|1424| 
T Venom Bottles |QID|2933| |N|(npc:2216) in {Tarren Mill} (61.46, 19.15)| |Z|1424| |NPC|2216|
A Undamaged Venom Sac |QID|2934| |N|(npc:2216) in {Tarren Mill} (61.46, 19.15)| |Z|1424| |NPC|2216|

R Shadra'Alor |QID|2934| |N|Travel to {Shadra'Alor} (10.31, 54.81) (23.77, 56.50)(35.81, 63.58) (34.96, 68.43)| |Z|1425|
C Undamaged Venom Sac |QID|2934| |N|Kill (npc:2686) and collect (item:9322) in {Shadra'Alor} (34.96, 68.43)| |Z|1425| |W| |NPC|2686|

R Tarren Mill |QID|2934| |N|Travel to {Tarren Mill} (61.46, 19.15)| |Z|1424| 
T Undamaged Venom Sac |QID|2934| |N|(npc:2216) in {Tarren Mill} (61.47, 19.10)| |Z|1424| |NPC|2216|
A Consult Master Gadrin |QID|2935| |N|(npc:2216) in {Tarren Mill} (61.47, 19.10)| |Z|1424| |R|Troll| |NPC|2216|

R Orgrimmar |QID|2935| |N|Travel to {Orgrimmar} (55.9, 74.8)| |Z|1411|
T Consult Master Gadrin |QID|2935|  |N|(npc:3188) in {Orgrimmar} (55.9, 74.8)| |Z|1411| |NPC|3188|
A The Spider God |QID|2936| |N|(npc:3188) in {Orgrimmar} (55.9, 74.8)| |Z|1411| |NPC|3188|

R Steamwheedle Port  |QID|3527| |N|Travel to {Steamwheedle Port} (66.99, 22.36)| |Z|1446| |REACH|
T Screecher Spirits |QID|3520| |N|(npc:8579) in {Steamwheedle Port} (66.99, 22.36)| |Z|1446| |NPC|8579|
A The Prophecy of Mosh'aru |QID|3527| |N|(npc:8579) in {Steamwheedle Port} (66.99, 22.36)| |Z|1446| |NPC|8579|

R Zul'Farrak |QID|3042| |N|Zone into {Zul'Farrak} dungeon (38.70, 20.04)| |Z|1446| |I|

N (item:10660)  |QID|3527.1| |N|Kill (npc:7272) and collect (item:10660) in {Zul'Farrak}| |L|10660| |DMAP|Zulfarrak_H|
C The Spider God  |QID|2936| |N|Kill (npc:7272) first so you can read the tablet in the middle of the scarab room| |DMAP|Zulfarrak_H| |NPC|7272|
C Divino-matic Rod  |QID|2768| |N|Kill the(npc:7274) at the top of the Temple and get the (item:8444)| |Z|1446| |L|8444| |DMAP|Zulfarrak_H| |NPC|7274|
C Divino-matic Rod  |QID|2768| |N|Use the  (item:8444) free (npc:7604) from his cage, once the event is over you can talk to (npc:7604) to pick a fight<br/><br/>Do not talk to (npc:7604) until everybody is ready, Kill off the priest and lock first, then the rogue and finally (npc:7604) himself. Loot his body for the (item:8548)| |Z|1446| |DMAP|Zulfarrak_H| |NPC|7604|
C Gahz'rilla  |QID|2770| |N|Ring the gong to summon and kill (npc:7273) and loot (item:8707)<br/><br/>You will need (item:9241) to ring the gong| |Z|1441| |L|9241| |O| |DMAP|Zulfarrak_H| |NPC|7273|
C Tiara of the Deep   |QID|2846| |N|Kill (npc:7795) who is in the same room as (npc:7273) and collect (item:9234)| |C|Mage| |DMAP|Zulfarrak_H| |NPC|7795|
N (item:10661)  |QID|3527|  |N|Collect (item:10661) dropped by (npc:7795) who is in the same room as (npc:7273)| |DMAP|Zulfarrak_H| |NPC|7795|
C Scarab Shells |QID|2865| |N|Collect 5 (item:9238) dropped by the (npc:7269) in the undead area| |Z|1446| |DMAP|Zulfarrak_H| |NPC|7269|
C Troll Temper |QID|3042| |N|Collect 20 (item:9523) by any troll from {Zul'Farrak} you should get 20 after 1 run| |Z|1446| |DMAP|Zulfarrak_H| |NPC|5648, 5649, 5650, 7246|

R Gadgetzan |QID|4787| |N|Travel to Gadgetzan (51.6, 26.8)||Z|1446|
T Divino-matic Rod |QID|2768| |N|(npc:7407) in {Gadgetzan} (52.44, 28.48)| |Z|1446| |NPC|7407|
T Scarab Shells |QID|2865| |N|(npc:7876) in {Gadgetzan} (51.6, 26.8)| |Z|1446| |NPC|7876|
T Troll Temper |QID|3042| |N|(npc:7804) in {Gadgetzan} (51.5, 28.7)| |Z|1446| |NPC|7804|

T The Prophecy of Mosh'aru |QID|3527| |N|(npc:8579) in {Steamwheedle Port} (66.99, 22.36)| |Z|1446| |NPC|8579|
A The Ancient Egg |N|(npc:8579) in {Steamwheedle Port} (66.99, 22.36)| |Z|1446| |NPC|8579|

R Mirage Raceway |TID|2770| |N|Travel to {Mirage Raceway} (78.13, 77.10)| |Z|1441|
T Gahz'rilla |QID|2770| |N|(npc:4453) in {Mirage Raceway} (78.13, 77.10)| |Z|1441| |NPC|4453|

R Brackenwall Village |TID|2846| |N|Travel to {Brackenwall Village} (46, 57.1)| |Z|1445||C|Mage| 
T Tiara of the Deep |QID|2846| |N|(npc:6546) in {Brackenwall Village} (46, 57.1)| |Z|1445| |C|Mage| |NPC|6546|

R Orgrimmar |QID|2937| |N|Travel to {Orgrimmar} (55.9, 74.8)| |Z|1411|
T The Spider God |QID|2936| |N|(npc:3188) in {Orgrimmar} (55.9, 74.8)| |Z|1411| |NPC|3188|
A Summoning Shadra |QID|2937| |N|(npc:3188) in {Orgrimmar} (55.9, 74.8)| |Z|1411| |NPC|3188|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end