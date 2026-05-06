local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Secrets_of_Azeroth)")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Secrets of Azeroth (70+ Storyline)", nil, nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[
N Note |N|This guide will walk you through to complete (aid:18642), (aid:18645), (aid:18646), (aid:18643) and (aid:18644) that rewards transmogrification items, Pets, Mounts, and Titles<br/><b>Tick this step| |OID|77202|

-- Day 1: CLUE 1: THE PRESERVATIONIST
A The Preservationists |QID|77202| |D| |N|(npc:199261) in {The Artisan's Market} (30.75, 68.44)| |Z|2112| |NPC|199261| |OID|77203|
T The Preservationists |QID|77202| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.19)| |Z|2112| |NPC|206864| |OID|77203|
A Preserving Rarities |QID|77203| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.19)| |Z|2112| |NPC|206864|

C (npc:206864) |QID|77203| |N|Speak to (npc:206864) in {The Roasted Ram} (47.44, 48.19)| |Z|2112| |NPC|206864| |L|208054|
U (item:208056) |QID|77203| |U|208054| |N|Use (item:208054) in {The Roasted Ram}| |PPOS| |L|208056|
C (npc:207696) |QID|77203| |N|Speak to (npc:207696) in {The Roasted Ram} (47.91, 46.94)<br/><b>Tick this step| |Z|2112| |NPC|207696|
C Solve the Mystery |QID|77203| |N|Click on Golden Chalice on the left side of the room as you enter {Valdrakken Treasury Hoard} (58.86, 54.27)| |Z|2112| |L|208055|

T Preserving Rarities |QID|77203| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.19)| |Z|2112| |NPC|206864|

-- Day 1: CLUE 2: CEREMONIAL SPEAR
A Rise in Relic Theft |QID|76735| |D| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.19)| |Z|2112| |NPC|206864| |E| |OID|77237|

C (npc:186448) |QID|76735| |N|Speak to (npc:186448) in {The Filled Bowl} inside the innkeeper building (12.42, 49.34)| |Z|2024| |NPC|186448| |L|207580| |OID|77237|
C (npc:26194) |QID|76735| |N|Speak to (npc:26194) (48.03, 74.86)| |Z|115| |NPC|26194| |L|208190| |OID|77237|
C Place (item:207580) |QID|76735| |N|Click on Shomko's Rememberance to place the (item:207580) in {Plains of Nasam} (33.64, 58.40)| |Z|114| |OID|77237|

--Day 2: CLUE 3: THINKING CAP
C (npc:207696) |QID|77165| |N|Speak to (npc:207696) in {The Roasted Ram} (47.91, 46.94)| |Z|2112| |NPC|207696| |L|207802| |OID|77237|

-- Thought Calculating Apparatus / 207814
C (npc:185556) |QID|77237| |N|Speak to (npc:185556) in {The Roasted Ram} (46.62, 46.31)| |Z|2112| |NPC|185556| |L|208416|
B 5 (item:198441) |QID|77237| |N|Speak to (npc:194152) and buy 1 stack of (item:198441) in {Timberstep Outpost} (85.10, 23.40)| |Z|2023| |NPC|194152| |L|198441 5|
B 5 (item:201419) |QID|77237| |N|Speak to (npc:196729) and buy 1 stack of (item:201419) in {The Artisan's Market} (28.95, 64.38)| |Z|2112| |NPC|201419| |L|196729 5|
B 5 (item:205693) |QID|77237| |N|Speak to (npc:204371) and buy 1 stack of (item:205693) in {Loamm} (54.12, 56.67)| |Z|2133| |NPC|204371| |L|205693 5|
C (npc:185556) |QID|77237| |N|Speak to (npc:185556) in {The Roasted Ram} (46.62, 46.31)| |Z|2112| |NPC|185556| |L|207956 10|
C (npc:185548) |QID|77237| |N|Speak to (npc:185548) in {The Obsidian Enclave} (42.18, 48.76)| |Z|2112| |NPC|185548| |L|207814|

-- Downy Helmet Liner / 207813
K (npc:191451) |QID|77237| |N|Slay (npc:191451) and loot (item:207812) in {The Cascades} (38.45, 67.87)<br/><b>You can buy one from the Auction House| |Z|2025| |NPC|191451| |L|207812|
C (npc:197781) |QID|77237| |N|Speak to (npc:197781) and offer the fish in {The Obsidian Enclave} (42.31, 49.33)| |Z|2112| |NPC|197781| |L|207813|

-- Crystal Ocular Lenses / 207816
C (npc:198586) |QID|77237| |N|Speak to (npc:198586) and choose one of the following options in {The Artisan's Market} (39.02, 61.98)<br/><br/>(choice:1:Choose option 'I will consider settling your tab.')<br/>(choice:2:Choose option 'I don't want to get involved <Offer 1,000 gold instead.>)| |Z|2112| |NPC|198586|
C The Roasted Ram |QID|77237| |N|Go inside {The Roasted Ram} (49.91, 45.08)<br/><b>Target (npc:189827) and then type /bow| |Z|2112| |NPC|189827| |REACH|47.32,47.44,2112| |CHOICE|1|
C (npc:192814) |QID|77237| |N|Speak to (npc:192814) in {The Dragon's Hoard} (47.40, 41.53)<br/><b>'I would like to talk to you about Shakey Flatlap'<br/><b>'I am here to settle the tab for him'<br/><b>'Fine. I will pay the tab'<br/><b>Click the Accept prompt.| |Z|2112| |NPC|196157| |CHOICE|1|
C (npc:198586) |QID|77237| |N|Speak to (npc:198586) and tell him that you paid his tab in {The Artisan's Market} (39.02, 61.98)|Z|2112| |NPC|198586| |L|207816| |CHOICE|1|
C (npc:197781) |QID|77237| |N|Speak to (npc:197781) and pay 1,000<g> in {The Artisan's Market} (39.01, 61.99)| |Z|2112| |NPC|197781| |L|207816| |CHOICE|2|

U (item:207827) |QID|77237| |U|207814| |N|Use (item:207814) to combine them| |PPOS| |L|207827|

A Unfinished Thinking Cap |QID|77237| |N|Auto Accept|
T Unfinished Thinking Cap |QID|77237| |N|(npc:207697) inside the building (26.84, 53.87)| |Z|2112| |NPC|207697|

U (item:206696) |QID|76504| |U|206696| |N|Use (item:206696) inside the building near (npc:207697) (26.84, 53.87)| |Z|2112| |BUFF|5213772|
A The Tricked-Out Thinking Cap |QID|76504| |N|(npc:207697) inside the building (26.84, 53.87)| |Z|2112| |NPC|207697|

C Fangli's Clue |QID|76504| |N|Click Fangli's Clue above behind (npc:207697) (26.63, 53.94)<br/><b>Tick this step|
C First Clue |QID|76504| |N|Click First Clue on the bottom of a bookshelf in {Little Scales Daycare} (9.97, 56.50)<br/><b>Tick this step| |Z|2112|
C Second Clue |QID|76504| |N|Click Second Clue near the Skinning banner in {The Artisan's Market} (29.20, 62.70)<br/><b>Tick this step| |Z|2112|
C Third Clue |QID|76504| |N|Click Third Clue on top of a barrel to the right of the Jewelcrafting crafting station in The Artisan's Market (39.80, 64.40)<br/><b>Tick this step| |Z|2112|
C Fourth Clue |QID|76504| |N|Click Fourth Clue under the Alchemy's crafting station in {The Artisan's Market (36.20, 71.20)<br/><b>Tick this step| |Z|2112|
C Fifth Clue |QID|76504| |N|Click Fifth Clue above the entrance arch of the Auction House (44.20, 58.40)<br/>Use your Dragonriding Mount to fly up to the roof<br/><b>Tick this step| |Z|2112|
C Sixth Clue |QID|76504| |N|Click Sixth Clue on the ground to the right of the Blacksmith building, behind an Obsidian Guardian in {The Obsidian Enclave} (38.00, 49.20)<br/><b>Tick this step| |Z|2112|
C Seventh Clue |QID|76504| |N|Click Seventh Clue at the bottom floor entrance of {The Seat of the Aspects} - After the stairs, by the first bonfire to the left (55.20, 43.30)<br/><b>Tick this step| |Z|2112|
C Eighth Clue |QID|76504| |N|Click Eighth Clue next to one of the waterfalls in {The Emerald Enclave} (64.60, 53.70)<br/><b>Tick this step| |Z|2112|
C Riddle Solved! |QID|76504.1| |N|Click The Tricked-Out Thinking Cap below Eighth Clue (64.60, 53.70)| |Z|2112|

T The Tricked-Out Thinking Cap |QID|76504| |N|(npc:207697) inside the building (26.84, 53.87)| |Z|2112| |NPC|207697|

--Day 3: CLUE 4: An Inside Job?
A An Inside Job? |QID|77276| |D| |N|(npc:207696) in {The Roasted Ram} (47.91, 46.90)| |Z|2112| |NPC|207696| |OID|77277|
T An Inside Job? |QID|77276| |N|(npc:207697) inside the building (26.84, 53.87)| |Z|2112| |NPC|207697| |OID|77277|

C (item:208130) |QID|77277| |N|Click on the Preservationist's Locker in the corner behind the bed on the second floor in {The Roasted Ram} (48.68, 47.92)| |Z|2112| |L|208130|
C (npc:208620) |QID|77277| |N|Speak to (npc:208620) inside the building (62.81, 72.97)<br/><b>Tick this step| |Z|2112| |NPC|208620|

A Preservationist Cleared |QID|77277| |N|(npc:208620) inside the building (62.81, 72.97)| |Z|2112| |NPC|208620|

C Return the (item:208130) |QID|77277.1| |N|Click the Preservationist's Locker in the corner behind the bed on the second floor in {The Roasted Ram} (48.68, 47.92)| |Z|2112|

T Preservationist Cleared |QID|77277| |N|(npc:207697) inside the building (26.78, 53.83)| |Z|2112| |NPC|207697|

-- Day 4: CLUE 5: Torch of Pyrreth
A Securing an Artifact |QID|77281| |D| |N|(npc:185562) in {The Roasted Ram} (47.34, 46.55)| |Z|2112| |NPC|185562| |E| |OID|77282|

U (item:206696) |QID|77282| |U|206696| |N|Use (item:206696) in {The Roasted Ram} (42.26, 46.55)| |Z|2112| |BUFF|5213772|
C Ancient Leaver #1 |QID|77282| |N|Click on the Ancient Leaver by a ruined building on the southeastern end of the {Life-Binder's Conservatory} (57.08, 25.56)| |Z|2022|
C Ancient Leaver #2 |QID|77282| |N|Click on the Ancient Leaver inside by a ruined building in {Life-Binder's Conservatory} (57.75, 23.82)| |Z|2022|
C Ancient Leaver #3 |QID|77282| |N|Click on the Ancient Leaver next to some bookshelves in {Life-Binder's Conservatory} (56.61, 20.32)| |Z|2022|

A Artifact Secured |QID|77282| |N|Click on the Torch of Pyrreth in the fire place on the left side in {Life-Binder Conservatory} (54.58, 20.37)| |Z|2022|
T Artifact Secured |QID|77282| |N|(npc:206864) in {The Roasting Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|
A The Torch of Pyrreth |QID|77263| |N|(npc:206864) in {The Roasting Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|

U (item:208092) |QID|77263| |U|208092| |N|Use (item:208092) in {The Roasting Ram} (47.44, 48.20)| |Z|2112| |BUFF|5214467|
C Enchanted Box |QID|77263.1| |N|Enter the building and then click on Enchanted Box (55.40, 23.62)| |Z|2112|

T The Torch of Pyrreth |QID|77263| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|

-- Day 5: CLUE 6: A Chilling Ascent
T A Chilling Ascent |QID|77284| |N|(npc:207696) in {The Roasted Ram} (47.91, 46.90)| |Z|2112| |NPC|207696| |OID|77286|

U (item:206696) |QID|77286| |U|206696| |N|Use (item:206696) at the {Vakthros Tower Door} (77.92, 32.18) |Z|2024| |BUFF|5213772|
U (item:208092) |QID|77286| |U|208092| |N|Use (item:208092) and channel on the pillar in {Vakthros} (78.89, 32.45)| |Z|2024|

A A Knowledgeable Descent |QID|77286| |N|Click Use paper and charcoal to make an etching in {Vakthros} (78.89, 32.45)| |Z|2024|
T A Knowledgeable Descent |QID|77286| |N|(npc:206864) in {The Roasting Ram} (47.91, 46.90)| |Z|2112| |NPC|206864|

-- Day 6: CLUE 7: IDOL OF OHN'AHRA
C (item:208144) |QID|77405| |N|Speak to (npc:185562) in {The Roasted Ram} (47.34, 46.55)| |Z|2112| |NPC|185562| |L|208144|
U (item:208092) |QID|77405| |U|208092| |N|Use (item:208092) in {The Eternal Kurgans} (37.19, 64.68)| |Z|2023| |BUFF|55214467|
C Ancient Incense Brazier #1 |QID|77405| |N|Channel on the Ancient Incense Brazier (32.35, 68.00)| |Z|2023|
C Ancient Incense Brazier #2 |QID|77406| |N|Channel on the Ancient Incense Brazier (31.07, 70.82)| |Z|2023|
C Ancient Incense Brazier #3 |QID|77407| |N|Channel on the Ancient Incense Brazier (35.21, 65.73)| |Z|2023|
C Ancient Incense Brazier #4 |QID|77404| |N|Channel on the Ancient Incense Brazier (40.31, 59.45) (39.56, 58.93)| |Z|2023|

A An Idol in Hand |QID|77304| |N|Idol of Ohn'ahra in {Teerakai} (39.57, 58.91)| |Z|2023|
T An Idol in Hand |QID|77304| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|
A Using the Idol |QID|76456| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|

U (item:207730) |QID|76456| |U|207730| |N|Use (item:207730) in {The Roasted Ram} (47.44, 49.20)| |Z|2112| |BUFF|1020392|
C Gem #1 |QID|76456| |N|Click on the gem on the floor (48.99, 51.06)| |Z|2112| |REACH|
C Gem #2 |QID|76456| |N|Click on the gem on the floor behind the letter box near the Auction House (45.61, 59.28)| |Z|2112| |REACH|
C Gem #3 |QID|76456| |N|Click on the gem on the flood behind the flowers (55.24, 64.76)| |Z|2112| |REACH|

T Using the Idol |QID|76456| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|

-- Day 7: CLUE 8: SHIFTING SANDS
T Into the Sands |QID|76509| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864| |OID|77305|

U (item:207730) |QID|76509| |U|207730| |N|Use (item:207730) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |BUFF|1020392| |OID|77305|
C (item:208191) |QID|76509| |N|Click on Time-Lost Fragment behind the tree (58.53, 78.43)<br/><b>Tick this step| |Z|2025| |OID|77305|
C (item:208191) |QID|76509| |N|Click on Time-Lost Fragment behind a rock (58.79, 78.25)<br/><b>Tick this step| |Z|2025| |OID|77305|
C (item:208191) |QID|76509| |N|Click on Time-Lost Fragment in the water behind a rock (59.30, 78.86)<br/><b>Tick this step| |Z|2025| |OID|77305|
U (item:208191) |QID|76509| |N|Use (item:208191) to make (item:208146) (59.30, 78.86)| |Z|2025| |L|208146| |OID|77305|

A Out of the Sands |QID|77305| |N|Auto Accept|
T Out of the Sands |QID|77305| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864|

-- Day 8: CLUE 9: WHAT'S IN A MOLD?
A Key Story |QID|77653| |D| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864| |OID|77822|
T A Key Story |QID|77653| |N|(npc:195769) in {The Obsidian Enclave} (36.26, 51.85)| |Z|2112| |NPC|195769| |OID|77822|

U (item:208092) |QID|77822| |U|208092| |N|Use (item:208092) in {Maruukai} (63.03, 42.09)| |Z|2023| |BUFF|5214467|
C Hastly Scrawled Stone |QID|77822| |N|Channel on the rubble (63.36, 56.95)<br/><b>Tick this step| |Z|2023|
C (item:208827) |QID|77822| |N|CLick on Titan Key Mold in the rubble in leaves (62.99, 57.33)| |Z|2023| |L|208827|

A A Titanic Mold |QID|77822| |N|Auto Accept|
T A Titanic Mold |QID|77822| |N|(npc:195769) in {The Obsidian Enclave} (36.27, 51.80)| |Z|2112| |NPC|195769|

-- Day 9: CLUE 10: FORGING IS KEY
A Reforging a Legend |QID|77829| |D| |N|(npc:207696) in {The Roasted Ram} (47.87, 46.90)| |Z|2112| |NPC|207696| |OID|77831|
T Reforging a Legend |QID|77829| |N|(npc:195769) in {The Obsidian Enclave} (36.28, 51.84)| |Z|2112| |NPC|195769| |OID|77831|

U (item:207730) |QID|77831| |U|207730| |N|Use (item:207730) in {Overflowing Rapids} (48.15, 46.57)| |Z|2022| |BUFF|1020392|
C 50 (item:208835) |QID|77831| |N|Collect 50 (item:208835) in {Overflowing Rapids} (48.30, 46.10)<br/><b>Follow the beams from the eyes of the icon above your head and then click Dusty Red Pellets<br/><b>Mounting up will make you loose the (spell:414338) buff.| |Z|2022| |L|208835 50|
U (item:207730) |QID|77831| |U|207730| |N|Use (item:207730) in {Overflowing Rapids} (50.85, 46.98)| |Z|2022| |BUFF|1020392|
C 8 (item:208836) |QID|77831| |N|Collect 8 (item:208836) in {Dragonbane Keep} (21.30, 76.70)<br/><b>Follow the beams from the eyes of the icon above your head and then click Igneous Flux<br/><b>Mounting up will make you loose the (spell:414338) buff.| |Z|2022| |L|208836 8|

A A Key To Reforg(ing) |QID|77831| |N|(npc:210837) in {Obsidian Citadel} (24.52, 60.78)| |Z|2022| |NPC|210837|

U (item:208092) |QID|77831| |U|208092| |N|Use (item:208092) in {Obsidian Citadel} (24.58, 60.77)| |Z|2022| |BUFF|5214467|
C (npc:210837) |QID|77831.1| |N|Speak to (npc:210837) to begin in {Obsidian Citadel} (24.58, 60.77)| |Z|2022| |NPC|210837|
C (spell:422252) |QID|77831.2| |N|Click (spell:422252) ability on screen in {Obsidian Citadel} (24.58, 60.77)| |Z|2022|
C (spell:422255) |QID|77831.3| |N|Click (spell:422255) ability on screen in {Obsidian Citadel} (24.58, 60.77)| |Z|2022|
C Infuse the Key |QID|77831.4| |N|Infuse the Key by channeling (spell:419127) in {Obsidian Citadel} (24.58, 60.77)| |Z|2022|
C Reforge Titan Key |QID|77831.5| |N|Click on the Titan Key in {Obsidian Citadel} (24.58, 60.77)| |Z|2022| |L|208830|

T A Key To Reforg(ing) |QID|77831| |N|(npc:210837) in {Obsidian Citadel} (24.52, 60.78)| |Z|2022| |NPC|210837|

-- Day 10: CLUE 11: A PROPER BURIAL
A A Proper Burial |QID|77865| |D| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864| |OID|77908|

C (npc:195543) |QID|77865| |N|Speak to (npc:195543) in {Maruukai} (63.40, 41.40)| |Z|2023| |NPC|195543| |L|209061| |OID|77908|
C (npc:191391) |QID|77865| |N|Speak to (npc:191391) in {Pinewood Post} (81.20, 59.20)| |Z|2023| |NPC|191391| |L|208857| |OID|77908|
U (item:207730) |QID|78025| |U|207730| |N|Use (item:207730) in {Shikaar Highlands} (84.09, 49.22)| |Z|2023| |BUFF|1020392| |OID|77908|
C First Marker |QID|78025| |N|Click on Aged Marker in {Shikaar Highlands} (83.90, 48.50)| |Z|2023| |OID|77908|
U (item:207730) |QID|78026| |U|207730| |N|Use (item:207730) in {Roaring Dragonsprings} (78.84, 81.18)| |Z|2023| |BUFF|1020392| |OID|77908|
C Second Marker |QID|78026| |N|Click on Aged Marker on the second floor inside a cavern in {Roaring Dragonsprings} (78.84, 81.18) (79.07, 83.15) (78.60, 83.30)| |Z|2023| |OID|77908|
U (item:207730) |QID|78027| |U|207730| |N|Use (item:207730) in {Windsong Rise} (60.10, 64.11)| |Z|2023| |BUFF|1020392| |OID|77908|
C Third Marker |QID|78027| |N|Click on Aged Marker in {Windsong Rise} (60.70, 63.50)| |Z|2023| |OID|77908|
U (item:207730) |QID|78028| |U|207730| |N|Use (item:207730) in {The Eternal Kurgans} (32.12, 69.78)| |Z|2023| |BUFF|1020392| |OID|77908|
C Fourth Marker |QID|78028| |N|Click on Aged Marker inside the burial mound in the last room on the left in {The Eternal Kurgans} (31.60,71.64)| |Z|2023| |OID|77908|
U (item:208092) |QID|78037| |U|208092| |N|Use (item:208092) and channel it to remove the spiderwebs in {Deadsnare Caverns} (43.38, 47.86)| |Z|2023| |OID|77908|
U (item:207730) |QID|78029| |U|207730| |N|Use (item:207730) in {Deadsnare Caverns} (43.38, 47.86)| |Z|2023| |BUFF|1020392| |OID|77908|
C Fifth Marker |QID|78029| |U|208092| |N|Use (item:208092) and then click on Aged Marker in {Deadsnare Caverns} (43.37, 47.76)| |Z|2023| |OID|77908|
C Final Resting Place |QID|77578| |N|Click on Banner Stand deep inside the cave in {Deadsnare Caverns} (43.65, 48.15) (43.60, 49.89) (42.70, 51.00)| |Z|2023| |OID|77908|

-- Day 11: CLUE 12: KIRIN TOR KNOWLEDGE
A A Special Book |QID|77897| |D| |N|(npc:207696) in {The Roasted Ram} (47.91, 46.90)| |Z|2112| |NPC|207696| |OID|77895, 77908|

R Old Karazhan |QID|77897| |N|Travel to {Old Karazhan} (46.89, 74.75)| |Z|42| |F|350| |I| |OID|77908|
C The Gatehouse |QID|77897| |N|Use (M) to see path<br/>As you enter the raid, walk up the stairs and walk behind Berthold and then walk up the flight of stairs (55.04, 68.75) (53.08, 66.21) (53.23,64.28)| |Z|350| |I| |F|352| |OID|77908|
C The Banquet Hall |QID|77897| |N|Use (M) to see path<br/>Continue to walk up the flight of stairs, kill your way through to the other side and up up the stair case (52.22, 95.34) (53.66, 79.20) (54.52, 65.64) (66.43, 51.15) (67.14, 43.69)| |Z|352| |I| |F|353| |OID|77908|
C The Guest Chambers |QID|77897| |N|Use (M) to see path<br/>Continue walking up the stair case, kill all the NPCs you see on this floor including Moroes in {The Banquest Hall}.<br/><b>Head back to {The Grand Ballroom} and enter the door on the left side.<br/><b>Turn right and follow the staircase up stairs.<br/><b>Follow the corridor that goes to the stage killing every NPC you see and then follow the corridors that lead behind the stage.<br/><b>Speak to Barnes to start the Role Play and kill all NPCs that spawn in that event in {The Opera Hall}.<br/><b>After the fight is over walk through the newly opened door and follow the corridor upstairs (71.31, 48.21) (71.82, 43.39) (65.28, 42.40) (40.46, 38.52) (28.26, 36.15) (29.12, 23.03) (23.65, 22.43) (23.57, 18.40) (25.73, 18.32) (24.25, 24.53) (20.37, 43.19) (11.19, 42.54) (12.47, 25.34) (20.65, 26.95) (21.01, 35.86) (20.00, 40.59) (19.03, 46.86) (24.26, 48.97)| |Z|353| |I| |F|354| |OID|77908|
C The Opera Hall |QID|77897| |N|Use (M) to see path<br/>Continue following the corridor killing every NPC you see, when you get to a ramp going up, walk up it. (41.61, 82.86) (54.31, 85.11) (66.43, 81.92) (75.90, 70.52) (77.91, 51.58) (71.16, 35.22) (68.72,27.69) (65.02, 25.42)| |Z|354| |I| |F|355| |OID|77908|
C The Opera Hall (upstairs) |QID|77897| |N|Use (M) to see path<br/>Continue to walking up the ramp, follow the corridor around killing every NPC you see.<br/><b>Head down the stairs and straight in to {The Broken Stair}. Follow the corridor slightly right then go up the ramp on the left.<br/><b>Walk through the doorway on the right side. (38.88, 12.84) (37.45, 10.26) (40.32, 12.41) (39.74, 14.20) (43.90, 21.09) (41.61, 32.71) (49.50, 45.41) (46.20, 50.14) (45.62, 51.87) (47.63, 50.79) (50.36, 50.72) (53.52, 57.60) (57.68, 60.83) (61.98, 67.36) (59.40, 74.39) (56.24, 72.74) (56.53, 75.32) (59.97, 76.61) (63.93, 73.04) (64.56, 69.01)| |Z|355| |I| |F|356| |OID|77908|
C Master's Terrace |QID|77897| |N|Use (M) to see path<br/>Soon as you walk through the doorway turn left and follow path up<br/><b>Once you walked through the doorway turn left and then turn left and walk up the  (71.74, 66.21) (68.87, 41.68) (61.41, 30.13) (57.39, 27.04) (43.19, 57.46) (46.34, 65.78) (52.22, 52.73) (55.95, 52.22) (48.49, 64.78) (50.93, 68.36) (54.38, 60.26)| |Z|356| |I| |F|357| |OID|77908|
C The Broken Stair |QID|77897| |N|Use (M) to see path<br/>Turn left and then follow the path around to another ramp upwards (61.41, 51.15) (45.48, 40.17) (30.56, 58.75) (47.06, 76.11) (53.23, 53.95)| |Z|357| |I| |F|358| |OID|77908|
C The Menagerie |QID|77897| |N|Use (M) to see path<br/>At the top, turn left keep heading straight, at the statue take the left doorway, follow the corridor around and then kill The Curator<br/><b>Take a right at the end of the corridor, head down the ramp (60.83, 22.31) (61.12, 18.51) (55.95, 13.99) (50.22, 13.06) (45.62, 14.20) (42.47, 17.79) (51.65, 40.82) (47.20, 46.48) (53.08, 55.88) (49.93, 59.83)<br/><b>Tick this step| |Z|358| |I| |OID|77908|
U (item:207730) |QID|77897| |U|207730| |N|Use (item:207730) in {Guardian's Library}| |BUFF|1020392| |OID|77908|
C Ancient Book #1 |QID|78050| |N|Use (M) to see path<br/>Click on Ancient Tome in the third book shelf from the left hand corner (46.92, 60.40) (38.74, 56.96) (33.43, 55.24) (30.27, 51.22) (31.56, 50.07)| |Z|358| |OID|77908|
C Ancient Book #2 |QID|78051| |N|Use (M) to see path<br/>Walk back out to the middle and then turn left, walk straight passed Wravien and then turn left, head to the end and click Ancient Tome on the bookshelf behind the table (left corner at end of the corridor) (31.71, 48.21) (34.43, 55.31) (41.89, 47.06) (37.45, 38.74)| |Z|358| |OID|77908|
C Ancient Book #3 |QID|78052| |N|Use (M) to see path<br/>Walk back to the start of the corridor and then walk to the start of the room (where you first walked in from ramps) and then click the Ancient Book in the corner (38.45, 41.89) (40.60, 53.59) (47.63, 62.84)| |Z|358| |OID|77908|
C Tyr's Legacy |L|208889| |N|Use (M) to see path<br/>Walk back to the centre of the room and then click the Tyr's Legacy in the first bookshelf on the right side of the room (47.20, 63.92) (36.73, 57.03) (31.85, 53.08) (32.57, 51.87)| |Z|358| |OID|77908|

A A Legacy of Secrets |QID|77908| |N|Auto Accept|

R Valdrakken |TID|77908| |N|Travel to {Valdraken} (58.30, 40.11)| |Z|2112|
T A Legacy of Secrets |QID|77908| |N|(npc:207696) in {The Roasted Ram} (47.91, 46.90)| |Z|2112| |NPC|207696|

-- Day 12: CLUE 13: UNDER SUSPICION
A They Are Always Listening |QID|77928| |D| |N|(npc:207696) in {The Roasted Ram} (47.91, 46.90)| |Z|2112| |NPC|207696| |OID|77934|
T They Are Always Listening |QID|77928| |N|(npc:207697) inside the building (26.75, 53.87)| |Z|2112| |NPC|207697| |OID|77934|

C Auction House Bill of Sale |QID|78053| |N|Go to the Auction House and as you enter it, click Auction House Bill of Sale on a stack of boxes to the left (44.20, 60.31)| |Z|2112| |OID|77934|
C Void Storage Receipt |QID|78054| |N|Go to the Transmogrifier and Void Storage area near the {Emerald Enclave}, click Void Storage Receipt on a crate on the left (74.02, 57.42)| |Z|2112| |OID|77934|
C Garden Supply Receipt |QID|78055| |N|Click Garden Supply Receipt on top of the barrel to the right of (npc:197047) (52.96, 28.55)| |Z|2112| |NPC|197047| |OID|77934|
C Researcher's Note |QID|78056| |N|By the Dragonscale Expedition area, north of Valdrakken, click the Researcher's Note on some books on the right side just as you walk in. (37.71, 37.11)| |Z|2112| |OID|77934|
C Hastily Scrawled Note |QID|78057| |N|Go to the General Goods store in the Artisan's Market, click the Hastily Scrawled Note on crates behind (npc:195782) (31.65, 70.33)| |Z|2112| |NPC|195782| |OID|77934|
C Enter The Dragon's Hoard |OID|78058| |N|Target (npc:189827) and then type /bow (49.91, 45.08)| |Z|2112| |NPC|189827| |REACH|47.31,47.44,2112| |OID|77934|
U (item:207730) |QID|78058| |U|207730| |N|Use (item:207730) in {The Dragon's Hoard} (47.31, 47.44)| |Z|2112| |BUFF|1020392| |OID|77934|
C Note to Kritha |QID|78058| |N|CLick on Note to Kritha on some crates (46.02, 41.57)| |Z|2112| |L|208936| |OID|77934|

A A Complete Inventory |QID|77934| |N|Auto Quest|
T A Complete Inventory |QID|77934| |N|(npc:207697) inside the building (26.75, 53.87)| |Z|2112| |NPC|207697|

-- Day 13: CLUE 14: A CURIOUS ORB
A A Sphere in Danger |QID|77953| |D| |N|(npc:185562) in {The Roasted Ram} (47.34, 46.55)| |Z|2112| |NPC|185562| |E| |L|208942| |OID|77954|

R Stormshroud Peak |TID|77953| |N|Travel to {Stormshroud Peak} (50.32, 78.66)| |Z|2025| |OID|77954|
U (item:208092) |QID|77953| |U|208092| |N|Use (item:208092) at the cave entrance in {Stormshroud Peak} (49.81, 80.30)| |Z|2025| |BUFF|5214467| |OID|77954|
U (item:206696) |QID|77953| |U|206696| |N|Use (item:206696) at the cave entrance in {Stormshroud Peak} (49.81, 80.30)| |Z|2025| |BUFF|5213772| |OID|77954|
C Find Titan-Inscribed Tablet |QID|78108| |N|Channel (spell:419127) to reveal Titan-Inscribed Tablet and click it to reveal the clue in {Stormshroud Peak} (50.15, 80.96)| |Z|2025| |OID|77954|
C (item:209795) |QID|77953| |N|Click on Buried Object at the base of a tree in {Stormshroud Peak} (49.51, 79.71)| |Z|2025| |L|209795| |OID|77954|
C Find Titan-Inscribed Tablet |QID|78109| |N|Channel (spell:419127) to reveal Titan-Inscribed Tablet and click it to reveal the clue in {Stormshroud Peak} (46.63, 77.63)| |Z|2025| |OID|77954|
C (item:209797) |QID|77953| |N|Click on Buried Object within some plants in {Stormshroud Peak} (45.91, 79.70)| |Z|2025| |L|209797| |OID|77954|
C Find Titan-Inscribed Tablet |QID|78111| |N|Channel (spell:419127) to revel Titan-Inscribed Tablet and click it to reveal the clue in {Stormshroud Peak} (48.71, 76.31)| |Z|2025| |OID|77954|
C (item:209799) |QID|77953| |N|Click on Buried Object outside the cave behind a tree and rock in {Stormshroud Peak} (50.18, 77.97)| |Z|2025| |L|209799| |OID|77954|
U (item:209795) |QID|77953| |U|209795| |N|Use (item:209795) to combine them into (item:208944) (50.18, 77.97)| |Z|2025| |L|208944| |OID|77954|

A A Curious Orb |QID|77954| |N|Auto Accept|
T A Curious Orb |QID|77954| |N|(npc:185562) in {The Roasted Ram} (47.34, 46.55)| |Z|2112| |NPC|185562|

-- Day 14 (Clue 15), "The Race"
T A Treacherous Race |QID|77957| |N|(npc:206864) in {The Roasted Ram} (47.44, 48.20)| |Z|2112| |NPC|206864| |L|208958| |OID|77977|

R Tyrhold |QID|77957| |N|Travel to {Tyrhold} (57.85, 61.14)| |Z|2025| |OID|77977|
U (item:208092) |QID|77957| |U|208092| |N|Use (item:208092) in {Tyrhold} (57.85, 61.14)| |Z|2025| |BUFF|5214467| |OID|77977|
C Orb 1 |QID|77964| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (59.93, 61.12)| |Z|2025| |OID|77977|
C Orb 2 |QID|77960| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (57.08, 64.37)| |Z|2025| |OID|77977|
C Orb 3 |QID|77961| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (57.10, 62.90)| |Z|2025| |OID|77977|
C Orb 4 |QID|77962| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (57.90, 61.80)| |Z|2025| |OID|77977|
C Orb 5 |QID|77963| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (57.90, 60.50)| |Z|2025| |OID|77977|
C Orb 6 |QID|77965| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (58.00, 56.90)| |Z|2025| |OID|77977|
C Orb 7 |QID|77966| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (57.90, 56.00)| |Z|2025| |OID|77977|
C Orb 8 |QID|77974| |N|Channel (spell:419127) into the statue orb in {Tyrhold} (59.80, 56.40)| |Z|2025| |OID|77977|
C Tyr's Forge |QID|77957| |N|Approach Tyr's torch right in the middle of {Tyrhold} (the giant face). If done correctly, the forge will channel through you for a few seconds and you'll get the buff (spell:423792), which makes you friendly to mobs in Tyrhold for 1hr. (61.20, 58.70)| |Z|2025| |BUFF|4227048| |OID|77977|
- N (spell:393798) |QID|77957| |N|If you get this debuff, this will make all NPCs here hostile and will remove (spell:423792) buff, at the same time you can't get this buff again<br/><b>You can still proceed with collecting the items.<br/><b>Not sure if this is a bug but while you have this debuff it can keep you in combat, which you can't use any items or mount up, to get out of combat for a short period is to die and run back to your body, quickly mount up.| |BUFF|892828| |OID|77977|
U (item:207730) |QID|77957| |U|207730| |N|Use (item:207730) in {Tyrhold} (60.08, 55.44)| |Z|2025| |BUFF|1020392| |OID|77977|
C (item:208971) |QID|77957| |N|Click on Broken Earn near earns down stairs in first level Room Ring 1 (59.95, 54.73)| |Z|2025| |L|208971| |OID|77977|
U (item:207730) |QID|77957| |U|207730| |N|Use (item:207730) in {Tyrhold} (60.10, 61.94)| |Z|2025| |BUFF|1020392| |OID|77977|
C (item:208970) |QID|77957| |N|Click on Broken Earn near earns down stairs in first level Room Ring 1 (59.85, 62.28)| |Z|2025| |L|208970| |OID|77977|
U (item:208971) |QID|77957| |U|208971| |N|Use (item:208971) (59.69, 62.61)| |Z|2025| |L|208969| |OID|77977|
U (item:207730) |QID|77957| |U|207730| |N|Use (item:207730) in {Tyrhold} (59.72, 55.61)| |Z|2025| |BUFF|1020392| |OID|77977|
C (item:208960) |QID|77957| |N|Click on Broken Earn in the right hand back corner down stairs Room Ring 3 (59.70, 55.57)| |Z|2025| |L|208960| |OID|77977|
U (item:207730) |QID|77957| |U|207730| |N|Use (item:207730) in {Tyrhold} (59.73, 61.80)| |Z|2025| |BUFF|1020392| |OID|77977|
C (item:208973) |QID|77957| |N|Click on Broken Earn at the rear of the room on the left side down stairs Room Ring 3 (59.69, 62.61)| |Z|2025| |L|208973| |OID|77977|
U (item:207730) |QID|77957| |U|207730| |N|Use (item:207730) in {Tyrhold} (61.62, 61.69)| |Z|2025| |BUFF|1020392| |OID|77977|
C (item:208967) |QID|77957| |N|Click on Broken Earn in the left side of the Room Ring 5 (61.95, 61.94)| |Z|2025| |L|208967| |OID|77977|
U (item:207730) |QID|77957| |U|207730| |N|Use (item:207730) in {Tyrhold} (61.56, 55.88)| |Z|2025| |BUFF|1020392| |OID|77977|
C (item:208966) |QID|77957| |N|Click on Broken Earn in the left side of the Room Ring 5 (61.66, 55.12)| |Z|2025| |L|208966| |OID|77977|
U (item:208967) |QID|77957| |U|208967| |N|Use (item:208967) (61.66, 55.12)| |Z|2025| |L|208965| |OID|77977|
C Titan Power Relay #1 |QID|77968| |N|Click on the Titan Power Relay on the right side of the room (59.35, 56.88)| |Z|2025| |OID|77977|
C Titan Power Relay #2 |QID|77970| |N|Click on the Titan Power Relay at the back of the room (59.52, 60.60)| |Z|2025| |OID|77977|
C Titan Power Relay #3 |QID|77971| |N|Click on the Titan Power Relay on the left side of the room (61.02, 62.36)| |Z|2025| |OID|77977|
C Titan Power Relay #4 |QID|77969| |N|Click on the Titan Power Relay at the back of the room (61.03, 55.06)| |Z|2025| |OID|77977|

A An Ominous Artifact |QID|77977| |N|Orb Location atop the console in {Tyrhold} (60.14, 58.74)| |Z|2025|

N Investigate the Orb Slot on the Console |QID|77977.1| |N|Click the orb atop the console in {Tyrhold} (60.22, 58.74)| |Z|2025|
N (npc:210675) |QID|77977.2| |N|Slay (npc:210675) in {Tyrhold} (60.44, 58.55)| |Z|2025| |NPC|210675|
N (npc:210674) |QID|77977.3| |N|Slay (npc:210674) in {Tyrhold} (60.44, 58.58)| |Z|2025| |NPC|210674|
N Secure the Orb of Rathmus |QID|77977.4| |N|Loot the (item:209555) in {Tyrhold} (60.44, 58.55)| |Z|2025| |L|208555|
N Place the Orb of Rathmus atop the Console |QID|77977.5| |N|Click the orb atop the Console in {Tyrhold} (60.22, 58.74)| |Z|2025|
N Retrieve the Orb of Rathmus |QID|77977.6| |N|Click the Orb of Rathmus atop the console in {Tyrhold} (60.22, 58.74)| |Z|2025|
N Secure the Mysterious Artifact |QID|77977.7| |N|Click the orb atop the console in {Tyrhold} (60.22, 58.74)| |Z|2025|

T An Ominous Artifact |QID|77977| |N|(npc:206864) in {Tyrhold} (60.44, 59.09)| |Z|2025| |NPC|206864|

N Note |N|All of the items collected from the (aid:18646) achievement is safe to delete, they serve no purpose.<br/><b>Tick this step| |OID|77289|

-- COMMUNITY RUMORS
C Plague Plaque |QID|77289| |N|Click on Plague Plaque in {Corin's Crossing} (51.59, 65.06)| |Z|23| |BUFF|5213772|
C (item:208142) #1 |QID|77289| |N|Click on Loose Dirt Mound in {Corin's Crossing} (55.19, 59.42)| |Z|23|
C (item:208142) #2 |QID|77288| |N|Click on the Loose Dirt Mound under the water in {Bloodvenom Falls} (42.23, 48.10)| |Z|77|
C (item:208142) #3 |QID|77291| |N|Click on the Loose Dirt Mound underwater in northern part of the cave in {Splithoof Hold} (43.94, 37.41) (42.70, 30.60)| |Z|64|
C (item:208142) #4 |QID|77292| |N|Click on the Loose Dirt Mound in {Moonwillow Peak} (35.31, 48.99)| |Z|539|
C (item:208142) #5 |QID|77290| |U|208092| |N|This one is unique in that it takes three individuals to channel (spell:419127) in the three red crystals (one red crystal per person) to spawn the Loose Dirt Pile in {Manaforge B'naar} (26.28, 68.58)<br/><b>If you don't see any people in the area, use the LFG tool.| |Z|109|
C (item:208142) #6 |QID|77293| |N|Click on the Loose Dirt Mound in the statues mouth in {Valley of the Four Winds} (56.70, 21.40)| |Z|376|
U (item:208092) |QID|77296| |U|208092| |N|Use (item:208092) in {The Azure Span} (25.10, 71.10)| |Z|2024| |BUFF|5214467|
C (item:208142) #7 |QID|77296| |N|Channel (spell:419127) and then click on the Loose Dirt Pile in {The Azure Span} (25.26, 71.47)| |Z|2024|
C (item:208142) #8 |QID|77294| |N|Click on the Loose Dirt Mound in {Emerald Dragonshrine} (63.89, 72.59)| |Z|115|
C (item:208142) #9 |QID|77297| |N|Click on the Loose Dirt Mound in {Northern Barrens} (46.08, 50.68)| |Z|10|
U (item:208092) |QID|77298| |U|208092| |N|Use (item:208092) in {Blasted Lands} (64.69, 55.38)| |Z|17| |BUFF|5214467|
C (item:208142) #10 |QID|77298| |N|Click on the Loose Dirt Mound in {Blasted Lands} (64.69, 55.38)| |Z|17|
C (item:208142) #11 |QID|77299| |N|Click on the Loose Dirt Mound on an island in the sky in {Skysong Lake} (57.88, 26.37)| |Z|107|
C (item:208142) #12 |QID|78208| |N|Click on the Loose Dirt Mound on the top of {Highmountain Peak} (53.37, 87.51)| |Z|650|
C (item:208142) #13 |QID|78207| |N|Click on the Loose Dirt Mound behind a wagon in {Caer Darrow} (68.80, 73.26)| |Z|22|
C (item:208142) #14 |QID|77300| |N|Speak to (npc:27414) in {Blue Sky Logging Grounds} (36.83, 35.72)<br/><b>Ride till the end. You'll be dumped off near the Loose Dirt Mound in {Venture Bay} (20.25, 81.32)| |Z|116| |FAC|Alliance|
C (item:208142) #14 |QID|77300| |N|Speak to (npc:27425) in {Blue Sky Logging Grounds} (35.06, 34.71)<br/><b>Ride till the end. You'll be dumped off near the Loose Dirt Mound in {Venture Bay} (20.25, 81.32)| |Z|116| |FAC|Horde|
C (item:208142) #15 |QID|77302| |N|Click on the Loose Dirt Mound in {Bronze Dragonshrine} (73.15, 39.50)| |Z|115|
C (item:208142) #16 |QID|77301| |N|Click on the Loose Dirt Mound in the middle of {The Celestial Court} (38.67, 54.90)| |Z|554|
C (item:208142) #17 |QID|77295| |N|Click on the Loose Dirt Pile in {Freehold} atop of the mountain (74.56, 86.13)<br/><b>It is a shared spawn and it has a short respawn time.| |Z|895|

--Secret Mount: MIMIRON'S JUMPJETS
N Note |N|This segment will eventually craft a secret mount (item:210022), some parts of this guide require two other people to channel (item:208092) in three braziers<br/><br/>Another part will require 3 other people to get sucked in to an elemental.<br/><b>As of 14/09/2023 clicking clues is no longer required<br/><b>Tick this step| |OID|78098|

C (item:208984) |QID|78098| |N|Go to {Jaguero Isle} there will be three braziers by the area where (npc:2634) is.<br/><b>Have three players channel the braziers with their (spell:419127) to trigger a short cutscene and spawn the rare (npc:210398) which will drop (item:208984) (59.4, 79.0)| |Z|210| |NPC|210398| |L|208984|
C (item:209781) |QID|78099| |N|You will need 4 people to get this part, you can either use the engine to mount on the elemental and use it's (spell:423412) ability to suck people in or run close to the elemental to get sucked in but not close enough to get on it's AOE, as it knocks you back. Once the elemental sucks 4 people in, it will explode and drop (item:209781), Anyone in the area can loot it.| |L|209781|
C (item:209055) |QID|78100| |N|Kill the two (npc:210886)'s' left and right side of the portal and then click the Mimiron's Booster Part, it will take 12 seconds to loot it (54.83, 52.30)| |Z|17| |L|209055|
U (item:208984) |U|208984| |N|Use (item:208984) at the Empowered Arcane Forge in {The Artisan's Market} (36.67, 61.89)| |Z|2112| |L|210022|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end