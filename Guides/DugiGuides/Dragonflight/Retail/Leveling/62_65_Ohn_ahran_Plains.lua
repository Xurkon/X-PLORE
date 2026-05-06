local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_En_62_65_Ohn'ahran_Plains")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "2023(20-70)#2023(20-70)#2023(20-70)", "2024(30-70)#2024(30-70)#2024(30-70)", nil, nil, "L", "nil", function()
return [[

N Prerequisite Required |N|You must complete The Dragonscale Expedition (intro) first.<br/>(guide:"The Dragonscale Expedition (60)")| |OID|69910,70125|

--Into the Plains
R Rubyscale Outpost |TID|65779| |N|Travel to {Rubyscale Outpost} (48.29, 88.65)| |Z|2022|
A Into the Plains |QID|65779| |N|(npc:185878) in {Rubyscale Outpost} (48.29, 88.65)| |Z|2022| |NPC|185878|
T Into the Plains |QID|65779| |N|(npc:185882) in {Ohn'ahran Plains} (77.74, 23.92)| |Z|2023| |NPC|185882|
A Proving Oneself |QID|65780| |N|(npc:185882) in {Ohn'ahran Plains} (77.74, 23.92)| |Z|2023| |NPC|185882|

R Rubyscale Outpost |TID|65795| |N|Travel to {Rubyscale Outpost} (48.67, 87.91)| |Z|2022| |OID|72267|
T Next Steppes |QID|65795| |N|(npc:185878) in {Rubyscale Outpost} (48.29, 88.57)| |Z|2022| |NPC|185878| |OID|72267|
A Into the Plains |QID|65779| |N|(npc:185878) in {Rubyscale Outpost} (48.29, 88.57)| |Z|2022| |NPC|185878| |PRE|65795|
T Into the Plains |QID|65779| |N|(npc:185882) in (map:2023) (77.73, 23.85)| |Z|2023| |NPC|185882|
A Proving Oneself |QID|65780| |N|(npc:185882) in (map:2023) (77.73, 23.85)| |Z|2023| |NPC|185882| |PRE|65780|
C Proving Oneself |QID|65780| |N|Kill (npc:185883) in (map:2023) (78.25, 27.17)| |Z|2023|
T Proving Oneself |QID|65780| |N|(npc:185882) in (map:2023) (78.66, 25.43)| |Z|2023| |NPC|185882|
A Welcome at Our Fire |QID|65783| |N|(npc:185882) in (map:2023) (78.66, 25.43)| |Z|2023| |NPC|185882| |PRE|65780|

R Timberstep Outpost |TID|65783| |N|Travel to {Timberstep Outpost} (84.66, 26.20)| |Z|2023|
f Timberstep Outpost |TID|65783| |N|Speak to (npc:184630) and grab the {Timberstep Outpost} flight path (85.26, 24.13)| |Z|2023| |NPC|184630|
A Thieving Gorlocs |QID|65950| |N|(npc:186650) in {Timberstep Outpost} (84.37, 25.00)| |Z|2023| |NPC|186650|
A Sole Supplier |QID|65951| |N|(npc:186653) in {Timberstep Outpost} (84.37, 25.00)| |Z|2023| |NPC|186653|
A Nergazurai |QID|70319| |N|(npc:194904) in {Timberstep Outpost} (84.55, 25.31)| |Z|2023| |NPC|194904|
T Welcome at Our Fire |QID|65783| |N|(npc:194328) in (map:2023) (85.31, 25.37)| |Z|2023| |NPC|194328| |PRE|65780|
A The Shikaar |QID|70174| |N|(npc:194328) in (map:2023) (85.31, 25.37)| |Z|2023| |NPC|194328|

N (npc:181217) |QID|70174.1| |N|Speak to (npc:181217) in {Timberstep Outpost} (85.72, 25.32)| |Z|2023| |NPC|181217|

T The Shikaar |QID|70174| |N|(npc:181217) in {Timberstep Outpost} (85.72, 25.32)| |Z|2023| |NPC|181217|
A Making Introductions |QID|65801| |N|(npc:181217) in {Timberstep Outpost} (85.72, 25.32)| |Z|2023| |NPC|181217|
A Supplies for the Journey |QID|65802| |N|(npc:181217) in {Timberstep Outpost} (85.72, 25.32)| |Z|2023| |NPC|181217|

N As You Go... |AYG|65802| |QID|65801| |N|As you go, collect 4 Camp Provisions from around {Timberstep Outpost} and 5 Feralbloom Pods from the nearby woods| |Z|2023|
N (npc:186176) and (npc:186175) |QID|65801.2| |N|Speak to (npc:186176) and (npc:186175) in {Timberstep Outpost} (85.75, 26.57)| |Z|2023| |NPC|186176, 186175|
N (npc:186183) |QID|65801.3| |N|Speak to (npc:186183) in {Timberstep Outpost} (83.93, 25.86)| |Z|2023| |NPC|186183|
N (npc:184595) |QID|65801.1| |N|Speak to (npc:184595) in {Ohn'ahran Plains} (85.62, 20.85)| |Z|2023| |NPC|184595|
N Feralbloom Pod |QID|65802.1| |N|Collect 5 Feralbloom Pods in {Timberstep Outpost} (83.77, 23.29)| |Z|2023|
N Camp Provisions |QID|65802.2| |N|Collect 4 Camp Provisions in {Timberstep Outpost} (84.36, 23.07)| |Z|2023|

T Making Introductions |QID|65801| |N|(npc:185882) in {Timberstep Outpost} (84.69, 22.85)| |Z|2023| |NPC|185882|
T Supplies for the Journey |QID|65802| |N|(npc:185882) in {Timberstep Outpost} (84.69, 22.85)| |Z|2023| |NPC|185882|
A Toward the City |QID|65803| |N|(npc:185882) in {Timberstep Outpost} (84.69, 22.85)| |Z|2023| |NPC|185882|

R Mirewood Fen |TID|65803| |N|Travel to {Mirewood Fen} (83.15, 23.79)| |Z|2023|
N Caravan |QID|65803.1| |N|Meet with the caravan in {Mirewood Fen} (83.15, 23.79)| |Z|2023|
N Listen |QID|65803.2| |N|Listen to the Shikaar stories as you walk with the caravan in {Wanderer's Steppe} (75.70, 31.01)| |Z|2023|
C Toward the City |QID|65803| |N|Travel alongside the Shikaar caravan to {Wanderer's Steppe} (75.70, 31.01)| |Z|2023|

T Toward the City |QID|65803| |N|(npc:185882) in {Wanderer's Steppe} (75.70, 31.65)| |Z|2023| |NPC|185882|
A For Food and Rivalry |QID|65804| |N|(npc:185882) in {Wanderer's Steppe} (75.70, 31.65)| |Z|2023| |NPC|185882|
A Mysterious Beast |QID|70185| |N|Mysterious Paw Print in {Wanderer's Steppe} (76.69, 31.84)| |Z|2023|

C For Food and Rivalry |QID|65804| |N|Collect 30 (item:191100) from wildlife in {Wanderer's Steppe} (78.65, 31.23)| |Z|2023| |NPC|187939|

R Mudfin Village |TID|65951| |N|Travel to {Mudfin Village} (80.49, 30.64)| |Z|2023|
C Sole Supplier |QID|65951| |N|Locate (npc:186649) in {Mudfin Village} (80.49, 30.64)| |Z|2023| |NPC|186649|

T Sole Supplier |QID|65951| |N|(npc:186649) in {Mudfin Village} (80.56, 30.74)| |Z|2023| |NPC|186649|

C Thieving Gorlocs |QID|65950| |N|Collect 30 (item:191541) in {Mudfin Village} (81.82, 30.96)| |Z|2023| |NPC|186679, 186690|

T Thieving Gorlocs |QID|65950| |N|(npc:186649) in {Mudfin Village} (80.56, 30.72)| |Z|2023| |NPC|186649|
A The Ora-cull |QID|65953| |N|(npc:186649) in {Mudfin Village} (80.56, 30.72)| |Z|2023| |NPC|186649|
A Release the Hounds |QID|65954| |N|(npc:186649) in {Mudfin Village} (80.56, 30.72)| |Z|2023| |NPC|186649|
A A Centaur's Best Friend |QID|65955| |N|(npc:186649) in {Mudfin Village} (80.56, 30.72)| |Z|2023| |NPC|186649|

N (npc:186649) |QID|65955.1| |N|Free (npc:186649) in {Mudfin Village} (80.59, 30.72)| |Z|2023| |NPC|186649|
N Bakar Collar |QID|65954.2| |N|Collect 2 Bakar Collar in {Mudfin Village} (82.24, 30.43)| |Z|2023|
N (npc:188729) |QID|65954.1| |N|Free 5 (npc:188729) from the cages in {Mudfin Village} (81.20, 29.75)| |Z|2023| |NPC|188729|
N (npc:187070) |QID|65955.2| |N|Free (npc:187070) in {Mudfin Village} (83.36, 32.39)| |Z|2023| |NPC|187070|
C The Ora-cull |QID|65953| |N|Collect 4 totems from (npc:186679) in {Mudfin Village} (81.21, 29.86)| |Z|2023| |NPC|186679|

T A Centaur's Best Friend |QID|65955| |N|(npc:186649) in {Mudfin Village} (83.41, 32.39)| |Z|2023| |NPC|186649|
T Release the Hounds |QID|65954| |N|(npc:186649) in {Mudfin Village} (83.41, 32.39)| |Z|2023| |NPC|186649|
T The Ora-cull |QID|65953| |N|(npc:186649) in {Mudfin Village} (83.40, 32.32)| |Z|2023| |NPC|186649|
A A Chief of Legends |QID|65952| |N|(npc:186649) in {Mudfin Village} (83.40, 32.32)| |Z|2023| |NPC|186649|

N (npc:186678) |QID|65952.1| |N|Kill (npc:186678) in {Mudfin Village} (81.90, 31.14)| |Z|2023| |NPC|186678|
C A Chief of Legends |QID|65952| |N|Kill (npc:186678) in {Mudfin Village} (81.90, 31.14)| |Z|2023| |NPC|186678|
L (item:191127) |QID|65952| |N|Loot (item:191127) from (npc:186678) in {Mudfin Village} (81.90, 31.14)| |L|191127| |Z|2023| |NPC|186678|

A Medallion of a Fallen Friend |QID|66005| |N|Auto Accept|
T A Chief of Legends |QID|65952| |N|(npc:186649) in {Mudfin Village} (83.42, 32.36)| |Z|2023| |NPC|186649|
T Medallion of a Fallen Friend |QID|66005| |N|(npc:186649) in {Mudfin Village} (83.42, 32.36)| |Z|2023| |NPC|186649|
A The Sole Mender |QID|65949| |N|(npc:186649) in {Mudfin Village} (83.42, 32.36)| |Z|2023| |NPC|186649|
A Return to Roscha |QID|66006| |N|(npc:186649) in {Mudfin Village} (83.42, 32.36)| |Z|2023| |NPC|186649|

C Return to Roscha |QID|66006| |N|Return the supplies to (npc:186650) in {Mudfin Village} (83.51, 32.19)| |Z|2023| |NPC|186650|

R Timberstep Outpost |TID|66006| |N|Travel to {Timberstep Outpost} (84.37, 25.00)| |Z|2023|
T Return to Roscha |QID|66006| |N|(npc:186650) in {Timberstep Outpost} (84.43, 25.02)| |Z|2023| |NPC|186650|
T The Sole Mender |QID|65949| |N|(npc:186650) in {Timberstep Outpost} (84.43, 25.02)| |Z|2023| |NPC|186650|

N (item:198795) |QID|70319.3| |N|Collect a (item:198795) from (npc:188089) in {Ohn'ahran Plains} (75.81, 22.10)| |Z|2023| |NPC|188089|
N (item:198792) |QID|70319.1| |N|Collect an (item:198792) from (npc:192854) in {Ohn'ahran Plains} (78.61, 24.46)| |Z|2023| |NPC|192854|
N (item:198793) |QID|70319.2| |N|Collect an (item:198793) from (npc:185903) in {Ohn'ahran Plains} (84.88, 18.16)| |Z|2023| |NPC|185903|
N (item:198794) |QID|70319.4| |N|Collect an (item:198794) from (npc:190943) in {Ohn'ahran Plains} (84.88, 18.16)| |Z|2023| |NPC|190943|

T Nergazurai |QID|70319| |N|(npc:194904) in {Timberstep Outpost} (84.55, 25.28)| |Z|2023| |NPC|194904|

C Mysterious Beast |QID|70185| |N|Kill (npc:194544) and collect (item:198517) in {Ohn'ahran Plains} (78.20, 35.28)| |Z|2023| |NPC|194544|

R Wanderer's Steppe |TID|65804| |N|Travel to {Wanderer's Steppe} (75.69, 31.66)| |Z|2022|
T For Food and Rivalry |QID|65804| |N|(npc:185882) in {Wanderer's Steppe} (75.69, 31.66)| |Z|2023| |NPC|185882|
T Mysterious Beast |QID|70185| |N|(npc:185882) in {Wanderer's Steppe} (75.69, 31.66)| |Z|2023| |NPC|185882|
A By Broken Road |QID|65940| |N|(npc:185882) in {Wanderer's Steppe} (75.69, 31.66)| |Z|2023| |NPC|185882|

C By Broken Road |QID|65940| |N|Travel with the Shikaar caravan to the river crossing in {Ohn'ahran Plains} (70.00, 38.10)| |Z|2023|

T By Broken Road |QID|65940| |N|(npc:184595) in {Ohn'ahran Plains} (69.98, 37.97)| |Z|2023| |NPC|184595|
A Connection to Ohn'ahra |QID|65805| |N|(npc:184595) in {Ohn'ahran Plains} (69.98, 37.97)| |Z|2023| |NPC|184595|

N (item:191103) |QID|65805.3| |N|Collect a (item:191103) from (npc:190961) in {Ohn'ahran Plains} (69.49, 34.54)| |Z|2023| |NPC|190961|
N (item:191102) |QID|65805.2| |N|Collect 8 (item:191102) from (npc:190708) in {Ohn'ahran Plains} (69.68, 36.62)| |Z|2023| |NPC|190708|
N (item:191101) |QID|65805.1| |N|Collect 4 (item:191101) in {Ohn'ahran Plains} (70.51, 37.77)| |Z|2023|

T Connection to Ohn'ahra |QID|65805| |N|(npc:184595) in {Ohn'ahran Plains} (69.98, 37.95)| |Z|2023| |NPC|184595|
A Omens on the Wind |QID|66848| |N|(npc:184595) in {Ohn'ahran Plains} (69.98, 37.95)| |Z|2023| |NPC|184595|

N (npc:184595) |QID|66848.1| |N|Speak to (npc:184595) in {Ohn'ahran Plains} (69.98, 37.95)| |Z|2023| |NPC|184595|
N Place Totems |QID|66848.2| |N|Place 3 Totems in {Ohn'ahran Plains} (69.88, 37.62)| |Z|2023|
N Ritual |QID|66848.3| |N|Complete the Ritual in {Ohn'ahran Plains} (69.88, 37.62)| |Z|2023|

T Omens on the Wind |QID|66848| |N|(npc:184595) in {Ohn'ahran Plains} (69.97, 37.96)| |Z|2023| |NPC|184595|
A Maruukai |QID|65806| |N|(npc:181217) in {Ohn'ahran Plains} (70.02, 38.00)| |Z|2023| |NPC|181217|

R Maruukai |TID|65806| |N|Travel to {Maruukai} (62.13, 39.60)| |Z|2023|
T Maruukai |QID|65806| |N|(npc:191283) in {Maruukai} (61.44, 39.54)| |Z|2023| |NPC|191283|
f Maruukai |TID|72429| |N|Speak to (npc:191263) grab the flight path {Maruukai} (62.96, 42.10)| |Z|2023| |NPC|191263|

R Emberwatch |TID|72483| |N|Travel to {Emberwatch} (66.25, 25.81)| |Z|2023|
f Emberwatch |TID|72483| |N|Speak to (npc:190049) and grab the flight path for {Emberwatch} (66.82, 25.24)| |Z|2023| |NPC|190049|
N Sundapple Copse Circuit |QID|72483.1| |N|Speak to (npc:190928) to start the trial (63.75, 30.51)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|190928|

R Rusza'thar Reach |TID|72483| |N|Travel to {Rusza'thar Reach} (84.66, 36.94)| |Z|2023|
f Rusza'thar Reach |TID|72483| |N|Speak to (npc:196259) and grab the flight path for {Rusza'thar Reach} (84.67, 36.90)| |Z|2023| |NPC|196259|
N Fen Flythrough |QID|72483.2| |N|Speak to (npc:191121) to start the trial (86.26, 35.82)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|191121|

R Pinewood Post |TID|72483| |N|Travel to Pinewood Post (80.73, 58.81)| |Z|2023|
f Pinewood Post |TID|72483| |N|Speak to (npc:191622) and grab the flight path for {Pinewood Post} (80.45, 57.91)| |Z|2023| |NPC|191622|
N Ravine River Run |QID|72483.3| |N|Speak to (npc:191165) to start the trial (80.89, 72.19)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|191165|

R Shady Sanctuary |TID|72483| |N|Travel to {Shady Sanctuary} (29.80, 57.73)| |Z|2023|
f Shady Sanctuary |TID|72483| |N|Speak to (npc:186487) and grab the flight path for {Shady Sanctuary} (29.83, 57.66)| |Z|2023| |NPC|186487|
N Emerald Gardens Ascent |QID|72483.4| |N|Speak to (npc:191247) to start the trial (25.71, 55.07)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|191247|

R Maruukai |TID|72483| |N|Travel to {Maruukai} (62.13, 39.60)| |Z|2023|
N Maruuki Dash |QID|72483.5| |N|Speak to (npc:191422) to start the trial (59.93, 35.55)<br/><b>Fly through 9 rings as fast as you can.| |Z|2023| |NPC|191422|

R Teerakai |TID|72483| |N|Travel to {Teerakai} (40.05, 61.24)| |Z|2023|
f Teerakai |TID|72483| |N|Speak to (npc:192865) and grab the flight path for {Teerakai} (40.00, 61.15)| |Z|2023| |NPC|191865|
N Mirror of the Sky Dash |QID|72483.6| |N|Speak to (npc:191511) to start the trial (47.49, 70.62)<br/><b>Fly through 9 rings as fast as you can.| |Z|2023| |NPC|191511|

N River Rapids Route |QID|72483.7| |N|Speak to (npc:196092) to start the trial (43.74, 66.76)<br/><b>Complete the circuit as fast as you can.| |Z|2023| |NPC|196092|

R Rusza'thar Reach |TID|72483| |N|Travel to {Rusza'thar Reach} (84.66, 36.94)| |Z|2023|
T The Ohn'ahran Plains Tour |QID|72483| |N|(npc:199118) in {Skytop Observatory} (88.08, 36.27)| |Z|2023| |NPC|199118|
A The Azure Span Tour |QID|72485| |N|(npc:199118) in {Skytop Observatory} (88.08, 36.27)| |Z|2023| |NPC|199118| |PRE|72485|

--Maruukai
R Maruukai |TID|66016| |N|Travel to {Maruukai} (62.13, 39.60)| |Z|2023|
A Clan Teerai |QID|66016| |N|(npc:191283) in {Maruukai} (61.44, 39.54)| |Z|2023| |NPC|191283|
A Clan Ohn'ir |QID|66017| |N|(npc:191283) in {Maruukai} (61.44, 39.54)| |Z|2023| |NPC|191283|
A Clan Nokhud |QID|66018| |N|(npc:191283) in {Maruukai} (61.44, 39.54)| |Z|2023| |NPC|191283|
A Orientation: Maruukai |QID|72429| |N|(npc:191283) in {Maruukai} (61.44, 39.54)| |Z|2023| |NPC|191283|
A Trouble In The Pines |QID|65837| |N|(npc:195524) in {Maruukai} (62.01, 41.82)| |Z|2023| |NPC|195524|
A The Fields of Ferocity |QID|70444| |N|Poster nailed on the hut in {Maruukai} (62.34, 42.32)| |Z|2023|

A Bloodlines, Sweets, and Teerai |QID|70739| |N|(npc:191924) in {Maruukai} (63.59, 40.50)| |Z|2023| |NPC|191924|

N (npc:185179) |QID|72429.1| |N|Speak to (npc:185179) in {Maruukai} (60.36, 37.68)| |Z|2023| |NPC|185179|
N (npc:196707) |QID|72429.2| |N|Speak to (npc:196707) in {Maruukai} (60.36, 37.68)| |Z|2023| |NPC|196707|

T Orientation: Maruukai |QID|72429| |N|(npc:185179) in {Maruukai} (60.39, 37.63)| |Z|2023| |NPC|185179|

N (npc:196449) |QID|70739.1| |N|Consult with (npc:196449) in {Maruukai} (60.07, 37.37)| |Z|2023| |NPC|196449|
B (item:199918) |QID|70739.2| |N|Purchase (item:199918) from (npc:194928) in {Maruukai} (62.17, 35.73)| |Z|2023| |NPC|194928|

A Emberwatch |QID|70337| |N|(npc:195239) in {Maruukai} (62.16, 36.42)| |Z|2023| |NPC|195239|
A Shikaar Giver |QID|70730| |N|(npc:190192) in {Maruukai} (62.83, 35.40)| |Z|2023| |NPC|190192|
A A Disgruntled Initiate |QID|65906| |N|(npc:195302) in {Maruukai} (63.12, 34.06)| |Z|2023| |NPC|195302|
T Clan Ohn'ir |QID|66017| |N|(npc:191595) in {Maruukai} (62.97, 33.65)| |Z|2023| |NPC|191595|
A Omens and Incense |QID|66020| |N|(npc:191595) in {Maruukai} (62.97, 33.65)| |Z|2023| |NPC|191595|

C (item:191160) |QID|66020.1| |N|Collect 5 (item:191160) in {Maruukai} (62.08, 34.84)| |L|191160 5| |Z|2023|
N (item:198981) |QID|66020.1| |U|191160| |N|Use the (item:191160) to make (item:198981) in {Maruukai} (62.08, 34.84)| |Z|2023|
C Omens and Incense |QID|66020| |N|Burn the (item:198981) in the pot in {Maruukai} (62.86, 33.72)| |Z|2023|

T Omens and Incense |QID|66020| |N|(npc:191595) in {Maruukai} (62.96, 33.68)| |Z|2023| |NPC|191595|

N (npc:192080) |QID|70730.1| |N|Consult with (npc:192080) in {Maruukai} (63.80, 35.89)| |Z|2023| |NPC|192080|
B (item:199919) |QID|70730.2| |N|Purchase the (item:199919) from (npc:194928) in {Maruukai} (62.19, 35.71)| |Z|2023| |NPC|194928|

T Clan Teerai |QID|66016| |N|(npc:186941) in {Maruukai} (59.18, 37.61)| |Z|2023| |NPC|186941|
A Honoring Our Ancestors |QID|66019| |N|(npc:186941) in {Maruukai} (59.18, 37.61)| |Z|2023| |NPC|186941|

N Raw Game Meat |QID|66019.1| |N|Collect the Raw Game Meat in {Maruukai} (59.37, 37.78)| |Z|2023|
N Place the Meat |QID|66019.2| |N|Place the Raw Game Meat in {Maruukai} (59.16, 37.57)| |Z|2023|
N Jar of Spices |QID|66019.3| |N|Collect the Jar of Spices in {Maruukai} (59.32, 37.35)| |Z|2023|
N Apply the Spices |QID|66019.4| |N|Apply the Jar of Spices on the Raw Game Meat in {Maruukai} (59.16, 37.55)| |Z|2023|
N Basket of Spices |QID|66019.5| |N|Collect the Basket of Spices in {Maruukai} (59.36, 37.37)| |Z|2023|
N Apply the Spices Again |QID|66019.6| |N|Apply the Basket of Spices on the Raw Game Meat in {Maruukai} (59.15, 37.57)| |Z|2023|
N Pot of Spices |QID|66019.7| |N|Collect the Pot of Spices in {Maruukai} (59.07, 37.84)| |Z|2023|
N Apply the Spices Yet Again |QID|66019.8| |N|Apply the Pot of Spices on the Raw Game Meat in {Maruukai} (59.14, 37.59)| |Z|2023|
N Spiced Game Meat |QID|66019.9| |N|Collect the Spiced Game Meat in {Maruukai} (59.14, 37.59)| |Z|2023|
N Cook the Meat |QID|66019.10| |N|Cook the Spiced Game Meat in {Maruukai} (58.89, 37.28)| |Z|2023|
C Honoring Our Ancestors |QID|66019| |N|Place the cooked Spiced Game Meat on the altar in {Maruukai} (59.15, 37.14)| |Z|2023|

T Honoring Our Ancestors |QID|66019| |N|(npc:186941) in {Maruukai} (59.17, 37.59)| |Z|2023| |NPC|186941|
T Clan Nokhud |QID|66018| |N|(npc:191485) in {Maruukai} (60.42, 40.70)| |Z|2023| |NPC|191485|
A Unwelcome Outsider |QID|66021| |N|(npc:186940) in {Maruukai} (60.30, 40.76)| |Z|2023| |NPC|186940|

C Unwelcome Outsider |QID|66021| |N|Defeat 6 Nokhud centaur in {Maruukai} (59.95, 42.65)| |Z|2023| |NPC|187297, 191570, 187299|

T Unwelcome Outsider |QID|66021| |N|(npc:191485) in {Maruukai} (62.44, 41.71)| |Z|2023| |NPC|191485|
A Clans of the Plains |QID|66969| |N|(npc:192724) in {Maruukai} (62.44, 41.71)| |Z|2023| |NPC|192724|

N (npc:191283) |QID|66969.1| |N|Report to (npc:191283) in {Maruukai} (61.41, 39.53)| |Z|2023| |NPC|191283|
N Pass the Test |QID|66969.2| |N|Answer 4 questions correctly in {Maruukai} (61.41, 39.53)| |Z|2023| |NPC|191283|

T Clans of the Plains |QID|66969| |N|(npc:191283) in {Maruukai} (61.41, 39.53)| |Z|2023| |NPC|191283|
A The Emissary's Arrival |QID|66948| |N|(npc:194927) in {Maruukai} (61.05, 40.48)| |Z|2023| |NPC|194927|

C The Emissary's Arrival |QID|66948| |N|Learn about the situation in the Emerald Gardens in {Maruukai} (61.05, 40.48)| |Z|2023| |NPC|194927|

T The Emissary's Arrival |QID|66948| |N|(npc:194927) in {Maruukai} (61.05, 40.48)| |Z|2023| |NPC|194927|
A The Khanam Matra |QID|66022| |N|(npc:194927) in {Maruukai} (61.05, 40.48)| |Z|2023| |NPC|194927|

N (npc:196437) |QID|70730.3| |N|Consult with (npc:196437) in {Maruukai} (63.56, 41.03)| |Z|2023| |NPC|196437|
C The Khanam Matra |QID|66022| |N|Report to (npc:186942) to join Gemisath's audience with the Khanam Matra in {Maruukai} (60.27, 37.91)| |Z|2023| |NPC|186942|

T The Khanam Matra |QID|66022| |N|(npc:186942) in {Maruukai} (60.35, 38.03)| |Z|2023| |NPC|186942|
A Trucebreakers |QID|66023| |N|(npc:186942) in {Maruukai} (60.35, 38.03)| |Z|2023| |NPC|186942|
A Covering Their Tails |QID|66024| |N|(npc:191485) in {Maruukai} (59.48, 38.74)| |Z|2023| |NPC|191485|

C Covering Their Tails |QID|66024| |N|Kill (npc:191843) in {Maruukai} (58.20, 39.38)| |Z|2023| |NPC|191843|
C Trucebreakers |QID|66023| |N|Kill 10 Nokhud forces in {Maruukai} (60.91, 39.90)| |Z|2023| |NPC|187201, 187149|

T Covering Their Tails |QID|66024| |N|(npc:181198) in {Maruukai} (60.32, 38.06)| |Z|2023| |NPC|181198|
T Trucebreakers |QID|66023| |N|(npc:186942) in {Maruukai} (60.32, 38.06)| |Z|2023| |NPC|186942|
A The Nokhud Threat |QID|66025| |N|(npc:181198) in {Maruukai} (60.32, 38.06)| |Z|2023| |NPC|181198|
T The Nokhud Threat |QID|66025| |N|(npc:181198) in {Maruukai} (60.01, 37.46)| |Z|2023| |NPC|181198|

--Ohn'ahra's Blessing
A Hooves of War |QID|66201| |N|(npc:181198) in {Maruukai} (60.01, 37.46)| |Z|2023| |NPC|181198|

N (item:200258) |QID|70730.4| |N|Kill (npc:196897) and collect (item:200258) in {Ohn'ahran Plains} (57.46, 42.63)| |Z|2023| |NPC|196897|
N (npc:196249) |QID|70739.3| |N|Encourage (npc:196249) in {Field of Ferocity} (55.35, 38.40)| |Z|2023| |NPC|196249|
N (item:201044) |QID|70739.4| |N|Collect 8 (item:201044) in {Ohn'ahran Plains} (56.44, 43.16)| |Z|2023|
N Offering |QID|70739.5| |N|Make the offering in {Ohn'ahran Plains} (56.78, 38.82)| |Z|2023|

T The Fields of Ferocity |QID|70444| |N|(npc:188868) in {Field of Ferocity} (53.16, 37.27)| |Z|2023| |NPC|188868|
A The Field of Ferocity: Terror of the Swamp! |QID|66459| |N|(npc:188868) in {Field of Ferocity} (53.16, 37.27)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188868|

C The Field of Ferocity: Terror of the Swamp! |QID|66459| |N|Defeat (npc:188704) in {Field of Ferocity} (53.36, 38.62)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188704|

T The Field of Ferocity: Terror of the Swamp! |QID|66459| |N|(npc:188871) in {Field of Ferocity} (53.17, 37.28)| |O| |Z|2023| |NPC|188871|
A The Field of Ferocity: Lord of Decay! |QID|66460| |N|(npc:188868) in {Field of Ferocity} (53.17, 37.28)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188868|

C The Field of Ferocity: Lord of Decay! |QID|66460| |N|Defeat (npc:188707) in {Field of Ferocity} (53.05, 38.08)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188707|

T The Field of Ferocity: Lord of Decay! |QID|66460| |N|(npc:188871) in {Field of Ferocity} (53.16, 37.28)| |O| |Z|2023| |NPC|188871|
A The Field of Ferocity: Foe from the Volcano! |QID|66461| |N|(npc:188868) in {Field of Ferocity} (53.16, 37.28)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188868|

C The Field of Ferocity: Foe from the Volcano! |QID|66461| |N|Defeat (npc:188708) in {Field of Ferocity} (53.01, 37.30)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188708|

T The Field of Ferocity: Foe from the Volcano! |QID|66461| |N|(npc:188871) in {Field of Ferocity} (53.15, 37.29)| |O| |Z|2023| |NPC|188871|
A The Field of Ferocity: Lost in the Dream! |QID|66462| |N|(npc:188868) in {Field of Ferocity} (53.15, 37.29)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188868|

C The Field of Ferocity: Lost in the Dream! |QID|66462| |N|Defeat (npc:188710) and (npc:188711) in {Field of Ferocity} (53.04, 37.79)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188710, 188711|

T The Field of Ferocity: Lost in the Dream! |QID|66462| |N|(npc:188871) in {Field of Ferocity} (53.15, 37.28)| |O| |Z|2023| |NPC|188871|
A The Field of Ferocity: Elemental Revenge Round! |QID|66463| |N|(npc:188868) in {Field of Ferocity} (53.15, 37.28)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188868|

C The Field of Ferocity: Elemental Revenge Round! |QID|66463| |N|Defeat (npc:193847) in {Field of Ferocity} (53.20, 37.98)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|193847|

T The Field of Ferocity: Elemental Revenge Round! |QID|66463| |N|(npc:188871) in {Field of Ferocity} (53.15, 37.28)| |O| |Z|2023| |NPC|188871|
A The Field of Ferocity: Master of the Hunt! |QID|66464| |N|(npc:188868) in {Field of Ferocity} (53.15, 37.28)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188868|

C The Field of Ferocity: Master of the Hunt! |QID|66464| |N|Defeat (npc:188715) in {Field of Ferocity} (53.24, 37.97)<br/><br/>This is a group quest and it is safe to skip.| |O| |Z|2023| |NPC|188715|

T The Field of Ferocity: Master of the Hunt! |QID|66464| |N|(npc:188871) in {Field of Ferocity} (53.14, 37.27)| |O| |Z|2023| |NPC|188871|

T Shikaar Giver |QID|70730| |N|(npc:190192) in {Maruukai} (62.83, 35.44)| |Z|2023| |NPC|190192|
T Bloodlines, Sweets, and Teerai |QID|70739| |N|(npc:191924) in {Maruukai} (63.62, 40.49)| |Z|2023| |NPC|191924|

R Emberwatch |QID|70337| |N|Travel to {Emberwatch} (66.00, 25.09)| |Z|2023|
f Emberwatch |QID|70337| |N|Grab the flight path for {Emberwatch} (66.81, 25.20)| |Z|2022| |NPC|190049|
T Emberwatch |QID|70337| |N|(npc:190089) in {Emberwatch} (66.00, 25.09)| |Z|2023| |NPC|190089|
A The Nelthazan Ruins |QID|65890| |N|(npc:190089) in {Emberwatch} (66.00, 25.09)| |Z|2023| |NPC|190089|

R Nelthazan Ruins |QID|65890| |N|Travel to {Nelthazan Ruins} (64.03, 18.28)| |Z|2023|
A The Sundered Asunder |QID|65892| |N|Auto Accept in {Nelthazan Ruins} (64.03, 18.28)| |Z|2023| |O|
T The Nelthazan Ruins |QID|65890| |N|(npc:186300) in {Nelthazan Ruins} (64.02, 18.27)| |Z|2023| |NPC|186300|
A Tools of the Tirade |QID|65891| |N|(npc:186300) in {Nelthazan Ruins} (64.02, 18.27)| |Z|2023| |NPC|186300|
A The Relic Inquiry |QID|65893| |N|(npc:186300) in {Nelthazan Ruins} (64.02, 18.27)| |Z|2023| |NPC|186300|

C The Relic Inquiry |QID|65893| |N|Gather 60 (item:193375) by killing Sundered Forces in {Nelthazan Ruins} (63.72, 14.50)| |Z|2023| |NPC|186319, 186354, 186323|
C Tools of the Tirade |QID|65891| |N|Deploy the enchanted tools to 5 piles of rubble in {Nelthazan Ruins} (63.56, 15.05)| |Z|2023| |NPC|186319, 186354, 186323|
C The Sundered Asunder |QID|65892| |N|Kill Sundered Foarces in {Nelthazan Ruins} (63.12, 17.29)| |Z|2023| |NPC|186319, 186354, 186323| |O|

T The Sundered Asunder |QID|65892| |N|Auto Turn-In in {Nelthazan Ruins} (63.12, 17.29)| |Z|2023| |O|
T The Relic Inquiry |QID|65893| |N|(npc:186300) in {Nelthazan Ruins} (64.02, 18.26)| |Z|2023| |NPC|186300|
T Tools of the Tirade |QID|65891| |N|(npc:186300) in {Nelthazan Ruins} (64.02, 18.26)| |Z|2023| |NPC|186300|
A Competing Company |QID|65895| |N|(npc:186300) in {Nelthazan Ruins} (64.02, 18.26)| |Z|2023| |NPC|186300|

C Competing Company |QID|65895| |N|Gather information about the Sundered Flame in {Nelthazan Ruins} (62.59, 16.36)| |Z|2023| |NPC|190598, 190307, 190278|

T Competing Company |QID|65895| |N|(npc:186300) in {Nelthazan Ruins} (62.12, 16.37)| |Z|2023| |NPC|186300|
A One Step Backwards |QID|66719| |N|(npc:186300) in {Nelthazan Ruins} (62.12, 16.37)| |Z|2023| |NPC|186300| |C|Evoker|
C One Step Backwards |QID|66719| |N|Click on (item:193376) in your bag and collect(item:198351) then click on the (item:198351) to consume it| |Z|2023| |NPC|186300| |C|Evoker|
T One Step Backwards |QID|66719| |N|(npc:186300) in {Nelthazan Ruins} (62.12, 16.37)| |Z|2023| |NPC|186300| |C|Evoker|
A Proto Problems |QID|65898| |N|(npc:186300) in {Nelthazan Ruins} (62.12, 16.37)| |Z|2023| |NPC|186300| 

N (item:198354) |QID|65898.1| |N|Collect (item:198354) in {Nelthazan Ruins} (60.61, 17.36)| |Z|2023|
N (npc:186334) |QID|65898.2| |N|Kill (npc:186334) in {Nelthazan Ruins} (60.63, 17.36)| |Z|2023| |NPC|186334|

R Emberwatch |QID|65898| |N|Travel to {Emberwatch} (66.00, 25.09)| |Z|2023|
T Proto Problems |QID|65898| |N|(npc:191154) in {Emberwatch} (66.31, 24.36)| |Z|2023| |NPC|191154|
A The Black Locus |QID|66700| |N|(npc:191154) in {Emberwatch} (66.31, 24.36)| |Z|2023| |NPC|191154|
T The Black Locus |QID|66700| |N|(npc:190089) in {Emberwatch} (65.98, 25.08)| |Z|2023| |NPC|190089|

R Pinewood Post |QID|65837| |N|Travel to {Pinewood Post} (81.02, 58.94)| |Z|2023|
T Trouble In The Pines |QID|65837| |N|(npc:190024) in {Pinewood Post} (81.02, 58.94)| |Z|2023| |NPC|190024|
A Tempests Abound |QID|66681| |N|(npc:190024) in {Pinewood Post} (81.02, 58.94)| |Z|2023| |NPC|190024|
A Counting Sheep |QID|66680| |N|(npc:190025) in {Pinewood Post} (81.02, 58.94)| |Z|2023| |NPC|190025|

B (item:193890) |QID|66680.1| |N|Purschase the (item:193890) from (npc:191397) in {Pinewood Post} (80.68, 58.78)| |Z|2023| |NPC|191397|

f Pinewood Post |QID|66680| |N|Grab the {Pinewood Post} flight path (80.41, 57.89)| |Z|2023| |NPC|191622|

N (npc:191408) |QID|66680.2| |N|Treat (npc:191408) in {Pinewood Post} (81.03, 59.47)| |Z|2023| |NPC|191408|

R Sagecrest Pines |QID|66680| |N|Travel to {Sagecrest Pines} (83.73, 65.33)| |Z|2023|
N (npc:190041) |QID|66680.3| |U|193892| |N|Using (item:193892), save 5 (npc:190041) in {Sagecrest Pines} (83.73, 65.33)| |Z|2023| |NPC|190041|
C Tempests Abound |QID|66681| |N|Kill 8 Stormtouched beasts in {Sagecrest Pines} (83.40, 63.84)| |Z|2023| |NPC|191665, 191541, 191545|
A More Than A Rock |QID|66689| |N|Collect (item:194031) from (npc:191665) in {Sagecrest Pines} to start this quest. (81.50, 65.75)| |Z|2023| |NPC|191665|

R Pinewood Post |QID|66680| |N|Travel to {Pinewood Post} (81.02, 58.94)| |Z|2023|
T Counting Sheep |QID|66680| |N|(npc:190025) in {Pinewood Post} (81.00, 58.97)| |Z|2023| |NPC|190025|
T Tempests Abound |QID|66681| |N|(npc:190025) in {Pinewood Post} (81.00, 58.97)| |Z|2023| |NPC|190025|
T More Than A Rock |QID|66689| |N|(npc:190025) in {Pinewood Post} (81.00, 58.97)| |Z|2023| |NPC|190025|
A Last Resort Analysis |QID|66683| |N|(npc:190025) in {Pinewood Post} (81.00, 58.97)| |Z|2023| |NPC|190025|

N (npc:191397) |QID|66683.3| |N|Speak to (npc:191397) in {Pinewood Post} (80.66, 58.78)| |Z|2023| |NPC|191397|
N (npc:191622) |QID|66683.2| |N|Speak to (npc:191622) in {Pinewood Post} (80.43, 57.94)| |Z|2023| |NPC|191622|
N (npc:191392) |QID|66683.1| |N|Speak to (npc:191392) in {Pinewood Post} (80.97, 59.47)| |Z|2023| |NPC|191392|

T Last Resort Analysis |QID|66683| |N|(npc:190025) in {Pinewood Post} (81.02, 59.01)| |Z|2023| |NPC|190025|
A Show of Storm |QID|65836| |N|(npc:190025) in {Pinewood Post} (81.02, 59.01)| |Z|2023| |NPC|190025|

R Sagecrest Pines |QID|65836| |N|Travel to {Sagecrest Pines} (83.73, 65.33)| |Z|2023|
N (npc:190025) |QID|65836.1| |N|Regroup with (npc:190025) in {Sagecrest Pines} (83.43, 60.90)| |Z|2023| |NPC|190025|
N (npc:193827) |QID|65836.2| |N|Kill (npc:193827) in {Sagecrest Pines} (84.03, 60.92)| |Z|2023| |NPC|193827|

T Show of Storm |QID|65836| |N|(npc:190025) in {Sagecrest Pines} (84.01, 60.72)| |Z|2023| |NPC|190025|
A Storm Chasing |QID|66684| |N|(npc:190025) in {Sagecrest Pines} (84.01, 60.72)| |Z|2023| |NPC|190025|

N Primalist Forces |QID|66684.1| |N|Kill 4 Primalist Forces in {Sagecrest Pines} (85.05, 62.72)| |Z|2023| |NPC|194020, 193486, 193486|
N Storm Pylon |QID|66684.2| |N|Destroy the Storm Pylon in {Sagecrest Pines} (85.03, 64.16)| |Z|2023|

R Pinewood Post |QID|66684| |N|Travel to {Pinewood Post} (81.02, 58.94)| |Z|2023|
T Storm Chasing |QID|66684| |N|(npc:190025) in {Pinewood Post} (80.87, 58.98)| |Z|2023| |NPC|190025|

R Ohn'iri Springs |QID|65906| |N|Travel to {Ohn'iri Springs} (56.25, 75.95)| |Z|2023|
T A Disgruntled Initiate |QID|65906| |N|(npc:190014) in {Ohn'iri Springs} (56.25, 75.95)| |Z|2023| |NPC|190014|
A Sneaking Out |QID|65901| |N|(npc:190014) in {Ohn'iri Springs} (56.25, 75.95)| |Z|2023| |NPC|190014|
f Ohn'iri Springs |QID|65901| |N|Grab the {Ohn'iri Springs} flight path (56.69, 76.54)| |Z|2023| |NPC|195235|

N Place Totems |QID|65901.1| |N|Place the 3 Wind Totems in {Ohn'iri Springs} (57.00, 75.50)| |Z|2023|
N (npc:190014) |QID|65901.2| |N|Tell (npc:190014) you are ready in {Ohn'iri Springs} (56.26, 75.92)| |Z|2023| |NPC|190014|

R Mirror of the Sky |QID|65901| |N|Travel to {Mirror of the Sky} (54.74, 66.39)| |Z|2023|
T Sneaking Out |QID|65901| |N|(npc:190014) in {Mirror of the Sky} (54.74, 66.39)| |Z|2023| |NPC|190014|
A Favorite Fruit |QID|65907| |N|(npc:190014) in {Mirror of the Sky} (54.74, 66.39)| |Z|2023| |NPC|190014|

N (item:192743) |QID|65907.1| |N|Collect 6 (item:192743) in {Ohn'ir Geysers} (52.65, 71.61)| |Z|2023|
C Favorite Fruit |QID|65907| |U|192743| |N|Using the (item:192743), feed 6 (npc:192594) or (npc:192596) in {Mirror of the Sky} (53.99, 65.74)| |Z|2023| |NPC|192594, 192596|

T Favorite Fruit |QID|65907| |N|(npc:190014) in {Mirror of the Sky} (54.76, 66.37)| |Z|2023| |NPC|190014|
A A Promise Is A Promise |QID|65770| |N|(npc:190014) in {Mirror of the Sky} (54.76, 66.37)| |Z|2023| |NPC|190014|

N Promise |QID|65770.1| |N|Promise (npc:190014) in {Mirror of the Sky} (54.76, 66.37)| |Z|2023| |NPC|190014|
C A Promise Is A Promise |QID|65770| |N|Meet (npc:190014) further north in {Ohn'ahran Plains} (53.11, 64.10)| |Z|2023| |NPC|190014|

T A Promise Is A Promise |QID|65770| |N|(npc:190022) in {Ohn'ahran Plains} (52.08, 63.21)| |Z|2023| |NPC|190022|
A More Adventure Than Expected |QID|65761| |N|(npc:190022) in {Ohn'ahran Plains} (52.08, 63.21)| |Z|2023| |NPC|190022|

N Follow |QID|65761.1| |N|Follow (npc:190022) in {Ohn'ahran Plains} (51.10, 62.17)| |Z|2023| |NPC|190022|
N Blessing |QID|65761.2| |N|Receive (npc:190022)'s blessing in {Ohn'ahran Plains} (51.10, 62.17)| |Z|2023| |NPC|190022|

R Kaighan Camp |QID|65761| |N|Travel to {Kaighan Camp} (47.50, 54.16)| |Z|2023|
N (npc:190014) |QID|65761.3| |N|Find (npc:190014) in {Kaighan Camp} (47.50, 54.16)| |Z|2023| |NPC|190014|

T More Adventure Than Expected |QID|65761| |N|(npc:190014) in {Kaighan Camp} (47.50, 54.16)| |Z|2023| |NPC|190014|
A Stealing Its Thunder |QID|65711| |N|(npc:190014) in {Kaighan Camp} (47.50, 54.16)| |Z|2023| |NPC|190014|

N (npc:190011) |QID|65711.1| |N|Kill (npc:190011) in {Kaighan Camp} (47.37, 56.32)| |Z|2023| |NPC|190011|
N (npc:190009) |QID|65711.2| |N|Soothe (npc:190009) in {Kaighan Camp} (48.36, 56.59)| |Z|2023| |NPC|190009|

T Stealing Its Thunder |QID|65711| |N|(npc:190014) in {Kaighan Camp} (48.28, 56.49)| |Z|2023| |NPC|190014|
A Sneaking In |QID|66676| |N|(npc:190014) in {Kaighan Camp} (48.28, 56.49)| |Z|2023| |NPC|190014|

R Ohn'iri Springs |QID|66676| |N|Travel to {Ohn'iri Springs} (56.25, 75.95)| |Z|2023|
C Sneaking In |QID|66676| |N|Return to (npc:190014) in {Ohn'iri Springs} (56.20, 77.12)| |Z|2023| |NPC|190014|

T Sneaking In |QID|66676| |N|(npc:190014) in {Ohn'iri Springs} (56.20, 77.12)| |Z|2023| |NPC|190014|

R Teerakai |QID|66201| |N|Travel to {Teerakai} (41.91, 61.76)| |Z|2023|
T Hooves of War |QID|66201| |N|(npc:187787) in {Teerakai} (41.91, 61.76)| |Z|2023| |NPC|187787|
A The Calm Before the Storm |QID|66222| |N|(npc:187787) in {Teerakai} (41.91, 61.76)| |Z|2023| |NPC|187787|
A Up to No-khud |QID|66651| |N|(npc:188224) in {Teerakai} (40.93, 61.59)| |Z|2023| |NPC|188224|
f Teerakai |QID|65901| |N|Grab the flight path for {Teerakai} (40.00, 61.14)| |Z|2022| |NPC|192865|
A Land of the Apex |QID|66687| |N|(npc:190164) in {Teerakai} (41.62, 56.74)| |Z|2023| |NPC|190164|
A Signs of the Wind |QID|66688| |N|(npc:190164) in {Teerakai} (41.62, 56.74)| |Z|2023| |NPC|190164|

N (npc:189593) |QID|66222.2| |N|Speak to (npc:189593) in {Teerakai} (40.75, 56.35)| |Z|2023| |NPC|189593|

A WANTED: Mara'nar the Thunderous |QID|71027| |N|Wanted poster in {Teerakai} (39.56, 56.44)| |Z|2023|

N (npc:190585) |QID|66222.3| |N|Speak to (npc:190585) in {Teerakai} (39.42, 55.32)| |Z|2023| |NPC|190585|
N (npc:188337) |QID|66222.1| |N|Speak to (npc:188337) in {Teerakai} (38.49, 57.44)| |Z|2023| |NPC|188337|
N (npc:189594) |QID|66222.4| |N|Speak to (npc:189594) in {Teerakai} (37.57, 59.44)| |Z|2023| |NPC|189594|

R Primordial Vale |QID|71027| |N|Travel to {Primordial Vale} (42.19, 47.32)| |Z|2023|
C WANTED: Mara'nar the Thunderous |QID|71027| |N|Kill (npc:196913) and loot (item:200270) in {Primordial Vale} (42.19, 47.32)| |Z|2023|
N (item:193206) |QID|66687.2| |N|Kill (npc:191051) and collect 2 (item:193206) in {Primordial Vale} (41.77, 46.44)| |Z|2023| |NPC|191051|

R Deadsnare Caverns |QID|66687| |N|Travel to {Deadsnare Caverns} (44.06, 48.92)| |Z|2023|
N (item:193207) |QID|66687.1| |N|Kill (npc:187672) and collect 10 (item:193207) in {Deadsnare Caverns} (44.06, 48.92)| |Z|2023| |NPC|187672|

R Primordial Vale |QID|71027| |N|Travel to {Primordial Vale} (42.19, 47.32)<br/><b>Outside the cave, atop the mountains.| |Z|2023|
K (npc:192949) |QID|70783| |N|Slay (npc:192949) in the cave (44.90, 49.23)| |Z|2023| |NPC|192949|

R Thunderspine Ridge |QID|66687| |N|Travel to {Thunderspine Ridge} (48.82, 48.13)| |Z|2023|
N (item:193202) |QID|66687.3| |N|Kill (npc:191057) and collect 2 (item:193202) in {Thunderspine Ridge} (51.30, 49.24)| |Z|2023| |NPC|191057|
C Signs of the Wind |QID|66688| |N|Collect 8 Wind Tokens from Hollow Reeds and Avian Feathers in {Ohn'ahran Plains} (47.07, 51.22)| |Z|2023|

T Signs of the Wind |QID|66688| |N|Offering Vessel in {Thunderspine Ridge} (49.34, 49.51)| |Z|2023|
A Call of the Plains |QID|71229| |N|(npc:197627) in {Thunderspine Ridge} (49.34, 49.51)<br/><b>Look for a shield and spears on the map (Aylaag Camp) and head to it. This moves around the map.<br/><b>It's safe to skip this quest.| |Z|2023| |NPC|197627| |O|
A Himia, the Blessed |QID|70374| |N|(npc:190950) in {Thunderspine Ridge} (49.35, 49.40)| |Z|2023| |NPC|190950|

C Himia, the Blessed |QID|70374| |N|Defeat the elements in {Thunderspine Ridge} (49.28, 49.32)| |Z|2023| |NPC|182211, 190173|

R Teerakai |QID|66687| |N|Travel to {Teerakai} (41.91, 61.76)| |Z|2023|
T Land of the Apex |QID|66687| |N|(npc:190164) in {Teerakai} (41.61, 56.73)| |Z|2023| |NPC|190164|
T Himia, the Blessed |QID|70374| |N|(npc:190164) in {Teerakai} (41.61, 56.73)| |Z|2023| |NPC|190164|
A Rellen, the Learned |QID|66834| |N|(npc:190164) in {Teerakai} (41.61, 56.73)| |Z|2023| |NPC|190164|

N (npc:190949) |QID|66834.1| |N|Summon (npc:190949) in {Teerakai} (40.13, 57.83)| |Z|2023| |NPC|190949|
N Torch |QID|66834.2| |N|Acquire the torch in {Teerakai} (40.19, 57.86)| |Z|2023|
N Shadespinner |QID|66834.3| |N|Witness the Shadespinner's death in {Teerakai} (40.18, 57.59)| |Z|2023|
N Spear |QID|66834.4| |N|Acquire the spear in {Teerakai} (40.09, 57.74)| |Z|2023|
N Thunderspine |QID|66834.5| |N|Witness the Thunderspine's death in {Teerakai} (40.13, 57.73)| |Z|2023|
N Bow |QID|66834.6| |N|Acquire the bow in {Teerakai} (40.10, 57.73)| |Z|2023|
N Slyvern |QID|66834.7| |N|Witness the Slyvern's death in {Teerakai} (40.10, 57.73)| |Z|2023|

T Rellen, the Learned |QID|66834| |N|(npc:190164) in {Teerakai} (41.62, 56.73)| |Z|2023| |NPC|190164|
A The Nokhud Offensive: The Final Ancestor |QID|66690| |N|(npc:190164) in {Teerakai} (41.62, 56.73)| |Z|2023| |NPC|190164| --Dungeon Quest
T WANTED: Mara'nar the Thunderous |QID|71027| |N|(npc:187787) in {Teerakai} (41.86, 61.76)| |Z|2023| |NPC|187787|
T The Calm Before the Storm |QID|66222| |N|(npc:187787) in {Teerakai} (41.86, 61.76)| |Z|2023| |NPC|187787|
A Boku the Mystic |QID|70229| |N|(npc:187787) in {Teerakai} (41.86, 61.76)| |Z|2023| |NPC|187787|

R Ohn'iri Springs |QID|66651| |N|Travel to {Ohn'iri Springs} (39.06, 66.01)| |Z|2023|
T Up to No-khud |QID|66651| |N|(npc:188225) in {Ohn'iri Springs} (39.06, 66.01)| |Z|2023| |NPC|188225|
A Return to Mender |QID|66652| |N|(npc:188225) in {Ohn'iri Springs} (39.06, 66.01)| |Z|2023| |NPC|188225|

R The Eternal Kurgans |QID|66652| |N|Travel to {The Eternal Kurgans} (37.19, 65.61)| |Z|2023|
N (npc:188509) |QID|66652.1| |N|Kill (npc:188509) to interrupt the ritual in {The Eternal Kurgans} (37.19, 65.61)| |Z|2023| |NPC|188509|
N Spear |QID|66652.2| |N|Retrieve the spear in {The Eternal Kurgans} (37.06, 65.48)| |Z|2023|

R Ohn'iri Springs |QID|66652| |N|Travel to {Ohn'iri Springs} (39.06, 66.01)| |Z|2023|
T Return to Mender |QID|66652| |N|(npc:188225) in {Ohn'iri Springs} (39.05, 66.07)| |Z|2023| |NPC|188225|
A Desecrator Annihilator |QID|66654| |N|(npc:188225) in {Ohn'iri Springs} (39.05, 66.07)| |Z|2023| |NPC|188225|
A Reagents of De-Necromancy |QID|66655| |N|(npc:188225) in {Ohn'iri Springs} (39.05, 66.07)| |Z|2023| |NPC|188225|

R The Eternal Kurgans |QID|66655| |N|Travel to {The Eternal Kurgans} (33.64, 68.89)| |Z|2023|
N (item:193257) |QID|66655.2| |N|Collect 6 (item:193257) in {The Eternal Kurgans} (33.64, 68.89)| |Z|2023|
N Risen Hero's Weapon |QID|66654.2| |N|Collect 3 Risen Hero's Weapons from Desecrating Centaurs in {The Eternal Kurgans} (33.79, 68.20)| |Z|2023| |NPC|188511, 189928|
C Desecrator Annihilator |QID|66654| |N|Kill (npc:188511) and (npc:189928) in {The Eternal Kurgans} (34.28, 67.78)| |Z|2023| |NPC|188511, 189928|
C Reagents of De-Necromancy |QID|66655| |N|Gather 4 (item:191901) from (npc:188510) and (npc:190031) in {The Eternal Kurgans} (34.36, 67.49)| |Z|2023| |NPC|188510, 190031|

T Desecrator Annihilator |QID|66654| |N|(npc:189858) in {The Eternal Kurgans} (33.74, 65.30)| |Z|2023| |NPC|189858|
T Reagents of De-Necromancy |QID|66655| |N|(npc:189858) in {The Eternal Kurgans} (33.74, 65.30)| |Z|2023| |NPC|189858|
A Zambul, Head Vandal |QID|69936| |N|(npc:189858) in {The Eternal Kurgans} (33.74, 65.30)| |Z|2023| |NPC|189858|

C Zambul, Head Vandal |QID|69936| |N|Kill (npc:191145) in {The Eternal Kurgans} (33.75, 65.82)| |Z|2023| |NPC|191145|

T Zambul, Head Vandal |QID|69936| |N|(npc:189858) in {The Eternal Kurgans} (33.77, 65.37)| |Z|2023| |NPC|189858|
A Definitely Eternal Slumber |QID|66656| |N|(npc:189858) in {The Eternal Kurgans} (33.77, 65.37)| |Z|2023| |NPC|189858|

N (npc:192224) |QID|66656.1| |N|Release (npc:192224)'s spirit in {The Eternal Kurgans} (31.00, 69.12)| |Z|2023| |NPC|192224|
N (npc:192226) |QID|66656.3| |N|Release (npc:192226)'s spirit in {The Eternal Kurgans} (32.09, 70.80)| |Z|2023| |NPC|192226|
N (npc:192225) |QID|66656.4| |N|Release (npc:192225)'s spirit in {The Eternal Kurgans} (33.53, 71.73)| |Z|2023| |NPC|192225|
N (npc:192223) |QID|66656.2| |N|Release (npc:192223)'s spirit in {The Eternal Kurgans} (30.95, 71.54)| |Z|2023| |NPC|192223|

T Definitely Eternal Slumber |QID|66656| |N|(npc:193985) in {The Eternal Kurgans} (32.64, 69.84)| |Z|2023| |NPC|193985|
A And Stay Dead! |QID|66657| |N|(npc:193985) in {The Eternal Kurgans} (32.64, 69.84)| |Z|2023| |NPC|193985|

N (npc:190047) |QID|66657.1| |N|Kill (npc:190047) in {The Eternal Kurgans} (31.29, 71.26)| |Z|2023| |NPC|190047|
N Teera's Tomb |QID|66657.2| |N|Investigate Teera's tomb in {The Eternal Kurgans} (31.14, 71.02)| |Z|2023|
N Maruuk's Tomb |QID|66657.3| |N|Investigate Maruuk's tomb in {The Eternal Kurgans} (31.46, 71.43)| |Z|2023|

T And Stay Dead! |QID|66657| |N|(npc:193985) in {The Eternal Kurgans} (31.51, 71.45)| |Z|2023| |NPC|193985|
A The Nokhud Offensive: Founders Keepers |QID|66658| |N|(npc:193985) in {The Eternal Kurgans} (31.51, 71.45)| |Z|2023| |NPC|193985| -- Dungeon Quest
A Call of the Hunt |QID|71231| |N|(npc:197627) in {The Eternal Kurgans} (31.51, 71.45)| |Z|2023| |NPC|197627| |O|

R Teerakai |QID|70229| |N|Travel to {Teerakai} (36.82, 57.31)| |Z|2023|
T Boku the Mystic |QID|70229| |N|(npc:186290) in {Teerakai} (36.82, 57.31)| |Z|2023| |NPC|186290|
A Pessimistic Mystic |QID|66254| |N|(npc:186290) in {Teerakai} (36.82, 57.31)| |Z|2023| |NPC|186290|

C Pessimistic Mystic |QID|66254| |N|Place the Empowerment Totems around (npc:186290) in {Teerakai} (37.18, 57.28)| |Z|2023| |NPC|186290|

T Pessimistic Mystic |QID|66254| |N|(npc:186290) in {Teerakai} (36.85, 57.25)| |Z|2023| |NPC|186290|
A Mystic Mystery |QID|66224| |N|(npc:186290) in {Teerakai} (36.85, 57.25)| |Z|2023| |NPC|186290|

R Szar Skeleth |QID|66224| |N|Travel to {Szar Skeleth} (44.34, 61.78)| |Z|2023|
N (npc:186290) |QID|66224.1| |N|Meet (npc:186290) outside {Teerakai} in {Szar Skeleth} (44.34, 61.78)| |Z|2023| |NPC|186290|
N (item:198652) |QID|66224.2| |N|Collect (item:198652) from the ground in {Szar Skeleth} (44.53, 61.93)| |Z|2023|

R Ohn'ahran Plains |QID|66224| |N|Travel to {Ohn'ahran Plains} (46.23, 63.21)| |Z|2023|
N Search |QID|66224.3| |N|Search for (npc:186290) in {Ohn'ahran Plains} (46.23, 63.21)| |Z|2023| |NPC|186290|
N (npc:190486) |QID|66224.4| |N|Investigate the (npc:190486) in {Ohn'ahran Plains} (46.51, 63.23)| |Z|2023| |NPC|190486|
C Mystic Mystery |QID|66224| |N|Continue searching for (npc:186290) in {Ohn'ahran Plains} (49.20, 63.63)| |Z|2023| |NPC|186290|

T Mystic Mystery |QID|66224| |N|(npc:187795) in {Ohn'ahran Plains} (49.33, 63.25)| |Z|2023| |NPC|187795|
A Toting Totems |QID|66225| |N|(npc:195316) in {Ohn'ahran Plains} (49.35, 63.16)| |Z|2023| |NPC|195316|
A Taken By Storm |QID|70195| |N|(npc:195316) in {Ohn'ahran Plains} (49.35, 63.16)| |Z|2023| |NPC|195316|

R Ridgewater Retreat |QID|70195| |N|Travel to {Ridgewater Retreat} (48.90, 69.05)| |Z|2023|
N (npc:194884) |QID|70195.1| |N|Kill (npc:194884) to free (npc:191426) in {Ridgewater Retreat} (48.90, 69.05)| |Z|2023| |NPC|194884, 191426|
N (item:198698) |QID|70195.2| |N|Collect the (item:198698) from (npc:194884) in {Ridgewater Retreat} (48.92, 69.02)| |Z|2023| |NPC|194884|
C Toting Totems |QID|66225| |N|Gather 8 (item:193051) from the Nokhud in {Ridgewater Retreat} (50.79, 66.90)| |Z|2023| |NPC|190958, 186299|

R Ohn'ahran Plains |QID|66225| |N|Travel to {Ohn'ahran Plains} (49.37, 63.20)| |Z|2023|
T Toting Totems |QID|66225| |N|(npc:190648) in {Ohn'ahran Plains} (49.37, 63.20)| |Z|2023| |NPC|190648|
T Taken By Storm |QID|70195| |N|(npc:190648) in {Ohn'ahran Plains} (49.37, 63.20)| |Z|2023| |NPC|190648|
A Catching Wind |QID|66236| |N|(npc:190648) in {Ohn'ahran Plains} (49.37, 63.20)| |Z|2023| |NPC|190648|

R Windsong Rise |QID|66236| |N|Travel to {Windsong Rise} (58.13, 68.93)| |Z|2023|
T Catching Wind |QID|66236| |N|(npc:187804) in {Windsong Rise} (58.13, 68.93)| |Z|2023| |NPC|187804|
A Weather Control |QID|66242| |N|(npc:187804) in {Windsong Rise} (58.13, 68.93)| |Z|2023| |NPC|187804|
A Eagle-itarian |QID|66256| |N|(npc:187804) in {Windsong Rise} (58.13, 68.93)| |Z|2023| |NPC|187804|
A Fowl Sorcery |QID|66257| |N|(npc:187804) in {Windsong Rise} (58.13, 68.93)| |Z|2023| |NPC|187804|

K Prozela Galeshot |QID|69968.1| |N|Kill (npc:193669) in {Windsong Rise} (59.46, 66.28)| |Z|2023| |NPC|193669|
C Fowl Sorcery |QID|66257| |N|Destroy 4 Wagons in {Windsong Rise} (58.87, 61.93)| |Z|2023|
N (npc:187918) |QID|66256.1| |N|Free 6 (npc:187918) in {Windsong Rise} (61.72, 67.18)| |Z|2023| |NPC|187918|
N (npc:187819) |QID|66242.1| |N|Kill 8 (npc:187819) in {Windsong Rise} (60.64, 67.00)| |Z|2023| |NPC|187819|
N (npc:187817) |QID|66242.2| |N|Kill 6 (npc:187817) in {Windsong Rise} (60.64, 67.00)| |Z|2023| |NPC|187817|
N (npc:195742) and (npc:187916) |QID|66256.2| |N|Kill 6 Primalists in {Windsong Rise} (61.71, 66.95)| |Z|2023| |NPC|195742, 187916|

T Weather Control |QID|66242| |N|(npc:187809) in {Windsong Rise} (60.62, 63.56)| |Z|2023| |NPC|187809|
T Eagle-itarian |QID|66256| |N|(npc:187809) in {Windsong Rise} (60.62, 63.56)| |Z|2023| |NPC|187809|
T Fowl Sorcery |QID|66257| |N|(npc:187809) in {Windsong Rise} (60.62, 63.56)| |Z|2023| |NPC|187809|


A Oh No, Ohn'ahra! |QID|66258| |N|(npc:187809) in {Windsong Rise} (60.68, 63.56)| |Z|2023| |NPC|187809|

C Oh No, Ohn'ahra! |QID|66258| |N|Defeat enemies as (npc:187809) tries to free (npc:187895) in {Windsong Rise} (60.16, 65.13)| |Z|2023| |NPC|187809, 187895|

T Oh No, Ohn'ahra! |QID|66258| |N|(npc:195024) in {Windsong Rise} (61.40, 62.80)| |Z|2023| |NPC|195024|
A A Storm of Ill Tidings |QID|66259| |N|(npc:195024) in {Windsong Rise} (61.40, 62.80)| |Z|2023| |NPC|195024|

R Maruukai |QID|66259| |N|Travel to {Maruukai} (60.00, 37.48)| |Z|2023|
C A Storm of Ill Tidings |QID|66259| |N|Deliver your report to (npc:181198) in {Maruukai} (60.00, 37.48)| |Z|2023| |NPC|181198|

T A Storm of Ill Tidings |QID|66259| |N|(npc:181198) in {Maruukai} (60.00, 37.48)| |Z|2023| |NPC|181198|

--Bonds Renewed
A Chasing the Wind |QID|66327| |N|(npc:181198) in {Maruukai} (60.00, 37.48)| |Z|2023| |NPC|181198|

N (npc:195044)'s Report |QID|66327.1| |N|Listen to (npc:195044)'s report in {Maruukai} (60.02, 37.44)| |Z|2023| |NPC|195044|
N (npc:181198) |QID|66327.2| |N|Speak to (npc:181198) in {Maruukai} (60.02, 37.44)| |Z|2023| |NPC|181198|
N (npc:188247) |QID|66327.3| |N|Ride on (npc:188247) in {Maruukai} (61.12, 39.99)| |Z|2023| |NPC|188247|

R Horn of Drusahl |QID|66327| |N|Travel to {Horn of Drusahl} (72.92, 40.51)| |Z|2023|
N (npc:188068) |QID|66327.4| |N|Meet (npc:188068) in {Horn of Drusahl} (72.92, 40.51)| |Z|2023| |NPC|188068|
C Chasing the Wind |QID|66327| |N|Listen to (npc:195044)'s report in {Horn of Drusahl} (72.92, 40.51)| |Z|2023| |NPC|195044|

T Chasing the Wind |QID|66327| |N|(npc:188068) in {Horn of Drusahl} (73.01, 40.56)| |Z|2023| |NPC|188068|
A Nokhud Can Come of This |QID|70244| |N|(npc:188068) in {Horn of Drusahl} (73.01, 40.56)| |Z|2023| |NPC|188068|

N Retake the Village |QID|70244.1| |N|Retake the village from the Nokhud in {Horn of Drusahl} (75.06, 40.73)| |Z|2023| |NPC|188230, 188231, 185445|
N (npc:190932) |QID|70244.2| |N|Kill (npc:190932) in {Horn of Drusahl} (75.82, 40.95)| |Z|2023| |NPC|190932|

T Nokhud Can Come of This |QID|70244| |N|(npc:188068) in {Horn of Drusahl} (76.67, 40.91)| |Z|2023| |NPC|188068|
A Blowing of the Horn |QID|66329| |N|(npc:188068) in {Horn of Drusahl} (76.67, 40.91)| |Z|2023| |NPC|188068|

N (npc:188068) |QID|66329.1| |N|Speak to (npc:188068) in {Horn of Drusahl} (76.67, 40.91)| |Z|2023| |NPC|188068|

T Blowing of the Horn |QID|66329| |N|(npc:188068) in {Horn of Drusahl} (76.67, 40.91)| |Z|2023| |NPC|188068|
A Green Dragon Down |QID|66328| |N|(npc:188068) in {Horn of Drusahl} (76.67, 40.91)| |Z|2023| |NPC|188068|

R Maruukai |QID|67772| |N|Travel to {Maruukai} (62.46, 41.60)| |Z|2023|
T Call of the Hunt |QID|71231| |N|(npc:192926) in {Maruukai} (62.46, 41.60)| |Z|2023| |NPC|192926| |O|
A The Trouble with Taivan |QID|67772| |N|(npc:192621) in {Maruukai} (61.19, 39.97)| |Z|2023| |NPC|192621|

N (npc:188247) |QID|67772.1| |N|Brush (npc:188247) in {Maruukai} (61.17, 39.98)| |Z|2023| |NPC|188247|
N Pelt Bundle |QID|67772.2| |N|Pick up the Pelt Bundle in {Maruukai} (61.18, 39.73)| |Z|2023|
N (npc:188247) |QID|67772.3| |N|Place the Pelt Bundle on (npc:188247) in {Maruukai} (61.15, 39.92)| |Z|2023| |NPC|188247|
N Send Out |QID|67772.4| |N|Send (npc:188247) to (npc:192629) in {Maruukai} (61.15, 39.98)| |Z|2023| |NPC|188247, 192629|

R The Watering Hole |QID|67772| |N|Travel to {The Watering Hole} (71.42, 49.57)| |Z|2023|
N (npc:192629) |QID|67772.5| |N|Meet (npc:192629) at the {The Watering Hole} (71.42, 49.57)| |Z|2023| |NPC|192629|

T The Trouble with Taivan |QID|67772| |N|(npc:192629) in {The Watering Hole} (71.42, 49.57)| |Z|2023| |NPC|192629|
A The Hunting Hound |QID|67921| |N|(npc:192629) in {The Watering Hole} (71.42, 49.57)| |Z|2023| |NPC|192629|

N (npc:194292) |QID|67921.1| |N|Speak to (npc:194292) in {The Watering Hole} (71.42, 49.44)| |Z|2023| |NPC|194292|
N Green Dragons |QID|66328.1| |N|Find the Green dragons in {The Watering Hole} (72.50, 49.72)| |Z|2023|
N (npc:188068) |QID|66328.2| |N|Speak to (npc:188068) in {The Watering Hole} (72.37, 50.35)| |Z|2023| |NPC|188068|
N Listen |QID|66328.3| |N|Listen to the discussion in {The Watering Hole} (72.37, 50.35)| |Z|2023|

T Green Dragon Down |QID|66328| |N|(npc:188068) in {The Watering Hole} (72.37, 50.35)| |Z|2023| |NPC|188068|
A With the Wind at Our Backs |QID|66344| |N|(npc:188156) in {The Watering Hole} (72.45, 50.71)| |Z|2023| |NPC|188156|

C The Hunting Hound |QID|67921| |N|Hunt dangerous beasts with (npc:194292) to prove he is worthy of training in {The Watering Hole} (70.47, 50.91)| |Z|2023| |NPC|194292, 193407, 193395, 193385|

T The Hunting Hound |QID|67921| |N|(npc:192629) in {The Watering Hole} (71.41, 49.57)| |Z|2023| |NPC|192629|
A Part of a Pack |QID|70989| |N|(npc:192629) in {The Watering Hole} (71.41, 49.57)| |Z|2023| |NPC|192629|

C Part of a Pack |QID|70989| |N|Hunt the (npc:193145) with (npc:194292) and the pack of hunting bakar in {The Watering Hole} (74.35, 48.99)| |Z|2023| |NPC|193145, 194292|

T Part of a Pack |QID|70989| |N|(npc:192629) in {The Watering Hole} (71.46, 49.58)| |Z|2023| |NPC|192629|
A Try Again, Taivan! |QID|68083| |N|(npc:192629) in {The Watering Hole} (71.46, 49.58)| |Z|2023| |NPC|192629|

R Maruukai |QID|68083| |N|Travel to {Maruukai} (62.46, 41.60)| |Z|2023|
T Try Again, Taivan! |QID|68083| |N|(npc:192621) in {Maruukai} (61.23, 39.97)| |Z|2023| |NPC|192621|
A The Gentle Giant |QID|68084| |N|(npc:192621) in {Maruukai} (61.23, 39.97)| |Z|2023| |NPC|192621|

N (npc:188247) |QID|68084.1| |N|1/1 Talk to (npc:188247) in {Maruukai} (61.15, 39.97)| |Z|2023| |NPC|188247|

R The Mallakh |QID|68084| |N|Travel to {The Mallakh} (49.23, 41.15)| |Z|2023|
N (npc:192633) |QID|68084.2| |N|Meet (npc:192633) in {The Mallakh} (49.23, 41.15)| |Z|2023| |NPC|192633|
T The Gentle Giant |QID|68084| |N|(npc:192633) in {The Mallakh} (49.06, 41.06)| |Z|2023| |NPC|192633|
A Shaping a Shepherd |QID|68085| |N|(npc:192633) in {The Mallakh} (49.06, 41.06)| |Z|2023| |NPC|192633|

N (npc:194292) |QID|68085.1| |N|Talk to (npc:194292) in {The Mallakh} (48.97, 40.96)| |Z|2023| |NPC|194292|
N Herding |QID|68085.2| |N|Command (npc:194292) to herd 3 (npc:193183) in {The Mallakh} (49.86, 39.83)| |Z|2023| |NPC|194292, 193183|
N Chasing |QID|68085.3| |N|Chase 3 (npc:193183) into pen in {The Mallakh} (49.85, 41.91)| |Z|2023| |NPC|193183|

T Shaping a Shepherd |QID|68085| |N|(npc:192633) in {The Mallakh} (49.07, 41.07)| |Z|2023| |NPC|192633|
A Reign of the Ram |QID|71022| |N|(npc:192633) in {The Mallakh} (49.07, 41.07)| |Z|2023| |NPC|192633|

C Reign of the Ram |QID|71022| |N|Command (npc:194292) to confront the herd's (npc:195849) in {The Mallakh} (49.52, 39.71)| |Z|2023| |NPC|194292, 195849|

T Reign of the Ram |QID|71022| |N|(npc:192633) in {The Mallakh} (49.06, 41.06)| |Z|2023| |NPC|192633|
A Danger in Daruukhan |QID|68087| |N|(npc:192633) in {The Mallakh} (49.06, 41.06)| |Z|2023| |NPC|192633|

N (npc:193586) |QID|68087.1| |N|Talk to (npc:193586) in {The Mallakh} (49.04, 40.97)| |Z|2023| |NPC|193586|

R Daruukhan |QID|68087| |N|Travel to {Daruukhan} (52.95, 30.03)| |Z|2023|
N (npc:192621) |QID|68087.2| |N|Meet (npc:192621) in {Daruukhan} (52.95, 30.03)| |Z|2023| |NPC|192621|

T Danger in Daruukhan |QID|68087| |N|(npc:192621) in {Daruukhan} (52.86, 29.79)| |Z|2023| |NPC|192621|
A Saving Centaur |QID|69094| |N|(npc:192621) in {Daruukhan} (52.86, 29.79)| |Z|2023| |NPC|192621|

N (npc:196009) |QID|69094.1| |N|Rescue (npc:196009) in {Daruukhan} (52.11, 29.68)| |Z|2023| |NPC|196009|
N (npc:196009) |QID|69094.2| |N|Rescue (npc:196009) in {Daruukhan} (52.07, 29.64)| |Z|2023| |NPC|196009|
N (npc:196179) |QID|69094.4| |N|Rescue (npc:196179) in {Daruukhan} (52.01, 29.34)| |Z|2023| |NPC|196179|
N (npc:196180) |QID|69094.5| |N|Rescue (npc:196180) in {Daruukhan} (51.65, 29.18)| |Z|2023| |NPC|196180|
N (npc:196175) |QID|69094.3| |N|Rescue (npc:196175) in {Daruukhan} (51.52, 30.33)| |Z|2023| |NPC|196175|
N (npc:196187) |QID|69094.6| |N|Rescue (npc:196187) in {Daruukhan} (52.15, 30.39)| |Z|2023| |NPC|196187|

T Saving Centaur |QID|69094| |N|(npc:192621) in {Daruukhan} (52.83, 29.79)| |Z|2023| |NPC|192621|
A Homeward Hound |QID|69095| |N|(npc:192621) in {Daruukhan} (52.83, 29.79)| |Z|2023| |NPC|192621|
N (npc:194292) |QID|69095.1| |N|Talk to (npc:194292) in {Daruukhan} (52.71, 30.02)| |Z|2023| |NPC|194292|

R Maruukai |QID|69095| |N|Travel to {Maruukai} (61.13, 40.02)| |Z|2023|
C Homeward Hound |QID|69095| |N|Ride (npc:194292) back to {Maruukai} (61.13, 40.02)| |Z|2023| |NPC|194292|

T Homeward Hound |QID|69095| |N|(npc:192621) in {Maruukai} (61.19, 39.98)| |Z|2023| |NPC|192621|
A Taivan's Purpose |QID|69096| |N|(npc:192621) in {Maruukai} (61.19, 39.98)| |Z|2023| |NPC|192621|
N (npc:198295) (Part One) |QID|69096.1| |N|Try to Talk to (npc:198295) in {Maruukai} (61.82, 38.60)| |Z|2023| |NPC|198295|
N (npc:198295) (Part Two) |QID|69096.2| |N|Try to Talk to (npc:198295) Again in {Maruukai} (61.82, 38.60)| |Z|2023| |NPC|198295|
N (npc:194292) |QID|69096.3| |N|Wait to see what (npc:194292) does in {Maruukai} (61.82, 38.60)| |Z|2023| |NPC|194292|

T Taivan's Purpose |QID|69096| |N|(npc:192621) in {Maruukai} (61.83, 38.72)| |Z|2023| |NPC|192621|

R Ohn'ahran Plains |TID|71229| |N|Travel to {Ohn'ahran Plains} (55.91, 51.79)| |Z|2023| |REACH| |OID|66344|
T Call of the Plains |QID|71229| |N|(npc:185853) in {Ohn'ahran Plains} (55.91, 51.79)| |Z|2023| |NPC|185853| |POI| |O|

R The Watering Hole |QID|66344| |N|Travel to {The Watering Hole} (72.30, 50.72)| |Z|2023|
C With the Wind at Our Backs |QID|66344| |N|Ride with (npc:195137) in {The Watering Hole} (72.30, 50.72)| |Z|2023| |NPC|195137|

R Shady Sanctuary |QID|66344| |N|Travel to {Shady Sanctuary} (28.27, 57.69)| |Z|2023|
T With the Wind at Our Backs |QID|66344| |N|(npc:188106) in {Shady Sanctuary} (28.27, 57.69)| |Z|2023| |NPC|188106|
A Shady Sanctuary |QID|70220| |N|(npc:188106) in {Shady Sanctuary} (28.27, 57.69)| |Z|2023| |NPC|188106|
A Some Call Me Bug Catcher |QID|70062| |N|(npc:186503) in {Shady Sanctuary} (28.78, 58.31)| |Z|2023| |NPC|186503|

C Some Call Me Bug Catcher |QID|70062| |N|Collect 6 Flyspawn Beetle Parts from (npc:193996) in {Shady Sanctuary} (30.14, 58.29)| |Z|2023| |NPC|193996|

T Some Call Me Bug Catcher |QID|70062| |N|(npc:186503) in {Shady Sanctuary} (30.04, 58.28)| |Z|2023| |NPC|186503|
A Others Call Me Duck Herder |QID|70069| |N|(npc:186503) in {Shady Sanctuary} (30.04, 58.28)| |Z|2023| |NPC|186503|
f Shady Sanctuary |QID|70220| |N|Grab the {Shady Sanctuary} flight path (29.84, 57.67)| |Z|2023| |NPC|186487|

N (npc:186487) |QID|70220.2| |N|Speak to (npc:186487) in {Shady Sanctuary} (29.86, 57.71)| |Z|2023| |NPC|186487|
C Others Call Me Duck Herder |QID|70069| |N|Feed 4 ducklings and return to (npc:186503) in {Shady Sanctuary} (30.66, 55.92)| |Z|2023| |NPC|186503, 195054, 194161|
N (npc:194902) |QID|70220.3| |N|Speak to (npc:194902) in {Shady Sanctuary} (30.21, 55.71)| |Z|2023| |NPC|194902|
N (npc:194899) |QID|70220.1| |N|Speak to (npc:194899) in {Shady Sanctuary} (29.12, 55.28)| |Z|2023| |NPC|194899|

T Others Call Me Duck Herder |QID|70069| |N|(npc:186503) in {Shady Sanctuary} (28.77, 58.28)| |Z|2023| |NPC|186503|
A But... I Am the Hero of Ducks |QID|70070| |N|(npc:186503) in {Shady Sanctuary} (28.77, 58.28)| |Z|2023| |NPC|186503|

R Lilac Ramble |QID|70070| |N|Travel to {Lilac Ramble} (27.73, 56.79)| |Z|2023|
N (npc:194535) |QID|70070.1| |N|Search for (npc:194535) in {Lilac Ramble} (27.73, 56.79)| |Z|2023| |NPC|194535|
N (npc:194003) |QID|70070.2| |N|Make (npc:194003) throw up by defeating him in battle in {Lilac Ramble} (27.01, 56.65)| |Z|2023| |NPC|194003|

R Shady Sanctuary |QID|70070| |N|Travel to {Shady Sanctuary} (29.72, 58.57)| |Z|2023|
T But... I Am the Hero of Ducks |QID|70070| |N|(npc:186503) in {Shady Sanctuary} (29.72, 58.57)| |Z|2023| |NPC|186503|
N (npc:188972) |QID|70220.4| |N|Speak to (npc:188972) to visit {Merithra's Watch} in {Shady Sanctuary} (29.31, 56.43)| |Z|2023| |NPC|188972|

R Merithra's Watch |QID|70220| |N|Travel to {Merithra's Watch} (29.76, 60.02)| |Z|2023|
N (npc:194903) |QID|70220.5| |N|Speak to (npc:194903) in {Merithra's Watch} (29.76, 60.02)| |Z|2023| |NPC|194903|

R Shady Sanctuary |QID|70220| |N|Travel to {Shady Sanctuary} (28.27, 57.70)| |Z|2023|
T Shady Sanctuary |QID|70220| |N|(npc:188106) in {Shady Sanctuary} (28.27, 57.70)| |Z|2023| |NPC|188106|
A The Primalist Front |QID|66331| |N|(npc:188106) in {Shady Sanctuary} (28.27, 57.70)| |Z|2023| |NPC|188106|

N Winds of the Isles |QID|66331.1| |N|Ride Dragonriding Mount into Winds of the Isles (looks like a gale of wind between the arches) in {Shady Sanctuary} (28.09, 57.43)| |Z|2023|

R Lilac Ramble |QID|66331| |N|Travel to {Lilac Ramble} (25.05, 56.84)| |Z|2023|
A Find Theramus |QID|65899| |N|(npc:186303) in {Lilac Ramble} (25.05, 56.84)| |Z|2023| |NPC|186303|

N Caves |QID|65899.1| |N|Search the 3 caves in {Lilac Ramble} (24.19, 58.11) (25.76, 61.01) (24.76, 64.09)| |Z|2023|
N (npc:186313) |QID|65899.2| |N|Find (npc:186313) in {Lilac Ramble} (24.85, 64.42)| |Z|2023| |NPC|186313|

T Find Theramus |QID|65899| |N|(npc:186303) in {Lilac Ramble} (24.48, 63.00)| |Z|2023| |NPC|186303|
A Can't Beat Fluffy |QID|65903| |N|(npc:186303) in {Lilac Ramble} (24.48, 63.00)| |Z|2023| |NPC|186303|
A Ripsaw the Stalker |QID|69851| |N|Auto Accept in {Lilac Ramble} (25.38, 63.16)| |Z|2023| |O|

C Ripsaw the Stalker |QID|69851| |N|Kill (npc:193153) in {Lilac Ramble} (25.70, 64.35)| |Z|202| |NPC|193153| |O|

T Ripsaw the Stalker |QID|69851| |N|Auto Turn-In in {Lilac Ramble} (25.70, 64.35)| |Z|2023| |O|

R Hopper Hills |QID|65903| |N|Travel to {Hopper Hills} (23.71, 66.54)| |Z|2023|
A Territorial Coastling |QID|69852| |N|Auto Accept in {Hopper Hills} (23.71, 66.54)| |Z|2023|

C Territorial Coastling |QID|69852| |N|Kill (npc:193163) in {Hopper Hills} (23.36, 66.54)| |Z|2023| |NPC|193163|

T Territorial Coastling |QID|69852| |N|Auto Turn-In in {Hopper Hills} (23.36, 66.54)| |Z|2023|

C Can't Beat Fluffy |QID|65903| |U|191134| |N|Catch 12 (npc:187473) in {Hopper Hills} (23.13, 65.57)| |Z|2023| |NPC|187473|

R Lilac Ramble |QID|65903| |N|Travel to {Lilac Ramble} (25.05, 56.84)| |Z|2023|
T Can't Beat Fluffy |QID|65903| |N|(npc:186303) in {Lilac Ramble} (24.43, 62.98)| |Z|2023| |NPC|186303|
A Suspiciously Spiced Steak |QID|65900| |N|(npc:185726) in {Lilac Ramble} (24.47, 63.00)| |Z|2023| |NPC|185726|

N (item:191083) |QID|65900.3| |N|Collect 15 (item:191083) in {Lilac Ramble} (22.33, 60.90)| |Z|2023|
N (item:191085) |QID|65900.1| |N|Kill (npc:186308) and collect 3 (item:191085) in {Lilac Ramble} (21.91, 60.80)| |Z|2023| |NPC|186308|
N (item:191084) |QID|65900.2| |N|Collect 6 (item:191084) in {Lilac Ramble} (22.01, 59.90)| |Z|2023|
N Give Ingredients |QID|65900.4| |N|Give ingredients to (npc:185726) in {Lilac Ramble} (24.45, 63.01)| |Z|2023| |NPC|185726|

T Suspiciously Spiced Steak |QID|65900| |N|(npc:185726) in {Lilac Ramble} (24.47, 63.05)| |Z|2023| |NPC|185726|
A Food or Floof |QID|65902| |N|(npc:185726) in {Lilac Ramble} (24.47, 63.05)| |Z|2023| |NPC|185726|

N (npc:186313) |QID|65902.1| |N|Feed (npc:186313) in {Lilac Ramble} (24.83, 64.42)| |Z|2023| |NPC|186313|
N (npc:187473) |QID|65902.2| |N|Release (npc:187473) in {Lilac Ramble} (24.82, 64.53)| |Z|2023| |NPC|186970, 187473|

T Food or Floof |QID|65902| |N|(npc:185726) in {Lilac Ramble} (24.48, 63.02)| |Z|2023| |NPC|185726|
A More Than Weeds |QID|65905| |N|(npc:185726) in {Lilac Ramble} (24.48, 63.02)| |Z|2023| |NPC|185726|
A Proof of Negligence |QID|65937| |N|(npc:186303) in {Lilac Ramble} (24.46, 63.01)| |Z|2023| |NPC|186303|

N (npc:186378) |QID|65937.2| |N|Rescue the (npc:186378) in {Lilac Ramble} (24.87, 60.39)| |Z|2023| |NPC|186378|
N (npc:188019) |QID|65937.1| |N|Collect the (npc:188019) in {Lilac Ramble} (25.79, 59.64)| |Z|2023| |NPC|188019|
C More Than Weeds |QID|65905| |N|Clear out overgrowth and monsters in {Lilac Ramble} (25.51, 57.80)| |Z|2023| |NPC|187872, 186321|
N (item:191568) |QID|65937.3| |N|Kill (npc:186321) until you get (item:191568) in {Lilac Ramble} (25.43, 59.58)| |Z|2023| |NPC|186321|

T Proof of Negligence |QID|65937| |N|(npc:186303) in {Lilac Ramble} (24.47, 63.03)| |Z|2023| |NPC|186303|
T More Than Weeds |QID|65905| |N|(npc:185726) in {Lilac Ramble} (24.47, 63.03)| |Z|2023| |NPC|185726|
A Enough Is Enough |QID|65904| |N|(npc:186303) in {Lilac Ramble} (24.47, 63.03)| |Z|2023| |NPC|186303|

C Enough Is Enough |QID|65904| |N|Bring the evidence of Lilac Ramble's damage to (npc:186313) in {Lilac Ramble} (24.61, 64.08)| |Z|2023| |NPC|186313|

T Enough Is Enough |QID|65904| |N|(npc:186303) in {Lilac Ramble} (24.58, 63.98)| |Z|2023| |NPC|186303|
A In Memory of Ysera |QID|66011| |N|(npc:185726) in {Lilac Ramble} (24.58, 63.98)| |Z|2023| |NPC|185726|

N (npc:195450) and (npc:185726) |QID|66011.1| |N|Follow (npc:195450) and (npc:185726) in {Lilac Ramble} (25.00, 65.68)| |Z|2023| |NPC|195450, 185726|
N (npc:186313) |QID|66011.2| |N|Speak to (npc:186313) in {Lilac Ramble} (24.97, 65.92)| |Z|2023| |NPC|186313|
N Shrine |QID|66011.3| |N|Stand back and watch the shrine get restored in {Lilac Ramble} (24.90, 65.81)| |Z|2023|

T In Memory of Ysera |QID|66011| |N|(npc:187270) in {Lilac Ramble} (24.93, 65.82)| |Z|2023| |NPC|187270|

R Emerald Gardens |QID|66331| |N|Travel to {Emerald Gardens} (27.56, 46.00)| |Z|2023|
N (npc:186176) and (npc:186175) |QID|66331.3| |N|Listen to (npc:186176) and (npc:186175)'s report in {Emerald Gardens} (27.56, 46.00)| |Z|2023| |NPC|186176, 186175|
N (npc:192092) |QID|66331.2| |N|Listen to (npc:192092)'s report in {Emerald Gardens} (25.73, 44.26)| |Z|2023| |NPC|192092|

R The Storm Scar |QID|66331| |N|Travel to {The Storm Scar} (26.18, 40.10)| |Z|2023|
N (npc:191343) |QID|66331.4| |N|Listen to (npc:191343)'s report in {The Storm Scar} (26.18, 40.10)| |Z|2023| |NPC|191343|
N (npc:189599) |QID|66331.5| |N|Speak to (npc:189599) in {The Storm Scar} (25.62, 40.50)| |Z|2023| |NPC|189599|

T The Primalist Front |QID|66331| |N|(npc:188601) in {The Storm Scar} (25.65, 40.43)| |Z|2023| |NPC|188601|
A The Storm Scar |QID|66421| |N|Auto Accept in {The Storm Scar} (25.65, 40.43)| |Z|2023|
A Justice for Solethus |QID|66333| |N|(npc:189599) in {The Storm Scar} (25.63, 40.48)| |Z|2023| |NPC|189599|

R The Storm Scar |TID|66970| |N|Travel to {The Storm Scar} (25.05, 33.82)| |Z|2023|
K (npc:191354) |QID|66970.1| |N|Slay (npc:191354) in {The Storm Scar} (26.06, 34.18)| |Z|2023| |NPC|191354|
N (npc:192018) |QID|66333.2| |N|Destroy 3 (npc:192018) in {The Storm Scar} (24.84, 39.92) (25.37, 37.85)| |Z|2023| |NPC|192018|
N (npc:188341) |QID|66333.1| |N|Kill 3 (npc:188341) in {The Storm Scar} (24.71, 38.48)| |Z|2023| |NPC|188341|

T Justice for Solethus |QID|66333| |N|(npc:191494) in {The Storm Scar} (24.67, 38.54)| |Z|2023| |NPC|191494|
A Deconstruct Additional Pylons |QID|66335| |N|(npc:191494) in {The Storm Scar} (24.67, 38.54)| |Z|2023| |NPC|191494|
A Starve the Storm |QID|66784| |N|(npc:191494) in {The Storm Scar} (24.67, 38.54)| |Z|2023| |NPC|191494|

N First Primalist Pylon |QID|66335.1| |N|Mark the First Primalist Pylon in {The Storm Scar} (24.01, 39.25)| |Z|2023|
N Second Primalist Pylon |QID|66335.2| |N|Mark the Second Primalist Pylon in {The Storm Scar} (23.18, 37.58)| |Z|2023|
N Third Primalist Pylon |QID|66335.3| |N|Mark the Third Primalist Pylon in {The Storm Scar} (21.50, 37.59)| |Z|2023|

T Deconstruct Additional Pylons |QID|66335| |N|(npc:191494) in {The Storm Scar} (21.59, 37.57)| |Z|2023| |NPC|191494|

C The Storm Scar |QID|66421| |N|Eliminate enemy forces in {The Storm Scar} (21.59, 37.57)| |Z|2023| |NPC|191227, 187843, 188341|
T The Storm Scar |QID|66421| |N|Auto Turn-In in {The Storm Scar} (21.59, 37.57)| |Z|2023|

C Starve the Storm |QID|66784| |N|Kill (npc:191259) to close the Storm Corridor Portal in {The Storm Scar} (24.69, 35.19)| |Z|2023| |NPC|191259|

T Starve the Storm |QID|66784| |N|(npc:191494) in {The Storm Scar} (24.80, 35.11)| |Z|2023| |NPC|191494|
A Stormbreaker |QID|66337| |N|(npc:191494) in {The Storm Scar} (24.80, 35.11)| |Z|2023| |NPC|191494|

N (npc:188180) |QID|66337.1| |N|Kill (npc:188180) in {The Storm Scar} (22.51, 39.21)| |Z|2023| |NPC|188180|
N (npc:195136) |QID|66337.2| |N|Speak to (npc:195136) in {The Storm Scar} (22.92, 40.20)| |Z|2023| |NPC|195136|

R Emerald Gardens |QID|66337| |N|Travel to {Emerald Gardens} (27.56, 46.00)| |Z|2023|
T Stormbreaker |QID|66337| |N|(npc:188150) in {Emerald Gardens} (25.68, 48.37)| |Z|2023| |NPC|188150|
A The Isle of Emerald |QID|66336| |N|(npc:188150) in {Emerald Gardens} (25.68, 48.37)| |Z|2023| |NPC|188150|

R Ancient Bough |QID|66336| |N|Travel to {Ancient Bough} (22.15, 50.91)| |Z|2023|
T The Isle of Emerald |QID|66336| |N|(npc:188181) in {Ancient Bough} (22.15, 50.91)| |Z|2023| |NPC|188181|
A Renewal of Vows |QID|66783| |N|(npc:188181) in {Ancient Bough} (22.15, 50.91)| |Z|2023| |NPC|188181|

N (npc:191249) |QID|66783.1| |N|Accept (npc:191249)'s offering in {Ancient Bough} (22.14, 50.98)| |Z|2023| |NPC|191249|
N (npc:181214) |QID|66783.2| |N|Accept (npc:181214)'s offering in {Ancient Bough} (22.14, 50.98)| |Z|2023| |NPC|181214|
N (npc:188601) |QID|66783.3| |N|Accept (npc:188601)'s offering in {Ancient Bough} (22.14, 51.02)| |Z|2023| |NPC|188601|
N (npc:188181) |QID|66783.4| |N|Give (npc:188181)'s offering to (npc:188601) in {Ancient Bough} (22.33, 50.99)| |Z|2023| |NPC|188181, 188601|

T Renewal of Vows |QID|66783| |N|(npc:188181) in {Ancient Bough} (22.16, 50.99)| |Z|2023| |NPC|188181|

T The Ohn'ahran Plains Tour |QID|72483| |N|(npc:199118) in {Rusza'thar Reach} (88.13, 36.26)| |Z|2023| |NPC|199118| |O|
A The Azure Span Tour |QID|72485| |N|(npc:199118) in {Rusza'thar Reach} (88.13, 36.26)| |Z|2023| |NPC|199118|

N Guide Complete |N|Tick to switch guide to (guide:"2024(30-70)#2024(30-70)#2024(30-70)")|

]]
end, {image = "ohnahranplains.tga", description = [[]]})	end

	function Guide:Unload()
	end
end