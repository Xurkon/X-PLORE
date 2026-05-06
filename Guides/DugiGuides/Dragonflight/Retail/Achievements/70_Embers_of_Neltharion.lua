local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Embers_of_Neltarion")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Embers of Neltharion (70+ Storyline)", nil, nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

-- A Creche Divided 10.0.7 Patch
N Prerequisite |QID|72717| |N|You will need to complete the "A Creche Divided" storyline. Starting from (qid:74381) quest and ending with (qid:72717) quest.<br/><b>Use our (guide:"Return to the Reach (70+ Storyline)") guide to achieve this.|

-- Breaking Ground 10.1 Patch
R Valdrakken |TID|72975| |N|Travel to {Valdrakken} (58.30, 40.11)| |Z|2112| |PRE|72717|
A The Land Beneath |QID|72975| |N|Auto Accept| |Z|2112| |PRE|72717|

R The Seat of the Aspects |TID|72975| |N|Travel to {The Seat of the Aspects} (61.93, 32.21)| |Z|2112| |REACH|57.06,42.43|
T The Land Beneath |QID|72975| |N|(npc:201281) atop of {The Seat of the Aspects} (61.34, 42.23)| |Z|2112| |NPC|201281|
A A Crack in the World |QID|72976| |N|(npc:201281) atop of {The Seat of the Aspects} (61.34, 42.23)| |Z|2112| |NPC|201281|

N (npc:187678) |QID|72976.1| |N|Speak to (npc:187678) atop of {The Seat of the Aspects} (59.11, 37.24)| |Z|2112| |NPC|187678|

T A Crack in the World |QID|72976| |N|(npc:201281) atop of {The Seat of the Aspects} (58.92, 38.40)| |Z|2112| |NPC|201281|
A Where the Flames Fell |QID|72977| |N|(npc:201281) atop of {The Seat of the Aspects} (58.92, 38.40)| |Z|2112| |NPC|201281|

R Timberstep Outpost |TID|72977| |N|Travel to {Timberstep Outpost} (85.22, 24.11)| |Z|2023|
T Where the Flames Fell |QID|72977| |N|(npc:201311) in {Cascades Canyon} (87.15, 27.26)| |Z|2023| |NPC|201311|
A Scar of Earth and Fire |QID|72978| |N|(npc:201311) in {Cascades Canyon} (87.15, 27.26)| |Z|2023| |NPC|201311|

N Speak with (npc:202788) |QID|72978.1| |N|Speak with (npc:202788) in {Cascades Canyon} (87.00, 27.28)| |Z|2023| |NPC|202788|
N Inspect Pile of Ashes |QID|72978.2| |N|Click on the Pile of Ashes in {Cascades Canyon} (87.03, 27.27)| |Z|2023|
N Inspect Broken Spear |QID|72978.3| |N|Click on the Broken Spear (87.09, 27.44)| |Z|2023|
N Speak with (npc:200085) |QID|72978.4| |N|Speak with (npc:200085) in {Cascades Canyon} (87.37, 27.53)| |NPC|200085|

T Scar of Earth and Fire |QID|72978| |N|(npc:201311) in {Cascades Canyon} (87.19, 27.27)| |Z|2023| |NPC|201311|
A The Patience of Princes |QID|72981| |N|(npc:200085) in {Cascades Canyon} (87.37, 27.51)| |Z|2023| |NPC|200085|
A Rest Well, Warrior |QID|75985| |N|(npc:202788) in {Cascades Canyon} (87.01, 27.28)| |Z|2023| |NPC|202788|

N Rest Well, Warrior |QID|75985.1| |N|Click on the Shovel to Assist (npc:202788) with Shalkeel's burial in {Cascades Canyon} (87.05, 27.23)| |Z|2023|

T Rest Well, Warrior |QID|75985| |N|(npc:202788) in {Cascades Canyon} (87.00, 27.27)| |Z|2023| |NPC|202788|

R Iridikron's Gambit |TID|72981.1| |N|Travel through the tunnel in {Iridikron's Gambit} (83.01, 30.91)| |Z|2023|
C Discuss the plan with Sabellian |SID|58683| |QID|72981| |N|Speak to (npc:201411) in {The Throughway} (73.95, 42.24)| |Z|2165| |NPC|201411|
C Earth Primalists Slain |SID|0| |QID|72981| |N|Slay Earth Primalists in {The Throughway} (53.26, 55.82)| |Z|2165| |NPC|201471, 201467, 201469|
K (npc:202612) |SID|58225| |QID|72981| |N|Slay (npc:202612) in {The Throughway} (53.26, 55.82)| |Z|2165| |NPC|202612|
K (npc:202613) |SID|58372| |QID|72981| |N|Slay (npc:202613) in {The Throughway} (36.76, 37.99)| |Z|2165| |NPC|202613|
K (npc:201522) |SID|57855| |QID|72981| |N|Slay (npc:201522) in {The Throughway} (30.07, 45.88)| |Z|2165| |NPC|201522|

T The Patience of Princes |QID|72981| |N|(npc:200116) in {Deepflayer Nest} (82.30, 64.71)| |Z|2184| |NPC|200116|
A Culling the Deep |QID|72872| |N|(npc:200116) in {Deepflayer Nest} (82.30, 64.71)| |Z|2184| |NPC|200116|
A It Was Not Enough |QID|72873| |N|(npc:200116) in {Deepflayer Nest} (82.30, 64.71)| |Z|2184| |NPC|200116|

N Escape the Crystal Prison |QID|72873.1| |N|Use (spell:403458) somewhere on screen in {Deepflayer Nest} (82.30, 64.71)| |Z|2184|
N (npc:200116) |QID|72873.2| |N|Speak with (npc:200116) in {Deepflayer Nest} (82.30, 64.71)| |Z|2184| |NPC|200116|
N Culling the Deep |QID|72872.1| |N|Slay 8 Deepflayers in {Deepflayer Nest} (54.96, 48.96)| |Z|2184| |NPC|203384, 199809|
N Follow (npc:200116) |QID|72873.3| |N|Click the Niffin Hole in {Deepflayer Nest} (36.46, 64.82)| |Z|2184|
N Follow (npc:200116) |QID|72873.4| |N|Click the Niffin Hole in {Deepflayer Nest} (39.42, 30.25)| |Z|2184|
N Follow (npc:200116) |QID|72873.5| |N|Follow (npc:200116) and slay (npc:199809) in {Deepflayer Nest} (59.70, 25.00)| |Z|2184| |NPC|200116, 199809|
N Rescue (npc:204055) |QID|72873.6| |N|Rescue (npc:204055) in {Deepflayer Nest} (72.08, 28.21)| |Z|2184| |NPC|204055, 204508|
N Find (npc:204057) |QID|72873.7| |N|Find (npc:204057) in {Deepflayer Nest} (60.42, 37.09)| |Z|2133| |NPC|204057|

T Culling the Deep |QID|72872| |N|(npc:201587) in {Deepflayer Nest} (60.17, 37.80)| |Z|2133| |NPC|201587|
T It Was Not Enough |QID|72873| |N|(npc:201587) in {Deepflayer Nest} (60.17, 37.80)| |Z|2133| |NPC|201587|
A Niffen and Goliath |QID|72970| |N|(npc:201587) in {Deepflayer Nest} (60.17, 37.80)| |Z|2133| |NPC|201587|

K (npc:200115) |QID|72970.2| |N|Click on the Bag and then slay (npc:200115) in {Deepflayer Nest} (58.40, 38.94)| |Z|2133| |NPC|200115|

T Niffen and Goliath |QID|72970| |N|(npc:201584) in {Deepflayer Nest} (60.17, 37.54)| |Z|2133| |NPC|201584|
A Brother's Keeper |QID|72980| |N|(npc:201583) in {Deepflayer Nest} (60.08, 37.50)| |Z|2133| |NPC|201583|
T Brother's Keeper |QID|72980| |N|(npc:201589) in {Deepflayer Nest} (60.56, 40.10)| |Z|2133| |NPC|201589|
A Secrets From Our Father |QID|72874| |N|(npc:201589) in {Deepflayer Nest} (60.56, 40.10)| |Z|2133| |NPC|201589|

N Investigate Rusted Relic |QID|72874.1| |N|Click on the Rusted Relic in {Deepflayer Nest} (62.52, 41.77)| |Z|2133|
N Investigate Damaged Relic |QID|72874.2| |N|Click on the Damaged Relic in {Deepflayer Nest} (60.29, 42.75)| |Z|2133|
N Investigate Humming Relic |QID|72874.3| |N|Click on the Humming Relic in {Deepflayer Nest} (58.83, 41.59)| |Z|2133|

T Secrets From Our Father |QID|72874| |N|(npc:201589) in {Deepflayer Nest} (60.55, 40.08)| |Z|2133| |NPC|201589|
A The Earth Gives Way |QID|72979| |N|(npc:201589) in {Deepflayer Nest} (60.55, 40.08)| |Z|2133| |NPC|201589|
T The Earth Gives Way |QID|72979| |N|(npc:201583) in {Deepflayer Nest} (57.02, 38.24)| |Z|2133| |NPC|201583|

A Smells Like Loamm |QID|72973| |N|(npc:201584) in {Deepflayer Nest} (57.06, 38.17)| |Z|2133| |NPC|201584|

N Meet (npc:202873) |QID|72973.1| |N|Meet (npc:202873) in {Loamm} (58.61, 54.58)| |Z|2133| |NPC|202873|

T Smells Like Loamm |QID|72973| |N|(npc:204522) in {Loamm} (56.99, 55.63)| |Z|2133| |NPC|204522|
A Tougher Down Under |QID|76101| |N|(npc:204522) in {Loamm} (56.99, 55.63)| |Z|2133| |NPC|204522|
A Welcome to the City of Smells |QID|72974| |N|(npc:200054) in {Loamm} (56.99, 55.75)| |Z|2133| |NPC|200054|
A Orientation: Loamm Niffen |QID|75643| |N|(npc:204522) in {Loamm} (56.99, 55.63)| |Z|2133| |NPC|204522|
--A Power Unified |QID|75641| |N|(npc:204509) in {Loamm} (56.84, 54.83)| |Z|2133| |NPC|204509|
--A A Worthy Ally: Loamm Niffen |QID|75665| |N|(npc:204254) in {Loamm} (56.52, 55.69)| |Z|2133| |NPC|204254| |OID|75641|

--N Complete World Quests |QID|75665| |N|Complete World Quests in (map:2133)| |OID|75641|

--T A Worthy Ally: Loamm Niffen |QID|75665| |N|(npc:204254) in {Loamm} (56.52, 55.69)| |Z|2133| |NPC|204254| |OID|75641|

--N Power United |QID|75641.1| |U|204717| |N|Combine (item:204717) into (item:204440)| |PPOS|

--T Power United |QID|75641| |N|(npc:204509) in {Loamm} (56.84, 54.83)| |Z|2133| |NPC|204509|

N (npc:204546) |QID|72974.1| |N|Speak with (npc:204546) in {Loamm} (57.02, 55.75)| |Z|2133| |NPC|204546|
T Tougher Down Under |QID|76101| |N|(npc:203404) in {Loamm} (56.52, 56.06)| |Z|2133| |NPC|203404|
N Loamm Niffen Quartermaster |QID|75643.2| |N|Speak to (npc:202468) in {Loamm} (56.48, 55.66)| |Z|2133| |NPC|202468|
N Keeper of Renown |QID|75643.1| |N|Speak to (npc:204254) in {Loamm} (56.52, 55.69)| |Z|2133| |NPC|204254|
--N Visit (npc:203602) |QID|75506.1| |N|Visit (npc:203602) in {Loamm} (55.91, 55.46)| |Z|2133| |NPC|203602|
f Loamm |TID|75643| |N|Speak to (npc:202467) and grab the flight master for {Loamm} (55.62, 54.83)| |Z|2133| |NPC|202467|
N Flight Master |QID|75643.3| |N|Speak to (npc:202467) in {Loamm} (55.63, 54.81)| |Z|2133| |NPC|202467|

T Orientation: Loamm Niffen |QID|75643| |N|(npc:200052), in {Loamm} (54.65, 54.74)| |Z|2133| |NPC|200052|

N Trade with the Sniffenseeker |QID|72974.2| |N|Click on Treasure! as it appears in in {Loamm} (55.65, 57.35)| |Z|2133| |NPC|201426|
N Trade with the Resourceful Chef |QID|72974.5| |N|Click on the Cenka's Slug Jar and kill (npc:204639) in {Loamm} (55.65, 57.35)<br/><b>It my have been ptr but allow (npc:204639) to fly around for at least 30 seconds before killing them| |Z|2133| |NPC|204639|
N Trade with the Coach |QID|72974.3| |N|Speak to (npc:204651) and then defeat him in {Loamm} (57.68, 56.42)| |Z|2133| |NPC|204651|
N Trade with the Teacher |QID|72974.4| |N|Speak to (npc:204624) in {Loamm} (57.70, 53.33)<br/><b>Need to be quick, he jumps to different stools.| |Z|2133| |NPC|204624|

T Welcome to the City of Smells |QID|72974| |N|(npc:200054) in {Loamm} (54.65, 54.70)| |Z|2133| |NPC|200054|
A Six Hundred Feet Under |QID|75644| |N|(npc:200052) in {Loamm} (54.65, 54.74)| |Z|2133| |NPC|200052|

N (npc:201366) |QID|75644.1| |N|Speak to (npc:201366) in {Loamm} (54.72, 54.51)| |Z|2133| |NPC|201366|

T Six Hundred Feet Under |QID|75644| |N|(npc:201366) in {Loamm} (54.72, 54.51)| |Z|2133| |NPC|201366|

-- Sundered Legacy 10.1 Patch
A Future Aspects |QID|74334| |N|(npc:201366) in {Loamm} (54.72, 54.51)| |Z|2133| |NPC|201366| |PRE|75644|

N (npc:201366) |QID|74334.1| |N|Speak to (npc:201366) and suggest (npc:200054) as a guide in {Loamm} (54.74, 54.52)| |Z|2133| |NPC|201366|

T Future Aspects |QID|74334| |N|(npc:201236) in {The Crystal Fields} (59.40, 68.84)| |Z|2133| |NPC|201236|
A Save-A-Mole |QID|72958| |N|(npc:200049) in {The Crystal Fields} (59.42, 68.94)| |Z|2133| |NPC|200049|
A Collating Their Research |QID|74375| |N|(npc:200049) in {The Crystal Fields} (59.42, 68.94)| |Z|2133| |NPC|200049|

N Clues Found |QID|74375.2| |N|Find 4 Clues in {Sundered Flame Camp} (59.88, 72.61)<br/><b>Click on Draconic Text (59.18,73.80, 2133, "Draconic Text")<br/><b>Click on Draconic Scrolls (57.87,73.98, 2133, "Draconic Scrolls")<br/><b>Click on Titan Scroll (59.92, 74.46, 2133, "Titan Scroll")<br/><b>Click on Titan Writings (59.87,72.66, 2133, "Titan Writings")| |Z|2133|
N (item:204713) |QID|74375.1| |N|Collect 6 (item:204713) from (npc:199941), (npc:199942), (npc:199946) in {Sundered Flame Camp} (59.88, 72.61)| |Z|2133| |NPC|199941, 199942, 199946|
N (npc:201265) |QID|72958.1| |N|Speak to (npc:201265) in {Sundered Flame Camp} (58.15, 75.41)| |Z|2133| |NPC|201265|

T Save-A-Mole |QID|72958| |N|(npc:200049) in {The Crystal Fields} (59.42, 68.94)| |Z|2133| |NPC|200049|
T Collating Their Research |QID|74375| |N|(npc:200049) in {The Crystal Fields} (59.42, 68.94)| |Z|2133| |NPC|200049|
A Whose Vault Is It Anyway? |QID|72959| |N|(npc:200049) in {The Crystal Fields} (59.42, 68.94)| |Z|2133| |NPC|200049|

N (npc:200249) |QID|72959.1| |N|Speak to (npc:200249) in {The Crystal Fields} (59.42, 68.94)| |Z|2133| |NPC|200049|

T Whose Vault Is It Anyway? |QID|72959| |N|(npc:201619) in {Nal ks'kol} (62.55, 73.25)| |Z|2133| |NPC|201619|
A Charging Up |QID|72961| |N|(npc:200074) in {Nal ks'kol} (62.55, 73.29)| |Z|2133| |NPC|200074|

N 6 (item:204833) |QID|72961.1| |N|Slay (npc:203819) and collect 6 (item:204833) and click on Buzzing Orbs on the ground in {Nal ks'kol} (61.86, 72.26)| |Z|2133| |NPC|203819|

T Charging Up |QID|72961| |N|(npc:200074) in {Nal ks'kol} (62.55, 73.29)| |Z|2133| |NPC|200074|
A Open That Door! |QID|72962| |N|(npc:201619) in {Nal ks'kol} (62.55, 73.25)| |Z|2133| |NPC|201619|

N (npc:200074) |QID|72962.1| |N|Speak to (npc:200074) in {Nal ks'kol} (62.55, 73.25)| |Z|2133| |NPC|201619|
N Open the Door |QID|72962.2| |N|Watch the role play to open the door in {Nal ks'kol} (62.55, 73.30)| |Z|2133|
N Enter the Vault |QID|72962.3| |N|Enter the vault with (npc:201619) in {Nal ks'kol} (62.77, 73.62)| |Z|2133| |NPC|201619|

T Open That Door! |QID|72962| |N|(npc:200075) in {Nal ks'kol} (62.77, 73.62)| |Z|2133| |NPC|200075|
A Sundered Flames |QID|75419| |N|(npc:200075) in {Nal ks'kol} (62.77, 73.62)| |Z|2133| |NPC|200075|

N (npc:201677) |QID|75419.1| |N|Defeat (npc:201677) in {Nal ks'kol} (62.81, 73.64)| |Z|2133| |NPC|201677|

T Sundered Flames |QID|75419| |N|(npc:204040) in {Nal ks'kol} (63.00, 73.94)| |Z|2133| |NPC|204040|
A The Upper Hand |QID|72963| |N|(npc:202857) in {Nal ks'kol} (63.00, 73.94)| |Z|2133| |NPC|202857|

N (npc:202857) |QID|72963.1| |N|Speak with (npc:202857) in {Nal ks'kol} (63.00, 73.94)| |Z|2133| |NPC|202857|
N (npc:199984) |QID|72963.2| |N|Defeat (npc:199984) in {Nal ks'kol} (63.51, 74.56)| |Z|2133| |NPC|199984|

T The Upper Hand |QID|72963| |N|(npc:204571) in {Nal ks'kol} (63.43, 74.62)| |Z|2133| |NPC|204571|
A Singed |QID|72964| |N|(npc:204571) in {Nal ks'kol} (63.43, 74.62)| |Z|2133| |NPC|204571|

N (npc:202693) |QID|72964.1| |N|Speak to Amythora in {Nal ks'kol} (63.58, 74.91)| |Z|2133| |NPC|202693|
N (npc:202696) |QID|72964.2| |N|Speak to Marithos in {Nal ks'kol} (63.63, 74.83)| |Z|2133| |NPC|202696|

T Singed |QID|72964| |N|(npc:200064) in {Nal ks'kol} (63.50, 74.73)| |Z|2133| |NPC|200064|
A Aspects of Our Legacy |QID|72965| |N|(npc:202670) in {Nal ks'kol} (63.40, 74.67)| |Z|2133| |NPC|202670|

C Titan Transporter |QID|72965| |N|Use the Titan Transporter to leave the building (62.91,74.06)| |Z|2133| |REACH|62.31,72.98|
N (npc:202771) |QID|72965.1| |N|Speak to (npc:202771) in Loamm (56.57, 57.13)| |Z|2133| |NPC|202771|

T Aspects of Our Legacy |QID|72965| |N|(npc:199849) in {Loamm} (56.63, 56.73)| |Z|2133| |NPC|199849|

-- The Ancient Bargain 10.1 Patch
A Where There's Smoke, There's Fire |QID|72966| |N|(npc:199849) in {Loamm} (56.63, 56.73)| |Z|2133| |NPC|199849| |PRE|72965|
T Where There's Smoke, There's Fire |QID|72966| |N|(npc:200081) in {Elders' Gift} (41.03, 41.74)| |Z|2133| |NPC|200081|
A Sight Beyond Sight |QID|72908| |N|(npc:200080) in {Elders' Gift} (40.95, 41.69)| |Z|2133| |NPC|200080|

N 3 (item:203385) |QID|72908.1| |N|Click on 3 Flamesight Totems and collect 3 (item:203385) in {Igira's Watch} (40.21, 42.86)<br/><b>Flamesight Totem 1 (40.52,43.15, 2133, "Flamesight Totem 1")<br/><b>Flamesight Totem 2 (39.69,42.32, 2133, "Flamesight Totem 2")<br/><b>Flamesight Totem 3 (37.19,41.88, 2133, "Flamesight Totem 3")| |Z|2133|
N (item:204694) |QID|72908.2| |N|Kill (npc:199842) and then loot (item:204694) in {Zaqali Caldra} (35.46, 42.19)| |Z|2133| |NPC|199842|
N Activate Greater Flamesight Totem |QID|72908.3| |N|Click on Greater Flamesight Totem atop the guard tower in {Zaqali Caldera} (35.69, 41.46) (35.49, 42.12)| |Z|2133|

T Sight Beyond Sight |QID|72908| |N|(npc:199852) in {Zaqali Caldera} (35.49, 41.86)| |Z|2133| |NPC|199852|
A Legends of the Zaqali |QID|72909| |N|(npc:199852) in {Zaqali Caldera} (35.49, 41.86)| |Z|2133| |NPC|199852|
A Know Thy Enemy |QID|72910| |N|(npc:199851) in {Zaqali Caldera} (35.41, 41.88)| |Z|2133| |NPC|199851|

N Smoldering Incense |QID|72909.1| |N|Click on Smoldering Incense in {Zaqali Caldera} (33.29, 41.06)| |Z|2133|
N Thrumming Earthstone |QID|72909.2| |N|Click on Thrumming Earthstone in {Zaqali Caldera} (32.99, 42.10)| |Z|2133|
N 8 Zaqali Armaments |QID|72910.1| |N|Kill Zaqali mobs and loot 8 Zaqali Armaments in {Zaqali Caldera} (31.97, 41.37)| |Z|2133| |NPC|199971, 199972, 202803|
N Cached Weaponry |QID|72909.3| |N|Click on Cached Weaponry in {Zaqali Caldera} (31.90, 41.44)| |Z|2133|
N Battered Armament |QID|72909.4| |N|Click on Battered Ebon Armament in {Zaqali Caldera} (32.22, 40.22)| |Z|2133|
N Prayer Tablet |QID|72909.5| |N|Click on Prayer Tablet in {Zaqali Caldera} (32.33, 39.49)| |Z|2133|
N Regroup with (npc:199949) |QID|72909.6| |N|Enter the cave in {Zaqali Caldera} (30.36, 41.36) (30.25, 41.02)| |Z|2133|

T Legends of the Zaqali |QID|72909| |N|(npc:199948) in {Zaqali Caldera} (30.20, 41.02)| |Z|2133| |NPC|199948|
T Know Thy Enemy |QID|72910| |N|(npc:199949) in {Zaqali Caldera} (30.26, 40.97)| |Z|2133| |NPC|199949|
A Take Out the Head |QID|72911| |N|(npc:199949) in {Zaqali Caldera} (30.26, 40.97)| |Z|2133| |NPC|199949| |PPOS|

N (npc:199839) |QID|72911.1| |N|Slay (npc:199839) in {Zaqali Caldera} (30.88, 45.54)| |Z|2133| |NPC|199839|
N (npc:199840) |QID|72911.2| |N|Slay (npc:199840) in {Zaqali Caldera} (30.92, 45.62)| |Z|2133| |NPC|199840|
N Disturbance Investigated |QID|72911.3| |N|After killing (npc:199839) and (npc:199840) this completes in {Zaqali Caldera} (30.92, 45.62)| |Z|2133|

T Take Out the Head |QID|72911| |N|(npc:199863) in {Zaqali Caldera} (38.22, 48.44)| |Z|2133| |NPC|199863|
A Consequences |QID|72912| |N|(npc:199863) in {Zaqali Caldera} (38.22, 48.44)| |Z|2133| |NPC|199863|

N (npc:199862) |QID|72912.1| |N|Speak to (npc:199862) in {Zaqali Caldera} (38.25, 48.38)| |Z|2133| |NPC|199862|

T Consequences |QID|72912| |N|(npc:199863) in {Zaqali Caldera} (38.21, 48.45)| |Z|2133| |NPC|199863|
A Battlefield Triage |QID|72913| |N|(npc:199863) in {Zaqali Caldera} (38.21, 48.45)| |Z|2133| |NPC|199863|

N 5 (item:203653) |QID|72913.1| |N|Collect 5 (item:203653) from (npc:199837), (npc:202835), (npc:199824), and (npc:199980) in {Zaqali Caldera} (36.98, 46.70)| |Z|2133| |NPC|199837, 202835, 199824, 199980|
N (item:203654) |QID|72913.2| |N|Collect (item:203654) from (npc:199826) in {Zaqali Caldera} (36.26, 46.88)| |Z|2133| |NPC|199826|

T Battlefield Triage |QID|72913| |N|(npc:199863) in {Zaqali Caldera} (36.29, 46.92)| |Z|2133| |NPC|199863|
A Rushing Quality |QID|72914| |N|(npc:199863) in {Zaqali Caldera} (36.29, 46.92)| |Z|2133| |NPC|199863|

R Head to the altar |QID|72914.1| |N|Head to the altar in {Zaqali Caldera} (33.21, 50.97)| |Z|2133|
N Totem Placed |QID|72914.2| |N|Click on the Totem in {Zaqali Caldera} (33.21, 50.94)| |Z|2133|
N Elemental Cores Placed |QID|72914.3| |N|Click on 5 Elemental Cores, in {Zaqali Caldera} (33.10, 51.02)| |Z|2133|
N Take Your Ritual Place and Assist (npc:201581) |QID|72914.4| |N|Take your ritual place and click on the (spell:400855) somewhere on your screen in {Zaqali Caldera} (33.26, 50.78)| |Z|2133|
N 5 (item:203682) |QID|72914.5| |N|Click on 5 Darkened Elemental Cores in {Zaqali Caldera} (33.11, 51.02)| |Z|2133|
N Darkened Cores Thrown into Lava |QID|72914.6| |N|Use (spell:400826) somewhere on your screen in {Zaqali Caldera} (33.19, 50.90)| |Z|2133|

T Rushing Quality |QID|72914| |N|(npc:201581) in {Zaqali Caldera} (33.13, 50.90)| |Z|2133| |NPC|201581|
A Shut Them Down |QID|72916| |N|(npc:201581) in {Zaqali Caldera} (33.13, 50.90)| |Z|2133| |NPC|201581|
A Alliance of Convenience |QID|72915| |N|(npc:199952) in {Zaqali Caldera} (33.15, 50.93)| |Z|2133| |NPC|199952|

N 4 Zaqali Guards Slain |QID|72915.1| |N|Slay 4 Zaqali guards in {Zaqali Caldera} (28.57, 51.97)| |Z|2133| |NPC|199827, 199828, 202675, 205641|

T Alliance of Convenience |QID|72915| |N|(npc:199952) in {Zaqali Caldera} (28.70, 51.61)| |Z|2133| |NPC|199952| |PPOS|

N 4 Extracted Elemental Core Destroyed |QID|72916.2| |N|Destroy 4 Extracted Elemental Cores in {Zaqali Caldera} (29.67, 50.48) (29.86, 51.41) (28.58, 52.08) (28.22, 50.88)| |Z|2133|
N 3 Earthdrainer Conduit Destroyed |QID|72916.1| |N|Destroy 3 Earthdrainer Conduit in {Zaqali Caldera} (29.51, 54.71)| |Z|2133|

T Shut Them Down |QID|72916| |N|(npc:199952) in {Zaqali Caldera} (29.51, 54.67)| |Z|2133| |NPC|199952| |PPOS|
A A Scale for a Scale |QID|74494| |N|(npc:199952) in {Zaqali Caldera} (29.51, 54.67)| |Z|2133| |NPC|199952| |PPOS|

N Zaqali Dragonslayer's Spear |QID|74494.1| |N|Click on Zaqali Dragonslayer's Spear in {Zaqali Caldera} (28.26, 50.39)| |Z|2133|
R Head to the Overlook |QID|74494.2| |N|Head to the overlook in {Zaqali Caldera} (29.69, 49.63)| |Z|2133|

T A Scale for a Scale |QID|74494| |N|(npc:199952) in {Zaqali Caldera} (29.63, 49.67)| |Z|2133| |NPC|199952|
A From Hell's Heart |QID|72917| |N|(npc:199952) in {Zaqali Caldera} (29.63, 49.67)| |Z|2133| |NPC|199952|

N Agree to Sabellian's Plan |QID|72917.1| |N|Speak to (npc:199954) in {Zaqali Caldera} (30.20, 48.98)| |Z|2133| |NPC|199954|
N (npc:199838) |QID|72917.2| |N|Slay (npc:199838) in {Zaqali Caldera} (29.79, 49.09)| |Z|2133| |NPC|199838|

T From Hell's Heart |QID|72917| |N|(npc:199877) in {Zaralek Cavern} (41.08, 59.86)| |Z|2133| |NPC|199877|
A No Dragon Left Behind |QID|72918| |N|(npc:199877) in {Zaralek Cavern} (41.08, 59.86)| |Z|2133| |NPC|199877|

N Pull the Spear Out by Hand |QID|72918.1| |N|Click on (npc:199877) in {Zaralek Cavern} (41.08, 59.86)| |Z|2133| |NPC|199877|
N Pull the Spear Out with More Leverage |QID|72918.2| |N|Click on (npc:199877) and then walk away in {Zaralek Cavern} (41.20, 60.01)| |Z|2133| |NPC|199877|
N Let (npc:199876) Help |QID|72918.3| |N|Speak to (npc:199876) in {Zaralek Cavern} (41.11, 59.84)| |Z|2133| |NPC|199876|

T No Dragon Left Behind |QID|72918| |N|(npc:199876) in {Zaralek Cavern} (41.14, 59.84)| |Z|2133| |NPC|199876|
A Raked Over the Coals |QID|72919| |N|(npc:199877) in {Zaralek Cavern} (41.02, 59.90)| |Z|2133| |NPC|199877|

N 12 Shadowflame Dispersed |QID|72919.1| |N|Use your Dragonriding mount and then use the updraft and then fly through 12 rings in {Zaralek Cavern} (53.22, 51.42)| |Z|2133|
R Head into Loamm |QID|72919.2| |N|Head into {Loamm} (55.94, 54.06)| |Z|2133|

T Raked Over the Coals |QID|72919| |N|(npc:199958) in {Loamm} (56.02, 54.40)| |Z|2133| |NPC|199958|
A The Endless Burning Sky |QID|72920| |N|(npc:199958) in {Loamm} (56.02, 54.40)| |Z|2133| |NPC|199958|

N Search for Villagers |QID|72920.2| |N|Find 5 villagers in {Loamm} (57.74, 53.43)| |Z|2133| |NPC|204994, 204992, 204991, 204993, 204995| |POI|
N Fires Extinguished |QID|72920.1| |N|Use (spell:401160) on fires until bar reaches (100%) in {Loamm} (56.50, 54.55)| |Z|2133|
N (npc:201772) |QID|72920.3| |N|Rescue (npc:201772) in {Loamm} (56.80, 55.75) (56.48, 55.54)| |Z|2133| |NPC|201772|
N Fire Cleared from Doorway |QID|72920.4| |N|Allow (npc:199958) to clear the fire from the door way in {Loamm} (56.55, 55.62)| |Z|2133| |NPC|199958|

T The Endless Burning Sky |QID|72920| |N|(npc:201784) in {Loamm} (56.07, 54.60)| |Z|2133| |NPC|201784|
A In the Wake of the Ashes |QID|75145| |N|(npc:201784) in {Loamm} (56.07, 54.60)| |Z|2133| |NPC|201784|

R The Seat of the Aspects |TID|75145| |N|Travel to {The Seat of the Aspects} (61.94, 32.17)| |Z|2112| |REACH|57.06,42.43|
N (npc:203151) |QID|75145.1| |N|Speak to (npc:203151) atop of {The Seat of the Aspects} (58.32, 39.00)| |Z|2112| |NPC|203151|

T In the Wake of the Ashes |QID|75145| |N|(npc:203151) atop of {The Seat of the Aspects} (58.31, 39.00)| |Z|2112| |NPC|203151|

-- Inherited Sin
A Here We Go Again |QID|72987| |N|(npc:203965) atop of {The Seat of the Aspects} (61.84, 41.15)| |Z|2112| |NPC|203965|

--N (npc:187676) |QID|72987.2| |N|Ask (npc:187676) for a portal atop of {The Seat of the Aspects} (61.36, 36.60)| |Z|2112| |NPC|187676|
--N Use Portal |TID|72987| |N|Use Portal to Zaralek Cavern atop of {The Seat of the Aspects} (60.81, 36.92)<br/><b>Don't worry Kalecgos will catch you and plead with you to not tell Alexstrasza about it.| |Z|2112| |REACH|48.72,40.05,2133|
R Loamm |TID|72987| |N|Travel to {Loamm} (55.62, 54.81)| |Z|2133|
N (npc:200046) |QID|72987.1| |N|Find (npc:200046) in {Zaralek Cavern} (49.92, 27.55)| |Z|2133| |NPC|200046|

T Here We Go Again |QID|72987| |N|(npc:200046) in {Zaralek Cavern} (49.92, 27.55)| |Z|2133| |NPC|200046|
A The Obsidian Rest |QID|75367| |N|(npc:200046) in {Zaralek Cavern} (49.92, 27.55)| |Z|2133| |NPC|200046|

f Obsidian Rest |TID|75367| |N|Speak to (npc:200893) and grab the fight master for {Obsidian Rest} (51.05, 26.17)| |Z|2133| |NPC|200893|
N (item:204819) |QID|75367.1| |N|Click on Flight Master's Report in {Obsidian Rest} (51.07, 26.31)| |Z|2133|
N (npc:201026) |QID|75367.2| |N|Speak to (npc:201026) in {Obsidian Rest} (51.36, 25.63)| |Z|2133| |NPC|201026|
N Spying Glass Used |QID|75367.3| |N|Use the Spying Glass in {Obsidian Rest} (50.72, 25.21)| |Z|2133|

T The Obsidian Rest |QID|75367| |N|(npc:200046) in {Zaralek Cavern} (49.92, 27.55)| |Z|2133| |NPC|200046|
A Report: Battlefield Ruins |QID|74393| |N|(npc:200046) in {Zaralek Cavern} (49.92, 27.55)| |Z|2133| |NPC|200046|
T Report: Battlefield Ruins |QID|74393| |N|(npc:200051) in {Obsidian Spire Outpost} (46.73, 29.63)| |Z|2133| |NPC|200051|
A Blow It Up |QID|74538| |N|(npc:200051) in {Obsidian Spire Outpost} (46.73, 29.63)| |Z|2133| |NPC|200051|
A Thinning Their Defenses |QID|74539| |N|(npc:200051) in {Obsidian Spire Outpost} (46.73, 29.63)| |Z|2133| |NPC|200051|
A Intercepting Communications |QID|74540| |N|(npc:200051) in {Obsidian Spire Outpost} (46.73, 29.63)| |Z|2133| |NPC|200051|

N (npc:200128) |QID|74540.2| |N|Slay (npc:200128) in {Elders' Gift} (43.00, 39.06)| |Z|2133| |NPC|200128|
N (item:204074) |QID|74540.1| |N|Click on Invasion Plans in {Elders' Gift} (42.99, 38.94)| |Z|2133|
N Dragonslayer Ballista Destroyed |QID|74538.1| |N|Destroy 4 Dragonslayer Ballistas in {Battlefield Ruins} (43.82, 34.21)<br/><b>Dragonslayer Ballista 1 (42.88,33.49, 2133, "Dragonslayer Ballista 1")<br/><b>Dragonslyer Ballista 2 (42.04,33.79, 2133, "Dragonslayer Ballista 2")<br/><b>Dragonslayer Ballista 3 (42.88,33.49, 2133, "Dragonslayer Ballista 3")<br/><b>Dragonslayer Ballista 4 (43.82,34.22, 2133, "Dragonslayer Ballista 4")| |Z|2133| |POI|
N 5 (npc:200066) |QID|74539.1| |N|Slay 5 (npc:200066) in {Elders' Gift} (42.00, 37.26)| |Z|2133| |NPC|200066|

T Blow It Up |QID|74538| |N|(npc:200051) in {Obsidian Spire Outpost} (46.72, 29.62)| |Z|2133| |NPC|200051|
T Thinning Their Defenses |QID|74539| |N|(npc:200051) in {Obsidian Spire Outpost} (46.72, 29.62)| |Z|2133| |NPC|200051|
T Intercepting Communications |QID|74540| |N|(npc:200051) in {Obsidian Spire Outpost} (46.72, 29.62)| |Z|2133| |NPC|200051|
A Air Superiority |QID|74542| |N|(npc:200051) in {Obsidian Spire Outpost} (46.73, 29.62)| |Z|2133| |NPC|200051|

N (npc:202469) |QID|74542.1| |V| |N|Speak to (npc:202469) in {Obsidian Spire Outpost} (46.92, 29.44)| |Z|2133|
N Djaradin Forces Defeated |QID|74542.2| |N|Use (spell:404735) and (spell:409673) on Djaradin forces until bar reaches (100%) in {Obsidian Spire Outpost} (46.92, 29.44)| |Z|2133|
N Reach the Ledge |QID|74542.3| |N|Reach the Ledge in {Zaralek Cavern} (53.39, 30.26)| |Z|2133|

T Air Superiority |QID|74542| |N|(npc:202523) in {Zaralek Cavern} (53.56, 30.22)| |Z|2133| |NPC|202523|
A Investigating the Unknown |QID|74557| |N|(npc:202523) in {Zaralek Cavern} (53.56, 30.22)| |Z|2133| |NPC|202523|

N Djaradin Corpse Inspected |QID|74557.1| |N|Click on (npc:202529) in {Zaralek Cavern} (53.55, 30.11)| |Z|2133| |NPC|202529|
N Poacher Corpse Inspected |QID|74557.2| |N|Click on (npc:202549) in {Zaralek Cavern} (53.45, 29.90)| |Z|2133| |NPC|202549|
N Contact made with a Serpent Drake |QID|74557.3| |N|Click on (npc:202550) in {Zaralek Cavern} (53.42, 30.31)| |Z|2133| |NPC|202550|

T Investigating the Unknown |QID|74557| |N|(npc:202523) in {Zaralek Cavern} (53.56, 30.21)| |Z|2133| |NPC|202523|
A Break Them Out |QID|74562| |N|(npc:202523) in {Zaralek Cavern} (53.56, 30.21)| |Z|2133| |NPC|202523|
A Worst of the Worst |QID|74563| |N|(npc:202523) in {Zaralek Cavern} (53.56, 30.21)| |Z|2133| |NPC|202523|

N Poachers' Operation Disrupted |QID|74562.1| |N|Slay (npc:200173) and click on Doors and Transportation Cart's until bar reaches (100%) in {Slitherdrake Roost} (54.93, 30.75)| |Z|2133| |NPC|200173|
N (npc:200186) |QID|74563.1| |N|Slay (npc:200186) in {Slitherdrake Roost} (56.84, 30.32)| |Z|2133| |NPC|200186|

T Break Them Out |QID|74562| |N|(npc:202523) in {Zaralek Cavern} (54.53, 30.46) (53.61, 30.19)| |Z|2133| |NPC|202523|
T Worst of the Worst |QID|74563| |N|(npc:202523) in {Zaralek Cavern} (53.61, 30.19)| |Z|2133| |NPC|202523|

-- Inevitable Confrontation 10.1 Patch
A Fading Embers |QID|72922| |N|(npc:202995) in {Zaralek Cavern} (53.44, 30.24)| |Z|2133| |NPC|202995| |PRE|74563|

N (npc:203904) |QID|72922.1| |N|Speak to (npc:203904) in {Zaralek Cavern} (45.93, 26.35)| |Z|2133| |NPC|203904|
N Sarkareth Stopped |QID|72922.2| |N|Kill waves of (npc:203948) and (npc:203947) until bar reaches (100%) in {Brimstone Garrison} (45.50, 25.67)| |Z|2133| |NPC|203948, 203947|

T Fading Embers |QID|72922| |N|(npc:199965) in {Zaralek Cavern} (44.00, 15.6)| |Z|2133| |POI| |NPC|199965|
A A Whisper to Sabellian |QID|72923| |N|(npc:199965) in {Zaralek Cavern} (44.00, 15.6)| |Z|2133| |NPC|199965|

N (npc:199973) |QID|72923| |N|Speak to (npc:199973) in Obsidian Spire Outpost (46.79, 29.58)| |Z|2133| |NPC|199973|

T A Whisper to Sabellian |QID|72923| |N|(npc:199965) in {Zaralek Cavern} (46.79, 29.58)| |Z|2133| |PPOS| |NPC|199965|
A Appealing to the Black Prince |QID|72924| |N|(npc:199965) in {Zaralek Cavern} (46.79, 29.58)| |Z|2133| |PPOS| |NPC|199965|

N (npc:200101) |QID|72924.1| |N|Speak to (npc:200101) in {Obsidian Rest} (51.52, 25.82)| |Z|2133| |POI| |NPC|200101|

T Appealing to the Black Prince |QID|72924| |N|(npc:199965) in {Obsidian Rest} (51.48, 25.78)| |Z|2133| |NPC|199965|
A With Our Powers Combined |QID|72925| |N|(npc:199965) in {Obsidian Rest} (51.48, 25.78)| |Z|2133| |NPC|199965|

N (npc:199964) |QID|72925.1| |N|Meet (npc:199964) by the entrance in {Zaralek Cavern} (47.26, 28.09)| |Z|2133| |NPC|199964|

T With Our Powers Combined |QID|72925| |N|(npc:199965) in {Zaralek Cavern} (47.18, 27.93)| |Z|2133| |NPC|199965|
A Forward Camp |QID|72931| |N|(npc:199965) in {Zaralek Cavern} (47.18, 27.93)| |Z|2133| |NPC|199965|
A In the Right Hands |QID|72926| |N|(npc:200101) in {Zaralek Cavern} (47.24, 27.84)| |Z|2133| |NPC|200101|
A Wipe Them Out |QID|72928| |N|(npc:199973) in {Zaralek Cavern} (47.08, 28.09)| |Z|2133| |NPC|199973|

N Defeat Enemies in Brimstone Garrison |QID|72928.1| |N|Slay (npc:200138), (npc:202884), and (npc:200135) until bar reaches (100%) in {Brimstone Garrison} (43.33, 21.99)| |Z|2133| |NPC|200138, 202884, 200135|
N (item:204184) |QID|72926.1| |N|Click on Ebon Eviscerator in {Brimstone Garrison} (45.10, 18.48)| |Z|2133|
N (item:204177) |QID|72926.2| |N|Click on 'The Resting Blade' in {Brimstone Garrison} (45.11, 21.00)| |Z|2133|
N (npc:199965) |QID|72931.1| |N| Meet (npc:199965) at the {Brimstone Garrison} (44.03, 15.56)| |Z|2133| |NPC|199965|

T Forward Camp |QID|72931| |N|(npc:199965) in {Brimstone Garrison} (44.06, 15.67)| |Z|2133| |NPC|199965|
T In the Right Hands |QID|72926| |N|(npc:200101) in {Brimstone Garrison} (44.01, 15.68)| |Z|2133| |NPC|200101|
T Wipe Them Out |QID|72928| |N|(npc:199973) in {Brimstone Garrison} (44.08, 15.57)| |Z|2133| |NPC|199973|
A Finding Sarkareth |QID|72927| |N|(npc:199965) in {Brimstone Garrison} (44.06, 15.67)| |Z|2133| |NPC|199965|

N Meet (npc:199964) |QID|72927.1| |N|Meet (npc:199964) in {Aberrus Approach} (47.28, 15.60)| |Z|2133| |NPC|199964|

T Finding Sarkareth |QID|72927| |N|(npc:199964) in {Aberrus Approach} (47.35, 15.62)| |Z|2133| |NPC|199964|
A Cracking His Shell |QID|72929| |N|(npc:199964) in {Aberrus Approach} (47.35, 15.62)| |Z|2133| |NPC|199964|

N Connection Destroyed |QID|72929.1| |N|Destroy 2 Abberus Charge's in {Aberrus Approach} (49.22, 16.64)<br/><b>Abberus Charge 1 (47.52,16.33, 2133, "Abberus Charge 1")<br/><b>Abberus Charge 2 (49.22,16.64, 2133, "Abberus Charge 2")| |Z|2133|

T Cracking His Shell |QID|72929| |N|(npc:199964) in {Aberrus Approach} (47.35, 15.62)| |Z|2133| |NPC|199964|
A Stopping Sarkareth |QID|72930| |N|(npc:199964) in {Aberrus Approach} (47.35, 15.62)| |Z|2133| |NPC|199964|

N (npc:203842) |QID|72930.1| |N|Slay (npc:203842) in {Aberrus Approach} (48.83, 14.91)| |Z|2133| |NPC|203842|

T Stopping Sarkareth |QID|72930| |N|(npc:199964) in {Aberrus Approach} (47.86, 14.86)| |Z|2133| |NPC|199964|

-- A Flame, Extinguished 10.1 Patch
A Aberrus, the Shadowed Crucible: Sarkareth |QID|75694| |N|(npc:199965) in {Aberrus Approach} (47.90, 14.95)| |Z|2133| |NPC|199965| |O|

R Aberrus, the Shadowed Crucible |TID|75694| |N|Queue for or zone into (map:2166) raid on any difficulty (48.47, 10.17)| |Z|2133| |F|2166| |I| |O|
N (npc:205319) |N|Slay (npc:205319) in {Edge of Oblivion} (map:2170)| |NPC|20319| |O|

T Aberrus, the Shadowed Crucible: Sarkareth |QID|75694| |N|(npc:199965) in {Aberrus Approach} (47.90, 14.95)| |Z|2133| |NPC|199965| |O|
A A Flame, Extinguished |QID|74521| |N|(npc:201727) in {Aberrus Approach} (48.00, 11.8)| |Z|2133| |PRE|72930|
C A Flame, Extinguished  |QID|74521.1| |N|Speak to (npc:201730) or (npc:201729) (48.33,10.18)| |Z|2133| |NPC|201730, 201729| |F|2171|

N Experience the Retelling of Sarkareth's Fate |QID|74521.2| N|Speak to (npc:202809) or (npc:202810)<br/><b> It will depend on who you chose to enter with (51.30,91.36)|  |NPC|202809, 202810| |Z|2171|

T A Flame, Extinguished |QID|74521| |N|Speak to (npc:202809) or (npc:202810)<br/><b> It will depend on who you chose to enter with (51.30,91.36)|  |NPC|202809, 202810| |Z|2171|
A Remnants |QID|74522| |N|Speak to (npc:202809) or (npc:202810)<br/><b> It will depend on who you chose to enter with|  |NPC|202809, 202810| |Z|2171|

A A Traitor's Due |QID|74523| |N|(npc:202810), next to you| |PPOS| |NPC|202810| |Z|2171|
A Honorbound |QID|74525| |N|(npc:202858) (43.04, 52.36)| |NPC|202810| |Z|2171|
C Honorbound |QID|74525| |N|Click Cage Door to Free the Djaradin and Destroy the Specimen Tank<br/><b>tick this step after the first 3 are release  (42.03,61.52) (36.68,52.32) (38.40,42.37)| |Z|2171| |F|2172|
C Remnants |QID|74522| |N|Free the Djaradin and use (item:204271) to destroy the specimen tank (51.15,70.30) (48.41,69.50) (46.00,70.16) (43.94,67.39) (44.75,59.74) (43.40,44.05) (54.37,45.65)| (48.25,26.02)| |U|204271| |Z|2172| |NPC|202800|
A A Traitor's Due |QID|74523| |N|Defeat Neltharion's Loyalists (39.63,50.65)| |Z|2172| |POI|

T Remnants |QID|74522| |N|Next to you (npc:202809)| |PPOS| |NPC|202809| |Z|2172|

T A Traitor's Due |QID|74523| |N|Next to you (npc:202810)| |PPOS| |NPC|202810| |Z|2172|
T Honorbound |QID|74525| |N|Next to you (npc:202810)| |PPOS| |NPC|202810| |Z|2172|

A Into the Dark |QID|75018| |N|(npc:202809), next to you| |PPOS| |NPC|202809| |Z|2172|
C Into the Dark |QID|75018.1| |N|Reach the Upper Platform of the Onyx Laboratory  (56.58,19.33)| |Z|2172|

N (npc:202520) |QID|75018.2| |V| |N|Ride (npc:202520) to {Neltharion's Sanctum} (34.99,27.09)| |NPC|202520| |Z|2171|
N Enter the Edge of Oblivion |QID|75018.3| |N|Run forward into the room when you land (50.73,14.00)| |Z|2173| |REACH|51.00,12.74,2173|

N Pass Through the Edge of Oblivion |QID|75018.3| |N|You will fall safely into a pool below (50.75,66.71)| |Z|2173|
N Meet Up With Ebyssian and Emberthal |QID|75018.4| |N|Click on the door and meet Up With Ebyssian and Emberthal (49.15,47.31) (50.04, 70.89)| |Z|2174|

T Into the Dark |QID|75018| |N|(npc:202928) (49.90,70.94)| |NPC|202928| |Z|2174|
A All the Broken Pieces |QID|75028| |N|(npc:202928) (49.90,70.94)| |NPC|202928| |Z|2174|

C All the Broken Pieces |QID|75028.1| |N|Collect the Signet Shard  (47.00,75.14) (45.37,74.45) (45.61,70.78)| |Z|2174|

T All the Broken Pieces |QID|75028| |N|(npc:202948) (49.38,70.61)| |NPC|202948| |Z|2174|
A A Legacy, Reforged |QID|75029| |N|(npc:202928) (49.93,70.93)| |NPC|202928| |Z|2174|
N Teleport to the Seat of the Aspects |QID|75029.2| |N|Teleport to the Seat of the Aspects (49.14,72.74)| |Z|2174|

N (npc:203011) |QID|75029.3| |N|Speak to (npc:203011) at the top of the tower. (58.41,39.63)| |Z|2112|
C A Legacy, Reforged |QID|75029.4| |N|Witness the Exchange Between Ebyssian and Alexstrasza (58.42,39.67)| |Z|2112|

T A Legacy, Reforged |QID|75029| |N|(npc:199965) atop of {The Seat of the Aspects} (58.41,39.63)| |Z|2112| |NPC|199965|

A Symbol of Hope |QID|75417| |N|(npc:187678) atop of {The Seat of the Aspects} (58.00,34.59)| |Z|2112| |NPC|187678|
N (npc:187678) |QID|75417.1| |N|(npc:187678) atop of {The Seat of the Aspects} (58.00,34.59)| |Z|2112| |NPC|187678|
T Symbol of Hope |QID|75417| |N|(npc:187678) atop of {The Seat of the Aspects} (58.00,34.59)| |Z|2112| |NPC|187678|

N Guide Complete
]]
end, {image = "zaralekcavern.tga", description = [[]]})
    end

    function Guide:Unload()
    end
end