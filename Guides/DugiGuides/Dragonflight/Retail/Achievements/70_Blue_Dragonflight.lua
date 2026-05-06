local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Blue_Dragonflight")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Blue Dragonflight (70+ Storyline)", nil, nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[

--The Veiled Ossuary
R The Seat of the Aspects |TID|72900| |N|Travel to atop of {The Seat of the Aspects} (61.88, 32.32)| |Z|2112| |REACH|57.06,42.44,2112|
A Keeper of the Ossuary |QID|72900| |N|(npc:187676) atop of {The Seat of the Aspects} (61.24, 36.47)| |Z|2112| |NPC|187676|

N (npc:199923) |QID|72900.1| |N|Speak to (npc:199923) in {Veiled Ossuary} (62.23, 17.92)| |Z|2025| |NPC|199923|

T Keeper of the Ossuary |QID|72900| |N|(npc:199923) in {Veiled Ossuary} (62.23, 17.92)| |Z|2025| |NPC|199923|
A On the Trail Again |QID|72921| |N|(npc:199923) in {Veiled Ossuary} (62.23, 17.92)| |Z|2025| |NPC|199923|

N (npc:199923) |QID|72921.1| |N|Speak to Senegos (62.23, 17.92)| |Z|2025| |NPC|199923|
N (npc:200099) |QID|72921.2| |N|Speak to (npc:200099) (62.23, 17.92)| |Z|2025| |NPC|200099|
N Tome of Fanciful Spheres |QID|72921.3| |N|Click the Hidden Tome (60.87, 16.72)| |Z|2025|
N Tome of Rolling |QID|72921.4| |N|Click the Hidden Tome (61.70, 12.73)| |Z|2025|
N Tome of Sticking |QID|72921.5| |N|Click the Hidden Tome (64.47, 15.14)| |Z|2025|

T On the Trail Again |QID|72921| |N|(npc:199961) in {Veiled Ossuary} (63.96, 12.34)| |Z|2025| |NPC|199961|
A Rolling Out |QID|72933| |N|(npc:199961) in {Veiled Ossuary} (63.96, 12.34)| |Z|2025| |NPC|199961|

N Arcane ball activated |QID|72933.1| |N|Speak to (npc:199961) to activate Arcane Ball (63.96, 12.34)| |Z|2025| |NPC|199961|
N Veiled Ossuary cleaned up |QID|72933.2| |N|<b>Arcane Ball Stage 1, roll up (npc:196498)<br/><b>Arcane Ball Stage 2, roll up (npc:196498) and (npc:196190)<br/><b>Arcane Ball Stage 3, roll up (npc:196498) and (npc:196190) and (npc:196587) (65.99, 12.38)| |Z|2025| |NPC|196498, 196190, 196587|

T Rolling Out |QID|72933| |N|(npc:199969) in {Veiled Ossuary} (66.72, 11.98)| |Z|2025| |NPC|199969|
A Lest We Forget |QID|72934| |N|(npc:199969) in {Veiled Ossuary} (66.72, 11.98)| |Z|2025| |NPC|199969|

N 4 Gravestones placed |QID|72934.2| |N|Place 4 Gravestones (67.07, 12.02)(66.98, 12.06)(66.84, 11.83)(66.88, 11.70)| |Z|2025|
N 3 Gravestones updated |QID|72934.1| |N|Update 3 Gravestones (67.03, 12.05)(66.93, 11.64)(67.10, 11.79)| |Z|2025|

T Lest We Forget |QID|72934| |N|(npc:200447) in {Veiled Ossuary} (67.08, 11.78)| |Z|2025| |NPC|200447|
A Sindragosa and Malygos's Rest |QID|73069| |N|(npc:200447) in {Veiled Ossuary} (67.08, 11.78)| |Z|2025| |NPC|200447|

N Observe Kalecgos and Alexstrasza putting Sindragosa and Malygos's remains to rest |QID|73069.1| |N|Speak with (npc:200447) and then watch the role play (67.06, 11.76)| |Z|2025| |NPC|200447|

T Sindragosa and Malygos's Rest |QID|73069| |N|(npc:200007) in {Veiled Ossuary} (67.04, 11.80)| |Z|2025| |NPC|200007|
A Memories of Sindragosa and Malygos |QID|75023| |N|(npc:200447) in {Veiled Ossuary} (67.08, 11.78)| |Z|2025| |NPC|200447|

N Memory of a Betrayer dispelled |QID|75023.1| |N|Dispell (npc:202943) (66.87, 11.91)| |Z|2025| |NPC|202943|
N Memory of a Master dispelled |QID|75023.2| |N|Dispell (npc:202941) (67.03, 11.98)| |Z|2025| |NPC|202941|
N Memory of a Traitorous Sister dispelled |QID|75023.3| |N|Dispell (npc:202940) (66.93, 11.71)| |Z|2025| |NPC|202940|

T Memories of Sindragosa and Malygos |QID|75023| |N|(npc:200447) in {Veiled Ossuary} (67.08, 11.78)| |Z|2025| |NPC|200447|
A Archives Return |QID|72935| |N|(npc:200447) in {Veiled Ossuary} (67.08, 11.78)| |Z|2025| |NPC|200447|

R Azure Archives |TID|72935| |N|Travel to (Azure Archives) (40.73, 59.03)| |Z|2024|
T Archives Return |QID|72935| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000|
A Azuregos's Support |QID|72936| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000|

R The Nexus |TID|72936| |N|Use Portal to the Nexus (39.41, 63.01)| |Z|2024| |REACH|22.27,23.65,114|
T Azuregos's Support |QID|72936| |N|(npc:199976) in {Coldarra} (22.48, 23.81)| |Z|114| |NPC|199976|
A Unusual Disruptions |QID|72937| |N|(npc:199976) in {Coldarra} (22.48, 23.81)| |Z|114| |NPC|199976|

N Northern disruption contained |QID|72937.1| |N|Use (item:205931) then kill enemies that spawn (26.59, 24.60)| |Z|114| |U|205931|
N Southern disruption contained |QID|72937.2| |N|Use (item:205931) then kill enemies that spawn (26.68, 29.21)| |Z|114| |U|205931|
N Eastern disruption contained |QID|72937.3| |N|Use (item:205931) then kill enemies that spawn (29.22, 26.63)| |Z|114| |U|205931|

T Unusual Disruptions |QID|72937| |N|(npc:199976) in {Coldarra} (22.48, 23.81)| |Z|114| |NPC|199976|
A Archival Arrival |QID|72938| |N|(npc:199976) in {Coldarra} (22.48, 23.81)| |Z|114| |NPC|199976|

R Azure Archives |TID|72938| |N|Use Portal to the Azure Archives (22.23, 23.62)| |Z|114| |REACH|39.43,62.97,2024|
T Archival Arrival |QID|72938| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000|

N Accept Quest |N|(npc:190000) in {Azure Archives} (39.47, 63.04)<br/><b>Tick this step.<br/><b>You will need to Reset and Reload the guides to proceed with the next quest.| |Z|2024| |NPC|190000|

N Choose A Location |N|Use the Dragon Locator and choose a desired location (39.47, 63.02)<br/><b>These locations can be done in any order.<br/><b>Tick this step.| |Z|2024|

A Winterspring |QID|72656| |N|Dragon Locator in {Azure Archives} (39.47, 63.02)| |Z|2024| |O|
T Winterspring |QID|72656| |N|(npc:186188) in {Azure Archives} (39.49, 63.05)| |Z|2024| |NPC|186188| |O|
A A Protector of Magic |QID|72657| |N|(npc:186188) in {Azure Archives} (39.49, 63.05)| |Z|2024| |NPC|186188| |PRE|72656|
R Winterspring |QID|72657| |N|Use Portal to Winterspring (39.51, 63.10)| |Z|2024| |PRE|72656|
T A Protector of Magic |QID|72657| |N|(npc:199370) in {The Ruins of Kel'Theril} (48.04, 59.11)| |Z|83| |NPC|199370| |PRE|72656|
A Artifacts Abound |QID|74354| |N|(npc:199370) in {The Ruins of Kel'Theril} (48.04, 59.07)| |Z|83| |NPC|199370| |PRE|72656|
N 5 Totemic Ruins |QID|74354.1| |N|Click on 5 Owlkin Totems and slay (npc:201758) that spawns afterwards in {The Hidden Grove} (62.20, 25.87)| |Z|83| |NPC|201758| |PRE|72656|
T Artifacts Abound |QID|74354| |N|(npc:199370) in {The Ruins of Kel'Theril} (48.05, 59.06)| |Z|83| |NPC|199370| |PRE|72656|
A Test Subject |QID|72659| |N|(npc:199370) in {The Ruins of Kel'Theril} (48.05, 59.06)| |Z|83| |NPC|199370| |PRE|72656|
N Bottled Spirits tested |QID|72659.1| |N|Click on the Bottled Spirits (48.20, 58.96)| |Z|83| |PRE|72656|
N Icy Book Tested |QID|72659.2| |N|Click on the Icy Book tested (48.17, 58.95)| |Z|83| |PRE|72656|
N Left Boot Tested |QID|72659.3| |N|Click on the Left Boot (48.22, 59.01)| |Z|83| |PRE|72656|
T Test Subject |QID|72659| |N|(npc:199370) in {The Ruins of Kel'Theril} (48.05, 59.08)| |Z|83| |NPC|199370| |PRE|72656|
A Owl of a Sudden |QID|72660| |N|(npc:199370) in {The Ruins of Kel'Theril} (48.05, 59.08)| |Z|83| |NPC|199370| |PRE|72656|
N (npc:199370) |QID|72660.1| |N|Speak to (npc:199370) to begin the test (47.31, 60.51)| |Z|83| |NPC|199370| |PRE|72656|
N Half-Restored Totem tested |QID|72660.2| |N|Click on the Half-Restored Totem  (47.47, 60.74)| |Z|83| |PRE|72656|
T Owl of a Sudden |QID|72660| |N|(npc:199370) in {The Ruins of Kel'Theril} (47.35, 60.55)| |Z|83| |NPC|199370| |PRE|72656|
A A Wyrm Rest |QID|72661| |N|(npc:199404) in {The Ruins of Kel'Theril} (47.52, 60.27)| |Z|83| |NPC|199404| |PRE|72656|
N (npc:199404) |QID|72661.1| |N|Speak to (npc:199404) in {The Ruins of Kel'Theril} (47.52, 60.27)| |Z|83| |NPC|199404| |PRE|72656|
R Frostfire Hot Springs |QID|72661.2| |N|Travel to the {Frostfire Hot Springs} (32.53, 49.22)| |Z|83| |PRE|72656|
N A Wyrm Rest |QID|72661.3| |N|Move into the hot springs water (32.22, 49.20)| |Z|83| |PRE|72656|
T A Wyrm Rest |QID|72661| |N|(npc:199404) in {Frostfire Hot Springs} (32.27, 49.08)| |Z|83| |NPC|199404| |PRE|72656|
A Back with the Blues |QID|74356| |N|(npc:199404) in {Frostfire Hot Springs} (32.27, 49.08)| |Z|83| |NPC|199404| |PRE|72656|
R Azure Archives |QID|74356| |N|Use Portal to the Azure Archives (32.34, 49.02)| |Z|83| |REACH|39.43,62.97,2024| |PRE|72656|
T Back with the Blues |QID|74356| |N|(npc:186188) in {Azure Archives} (39.49, 63.06)| |Z|2024| |NPC|186188| |PRE|72656|

A Theramore |QID|72939| |N|Dragon Locator in {Azure Archives} (39.47, 63.02)| |Z|2024| |O|
T Theramore |QID|72939| |N|(npc:190000) in {Azure Archives} (39.48, 63.04)| |Z|2024| |NPC|190000| |O|
A The Sullied Banner |QID|73188| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|72939|
R Theramore |QID|73188| |N|Use Portal to Theramore (39.41, 63.04)| |Z|2024| |REACH|57.20,55.49,70| |PRE|72939|
T The Sullied Banner |QID|73188| |N|(npc:199736) in {Theramore Isle} (62.86, 49.71)| |Z|70| |NPC|199736| |PRE|72939|
A Aftershocks |QID|72832| |N|(npc:199736) in {Theramore Isle} (62.86, 49.71)| |Z|70| |NPC|199736| |PRE|72939|
A Creative Solutions |QID|72831| |N|(npc:199737) in {Theramore Isle} (62.82, 49.71)| |Z|70| |NPC|199737| |PRE|72939|
N 8 Arcanists Pacified |QID|72831.1| |N|Defeat 8 (npc:199739) to pacify (64.21, 47.79)| |Z|70| |NPC|199739 |PRE|72939|
N 5 Prototype Mana Bombs Teleported |QID|72832.1| |N|Click on 5 Prototype Mana Bombs (64.77, 48.36)| |Z|70| |PRE|72939|
T Creative Solutions |QID|72831| |N|(npc:199737) in {Theramore Isle} (67.01, 55.04)| |Z|70| |NPC|199737| |PRE|72939|
T Aftershocks |QID|72832| |N|(npc:199736) in {Theramore Isle} (66.96, 54.64)| |Z|70| |NPC|199736| |PRE|72939|
A Breaking the Cycle |QID|72833| |N|(npc:199736) in {Theramore Isle} (66.96, 54.64)| |Z|70| |NPC|199736| |PRE|72939|
N (npc:199740) Apprehended |QID|72833.1| |N|Defeat (npc:199740) (67.86, 51.12)| |Z|70| |NPC|199740| |PRE|72939|
T Breaking the Cycle |QID|72833| |N|(npc:199736) in {Theramore Isle} (66.97, 54.62)| |Z|70| |NPC|199736| |PRE|72939|
A A Moment of Reflection |QID|74335| |N|(npc:199736) in {Theramore Isle} (66.97, 54.62)| |Z|70| |NPC|199736| |PRE|72939|
R Azure Archives |QID|74335| |N|Use Portal to the Azure Archives (66.86, 53.20)| |Z|70| |REACH|39.42,62.99,2024| |PRE|72939|
T A Moment of Reflection |QID|74335| |N|(npc:190000) in {Azure Archives} (39.47, 63.03)| |Z|2024| |NPC|190000| |PRE|72939|

A Jade Forest |QID|73227| |N|Dragon Locator in {Azure Archives} (39.47, 63.02)| |Z|2024| |O|
T Jade Forest |QID|73227| |N|(npc:190000) in {Azure Archives} (39.48, 63.04)| |Z|2024| |NPC|190000| |O|
A Warm Winds and Water |QID|72650| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73227|
R The Jade Forest |QID|72650.1| |N|Use Portal to The Jade Forest (39.42, 63.02)| |Z|2024| |REACH|46.58,46.87,371| |PRE|73227|
T Warm Winds and Water |QID|72650| |N|(npc:199361) in {Dawn's Blossom} (46.52, 44.48)| |Z|371| |NPC|199361| |PRE|73227|
A Carp Care |QID|72651| |N|(npc:199361) in {Dawn's Blossom} (46.52, 44.48)| |Z|371| |NPC|199361| |PRE|73227|
A Local Deliveries |QID|72653| |N|(npc:199361) in {Dawn's Blossom} (46.52, 44.48)| |Z|371| |NPC|199361| |PRE|73227|
N (npc:59383) |QID|72653.3| |N|Speak to (npc:59383) (48.33, 46.03)| |Z|371| |NPC|59383| |PRE|73227|
N (npc:59173) |QID|72653.1| |N|Speak to (npc:59173) (46.72, 45.82)| |Z|371| |NPC|59173| |PRE|73227|
N (npc:56777) |QID|72653.2| |N|Speak to (npc:56777) (46.57, 45.99)| |Z|371| |NPC|56777| |PRE|73227|
N (npc:56778) |QID|72653.4| |N|Speak to (npc:56778) (46.40, 45.49)| |Z|371| |NPC|56778| |PRE|73227|
N Carps Fed and Ponds Cleaned |QID|72651.1| |N|Use (item:203182) and throw it to (npc:59311) and click on Pond Scum in {Dawn's Blossom} (48.04, 47.91)| |Z|371| |POI| |U|203182| |NPC|59311| |PRE|73227|
T Carp Care |QID|72651| |N|(npc:199361) in {Dawn's Blossom} (46.51, 44.48)| |Z|371| |NPC|199361| |PRE|73227|
T Local Deliveries |QID|72653| |N|(npc:199361) in {Dawn's Blossom} (46.51, 44.48)| |Z|371| |NPC|199361| |PRE|73227|
A Up, Up, and Home |QID|72654| |N|(npc:199361) in {Dawn's Blossom} (46.51, 44.48)| |Z|371| |NPC|199361| |PRE|73227|
N (npc:199361) |QID|72654.1| |N|Speak to (npc:199361) in {Dawn's Blossom} (49.17, 42.53)| |Z|371| |NPC|199361| |PRE|73227|
T Up, Up, and Home |QID|72654| |N|(npc:199361) in {Dawn's Blossom} (49.16, 42.47)| |Z|371| |NPC|199361| |PRE|73227|
A Self Care |QID|72652| |N|(npc:201019) in {Dawn's Blossom} (49.19, 42.51)| |Z|371| |NPC|201019| |PRE|73227|
N Kirygosa's Home Cleaned |QID|72652.1| |N|Click on Dead Flower Bunch, Crooked Painting, Food Scraps, Dust Clump, Flatten Pillow (49.10, 42.54)| |Z|371| |PRE|73227|
T Self Care |QID|72652| |N|(npc:201019) in {Dawn's Blossom} (49.20, 42.52)| |Z|371| |NPC|201019| |PRE|73227|
A A Drink with Kalecgos |QID|72655| |N|(npc:201019) in {Dawn's Blossom} (49.20, 42.52)| |Z|371| |NPC|201019| |PRE|73227|
N Drink with Kalecgos |QID|72655.1| |N|Click on the Mug of Roasted Barley Tea on the table near (npc:201019) in {The Drunken Hozen} (45.91, 43.62)| |Z|371| |NPC|201019| |PRE|73227|
T A Drink with Kalecgos |QID|72655| |N|(npc:201019) in {The Drunken Hozen} (45.88, 43.61)| |Z|371| |NPC|201019| |PRE|73227|
A Blue is My Favorite Color |QID|74291| |N|(npc:201019) in {The Drunken Hozen} (45.88, 43.61)| |Z|371| |NPC|201019| |PRE|73227|
N (npc:199361) |QID|74291.1| |N|Speak to (npc:199361) in {The Drunken Hozen} (45.89, 43.58)| |Z|371| |NPC|199361| |PRE|73227|
N (npc:201019) |QID|74291.2| |N|Speak to (npc:201019) in {The Drunken Hozen} (45.90, 43.59)| |Z|371| |NPC|201019| |PRE|73227|
R Azure Archives |QID|74291.3| |N|Use Portal to the Azure Archives (45.83, 43.48)| |Z|371| |REACH|39.43,62.98,2024| |PRE|73227|
T Blue is My Favorite Color |QID|74291| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73227|

A Booty Bay |QID|73026| |N|Dragon Locator in {Azure Archives} (39.47, 63.02)| |Z|2024| |O|
T Booty Bay |QID|73026| |N|(npc:186240) in {Azure Archives} (39.47, 62.99)| |Z|2024| |NPC|186240| |O|
A The Booty Bay Journal |QID|72988| |N|(npc:190000) in {Azure Archives} (39.48, 63.04)| |Z|2024| |NPC|190000| |PRE|73026|
R Booty Bay |QID|72988| |N|Use Portal to Booty Bay (39.50, 62.93)| |Z|2024| |REACH|41.81,73.17,210| |PRE|73026|
A No Such Thing as Bad Luck |QID|72527| |N|(npc:199185) in {Booty Bay} (41.35, 73.09)| |Z|210| |NPC|199185| |PRE|73026|
T No Such Thing as Bad Luck |QID|72527| |N|(npc:199185) in {Booty Bay} (42.78, 74.06)| |Z|210| |NPC|199185| |PRE|73026|
A Information is King |QID|72529| |N|(npc:2846) in {Booty Bay} (42.81, 74.12)| |Z|210| |NPC|2846| |PRE|73026|
N Get information from Blixrez Goodstitch |QID|72529.1| |N|Speak to (npc:2846) and use options to get information in {Booty Bay} (42.81, 74.12)| |Z|210| |NPC|2846| |PRE|73026|
T Information is King |QID|72529| |N|(npc:2846) in {Booty Bay} (42.81, 74.12)| |Z|210| |NPC|2846| |PRE|73026|
A Anyway, I Started Bribing |QID|72530| |N|(npc:199185) in {Booty Bay} (42.79, 74.06)| |Z|210| |NPC|199185| |PRE|73026|
N (npc:203383) |QID|72530.1| |N|Use (item:202271) to recruit 6 (npc:203383), slay ones that attack in {The Crystal Shore} (56.23, 60.86)| |Z|210| |NPC|203383| |U|202271| |PRE|73026|
N Prospector Arty confronted |QID|72530.2| |N|Speak to (npc:199213) in {The Crystal Shore} (56.25, 60.14)| |Z|210| |NPC|199213| |PRE|73026|
T Anyway, I Started Bribing |QID|72530| |N|(npc:199185) in {Cape of Stranglethorn} (42.29, 77.38)| |Z|210| |NPC|199185| |PRE|73026|
A Money, Money, Money! |QID|72532| |N|(npc:199185) in {Cape of Stranglethorn} (42.29, 77.38)| |Z|210| |NPC|199185| |PRE|73026|
A Crystals Shmystals |QID|72533| |N|(npc:199185) in {Cape of Stranglethorn} (42.29, 77.38)| |Z|210| |NPC|199185| |PRE|73026|
N (item:202284) |QID|72533.1| |N|Slay (npc:199351) and loot (item:202284) (33.64, 84.00)| |Z|210| |NPC|199351| |PRE|73026|
N 1500 (item:204705) |QID|72532.1| |N|Slay (npc:199348) and loot 1500 (item:204705) (33.93, 84.52)| |Z|210| |NPC|199348| |PRE|73026|
N (item:202281) |QID|72533.2| |N|Click Treasure Chest and loot (item:202281) (33.86, 84.05)| |Z|210| |PRE|73026|
T Money, Money, Money! |QID|72532| |N|(npc:199185) in {Cape of Stranglethorn} (42.28, 77.39)| |Z|210| |NPC|199185| |PRE|73026|
T Crystals Shmystals |QID|72533| |N|(npc:199185) in {Cape of Stranglethorn} (42.28, 77.39)| |Z|210| |NPC|199185| |PRE|73026|
A Settled with the Baron |QID|72534| |N|(npc:199185) in {Cape of Stranglethorn} (42.28, 77.39)| |Z|210| |NPC|199185| |PRE|73026|
N Treasure given to Baron Revilgaz |QID|72534.1| |N|Speak to (npc:200473) in {Cape of Stranglethorn} (42.18, 77.41)| |Z|210| |NPC|200473| |PRE|73026|
T Settled with the Baron |QID|72534| |N|(npc:199185) in {Cape of Stranglethorn} (42.29, 77.39)| |Z|210| |NPC|199185| |PRE|73026|
A Zeroing Debt |QID|73181| |N|(npc:200478) in {Cape of Stranglethorn} (42.20, 77.54)| |Z|210| |NPC|200478| |PRE|73026|
R Azure Archives |QID|73181.1| |N|Use the Portal to the Azure Archives (42.32, 77.52)| |Z|210| |REACH|39.43,62.97,2024| |PRE|73026|
T Zeroing Debt |QID|73181| |N|(npc:186240) in {Azure Archives} (39.46, 63.00)| |Z|2024| |NPC|186240| |PRE|73026|

A Crystalsong Forest |QID|73091| |N|Dragon Locator in {Azure Archives} (39.47, 63.02)| |Z|2024| |O|
T Crystalsong Forest |QID|73091| |N|(npc:190000) in {Azure Archives} (39.48, 63.04)| |Z|2024| |NPC|190000| |O|
A Regrets in Crystal |QID|73090| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73091|
R Crystalsong Forest |QID|73090| |N|Use Portal to Crystalsong Forest (39.41, 63.01)| |Z|2024| |REACH|12.09,66.77,121| |PRE|73091|
T Regrets in Crystal |QID|73090| |N|(npc:199184) in {The Unbound Thicket} (91.38, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
A Those We Left Behind |QID|72670| |N|(npc:199184) in {The Unbound Thicket} (91.38, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
A A Shattered Legacy |QID|72674| |N|(npc:199184) in {The Unbound Thicket} (91.38, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
N 6 Echoes Soothed |QID|72670.1| |N|Soothe (npc:199198), (npc:200170), (npc:200171), (npc:200172) by answering their questions, slay them if you got it wrong in {Ruins of Shandaral} (87.05, 60.57)<br/><b>(npc:199198) - Option 2 > Option 1<br/><b>(npc:200170) - Option 3 > Option 3<br/><b>(npc:200171) - Option 3 > Option 1<br/><b>(npc:200172) - Option 3 > Option 2| |Z|127| |NPC|199198, 200170, 200171, 200172| |PRE|73091|
N 6 Crystal Focus Fragment |QID|72674.1| |N|Click 6 Crystal Remains (86.16, 59.58)| |Z|127| |PRE|73091|
T Those We Left Behind |QID|72670| |N|(npc:199184) in {The Unbound Thicket} (91.39, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
T A Shattered Legacy |QID|72674| |N|(npc:199184) in {The Unbound Thicket} (91.39, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
A An Arcane Requiem |QID|72679| |N|(npc:199184) in {The Unbound Thicket} (91.39, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
N Begin the ritual |QID|72679.1| |N|Use (spell:403011) ability that appears somewhere on screen (86.47, 68.97)| |Z|127| |NPC|205301| |PRE|73091|
N Spirits of Shandaral Put to Rest |QID|72679.2| |N|Slay (npc:203476), (npc:199423) (86.45, 68.92)| |Z|127| |NPC|203476, 199423| |PRE|73091|
T An Arcane Requiem |QID|72679| |N|(npc:199184) in {The Unbound Thicket} (91.37, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
A The Sound of Silence |QID|74783| |N|(npc:199184) in {The Unbound Thicket} (91.37, 57.19)| |Z|127| |NPC|199184| |PRE|73091|
R Azure Archives |QID|74783| |N|Use Portal to the Azure Archives (91.48, 56.98)| |Z|127| |REACH|39.42,62.97,2024| |PRE|73091|
T The Sound of Silence |QID|74783| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73091|

--United Again
A Reunited Again |QID|75244| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73403|
N (npc:190000) |QID|75244.1| |N|Speak to (npc:190000) and then listen to Kalecgos's speech in {Azure Archives} (39.42, 63.04)| |Z|2024| |NPC|190000| |PRE|73403|
T Reunited Again |QID|75244| |N|(npc:190000) in {Azure Archives} (39.48, 63.03)| |Z|2024| |NPC|190000| |PRE|73403|
A Veiled Trouble |QID|72942| |N|(npc:190000) in {Azure Archives} (39.48, 63.03)| |Z|2024| |NPC|190000| |PRE|73403|
R Veiled Ossuary |QID|72942| |N|Use Portal to Veiled Ossuary (39.40, 63.01)| |Z|2024| |REACH|65.79,12.47,2025| |PRE|73403|
T Veiled Trouble |QID|72942| |N|(npc:200019) in {Veiled Ossuary} (66.19, 12.27)| |Z|2025| |NPC|200019| |PRE|73403|
A Veiled Ossuary Chaos |QID|72946| |N|(npc:200019) in {Veiled Ossuary} (66.19, 12.27)| |Z|2025| |NPC|200019| |PRE|73403|
A Memories of Old |QID|72947| |N|(npc:200019) in {Veiled Ossuary} (66.19, 12.27)| |Z|2025| |NPC|200019| |PRE|73403|
N (npc:200826) |QID|72947.1| |N|Slay (npc:200826) in {Veiled Ossuary} (63.99, 16.35)| |Z|2025| |NPC|200826| |PRE|73403|
N (npc:200827) |QID|72947.2| |N|Slay (npc:200827) in {Veiled Ossuary} (60.04, 14.92)| |Z|2025| |NPC|200827| |PRE|73403|
N (npc:200828) |QID|72947.3| |N|Slay (npc:200828) in {Veiled Ossuary} (61.68, 12.70)| |Z|2025| |NPC|200828| |PRE|73403|
N Veiled Ossuary Chaos |QID|72946.1| |N|Slay Arcane Invaders in this area until bar reaches 100% in {Veiled Ossuary} (63.70, 14.39)| |Z|2025| |NPC|200824, 200825, 200816, 200869, 200823| |PRE|73403|
T Veiled Ossuary Chaos |QID|72946| |N|(npc:200019) in {Veiled Ossuary} (66.19, 12.27)| |Z|2025| |PRE|73403|
T Memories of Old |QID|72947| |N|(npc:200019) in {Veiled Ossuary} (66.19, 12.27)| |Z|2025| |NPC|200019| |PRE|73403|
A What Still Remains |QID|72948| |N|(npc:200019) in {Veiled Ossuary} (66.19, 12.27)| |Z|2025| |NPC|200019| |PRE|73403|
N (npc:200019) |QID|72948.1| |N|Speak to (npc:200019) in {Veiled Ossuary} (67.01, 11.78)| |Z|2025| |NPC|200019| |PRE|73403|
N (item:203184) |QID|72948.2| |N|Click on Malygos's Lingering Essence in {Veiled Ossuary} (67.09, 11.86)| |Z|2025| |PRE|73403|
N (item:203183) |QID|72948.3| |N|Click on Sindragosa's Lingering Essence in {Veiled Ossuary} (67.07, 11.77)| |Z|2025| |PRE|73403|
T What Still Remains |QID|72948| |N|(npc:201061) in {Veiled Ossuary} (67.07, 11.83)| |Z|2025| |NPC|201061| |PRE|73403|
A Swiftly to the Archives |QID|72949| |N|(npc:201061) in {Veiled Ossuary} (67.07, 11.83)| |Z|2025| |NPC|201061| |PRE|73403|
R Azure Archives |QID|72949| |N|Use Portal to the Azure Archives (65.65, 12.56)| |Z|2025| |REACH|39.43,62.27,2024| |PRE|73403|
T Swiftly to the Archives |QID|72949| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73403|
A The Last Conflict |QID|72950| |N|(npc:186188) in {Azure Archives} (39.49, 63.05)| |Z|2024| |NPC|186188| |PRE|73403|
C Speak to Kalecgos |SID|57829|1| |QID|72950| |N|Speak to (npc:201087)| |Z|947| |NPC|201087| |PRE|73403|
C Defeat Sindragosa |SID|57830|2| |QID|72950| |N|Defeat (npc:201089)| |Z|947| |NPC|201089| |PRE|73403|
N Complete the Scenario |QID|72950.1| |N|Complete "The Last Conflict", by speaking with (npc:201087) and defeating (npc:201089) and witnessing | |Z|947| |NPC|201087, 201089| |PRE|73403|
T The Last Conflict |QID|72950| |N|(npc:201128) in {Azure Archives} (39.31, 63.82)| |Z|2024| |NPC|201128| |PRE|73403|
A A Peaceful Farewell |QID|72951| |N|(npc:201125) in {Azure Archives} (39.31, 63.64)| |Z|2024| |NPC|201125| |PRE|73403|
N (npc:201125) |QID|72951.1| |N|Speak with (npc:201125) one last time in {Azure Archives} (39.49, 63.02)| |Z|2024| |NPC|201125| |PRE|73403|
T A Peaceful Farewell |QID|72951| |N|(npc:190000) in {Azure Archives} (39.47, 63.04)| |Z|2024| |NPC|190000| |PRE|73403|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end