local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Guardians_of_the_Dream")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Guardians of the Dream (70+ Story with Side Quests)", nil, nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You will need to be level 70 to use this guide| |PL|70|
N Prerequisite |QID|75923| |N|You need to complete (guide("Emerald Dream (70+ Storyline)") guide first|

-- //Enter the Dream// 10.2.0
A Call of the Dream |QID|76317| |N|In-Field Auto Accept in {Valdrakken} (35.97, 46.08)| |Z|2112| |PRE|75923|

N (item:208181) |QID|76317.1| |U|208181| |N|Once you have completed this storyline on a character on the same account, your alts can use (item:208181) to complete Coalition of Flames storyline.<br/><b>Beware: the skip is automatically applied to all alts.| |PPOS| |OID|75923| |O|

T Call of the Dream |QID|76317| |N|(npc:187590) in {Ancient Bough} (18.68, 51.76)| |Z|2023| |NPC|187590|
A Emerald Welcome |QID|76318| |N|(npc:187590) in {Ancient Bough} (18.68, 51.76)| |Z|2023| |NPC|187590|

N Cross into Emerald Dream |QID|76318.1| |N|Walk through the Portal in {Ancient Bough} (18.38, 52.38)| |Z|2023|
N (npc:206425) |QID|76318.2| |N|Speak to (npc:206425) in {Verdant Landing} (69.45, 54.08)| |Z|2200| |NPC|206425|

T Emerald Welcome |QID|76318| |N|(npc:206425) in {Verdant Landing} (69.45, 54.08)| |Z|2200| |NPC|206425|
A Feast or Flaming |QID|76319| |N|(npc:206425) in {Verdant Landing} (69.45, 54.08)| |Z|2200| |NPC|206425|
f Verdant Landing |QID|76319| |N|Speak to (npc:208280) and grab the flight path for {Verdant Landing} (68.86, 54.75)| |Z|2200| |NPC|208280|

N Summon your Dragon Riding Mount or Mount Faerie Drake |QID|76319.1| |V| |N|Use (item:210412) and summon your Dragon Riding Mount or speak to (npc:208306) in {Verdant Landing} (69.29, 54.57)If you learned this item on another character on the same account, it's safe to delete it.| |Z|2200| |NPC|208306|
N Flames Eaten |QID|76319.2| |N|Fly through 12 flames and rings in (map:2200) (66.67, 57.03)| |Z|2200|

T Feast or Flaming |QID|76319| |N|(npc:206510) in {Shallow Crossing} (64.33, 58.17)| |Z|2200| |NPC|206510|
A Wild Gods in Our Midst |QID|76320| |N|(npc:206510) in {Shallow Crossing} (64.33, 58.17)| |Z|2200| |NPC|206510|

N (npc:206527) |QID|76320.1| |N|Speak to (npc:206527) in {Fields of Reverie} (62.63, 66.14)| |Z|2200| |NPC|206527|
N (npc:206530) |QID|76320.2| |N|Speak to (npc:206530) in {Fields of Reverie} (65.61, 70.20)| |Z|2200| |NPC|206530|
N Enter DreamTree Barrow |QID|76320| |N|Enter the {DreamTree Barrow} (63.46, 71.57)| |Z|2200| |REACH|69.04,34.30,2254|
N (npc:206571) |QID|76320.3| |N|Speak to (npc:206571) in {Barrows of Reverie} (63.58, 73.46)| |Z|2254| |NPC|206571|

T Wild Gods in Our Midst |QID|76320| |N|(npc:206583) in {Fields of Reverie} (63.29, 71.43)| |Z|2200| |NPC|206583|
A Burning Assault |QID|76321| |N|(npc:206583) in {Fields of Reverie} (63.29, 71.43)| |Z|2200| |NPC|206583|
A The Face of Our Enemies |QID|76322| |N|(npc:206583) in {Fields of Reverie} (63.29, 71.43)| |Z|2200| |NPC|206583|

N Slay Fyrakk's forces (100%) |QID|76321.1| |N|Slay (npc:206722), (npc:206805), (npc:206717), (npc:206752), (npc:206727) and (npc:206975) in {Fields of Reverie} (63.04, 68.88)| |Z|2200| |NPC|206722, 206805, 206717, 206752, 206727, 206975|
K (npc:206684) |QID|76322.1| |N|Slay (npc:206684) in {Fields of Reverie} (64.37, 67.96)| |Z|2200| |NPC|206684|
K (npc:206628) |QID|76322.2| |N|Slay (npc:206628) in {Fields of Reverie} (61.44, 68.74)| |Z|2200| |NPC|206628|

T Burning Assault |QID|76321| |N|(npc:206688) in {Fields of Reverie} (62.76, 68.65)| |Z|2200| |NPC|206688|
T The Face of Our Enemies |QID|76322| |N|(npc:206688) in {Fields of Reverie} (62.76, 68.65)| |Z|2200| |NPC|206688|
A The Cruel |QID|77818| |N|(npc:206688) in {Fields of Reverie} (62.76, 68.65)| |Z|2200| |NPC|206688|

N Help Merithra Close Flame Portal |QID|77818.1| |N|Click on the (npc:209900) in {Fields of Reverie} (62.66, 68.52)| |Z|2200| |NPC|209900|
N Take (npc:206703) |QID|77818.2| |N|Take (npc:206703) in {Fields of Reverie} (62.93, 68.97)| |Z|2200| |NPC|206703| |REACH|61.66,60.57,2200|

T The Cruel |QID|77818| |N|(npc:206806) in {Shoreline Roots} (61.49, 60.40)| |Z|2200| |NPC|206806|
A Amirdrassil |QID|76323| |N|(npc:206806) in {Shoreline Roots} (61.49, 60.40)| |Z|2200| |NPC|206806|
T Amirdrassil |QID|76323| |N|(npc:206809) in {Amirdrassil} (53.75, 63.95)| |Z|2200| |NPC|206809|
A Lost to the Flame |QID|76324| |N|(npc:206809) in {Amirdrassil} (53.75, 63.95)| |Z|2200| |NPC|206809|

K (npc:206818) |QID|76324.1| |N|Slay (npc:206818) in {Firebreach} (50.61, 71.76)| |Z|2200| |NPC|206818|

T Lost to the Flame |QID|76324| |N|(npc:206979) in {Firebreach} (50.96, 69.97)| |Z|2200| |NPC|206979|
A Between Fyrakk and a Hard Place |QID|76325| |N|(npc:206979) in {Firebreach} (50.96, 69.97)| |Z|2200| |NPC|206979|

N (npc:206979) |QID|76325.1| |N|Speak to (npc:206979) in {Firebreach} (50.96, 69.97)| |Z|2200| |NPC|206979|

T Between Fyrakk and a Hard Place |QID|76325| |N|(npc:206979) in {Firebreach} (50.96, 69.97)| |Z|2200| |NPC|206979|
A Home in the Dream |QID|76326| |N|(npc:206979) in {Firebreach} (50.96, 69.97)| |Z|2200| |NPC|206979|
T Home in the Dream |QID|76326| |N|(npc:206896) in {Central Encampment} (50.80, 62.84)| |Z|2200| |NPC|206896|
A A Multi-Front Battle |QID|77283| |N|(npc:206896) in {Central Encampment} (50.80, 62.84)| |Z|2200| |NPC|206896|

f Central Encampment |QID|77283| |N|Speak to (npc:207636) and grab the flight path for {Central Encampment} (51.07, 62.36)| |Z|2200| |NPC|207636|

A A Worthy Ally: Dream Wardens |QID|78444| |N|(npc:208143) in {Central Encampment} (50.21,61.59)| |Z|2200| |NPC|208143| |OID|76403|

N (npc:207627) |QID|77283.1| |N|Interact with (npc:207627) in {Central Encampment} (49.88, 61.68)| |Z|2200| |NPC|207627|
h Central Encampment |QID|77283| |N|Speak to (npc:208627) to set your hearth to {Central Encampment} (49.86, 61.65)| |Z|2200| |NPC|208627|

A Dreams Unified |QID|78381| |N|(npc:208669) in {Central Encampment} (49.79, 62.49)| |Z|2200| |NPC|208669|
A It Starts With a Stone |QID|78262| |N|(npc:211328) in {Central Encampment} (49.79, 62.94)| |Z|2200| |NPC|211328|

N (npc:211328) |QID|77283.3| |N|Interact with (npc:211328) in {Central Encampment} (49.79, 62.90)| |Z|2200| |NPC|211328|
N It Starts With a Stone |QID|78262.1| |N|Collect 50 (cur:2245), you should have 50 of these from the quests completed so far. (49.79, 62.94)| |Z|2200| |CUR|2245, 50|
N It Starts With a Stone |QID|78262.2| |N|Speak with (npc:211329) in {Central Encampment} (49.85, 62.90)<br/><b>You should have a piece of gear by now to upgrade.<br/><b>Drag it to the window and then click the "Upgrade" button.| |Z|2200| |NPC|211329|

T It Starts With a Stone |QID|78262| |N|(npc:211328) in {Central Encampment} (49.79, 62.94)| |Z|2200| |NPC|211328|
A Dreaming of Crests |QID|78271| |N|(npc:211328) in {Central Encampment} (49.79, 62.94)| |Z|2200| |NPC|211328|
T A Multi-Front Battle |QID|77283| |N|(npc:206896) in {Central Encampment} (50.80, 62.84)| |Z|2200| |NPC|206896|

-- //Druids of the Flame// 10.2.0
A The Burning Barrow |QID|77436| |N|(npc:206896) in {Central Encampment} (50.80, 62.84)| |Z|2200| |NPC|206896| |PRE|77283|
T The Burning Barrow |QID|77436| |N|(npc:206247) in {Haven Cascades} (51.33, 42.93)| |Z|2200| |NPC|206247|
A Ashen Soil |QID|76433| |N|(npc:206247) in {Haven Cascades} (51.33, 42.93)| |Z|2200| |NPC|206247|
A Not Yet Lost |QID|76434| |N|(npc:206247) in {Haven Cascades} (51.33, 42.93)| |Z|2200| |NPC|206247|

R Sor'theril Barrow Den |QID|76435| |N|Travel to {Sor'theril Barrow Den} (51.11, 42.74)| |Z|2200|
N Burning Barrow Assisted (100%) |QID|76434.1| |N|Enter the cave and slay (npc:207016), (npc:206860), (npc:208027) and save (npc:206375) in {Sor'theril Barrow Den} (44.66, 35.19)| |Z|2253| |NPC|207016, 206860, 208027, 206375|
N Druid of the Flame Found |QID|76433.1| |N|Find (npc:206730) in {Sor'theril Barrow Den} (41.14, 32.40) (53.69, 23.34) (62.72, 37.28) (62.20, 43.38)| |Z|2253| |NPC|206730|

T Ashen Soil |QID|76433| |N|(npc:206247) in {Haven Cascades} (53.02, 80.05) (61.44, 87.15) (51.40, 42.71)| |Z|2200| |NPC|206247|
T Not Yet Lost |QID|76434| |N|(npc:206247) in {Haven Cascades} (51.40, 42.71)| |Z|2200| |NPC|206247|
A The Smoldering Copse |QID|76435| |N|(npc:206247) in {Haven Cascades} (51.40, 42.71)| |Z|2200| |NPC|206247|
T The Smoldering Copse |QID|76435| |N|(npc:207160) in {Viridescent Thicket} (40.77, 47.50)| |Z|2200| |NPC|207160|
A Burning Ground |QID|76437| |N|(npc:207160) in {Viridescent Thicket} (40.77, 47.50)| |Z|2200| |NPC|207160|
A Grim Reprisal |QID|76441| |N|(npc:207160) in {Viridescent Thicket} (40.77, 47.50)| |Z|2200| |NPC|207160|

N Disrupt the Smoldering Copse (100%) |QID|76441.1| |N|Slay (npc:207101), (npc:207084), (npc:206858), (npc:206859) and destroy Smoldering Supplies in {The Smoldering Copse} (36.83, 47.39)| |Z|2200| |NPC|207101, 207084, 206858, 206859|
N Captured Denizens Rescued |QID|76437.1| |N|Click on the cages to rescure (npc:211205), (npc:207153), (npc:207154) in {The Smoldering Copse} (35.34, 48.08)| |Z|2200| |NPC|211205, 207153, 207154|

T Burning Ground |QID|76437| |N|(npc:207160) in {The Smoldering Copse} (35.98, 50.90)| |Z|2200| |NPC|207160|
T Grim Reprisal |QID|76441| |N|(npc:207160) in {The Smoldering Copse} (35.98, 50.90)| |Z|2200| |NPC|207160|
A Forlorn Hope |QID|76442| |N|(npc:207160) in {The Smoldering Copse} (35.98, 50.90)| |Z|2200| |NPC|207160|

N (npc:207160) |QID|76442.1| |N|Speak to (npc:207160) in {The Smoldering Copse} (35.98, 50.90)| |Z|2200| |NPC|207160|
K (npc:207107) |QID|76442.2| |N|Slay (npc:207107) in {The Smoldering Copse} (35.39, 49.44)| |Z|2200| |NPC|207107|

T Forlorn Hope |QID|76442| |N|(npc:211193) in {The Smoldering Copse} (36.14, 50.89)| |Z|2200| |NPC|211193|
A The Looming Cinder |QID|76443| |N|(npc:211193) in {The Smoldering Copse} (36.14, 50.89)| |Z|2200| |NPC|211193|

R Amirdrassil |QID|76403| |N|Travel to {Amirdrassil} (51.19, 60.37)| |Z|2200|
T The Looming Cinder |QID|76443| |N|(npc:206896) in {Central Encampment} (50.80, 62.85)| |Z|2200| |NPC|206896|

U (item:210730) |QID|78444.1| |U|210730| |N|Use (item:210730) to consume reputation| |PPOS| |OID|76403|

-- //Ice and Fire// 10.2.0
A Mayhem Incarnate |QID|76403| |N|(npc:208506) in {Central Encampment} (50.80, 62.77)| |Z|2200| |NPC|208506| |PRE|76443|
T A Worthy Ally: Dream Wardens |QID|78444| |N|(npc:208143) in {Central Encampment} (50.21, 61.60)| |Z|2200| |NPC|208143| |OID|76403|
T Mayhem Incarnate |QID|76403| |N|(npc:206612) in (map:2200) (36.85, 25.89)| |Z|2200| |NPC|206612|
A Best Laid Plans |QID|76343| |N|(npc:206612) in (map:2200) (36.85, 25.89)| |Z|2200| |NPC|206612|
A Light 'Em Up! |QID|76342| |N|(npc:206619) in (map:2200) (36.87, 26.00)| |Z|2200| |NPC|206619|

N Hinder Primalist Forces (100%) |QID|76342.1| |N|Slay (npc:207314), (npc:206597), (npc:208418), (npc:212822), (npc:206603), close (npc:208878) and destroy Runestones in {Primalist Stronghold} (35.61, 21.63)| |Z|2200| |NPC|207314, 206597, 208418, 212822, 206603, 208878|
N Find 4 Clues |QID|76343.1| |N|Click on Proto-dragon Tablets in {Primalist Stronghold} (36.24, 21.08) (36.02, 20.22) (34.65, 20.05) (37.21, 22.94)| |Z|2200|

T Light 'Em Up! |QID|76342| |N|(npc:206619) in (map:2200) (36.89, 26.02)| |Z|2200| |NPC|206619|
T Best Laid Plans |QID|76343| |N|(npc:206612) in (map:2200) (36.84, 25.91)| |Z|2200| |NPC|206612|
A Primalist Directive |QID|76344| |N|(npc:206619) in (map:2200) (36.87, 26.01)| |Z|2200| |NPC|206619|
A Finding Terro |QID|76345| |N|(npc:206612) in (map:2200) (36.84, 25.87)| |Z|2200| |NPC|206612|

N Investigate Scorching Chasm |QID|76345.1| |N|Travel to {Scorching Chasm} (40.14, 20.24)| |Z|2200|
N Terro's Corpse Investigated |QID|76345.2| |N|Speak to (npc:208377) in {Scorching Chasm} (40.04, 20.15)| |Z|2200| |NPC|208377|
K (npc:210043) |QID|76345.3| |N|Slay (npc:210043) in {Scorching Chasm} (40.08, 20.18)| |Z|2200| |NPC|210043|
N 5 Primalists Swayed |QID|76344.1| |N|Speak to (npc:207301), (npc:207302) in {Scorching Chasm} (39.81, 22.15)| |Z|2200| |NPC|207301, 207302|

T Primalist Directive |QID|76344| |N|(npc:210178) in {Scorching Chasm} (39.57, 22.84)| |Z|2200| |NPC|210178|
T Finding Terro |QID|76345| |N|(npc:210178) in {Scorching Chasm} (39.57, 22.84)| |Z|2200| |NPC|210178|
A Assault on the Wellspring |QID|76532| |N|(npc:210178) in {Scorching Chasm} (39.57, 22.84)| |Z|2200| |NPC|210178|

N Observe the Wellspring of Life |QID|76532.1| |N|Speak to (npc:208674) in {Field of Flames} (33.54, 30.48)| |Z|2200| |NPC|208674|

T Assault on the Wellspring |QID|76532| |N|(npc:208378) in {Wellspring of Life} (27.63, 32.10)| |Z|2200| |NPC|208378|
A Big Bright Beautiful Barrier |QID|76348| |N|(npc:208378) in {Wellspring of Life} (27.63, 32.10)| |Z|2200| |NPC|208378|

N 6 Barrier Fragments |QID|76348.1| |N|Collect 6 Barrier Fragments they look like green crystals laying on the ground around this area (27.83, 30.84)| |Z|2200|
N Barrier Healed |QID|76348.2| |N|Stand here and then use (spell:423058) extra action button ability that appears somewhere on the screen in {Wellspring of Life} (28.04, 31.22)| |Z|2200|
N (npc:208378) |QID|76348.3| |N|Speak with (npc:208378) in {Wellspring of Life} (27.62, 32.12)| |Z|2200| |NPC|208378|

T Big Bright Beautiful Barrier |QID|76348| |N|(npc:208725) in {Field of Flames} (33.49, 30.34)| |Z|2200| |NPC|208725|
A Power, Eruption, and Lies |QID|76347| |N|(npc:208725) in {Field of Flames} (33.49, 30.34)| |Z|2200| |NPC|208725|

K (npc:208740) |QID|76347.1| |N|Slay (npc:208740) in {Cinder Summit} (29.91, 22.27)| |Z|2200| |NPC|208740|

T Power, Eruption, and Lies |QID|76347| |N|(npc:210733) in (map:2200) (33.75, 25.21)| |Z|2200| |NPC|210733|
A Tactical Withdrawal |QID|77178| |N|(npc:210733) in (map:2200) (33.75, 25.21)| |Z|2200| |NPC|210733|

f Wellspring Overlook |QID|76327| |N|Speak to (npc:209427) and grab the flight path for {Wellspring Overlook} (35.68, 33.68)| |Z|2200| |NPC|209427|
R Amirdrassil |QID|76327| |N|Travel to {Amirdrassil} (51.19, 60.37)| |Z|2200|
T Tactical Withdrawal |QID|77178| |N|(npc:208503) in {Central Encampment} (50.77, 62.81)| |Z|2200| |NPC|208503|

U (item:210757) |QID|76327| |U|210757| |N|Use (item:210757) to consume reputation| |PPOS|

-- //Eye of Ysera// 10.2.0 build 52129
A Eye of Ysera |QID|76327| |N|(npc:206408) in {Central Encampment} (50.84, 62.89)| |Z|2200| |NPC|206408| |PRE|77178|
N Take Portal into Eye of Ysera |QID|76327.1| |N|Click on the Portal to Eye of Ysera in {Central Encampment} (50.96, 62.59)| |Z|2200| |REACH|52.41,28.71,2200|
T Eye of Ysera |QID|76327| |N|(npc:206416) in {Eye of Ysera} (52.16, 29.15)| |Z|2200| |NPC|206416|
A A New Brute |QID|76328| |N|(npc:206416) in {Eye of Ysera} (52.16, 29.15)| |Z|2200| |NPC|206416|

f Eye of Ysera |QID|76328| |N|Speak to (npc:211353) and grab the flight path to {Eye of Ysera} (55.32, 29.55)| |Z|2200| |NPC|211353|
N 5 Emerald Preservers Imbued |QID|76328.1| |N|Click on 5 Emerald Preservers in {Eye of Ysera} (51.65, 29.08)| |Z|2200| |POI| |NPC|206480, 210701, 210702, 210703, 210704|
N Check in on Ysera |QID|76328.2| |N|Speak to (npc:206408) in {Eye of Ysera} (52.81, 28.00)| |Z|2200| |NPC|206408|

T A New Brute |QID|76328| |N|(npc:206406) in {Eye of Ysera} (52.74, 28.13)| |Z|2200| |NPC|206406|
A Fire Watch |QID|78646| |N|(npc:206406) in {Eye of Ysera} (52.74, 28.13)| |Z|2200| |NPC|206406|
T Fire Watch |QID|78646| |N|(npc:206406) in {Eye of Ysera} (52.16, 24.24)| |Z|2200| |NPC|206406|
A In and Out Scout |QID|76329| |N|(npc:206406) in {Eye of Ysera} (52.16, 24.24)| |Z|2200| |NPC|206406|
A Disarm Specialist |QID|76330| |N|(npc:206406) in {Eye of Ysera} (52.16, 24.24)| |Z|2200| |NPC|206406|

N (item:210016) |QID|76329.1| |U|210016| |N|Use (item:210016) in {Slagfell Hold} (46.18, 18.41)| |Z|2200| |BUFF|132089|
N Spy on Moltenbinder |QID|76329.1| |N|Spy on (npc:211095) in {Slagfell Hold} (46.20, 18.24)| |Z|2200| |NPC|211095|
N (item:210016) |QID|76329.2| |U|210016| |N|Use (item:210016) in {Slagfell Hold} (44.04, 24.25)| |Z|2200| |BUFF|132089|
N Spy on The Anvil |QID|76329.2| |N|Spy on (npc:211096) in {Slagfell Hold} (44.37, 24.06)| |Z|2200| |NPC|206478|
N 6 (npc:208676) Slain |QID|76330.1| |N|Slay 6 (npc:208676) in {Slagfell Hold} (44.70, 23.98)| |Z|2200| |NPC|211096|
N 8 Suffusion Supplies Destroyed |QID|76330.2| |N|Destroy 8 Suffusion Supplies in {Slagfell Hold} (46.63, 19.72)| |Z|2200|
N Spy on Igira the Cruel |QID|76329.3| |N|Speak to (npc:209153) to spy on (npc:206476) in {Slagfell Hold} (48.41, 22.43)| |Z|2200| |NPC|209153, 206476|

T Disarm Specialist |QID|76330| |N|(npc:206406) in {Eye of Ysera} (52.17, 24.24)| |Z|2200| |NPC|206406|
T In and Out Scout |QID|76329| |N|(npc:206406) in {Eye of Ysera} (52.17, 24.24)| |Z|2200| |NPC|206406|
A Good Counsel |QID|76334| |N|(npc:206406) in {Eye of Ysera} (52.17, 24.24)| |Z|2200| |NPC|206406|

N Regroup with Merithra |QID|76334.1| |N|Regroup with (npc:206406) in {Eye of Ysera} (52.60, 28.43)| |Z|2200| |NPC|206406|
N Speak to green dragons |QID|76334.2| |N|Speak to (npc:206412), (npc:206409) and (npc:206411) in {Eye of Ysera} (52.97, 28.30)| |Z|2200| |NPC|206412, 206409, 206411|
N (npc:206408) |QID|76334.3| |N|Speak to (npc:206408) in {Eye of Ysera} (52.81, 27.99)| |Z|2200| |NPC|206408|

T Good Counsel |QID|76334| |N|(npc:206406) in {Eye of Ysera} (53.05, 28.18)| |Z|2200| |NPC|206406|
A Putting Roots Down |QID|76332| |N|(npc:206406) in {Eye of Ysera} (53.05, 28.18)| |Z|2200| |NPC|206406|

N Noxious Seeds Planted |QID|76332.1| |N|Click on Tilled Soil to plant 8 Noxious Seeds and then kill (npc:211410) if one spawns in {Eye of Ysera} (55.22, 26.52)| |Z|2200|
N (npc:208909) |QID|76332.2| |N|Speak to (npc:208909) in {Eye of Ysera} (57.48, 25.89)| |Z|2200| |NPC|211410|
N (npc:207081) |QID|76332.3| |N|Speak to (npc:207081) in {Eye of Ysera} (56.94, 23.31)| |Z|2200| |NPC|207081|

T Putting Roots Down |QID|76332| |N|(npc:206406) in {Eye of Ysera} (53.05, 28.19)| |Z|2200| |NPC|206406|
A Merithra's Gambit |QID|76331| |N|(npc:206406) in {Eye of Ysera} (53.05, 28.19)| |Z|2200| |NPC|206406|

N Ask Ysera to Lower the Eye's Defenses |QID|76331.1| |N|Speak to (npc:206408) in {Eye of Ysera} (52.81, 28.00)| |Z|2200| |NPC|206408|

T Merithra's Gambit |QID|76331| |N|(npc:206406) in {Eye of Ysera} (52.89, 28.02)| |Z|2200| |NPC|206406|
A Triple Threat |QID|76333| |N|(npc:206406) in {Eye of Ysera} (52.89, 28.02)| |Z|2200| |NPC|206406|
A Might of the Forest |QID|76335| |N|(npc:206406) in {Eye of Ysera} (52.89, 28.02)| |Z|2200| |NPC|206406|

N Djaradin Forces Slain and Traps Activated (100%) |QID|76335.1| |N|Slay (npc:208950), (npc:208949), (npc:211756), (npc:208946), (npc:211651) and activate (npc:208963) traps in {Eye of Ysera} (54.25, 27.15)| |Z|2200| |NPC|208950, 208949, 211756, 208946, 211651, 208963|
K (npc:206478) |QID|76333.1| |N|Slay (npc:206478) in {Eye of Ysera} (56.90, 28.29)| |Z|2200| |NPC|206478|
K (npc:206477) |QID|76333.2| |N|Slay (npc:206477) in {Eye of Ysera} (54.32, 25.36)| |Z|2200| |NPC|206477|
K (npc:209048) |QID|76333.3| |N|Slay (npc:209048) in {Eye of Ysera} (56.64, 23.55)| |Z|2200| |NPC|209048|

T Triple Threat |QID|76333| |N|(npc:206416) in {Eye of Ysera} (57.27, 26.13)| |Z|2200| |NPC|206416|
T Might of the Forest |QID|76335| |N|(npc:206416) in {Eye of Ysera} (57.27, 26.13)| |Z|2200| |NPC|206416|
A Flight and Fight |QID|76336| |N|(npc:206416) in {Eye of Ysera} (57.27, 26.13)| |Z|2200| |NPC|206416|

N Summon your Dragon Riding Mount or Mount Green Dragon |QID|76336.1| |V| |N|Summon your Dragon Riding Mount or speak to (npc:211776) in {Eye of Ysera} (57.34, 25.60)| |Z|2200| |NPC|211776|
N (npc:207560) |QID|76336.2| |N|Use your Dragon Riding Mount and fly in to 25 (npc:207560) in {Eye of Ysera} (54.38, 30.09)| |Z|2200| |NPC|207560|
N (npc:206416) |QID|76336.3| |N|Speak to Merithra in {Eye of Ysera} (51.47, 30.38)| |Z|2200| |NPC|206416|

T Flight and Fight |QID|76336| |N|(npc:206406) in {Eye of Ysera} (51.98, 29.47)| |Z|2200| |NPC|206406|
A The Ember Still Smolders |QID|76337| |N|(npc:206406) in {Eye of Ysera} (51.98, 29.47)| |Z|2200| |NPC|206406|

R Amirdrassil |QID|76384| |N|Travel to {Amirdrassil} (51.18, 60.90)| |Z|2200|
T The Ember Still Smolders |QID|76337| |N|(npc:206896) in {Central Encampment} (50.80, 62.86)| |Z|2200| |NPC|206896|

U (item:210847) |QID|76337| |U|210847| |N|Use (item:210847) to consume reputation| |PPOS|

-- //A Dream of Fields and Fire// 10.2.0 build 52129
A The Bloom Begins |QID|76384| |N|(npc:206896) in {Central Encampment} (50.80, 62.86)| |Z|2200| |NPC|206896| |PRE|76337|

N (npc:206896) |QID|76384.1| |N|Speak to (npc:206896) in {Central Encampment} (50.80, 62.86)| |Z|2200| |NPC|206896|

T The Bloom Begins |QID|76384| |N|(npc:206896) in {Central Encampment} (50.80, 62.86)| |Z|2200| |NPC|206896|
A Forward Unto Fire |QID|76416| |N|(npc:208503) in {Central Encampment} (50.77, 62.82)| |Z|2200| |NPC|208503|
T Forward Unto Fire |QID|76416| |N|(npc:208550) in {Verdant Pass} (38.88, 39.12)| |Z|2200| |NPC|208550|
A Hazardous Horticulture |QID|76385| |N|(npc:208551) in {Verdant Pass} (38.95, 39.11)| |Z|2200| |NPC|208551|
A A Clash of Ice and Fire |QID|76386| |N|(npc:208553) in {Verdant Pass} (38.88, 39.12)| |Z|2200| |NPC|208553|

N (item:208544) |QID|76386.1| |U|208544| |N|Use (item:208544) on (npc:207136) in {Wildfire Canyon} (35.61, 39.81)| |Z|2200| |NPC|207136|
N (npc:207136) |QID|76386.2| |N|Slay (npc:207136) in {Wildfire Canyon} (35.55, 40.16)| |Z|2200| |NPC|207136| |O|
N (npc:209360) |QID|76386.3| |U|208544| |N|Use (item:208544) on (npc:209360) and then slay (npc:209360) in {Wildfire Canyon} (33.70,40.83)| |Z|2200| |NPC|209360|
N 6 Dream Seeds Planted |QID|76385.1| |N|Plant 6 Dream Seeds in {Wildfire Canyon} (35.22, 40.03)| |Z|2200|
N 15 Wildfire Forces Slain |QID|76386.4| |N|Slay 15 (npc:210626), (npc:209200), (npc:207139) and (npc:207144) in {Wildfire Canyon} (35.22, 40.03)| |Z|2200| |NPC|210626, 209200, 207139, 207144|

T Hazardous Horticulture |QID|76385| |N|(npc:208551) in {Verdant Pass} (38.63, 39.13)| |Z|2200| |NPC|208551|
T A Clash of Ice and Fire |QID|76386| |N|(npc:208553) in {Verdant Pass} (38.83, 39.14)| |Z|2200| |NPC|208553|
A Defense of the Ancients |QID|76387| |N|(npc:208552) in {Verdant Pass} (38.65, 39.12)| |Z|2200| |NPC|208552|
A A Scrap of Hope |QID|76436| |N|(npc:208550) in {Verdant Pass} (38.75, 39.18)| |Z|2200| |NPC|208550|

N 4 (npc:207082) Assisted |QID|76387.1| |N|Click the three spears to assist (npc:207082) in {Skystone Falls} (38.70, 35.05)| |Z|2200| |NPC|207082|
N 4 (npc:207083) Assisted |QID|76387.2| |N|Click the three spears to assist (npc:207083) in {Skystone Falls} (38.85, 31.81)| |Z|2200| |NPC|207083|
N 4 (npc:207080) Assisted |QID|76387.4| |N|Click the three spears to assist (npc:207080) on a floating island in {Skystone Falls} (38.98, 34.62)| |Z|2200| |NPC|207080|
N 4 (npc:207085) Assisted |QID|76387.3| |N|Click the three spears to assist (npc:207085) in {Skystone Falls} (41.01, 34.93)| |Z|2200| |NPC|207085|
N 8 Scrap of Parchment |QID|76436.1| |N|Collect 8 (item:210023) from Fyrakk's forces in {Skystone Falls} (39.31, 37.58)| |Z|2200| |NPC|211058|

T Defense of the Ancients |QID|76387| |N|(npc:208552) in {Verdant Pass} (38.79, 38.93)| |Z|2200| |NPC|208552|
T A Scrap of Hope |QID|76436| |N|(npc:208550) in {Verdant Pass} (38.60, 39.00)| |Z|2200| |NPC|208550|
A Fighting Fire With Fire |QID|76388| |N|(npc:208550) in {Verdant Pass} (38.60, 39.00)| |Z|2200| |NPC|208550|

N 3 Northern Skyfire Turrets Destroyed |QID|76388.1| |N|Click 3 Skyfire Turrets in {Furnace Coil} (26.70, 27.58) (26.47, 28.61) (25.64, 27.86)| |Z|2200|
N First Flame Ward Marked |QID|76388.2| |N|Use (spell:420864) in {Furnace Coil} (26.14, 27.71)| |Z|2200|
N 3 Western Skyfire Turrets Destroyed |QID|76388.3| |N|Click 3 Skyfire Turrets in {Furnace Coil} (25.15, 31.86) (24.55, 31.64) (23.73, 32.38)| |Z|2200|
N Second Flame Ward Marked |QID|76388.4| |N|Use (spell:420864) in {Furnace Coil} (24.38, 32.17)| |Z|2200|
N 3 Southern Skyfire Turrets Destroyed |QID|76388.5| |N|Click 3 Skyfire Turrets in {Furnace Coil} (27.59, 35.12) (28.27, 34.24) (29.09, 35.14)| |Z|2200|
N Final Flame Ward Marked |QID|76388.6| |N|Use (spell:420864) in {Furnace Coil} (28.39, 34.84)| |Z|2200|

T Fighting Fire With Fire |QID|76388| |N|(npc:208568) in {Field of Flames} (34.94, 35.32)| |Z|2200| |NPC|208568|
A The Age of Mortals |QID|76389| |N|(npc:208568) in {Field of Flames} (34.94, 35.32)| |Z|2200| |NPC|208568|
A Aerial Supremacy |QID|76398| |N|(npc:208567) in {Field of Flames} (34.96, 35.41)| |Z|2200| |NPC|208567|

N Summon your Dragonriding Mount or mount Green Dragon |QID|76398.1| |V| |N|Summon your Dragonriding Mount or speak to (npc:209167) in {Field of Flames} (34.97, 35.31)| |Z|2200| |NPC|209167|
N 15 Proto-Drake Struck |QID|76398.2| |N|Strike Proto-Drake's with Dragonriding mount or (npc:209167) in {Furnace Coil} (29.02, 32.99)| |Z|2200|
N Empower Heroes and Slay Enemies on the Field of Flames (100%) |QID|76389.1| |N|Use (item:208752) nearby allies to empower them and slay (npc:207272), (npc:207273), (npc:207274), (npc:207275), (npc:207276), (npc:207523) in {Field of Flames} (31.12, 31.25)| |Z|2200| |NPC|207272, 207273, 207274, 207275, 207276, 207523|

T The Age of Mortals |QID|76389| |N|(npc:208574) in {Field of Flames} (35.10, 33.48)| |Z|2200| |NPC|208574|
T Aerial Supremacy |QID|76398| |N|(npc:208573) in {Field of Flames} (35.10, 33.48)| |Z|2200| |NPC|208573|
A Echo of the Firelands |QID|76401| |N|(npc:208572) in {Field of Flames} (35.07, 33.58)| |Z|2200| |NPC|208572|

f Wellspring Overlook |TID|76401| |N|Grab flight point for {Wellspring Overlook} (35.64, 33.66)| |Z|2200|
N (npc:207315) |QID|76401.1| |N|Slay (npc:207315) in {Field of Flames} (32.58, 33.37)| |Z|2200| |NPC|207315|

T Echo of the Firelands |QID|76401| |N|(npc:206921) in {Wellspring of Life} (27.96, 31.16)| |Z|2200| |NPC|206921|

A Amirdrassil, the Dream's Hope: Fyrakk |QID|76402| |N|(npc:206921) in {Wellspring of Life} (27.96, 31.15)| |Z|2200| |NPC|206921| |OID|77780|

N Amirdrassil, the Dream's Hope |QID|76402| |N|Queue for or zone in to (map:2232) on Normal+ difficulty (27.32, 31.04)<br/><b>As of December 12th 2023 this quest can now be done on LFR.<br/>The second wing was released on November 21 2023.<br/>The third wing was released on November 28 2023.| |Z|2200| |I| |F|2232| |OID|77780|
N (npc:204931) |QID|76402.1| |N|Slay (npc:204931) in (map:2238) (56.49, 53.21)| |Z|2238| |NPC|204931| |OID|77780|

T Amirdrassil, the Dream's Hope: Fyrakk |QID|76402| |N|(npc:208503) in {Central Encampment} (50.77, 62.81)| |NPC|208503| |Z|2200| |OID|77780|

-- //New Beginnings// 10.2.0 build 52148
A A Blossom Witnessed |QID|77780| |N|(npc:211634) in {Wellspring of Life} (27.60, 31.43)| |Z|2200| |NPC|211634| |PRE|76401|

N (npc:211634) |QID|77780.1| |N|Speak to (npc:211634) in {Wellspring of Life} (27.60, 31.43)| |Z|2200| |NPC|211634|

T A Blossom Witnessed |QID|77780| |N|(npc:206397) in {Ancient Bough} (14.84, 55.91)| |Z|2023| |NPC|206397|
A A Changed Land |QID|76276| |N|(npc:206397) in {Ancient Bough} (14.84, 55.91)| |Z|2023| |NPC|206397|

N Visit the Centaurs |QID|76276.1| |N|Speak to (npc:206455) on the stone bridge in {Emerald Gardens} (34.30, 53.04)| |Z|2023| |NPC|206455|
N Visit the Catalogers |QID|76276.2| |N|Visit (npc:206459) in {Lilac Ramble} (21.81, 62.15)| |Z|2023| |NPC|206459|
N (item:209806) |QID|76276.3| |N|Click on A Washed-Up Pack in {Lilac Ramble} (21.72, 61.84)| |Z|2023|
N (npc:210808) |QID|76276.4| |N|Speak to (npc:210808) to return the Film in {Lilac Ramble} (21.72, 62.28)| |Z|2023| |NPC|210808|
N Visit Gnoll Mon-Ark |QID|76276.5| |N|Speak to (npc:206428) in (map:2023) (28.63, 69.95)| |Z|2023| |NPC|206428|
N Visit the Furbolg |QID|76276.6| |N|Speak to (npc:206438) in {Craggy Reef} (10.34, 85.66)| |Z|2023| |NPC|206438|
N Visit the Tuskarr |QID|76276.7| |N|Click on (npc:206418) in {Craggy Reef} (6.61, 84.67)| |Z|2023| |NPC|206418|

T A Changed Land |QID|76276| |N|(npc:206397) in {Ancient Bough} (14.82, 55.93)| |Z|2023| |NPC|206397|
A Auspicious Gathering |QID|77329| |N|(npc:206397) in {Ancient Bough} (14.82, 55.93)| |Z|2023| |NPC|206397|
T Auspicious Gathering |QID|77329| |N|(npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|
A Offerings for the Well |QID|77200| |N|(npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|

N (npc:208906) |QID|77200.4| |N|Speak with (npc:208906) in {Amirdrassil} (50.82, 61.31)| |Z|2239| |NPC|208906|
N (npc:208900) |QID|77200.2| |N|Speak with (npc:208900) in {Amirdrassil} (50.96, 61.11)| |Z|2239| |NPC|208900|
N (npc:208907) |QID|77200.1| |N|Speak with (npc:208907) in {Amirdrassil} (51.06, 61.26)| |Z|2239| |NPC|208907|
N (npc:208905) |QID|77200.3| |N|Speak with (npc:208905) in {Amirdrassil} (51.28, 61.96)| |Z|2239| |NPC|208905|

T Offerings for the Well |QID|77200| |N|(npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|
A New Moon |QID|76280| |N|(npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|

N (npc:208537) |QID|76280.1| |N|Speak with (npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|

T New Moon |QID|76280| |N|(npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|
A Something Worth Celebrating |QID|76281| |N|(npc:208537) in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|

N (npc:208537) |QID|76281.1| |N|Speak with (npc:208537) to join the party in {Amirdrassil} (50.80, 61.49)| |Z|2239| |NPC|208537|
N Pick Up First Meal Order |QID|76281.2| |N|Click on Vibrant Feast in {Amirdrassil} (52.42, 61.75)| |Z|2239|
N Tables Served |QID|76281.3| |N|Click the tables that are highlighted around the area. (53.49, 59.17) You will need to visit a Vibrant Feast each three tables you serve. Serve 12 Tables| |Z|2239|

T Something Worth Celebrating |QID|76281| |N|(npc:206849) in {Amirdrassil} (54.25, 57.84)| |Z|2239| |NPC|206849|
A A Different Enthusiasm |QID|77781| |N|(npc:206849) in {Amirdrassil} (54.25, 57.84)| |Z|2239| |NPC|206849|
A A Disquieting Feeling |QID|76282| |N|(npc:209042) in {Amirdrassil} (54.31, 57.84)| |Z|2239| |NPC|209042|

N (npc:206941) |QID|76282.1| |N|Speak with (npc:206941) and order a drink, choose any drink in {Amirdrassil} (52.91, 56.48)| |Z|2239| |NPC|206941|
N (npc:209041) |QID|76282.2| |N|Deliver drink to (npc:209041) in {Amirdrassil} (54.01, 61.98)| |Z|2239| |NPC|209041|
N (npc:212005) |QID|77781.1| |N|Slay 6 (npc:212005), click objects and NPCs around the area that are highlighted to reveal pranksters in {Amirdrassil} (53.53, 59.61)| |Z|2239| |NPC|211760, 212006, 212005|

T A Disquieting Feeling |QID|76282| |N|(npc:209042) in {Amirdrassil} (54.31, 57.84)| |Z|2239| |NPC|209042|
T A Different Enthusiasm |QID|77781| |N|(npc:206849) in {Amirdrassil} (54.25, 57.84)| |Z|2239| |NPC|206849|
A Andu-falah-dor |QID|76283| |N|(npc:206849) in {Amirdrassil} (54.25, 57.84)| |Z|2239| |NPC|206849|

N (npc:206849) |QID|76283.1| |N|Speak with (npc:206849) to leave the party in {Amirdrassil} (54.25, 57.84)| |Z|2239| |NPC|206849|
N (npc:209051) |QID|76283.2| |N|Speak with (npc:209051) at the moonwell in {Amirdrassil} (51.82, 61.28)| |Z|2239| |NPC|209051|

T Andu-falah-dor |QID|76283| |N|(npc:208763) in {Amirdrassil} (50.85, 61.67)| |Z|2239| |NPC|208763|

A Fair Skies and Strong Winds |QID|78643| |N|(npc:216309) in {Amirdressil} (50.86, 61.66)| |Z|2239| |NPC|216309|
N The Seat of the Aspects |QID|78643| |N|Travel to atop of {The Seat of the Aspects} (61.91, 32.19)| |Z|2112| |REACH|57.06,42.43,2112|
N (npc:187678) |QID|78643.1| |N|Speak to (npc:187678) atop of {The Seat of the Aspects} (58.46, 35.62)| |Z|2112| |NPC|187678|
T Fair Skies and Strong Winds |QID|78643| |N|(npc:187678) in {The Seat of the Aspects} (58.46, 35.62)| |Z|2112| |NPC|187678|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end