local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_En_The_Dragonscale_Expedition_A")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "The Dragonscale Expedition (10)", "2022(10-70)#2022(10-70)#2022(10-70)", "Alliance", nil, "L", "nil", function()
return [[

R Stormwind City |TID|65436| |N|Travel to Stormwind City (46.34, 90.23)| |Z|84| |OID|66577|
A The Dragon Isles Await |QID|65436| |N|Auto Accept| |OID|66577|
T The Dragon Isles Await |QID|65436| |N|(npc:189569), in {Stormwind Keep} (79.88, 27.14)| |Z|84| |NPC|189569| |OID|66577|
A Aspectral Invitation |QID|66577| |N|(npc:189569), in {Stormwind Keep} (79.88, 27.14)| |Z|84| |NPC|189569|
C Aspectral Invitation |QID|66577| |N|Speak to (npc:189569) in {Strormwind Keep} (79.88, 27.14)| |Z|84| |NPC|190239|
T Aspectral Invitation |QID|66577| |N|(npc:189569), in {Stormwind Keep} (79.88, 27.14)| |Z|84| |NPC|189569|
A The Obsidian Warders |QID|72240| |N|(npc:189603), in {Stormwind Keep} (79.88, 27.14)| |Z|84| |NPC|189603| |PRE|66577|
A Expeditionary Coordination |QID|66589| |N|(npc:189602), in {Stormwind Keep} (79.88, 27.14)| |Z|84| |NPC|189602| |PRE|66577|
N (npc:189737) |QID|66589.1| |N|Recruit (npc:189737), in {Dwarven District} (64.14, 37.22)| |Z|84| |NPC|189767|
N (npc:189765) |QID|66589.3| |N|Recruit (npc:189765), in {Trade District} (63.35, 69.90)| |Z|84| |NPC|189765|
C The Obsidian Warders |QID|72240| |N|Deliver the Scalecommander's orders to (npc:198401), atop of {The Stockade} buiding, in {Stormwind City} (51.10, 67.49)| |Z|84| |NPC|198401|
N (npc:189763) |QID|66589.2| |N|Recruit (npc:189763), in {Stormwind City} (38.31,45.55)| |Z|84| |NPC|189763|
T Expeditionary Coordination |QID|66589| |N|(npc:189077), in {Stormwind Harbor} (22.82, 55.68)| |Z|84| |NPC|189077|
T The Obsidian Warders |QID|72240| |N|(npc:189077), in {Stormwind Harbor} (22.82, 55.68)| |Z|84| |NPC|189077|
A Whispers on the Winds |QID|66596| |N|(npc:193450), in {Stormwind Harbor} (23.09, 55.98)| |Z|84| |NPC|193450| |PRE|66589|
C Whispers on the Winds |QID|66596| |N|Speak with (npc:193450) in {Stormwind City}, in {Stormwind Harbor} (23.09, 55.98)| |Z|84| |NPC|193450|
T Whispers on the Winds |QID|66596| |N|(npc:189569), in {Stormwind Harbor} (23.05, 55.97)| |Z|84| |NPC|189569|
--A Chasing Storms |QID|70050| |N|(npc:189077) in {Stormwind City} (22.72,55.66)| |Z|84| |NPC|189077|
--A Legacy of Tyr: Secrets of the Past |QID|66458| |N|(npc:189569) in {Stormwind City}(22.94,56.00)| |Z|84| |NPC|189569|
--A A Primal Threat |QID|70048| |N|(npc:193450) in {Stormwind City} (23.00,56.15)| |Z|84| |NPC|193450|
--T Chasing Storms |QID|70050| |N|(npc:195912) in {Stormwind City} (24.99,53.07)| |Z|84| |NPC|195912|
--N 10 (item:192493) |QID|70048.1| |N|Kill enemies at Primal Invasion sites and collect 10 (item:192493)<br/><b> Go to an active primalist invasion site on the map in Northern Barrens, Tirisfal Glades, Badlands, or Un'Goro Crater<br/><b> Going to Badlands will allow you to enter the dungeon right after for the next quest if you plan to use a pre-made group<br/><b> Kill enemies and collect motes of energy| |POI|
--N (item:198352) |QID|70055| |N|Kill (npc:189955) or (npc:189954) that spawns at the end of an invasion to collect this item| |L|198352|
--N Recover the Disc of Tyr's Memories |QID|66458.1| |N|Enter Uldaman: Legacy of Tyr dungeon and Make your way towards Chrono-Lord Deios<br/><b> You will recover the memory in the room before reaching him. (40.24,26.42) | |Z|2072| |O|
--K (npc:184125) |QID|66458.2| |N|Kill (npc:184125) in {Uldaman Legacy of Tyr} dungeon<br/><b> "Temporal Zone" increases haste by 50%<br/><b> Avoid standing in "Eternity Zones."<br/><b> Dodge "Eternity Orbs" before they reach you<br/><b> "Wing Buffet" deals damage and knocks everyone back<br/><br/>Healer:<br/><b> The party will take heavy damage during "Rewind Timeflow" at 0 energy<br/><br/>Tank:<br/><b> "Sand Breath" deals heavy damage (40.24,26.42) | |Z|2072|
--T Sigil of Storms |QID|70055| |N|(npc:195912) in {Stormwind City} (24.99,53.07)| |Z|84| |NPC|195912|
--T Legacy of Tyr: Secrets of the Past |QID|66458| |N|(npc:189569) in {Stormwind City} (22.94,56.00)| |Z|84| |NPC|189569|
--T A Primal Threat |QID|70048| |N|(npc:193450) in {Stormwind City} (23.00,56.15)| |Z|84| |NPC|193450|

A To the Dragon Isles! |QID|67700| |N|(npc:189077), in {Stormwind Harbor}<br/><b>This quest is not available until November 29th (22.82, 55.63)| |Z|84| |NPC|189077| |PRE|66596|

R Dragon Isles |QID|67700.1| |N|Wait for the Rugged Dragonscale at Stormwind Docks, in {Stormwind Harbor} (22.65, 56.06)| |Z|84|
C To the Dragon Isles! |QID|67700.2| |N|Ride the Rugged Dragonscale to Dragon Isles, in {Wild Coast} (82.07, 31.58)| |Z|2022|
T To the Dragon Isles! |QID|67700| |N|(npc:189022), in {Wild Coast} (82.14, 31.78)| |Z|2022| |NPC|189022|
A Explorers in Peril |QID|70122| |N|(npc:189022), in {Wild Coast} (82.14, 31.78)| |Z|2022| |NPC|189022|
A Practice Materials |QID|70124| |N|(npc:189021), in {Wild Coast} (82.08, 31.85)| |Z|2022| |NPC|189021|
A Primal Pests |QID|70123| |N|(npc:189035), in {Wild Coast} (82.14, 31.78)| |Z|2022| |NPC|189035|

N As you go... |AYG|70124| |N|<b>Kill 10 (npc:193806)<br/><b>Collect 15 (item:198398) from (npc:193876)| |QID|70122| |NPC|193806, 193876|
C Primal Pests |QID|70123| |N|Kill 10 (npc:193806), in {Wild Coast} (82.66, 33.66)| |Z|2022| |NPC|193806|
C Practice Materials |QID|70124| |N|Collect 15 (item:198398) from (npc:193876), in {Wild Coast} (82.66, 33.66)| |Z|2022| |NPC|193876|
N (npc:189053) |QID|70122.1| |N|Click on (npc:189053) to rescue, in {Wild Coast} (83.52, 33.63)| |Z|2022| |NPC|189053|
N (npc:189055) |QID|70122.2| |N|Click on Protodragon Rib Cage to rescue (npc:189055), in {Wild Coast} (83.06, 36.08)| |Z|2022| |NPC|189055|
N (npc:189052) |QID|70122.3| |N|Click on (npc:189052) to rescue, he's carried around by two Primal Proto-Whelps, in {Wild Coast} (79.55, 35.37)| |Z|2022| |NPC|189052|

R Wingrest Embassy |TID|70122| |N|Travel to {Wingrest Embassy} (77.02, 33.61)| |Z|2022|
A Dragon Isles Supplies |QID|72708| |N|From (item:202081), random drop| |Z|2022| |U|202081| |O|
T Dragon Isles Supplies |QID|72708| |N|(npc:198846), in {Wingrest Embassy} (76.54, 34.28)| |Z|2022| |NPC|198846| |O|
A Funding a Treasure Hunt |QID|72709| |N|(npc:198846), in {Wingrest Embassy} (76.54, 34.28)| |Z|2022| |NPC|198846| |PRE|72708|
B (item:198854) |QID|72709.1| |N|Buy (item:198854) from (npc:198846), in {Wingrest Embassy} (76.54, 34.27)| |Z|2022| |NPC|198846| |PRE|72708|
N (item:198854) |QID|72709.2| |N|Read the (item:198854), in {Wingrest Embassy} (76.54, 34.27)| |Z|2022| |U|198854 ||PRE|72708|
C Funding a Treasure Hunt |QID|72709| |N|in {Wingrest Embassy} (76.54, 34.27)| |Z|2022| |PRE|72708|
T Funding a Treasure Hunt |QID|72709| |N|(npc:198846), in {Wingrest Embassy} (76.54, 34.27)| |Z|2022| |NPC|198846| |PRE|72708|

T Primal Pests |QID|70123| |N|(npc:187252), in {Wingrest Embassy} (76.72, 34.40)| |Z|2022| |NPC|187252|
T Explorers in Peril |QID|70122| |N|(npc:187251), in {Wingrest Embassy} (76.66, 33.63)| |Z|2022| |NPC|187251|
A Where is Wrathion? |QID|70125| |N|(npc:187251), in {Wingrest Embassy} (76.66, 33.63)| |Z|2022| |NPC|187251|
A Give Peace a Chance |QID|67053| |N|(npc:184449), in {Wingrest Embassy} (76.68, 34.50)| |Z|2022| |NPC|184449|
T Practice Materials |QID|70124| |N|(npc:189058), in {Wingrest Embassy} (76.52, 34.35)| |Z|2022| |NPC|189058|
A From Such Great Heights |QID|66101| |N|(npc:187257), in {Wingrest Embassy} (75.86, 33.49)| |Z|2022| |NPC|187257|
N Surveyor's Disc |QID|66101.1| |V| |N|Hop on the Surveyor's Disc, in {Wingrest Embassy} (75.93, 33.56)| |Z|2022|
N Search for Power |QID|66101.2| |N|Search for Power, in {Wingrest Embassy}<br/><b>Use the first ability in the action bar (76.33, 33.69)| |Z|2022|
N Search for Allies |QID|66101.3| |N|Search for Allies, in {Wingrest Embassy}<br/><b>Use the second ability in the action bar (75.70, 33.45)| |Z|2022|
N Search for Danger |QID|66101.4| |N|Search for Danger, in {Wingrest Embassy}<br/><b>Use the third ability in the action bar (75.88, 33.39)| |Z|2022|
T From Such Great Heights |QID|66101| |N|(npc:187257), in {Wingrest Embassy} (75.88, 33.48)| |Z|2022| |NPC|187257|
f Wingrest Embassy |QID|70125| |N|Grab the flight path for {Wingrest Embassy} (76.04, 35.00)| |Z|2022| |NPC|192490|
h Wingrest Embassy |QID|70125| |N|Speak to (npc:193393) and set your Hearthstone to {Wingrest Embassy} (76.33, 35.55)| |Z|2022| |NPC|193393|
T Give Peace a Chance |QID|67053| |N|(npc:184452), in {Wingrest Embassy} (76.34, 33.12)| |Z|2022| |NPC|184452|
A Without Purpose |QID|70148| |N|(npc:192438), in {Wingrest Embassy} (76.38, 34.45)| |Z|2022| |NPC|192438| |R|Dracthyr|
A Encroaching Elementals |QID|70135| |N|(npc:184452), in {Wingrest Embassy} (76.34, 33.12)| |Z|2022| |NPC|184452|
C Where is Wrathion? |QID|70125.1| |N|Ask (npc:193362) when the dragons are expected to arrive, in {Wingrest Embassy} (76.62, 33.66)| |Z|2022| |NPC|193362|
T Where is Wrathion? |QID|70125| |N|(npc:193362), in {Wingrest Embassy} (76.62, 33.66)| |Z|2022| |NPC|193362|
A Always Be Crafting |QID|66112| |N|(npc:187261), in {Wingrest Embassy} (76.36, 34.64)| |Z|2022| |NPC|187261|
A Adventuring in the Dragon Isles |QID|72293| |N|(npc:193362), in {Wingrest Embassy} (76.59, 33.59)| |Z|2022| |NPC|193362|

N Choose a zone |QID|72293| |N|Use the Scouting Map and choose a zone (76.54, 34.20)| |Z|2022| |PRE|72293|

A The Waking Shores |QID|72266| |N|Scouting Map, in {Wingrest Embassy} (76.54, 34.20)| |Z|2022| |O|
T The Waking Shores |QID|72266| |N|(npc:193362), in {Wingrest Embassy} (76.57, 33.69)| |Z|2022| |NPC|193362| |O|
A Reporting for Duty |QID|65760| |N|(npc:193363), in {Wingrest Embassy} (76.24, 34.42)| |Z|2022| |NPC|193363| |PRE|72266| -- Begins the Waking Shores Quest Line

A Ohn'ahran Plains |QID|72267| |N|Scouting Map in {Wingrest Embassy} (76.54, 34.19)| |Z|2022| |O|
T Ohn'ahran Plains |QID|72267| |N|(npc:185878), in {Rubyscale Outpost} (48.28, 88.67)| |Z|2022| |NPC|185878| |O|
A Into the Plains |QID|65779| |N|(npc:185878), in {Rubyscale Outpost} (48.28, 88.67)| |Z|2022| |NPC|185878| |PRE|72267| -- Begins the Ohn'ahran Plains Quest Line

A Azure Span |QID|72268| |N|Scouting Map in {Wingrest Embassy} (76.54, 34.20)| |Z|2022| |O|
T Azure Span |QID|72268| |N|(npc:185599), in {Forkriver Crossing} (71.63, 80.57)| |Z|2023| |NPC|185599| |O|
A To the Azure Span |QID|65686| |N|(npc:185599), in {Forkriver Crossing} (71.63, 80.57)| |Z|2023| |NPC|185599| |PRE|72268| -- Begins the Azure Span Quest Line

A Thaldraszsus |QID|72269| |N|Scouting Map in {Wingrest Embassy} (76.55, 34.22)| |Z|2022| |O|
T Thaldraszsus |QID|72269| |N|(npc:187678), in {The Seat of the Aspects} (57.95, 36.29)| |Z|2112| |NPC|187678| |O|
A A Message Most Dire |QID|66159| |N|(npc:187678), in {The Seat of the Aspects} (57.95, 36.29)| |Z|2112| |NPC|187678| |PRE|72269| -- Begins the Thaldraszus Quest Line

T Adventuring in the Dragon Isles |QID|72293| |N|Field Turn-In| |O|
N Switch Guide |OID|65760| |N|Switch to (guide:"2022(10-70)#2022(10-70)#2022(10-70)") to continue| |PRE|72266|
N Switch Guide |QID|65779| |N|Switch to (guide:"2023(10-70)#2023(10-70)#2023(10-70)") to continue| |PRE|72267|
N Switch Guide |QID|65686| |N|Switch to (guide:"2024(30-70)#2024(30-70)#2024(30-70)") to continue| |PRE|72268|
N Switch Guide |QID|66159| |N|Switch to (guide:"2112(68-70)#2112(68-70)#2112(68-70)") to continue| |PRE|72269|

N Guide Complete |N|Switch to (guide:"2022(10-70)#2022(10-70)#2022(10-70)") to continue|

]]
end)
  end

  function Guide:Unload()
  end
end