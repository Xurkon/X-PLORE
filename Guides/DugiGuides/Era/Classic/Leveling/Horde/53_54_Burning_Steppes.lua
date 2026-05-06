local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_53_54_Burning_Steppes")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1428(53-54)#1428(53-54)#1428(53-54)", "1448(54-54)#1448(54-54)#1448(54-54)", "Horde", nil, "L", nil, function()
return [[

--R Gadgetzan |TID|4504| |N|Travel to {Gadgetzan} (51.59, 26.77)| |Z|1446| |O|
T Super Sticky |QID|4504| |N|(npc:7876) in {Gadgetzan} (51.59, 26.77)| |Z|1446| |O| |NPC|7876|
T Bungle in the Jungle |QID|4496| |N|(npc:5594) in {Gadgetzan} (50.90, 26.97)| |Z|1446| |O| |NPC|5594|

R Elder Rise |QID|3761| |N|Travel to {Elder Rise} (78.54, 28.53)| |Z|1456|
A Un'Goro Soil |QID|3761| |N|(npc:5769) in {Elder Rise} (78.54, 28.53)| |Z|1456| |L|11018 20| |O| |NPC|5769|
T Un'Goro Soil |QID|3761| |N|(npc:9076) in {Elder Rise} (77.34, 22.09)| |Z|1456| |O| |NPC|9076|
A Morrowgrain Research (1) |QID|3782| |N|(npc:5769) in {Elder Rise} (79.30, 28.45)| |Z|1456| |PRE|3761| |NPC|5769|
T Morrowgrain Research (1) |QID|3782| |N|(npc:9087) in {Elder Rise} (70.99, 34.09)| |Z|1456| |PRE|3761| |NPC|9087|
A Morrowgrain Research (2) |QID|3786| |N|(npc:9087) in {Elder Rise} (70.98, 34.03)| |Z|1456| |PRE|3761| |NPC|9087|
N As you go... |AYG|4726| |QID|3786| |N|Use (item:11020) every 10 mins to create (item:11024), open it to get some herbs, you will need to get 10 (item:11040) using this method otherwise purchase from Auction<br/><br/>Tick this step| |U|11020| |PRE|3764| 

R Ratchet |TID|4147| |N|Travel to {Ratchet} (62.48, 38.66)| |Z|1413| |O| 
T Marvon's Workshop |QID|4147| |N|(npc:9087) in {Ratchet} (62.45, 38.72)| |Z|1413| |O| |NPC|9087|
A Zapper Fuel |QID|4146| |N|(npc:8496) in {Ratchet} (62.45, 38.72)| |Z|1413| |PRE|4147| |NPC|8496|
T Volcanic Activity |QID|4502| |N|(npc:8496) in {Ratchet} (62.45, 38.72)| |Z|1413| |O| |NPC|8496|
N (item:10575) |QID|4022| |N|Withdraw (item:10575) from the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|10575| |OO| |NPC|2625| --Booty bay
N (item:11018) |QID|3761| |N|Store (item:11018) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|3761| |O| |NPC|2625| --Booty bay
N (item:12235) |QID|4294| |N|Store (item:12235) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|12235| |O| |NPC|2625| --Booty bay
N (item:11133) |QID|3908| |N|Store (item:11133) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|11133| |O| |NPC|2625| --Booty bay
N (item:11477) |QID|4300| |N|Store (item:11477) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|11477| |O| |NPC|2625| --Booty bay

R Orgrimmar |TID|4300| |N|Travel to {Orgrimmar} (54.06, 68.41)| |Z|1454| |O|
h Valley of Strength |TID|4300| |N|Speak to (npc:6929) set hearth in {Valley of Strength} (54.06, 68.41)| |Z|1454| |O| |NPC|6929|
T Bone-Bladed Weapons |QID|4300| |N|(npc:8659) in {The Drag} (55.57, 34.18)| |Z|1454| |O| |NPC|8659|
A Betrayed (1) |QID|3504| |N|(npc:4485) in {Valley of Honor} (75.15, 34.30)| |Z|1454| |NPC|4485|

R The Apothecarium |OID|4133| |N|Travel to {The Apothecarium} in {Undercity} (50.07, 68.11)| |Z|1458|
A Vivian Lagrave |QID|4133| |N|(npc:5204) in {The Apothecarium} (50.07, 68.11)| |Z|1458| |NPC|5204|

R Kargath |TID|4133| |N|Travel to {Kargath} (2.91, 47.78)| |Z|1418|
T Vivian Lagrave |QID|4133| |N|(npc:9078) in {Kargath} (2.91, 47.78)| |Z|1418| |NPC|9078|
--A Lost Thunderbrew Recipe |QID|4134| |N|(npc:9078) in {Kargath} (2.91, 47.78)| |Z|1418| |NPC|9078|
A The Rise of the Machines |QID|4061| |N|(npc:9079) in {Kargath} (3.01, 47.83)| |Z|1418| |NPC|9079|
A Dreadmaul Rock |QID|3821| |N|(npc:9082) in {Kargath}, he sometimes patrol south and east of {Kargath} (3.36, 48.05)| |Z|1418| |W| |NPC|9082|

R Flame Crest |QID|4726| |N|Travel to {Flame Crest} (65.20, 23.89)| |Z|1428|
A Broodling Essence |QID|4726| |N|(npc:10267) in {Flame Crest} (65.20, 23.89)| |Z|1428| |NPC|10267|
A Tablet of the Seven |QID|4296| |N|(npc:9536) in {Flame Crest} (65.20, 23.89)| |Z|1428| |NPC|9536|
T Yuka Screwspigot |QID|4324| |N|(npc:9544) in {Flame Crest} (66.04, 21.94)| |Z|1428| |O| |NPC|9544|
C Broodling Essence |QID|4726| |N|Use (item:12284) on 8 (npc:7047) before you kill them in {Dreadmaul Rock} (78.49, 27.51)| |Z|1428| |U|12284| |W| |NPC|7047, 7048|
N (item:10575) |QID|4022| |N|This is found inside (item:10569) quest reward from an earlier quest 'Trinkets...', you need this to complete the next quest 'A Taste of Flame', if you don't have it you will need to kill a level 54 elite that will spawn if you talk to the quest giver| |L|10575| |U|10569| |OID|4023|

R Slither Rock |QID|4022| |N|Travel to {Slither Rock} (93.66, 32.10)| |Z|1428| |OID|4023|
A A Taste of Flame (1) |QID|4022| |N|(npc:9459) in {Slither Rock} (93.66, 32.10) (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
C A Taste of Flame (1) |QID|4022| |N|Speak to (npc:9459) with (item:10575) in {Slither Rock} (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
T A Taste of Flame (1) |QID|4022| |N|(npc:9459) in {Slither Rock} (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|

R Dreadmaul Rock |QID|3822| |N|Travel to {Dreadmaul Rock} (76.85, 32.88)| |Z|1428|
T Dreadmaul Rock |QID|3821| |N|(npc:9459) in {Dreadmaul Rock}, click on Sha'ni Proudtuck's Remains first (76.85, 32.88) (75.87, 38.04) (77.88, 38.34) (79.86, 45.50)| |Z|1428| |NPC|9459|
A Krom'Grul |QID|3822| |N|(npc:9136) in {Dreadmaul Rock} (79.86, 45.50)| |Z|1428| |NPC|9136|
C Krom'Grul |QID|3822| |N|Kill (npc:8977) and collect (item:11058) in {Dreadmaul Rock}, he spawns in 1 of 3 cave in {Dreadmaul Rock}<br/><br/>You can see the cave entrances on your world map (79.73, 47.34)| |Z|1428| |NPC|8977|

R Ruins of Thaurissan |QID|4061| |N|Travel to {Ruins of Thaurissan} (58.31, 37.03)| |Z|1428|
C The Rise of the Machines |QID|4061| |N|Kill (npc:7039) and collect (item:11266) in {Ruins of Thaurissan} (58.31, 37.03)| |Z|1428| |W| |NPC|7039|
C Tablet of the Seven |QID|4296| |N|Collect (item:11470) from the tablet in {Ruins of Thaurissan} (54.03, 40.69)| |Z|1428|

R Flame Crest |QID|4808| |N|Travel to {Flame Crest} (65.25, 23.98)| |Z|1428|
T Broodling Essence |QID|4726| |N|(npc:10267) in {Flame Crest} (65.25, 23.98)| |Z|1428| |NPC|10267|
A Felnok Steelspring |QID|4808| |N|(npc:10267) in {Flame Crest} (65.24, 23.88)| |Z|1428| |NPC|10267|
T Tablet of the Seven |QID|4296| |N|(npc:9536) in {Flame Crest} (65.19, 23.90)| |Z|1428| |NPC|9536|
T Krom'Grul |QID|3822| |N|(npc:9082) in {Kargath} (3.38, 48.04)| |Z|1418| |NPC|9082|
T The Rise of the Machines |QID|4061| |N|(npc:9079) in {Kargath} (3.06, 47.85)| |Z|1418| |NPC|9079|
A The Rise of the Machines |QID|4062| |N|(npc:9079) in {Kargath} (3.09, 47.89)| |Z|1418| |NPC|9079|
T The Rise of the Machines |QID|4062| |N|(npc:2921) in {The Dustbowl} (25.95, 44.91)| |Z|1418| |NPC|2921|

R Valormok |QID|3505| |N|Travel to {Valormok} in (map:1447) (22.28, 51.50)| |Z|1447| 
T Betrayed (1) |QID|3504| |N|(npc:8576) in {Valormok} (22.28, 51.48)| |Z|1447| |NPC|8576|
A Betrayed (2) |QID|3505| |N|(npc:8576) in {Valormok} (22.28, 51.50)| |Z|1447| |NPC|8576|

R Legash Encampment |QID|3601| |N|Travel to {Legash Encampment} (46.22, 39.47) (44.89, 36.56) (53.28, 20.15)| |Z|1447|
A Kim'jael Indeed! |QID|3601| |N|(npc:8420) in {Legash Encampment} (53.41, 21.77)| |Z|1447| |NPC|8420|
N Find Magus Rimtori's camp |QID|3505.1| |N|Find Magus Rimtori's camp in {Thalassian Base Camp} (59.35, 30.97)| |Z|1447|
C Kim'jael Indeed! |QID|3601| |N|Collect all the required parts from the crates in {Thalassian Base Camp} (58.57, 28.99)| |Z|1447| |W| |OBJ|285|
C Betrayed (2) |QID|3505| |N|Kill 10 (npc:6199) and 10 (npc:6198) in {Thalassian Base Camp} (58.31, 28.45)| |Z|1447| |W| |NPC|6199, 6198|
T Betrayed (2) |QID|3505| |N|Kaldorei Tome of Summoning in {Thalassian Base Camp} (59.49, 31.28)| |Z|1447|
A Betrayed (3) |QID|3506| |N|Kaldorei Tome of Summoning in {Thalassian Base Camp} (59.49, 31.28)| |Z|1447|
C Betrayed (3) |QID|3506| |N|Destroy the 3 Arcane Focusing Crystal to summon (npc:8578), kill her and collect (item:10597) in {Thalassian Base Camp} (59.51, 31.41)| |Z|1447| |NPC|8578| |OBJ|2650|

R Legash Encampment |QID|5534| |N|Travel to {Legash Encampment} (46.22, 39.47) (44.89, 36.56) (53.28, 20.15)| |Z|1447|
T Kim'jael Indeed! |QID|3601| |N|(npc:8420) in {Legash Encampment} (53.44, 21.80)| |Z|1447| |NPC|8420|
A Kim'jael's "Missing" Equipment |QID|5534| |N|(npc:8420) in {Legash Encampment} (53.44, 21.80)| |Z|1447| |NPC|8420|

R The Shattered Strand |QID|5534| |N|Travel to {The Shattered Strand} (45.42, 37.15)| |Z|1447|
C Kim'jael's "Missing" Equipment |QID|5534| |N|Kill Nagas in {The Shattered Strand} until you collect (item:13815) (48.68, 42.70)| |Z|1447| |W| |NPC|6195, 6196|

R Valormok |QID|3507| |N|Travel to {Valormok} (45.90, 38.51) (22.29, 51.45)| |Z|1447|
T Betrayed (3) |QID|3506| |N|(npc:8576) in {Valormok} (22.29, 51.45)| |Z|1447| |NPC|8576|
A Betrayed (4) |QID|3507| |N|(npc:8576) in {Valormok} (22.29, 51.45)| |Z|1447| |NPC|8576|

R Legash Encampment |TID|5534| |N|Travel to {Legash Encampment} (46.22, 39.47) (44.89, 36.56) (53.28, 20.15)| |Z|1447|
T Kim'jael's "Missing" Equipment |QID|5534| |N|(npc:8420), in {Legash Encampment} (53.44, 21.81)| |Z|1447| |NPC|8420|

N Level 54 |N|Grind to level 54 before you leave (map:1447), kill the (npc:6199) and (npc:6198) for easy grinding (58.31, 28.45)| |Z|1447| |W| |NPC|6199, 6198| |PL|54|

R Valley of Honor |TID|3507| |N|Travel to {Valley of Honor} in {Orgrimmar} (75.20, 34.21)| |Z|1454| 
T Betrayed (4) |QID|3507| |N|(npc:4485) in {Valley of Honor} (75.20, 34.21)| |Z|1454| |NPC|4485|
N (item:11477) |QID|4300| |N|Withdraw (item:11477) from the bank<br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|11477| |OO| |NPC|3309| --Orgrimmar
N (item:11133) |QID|3908| |N|Withdraw (item:11133) from the bank<br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|11477| |OO| |NPC|3309| --Orgrimmar

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "burningsteppes.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
