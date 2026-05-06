local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_31_32_ThousandNeedles")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 30-40|r", "1441(31-32)#1441(31-32)#1441(31-32)", "1443(32-34)#1443(32-34)#1443(32-34)", "Horde", nil, "L", nil, function()
return [[

R The Crossroads |OID|1362| |N|Travel to {The Crossroads} (51.09, 29.59)| |Z|1413| 
A The Swarm Grows (1) |QID|1145| |N|(npc:3428) in {The Crossroads} (51.09, 29.59)| |Z|1413| |NPC|3428|
T Regthar Deathgate |QID|1361| |N|(npc:3389) in {The Crossroads} (45.34, 28.43)| |Z|1413| |O| |NPC|3389|
A The Kolkar of Desolace |QID|1362| |N|(npc:3389) in {The Crossroads} (45.34, 28.43)| |Z|1413| |PRE|1361| |NPC|3389|

R Mirage Raceway |QID|1175| |N|Travel to {Mirage Raceway} (77.82, 77.18)| 
A A Bump in the Road |QID|1175| |N|(npc:4629) in {Mirage Raceway} (81.59, 77.86)| |NPC|4629|
A Hardened Shells |QID|1105| |N|(npc:4453) in {Mirage Raceway} (78.14, 77.07)| |NPC|4453|
A Load Lightening |QID|1176| |N|(npc:4630) in {Mirage Raceway} (80.14, 75.86)| |NPC|4630|
A Rocket Car Parts |QID|1110| |N|(npc:4452) in {Mirage Raceway} (77.82, 77.18)| |NPC|4452|
A Salt Flat Venom |QID|1104| |N|(npc:4454) in {Mirage Raceway} (78.04, 77.08)| |NPC|4454|

N As you go... |AYG|1175| |QID|1110| |N|Collect 30 (item:5798) through out {The Shimmering Flats}<br/><br/>You can complete the quests below in any order, click on the green button to switch quest waypoints and targets| 
C Salt Flat Venom |QID|1104| |N|Kill (npc:4140) and (npc:4139) in {The Shimmering Flats} for 6 (item:5794) (72, 75)| |W| |NPC|4140, 4139|
C Hardened Shells |QID|1105| |N|Kill (npc:4142), (npc:4143) and (npc:4144) in {The Shimmering Flats} for 9 (item:5795) (82, 54)| |W| |NPC|4142, 4143, 4144|
C Load Lightening |QID|1176| |N|Kill (npc:4154) and (npc:4158) for 10 (item:5848) in {The Shimmering Flats} (87, 66)| |W| |NPC|4154, 4158|
C A Bump in the Road |QID|1175| |N|Kill the required Saltstone crocs, (npc:4150) are found bottom part of the map and (npc:4147) are found top of the map (76, 87) (86.4, 60.1) (73, 59)| |LOOP| |NPC|4147, 4151, 4150|
R The Shimmering Flats |QID|1175| |N|Travel to {The Shimmering Flats} (88, 75)|
C Rocket Car Parts |QID|1110| |N|Collect 30 (item:5798) through out {The Shimmering Flats} (87, 77) (86, 60) (77.5, 54) (70, 62) (72, 78) (78, 85)| |LOOP| |OBJ|450, 453, 454, 449|

T Rocket Car Parts |QID|1110| |N|(npc:4452) in {Mirage Raceway} (77.85, 77.22)| |NPC|4452|
A Wharfmaster Dizzywig |QID|1111| |N|(npc:4452) in {Mirage Raceway} (77.85, 77.22)| |NPC|4452|
A Hemet Nesingwary |QID|5762| |N|(npc:4452) in {Mirage Raceway} (77.85, 77.22)| |NPC|4452|
T Salt Flat Venom |QID|1104| |N|(npc:4454) in {Mirage Raceway} (78.01, 77.04)| |NPC|4454|
T Hardened Shells |QID|1105| |N|(npc:4453) in {Mirage Raceway} (78.12, 77.01)| |NPC|4453|
T Load Lightening |QID|1176| |N|(npc:4630) in {Mirage Raceway} (80.13, 75.87)| |NPC|4630|
A Goblin Sponsorship (1) |QID|1178| |N|(npc:4630) in {Mirage Raceway} (80.13, 75.87)| |NPC|4630|
T A Bump in the Road |QID|1175| |N|(npc:4629) in {Mirage Raceway} (81.59, 77.93)| |NPC|4629|
A Martek the Exiled |QID|1106| |N|(npc:4454) in {Mirage Raceway} (78.04, 77.08)| |NPC|4454|
A Encrusted Tail Fins |QID|1107| |N|(npc:4453) in {Mirage Raceway} (78.14, 77.07)| |NPC|4453|

N Level 32 |N|Make sure you are at least level 32, otherwise keep grinding in {The Shimmering Flats} (88, 75)| |W| |PL|32|

R Gadgetzan |N|Run South to Gadgetzan (51.6, 25.5)| |Z|1446|
f Gadgetzan |N|Speak to (npc:7824) and grab flight path for (npc:7824) (51.6, 25.5)| |Z|1446| |NPC|7824|
N (item:3710) |N|Store (item:3710) in the bank <br/><br/>Tick this step (54.2, 28.8)| |Z|1446| |L|3710| |O| |NPC|8124|
N (item:5799) |N|Store (item:5799) in the bank <br/><br/>Tick this step (54.2, 28.8)| |Z|1446| |L|5799| |O| |NPC|8124| --Gadgetzan
N (item:14542) |N|Store (item:14542) in the bank <br/><br/>Tick this step (54.2, 28.8)| |Z|1446| |L|14542| |O| |NPC|8124| --Gadgetzan

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "thousandneedles.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
