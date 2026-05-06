local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_58_60_Revendreth_Thread")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1525(58-60 Threads of Fate)#1525(58-60 Threads of Fate)#1525(58-60 Threads of Fate)", nil, nil, nil, "L", nil, function()
return [[

-- // Kyrian Covenant //
R Darkhaven |QID|62740| |N|Travel to {Darkhaven} (60.53, 60.77)| |Z|1525| |COV|1|
T Dark Aspirations |QID|62740| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|1|
A Reinforcing Revendreth |QID|62778| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|1|
T Reinforcing Revendreth |QID|62778| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|1| |O|
A Return to Oribos |QID|62779| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|1| |PRE|62778|
R Ring of Transferance |OID|62779| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|1| |PRE|62778|
T Return to Oribos |QID|62779| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|1| |PRE|62778|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62778|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62778|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62778|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|1| |PRE|62778|

-- // Venthyr Covenant //
R Sinfall |QID|63037| |N|Travel to {Sinfall} (67.80, 23.11)| |Z|1699| |COV|2|
T Dark Aspirations |QID|63037| |N|(npc:158653) in {Sinfall} (51.48, 37.78)| |Z|1699| |NPC|158653| |COV|2|
A Reinforcing Revendreth |QID|62778| |N|(npc:158653) in {Sinfall} (51.48, 37.78)| |Z|1699| |NPC|158653| |COV|2|
R Darkhaven |QID|60509| |N|Travel to {Darkhaven} (60.53, 60.77)| |Z|1525| |COV|2|
T Reinforcing Revendreth |QID|62778| |N|(npc:158653) in {Sinfall} (51.48, 37.78)| |Z|1699| |NPC|158653| |COV|2| |O|
A Return to Oribos |QID|62779| |N|(npc:158653) in {Sinfall} (51.48, 37.78)| |Z|1699| |NPC|158653| |COV|2| |PRE|62778|
R Ring of Transferance |OID|62779| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|2| |PRE|62778|
T Return to Oribos |QID|62779| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|2| |PRE|62778|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62778|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62778|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62778|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|2| |PRE|62778|

-- // Nightfae Covenant //
R Darkhaven |QID|62740| |N|Travel to {Darkhaven} (60.53, 60.77)| |Z|1525| |COV|3|
T Dark Aspirations |QID|62740| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|3|
A Reinforcing Revendreth |QID|62778| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|3|
T Reinforcing Revendreth |QID|62778| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|3| |O|
A Return to Oribos |QID|62779| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|3| |PRE|62778|
R Ring of Transferance |OID|62779| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|3| |PRE|62778|
T Return to Oribos |QID|62779| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|3| |PRE|62778|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62778|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62778|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62778|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|3| |PRE|62778|

-- // Necrolord Covenant //
R Darkhaven |QID|62740| |N|Travel to {Darkhaven} (60.53, 60.77)| |Z|1525| |COV|4|
T Dark Aspirations |QID|62740| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|4|
A Reinforcing Revendreth |QID|62778| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|4|
T Reinforcing Revendreth |QID|62778| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|4| |O|
A Return to Oribos |QID|62779| |N|(npc:175056)<br/><b>Downstairs inside the building in {Darkhaven} (61.46, 60.38)| |Z|1525| |NPC|175056| |COV|4| |PRE|62778|
R Ring of Transferance |OID|62779| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|4| |PRE|62778|
T Return to Oribos |QID|62779| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|4| |PRE|62778|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62778|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62778|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62778|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|4| |PRE|62778|

A Not My Job |QID|60509| |N|(npc:158057) in {Decimated Crossroad} (67.54, 68.52)| |Z|1525| |NPC|158057|
T Not My Job |QID|60509| |N|(npc:157846) in {Dredgewood} (72.58, 73.24)| |Z|1525| |NPC|157846|
A It's a Dirty Job |QID|57471| |N|(npc:157846) in {Dredgewood} (72.58, 73.24)| |Z|1525| |NPC|157846|
C It's a Dirty Job |QID|57471| |N|Click on 6 Filthy Rubble around the pool in {Dredgewood} (74.44, 76.30)| |Z|1525| |POI|
T It's a Dirty Job |QID|57471| |N|(npc:157846) in {Dredgewood} (72.61, 73.25)| |Z|1525| |NPC|157846|
A Dredger Duty |QID|57474| |N|(npc:157846) in {Dredgewood} (72.61, 73.25)| |Z|1525| |NPC|157846|
N (npc:157884) |QID|57474.1| |N|Dredger dredged in {Dredgewood} (72.37, 73.69)| |Z|1525| |NPC|157884|
N (npc:157884) |QID|57474.2| |N|Use the throw ability to throw (npc:157884) at the rubble pile in {Dredgewood} (74.11, 73.31)| |Z|1525| |NPC|157884|
C Dredger Duty |QID|57474| |N|Dredge a dredger and bring it to the pile of rubble. Wait for it to dig through the pile and collect the (item:171966) in {Dredgewood} (74.22, 73.04)| |Z|1525|
T Dredger Duty |QID|57474| |N|(npc:157846) in {Dredgewood} (72.58, 73.22)| |Z|1525| |NPC|157846|
A We're Gonna Need a Bigger Dredger |QID|57477| |N|(npc:157846) in {Dredgewood} (72.58, 73.22)| |Z|1525| |NPC|157846|
C We're Gonna Need a Bigger Dredger |QID|57477| |N|Witness the ritual in {Dredgewood} (72.74, 73.58)| |Z|1525|
T We're Gonna Need a Bigger Dredger |QID|57477| |N|(npc:158001) in {Dredgewood} (72.74, 73.58)| |Z|1525| |NPC|158001|
A Running a Muck |QID|57481| |N|(npc:158001) in {Dredgewood} (72.74, 73.58)| |Z|1525| |NPC|158001|
N (npc:157898) |QID|57481.1| |N|Board (npc:157898) in {Dredgewood} (72.77, 73.69)| |Z|1525| |V| |NPC|157898|
K (npc:157954) |QID|57481.4| |N|Kill (npc:157954) and close 3 Shimmering Rifts in {Dredgewood} (75.51, 76.35)| |Z|1525| |NPC|157954|
C Running a Muck |QID|57481| |N|Close 3 Shimmering Rifts and kill 25 Devourers in {Dredgewood} (74.83, 75.98)| |Z|1525| |POI| |NPC|157955, 166852|
T Running a Muck |QID|57481| |N|(npc:157846) in {Dredgewood} (72.58, 73.21)| |Z|1525| |NPC|157846|

A The Endmire |QID|60480| |N|(npc:168618) in {The Endmire} (65.17, 63.57)| |Z|1525| |NPC|168618|
A Parasites of Reality |QID|62780| |N|Auto quest (65.12,63.53)| |Z|1525|
N (item:175751) |QID|60480.1| |N|Collect (item:175751) and click Abandoned Soulguard Torch (65.83,63.24) (65.80,61.74) (66.55,59.58) (66.65,59.33) (66.75,57.53)| |Z|1525|
T The Endmire |QID|60480| |N|(npc:168618) (65.12,63.52)| |Z|1525| |NPC|168618|
C Parasites of Reality |QID|62780.1| |N|Eliminate the Endmire Horrors by killing enemies around this area (67.32,60.24)

A Charlatans of Ceremony |QID|62784| |N|Auto accept (70.12,57.89) (70.13,56.80)| |Z|1525|
A It Used to Be Quiet Here |QID|60487| |N|(npc:168698) (69.53,53.38)| |Z|1525|
C It Used to Be Quiet Here|QID|60487.1| |N|Click Dredger Chisel and collect 8 (item:179002)  (69.33,54.37)| |Z|1525|
T It Used to Be Quiet Here |QID|60487| |N|(npc:168698) (69.53,53.38)| |Z|1525|
C Charlatans of Ceremony |QID|62784.1| |N|Purge the Depravity by killing enemies around this area (71.67,48.39)| |Z|1525|
C The Endmire |QID|60480| |N|Find 5 (item:175751) in {The Endmire} (66.68, 59.24)| |Z|1525|
T The Endmire |QID|60480| |N|(npc:168618) in {The Endmire} (65.15, 63.56)| |Z|1525| |NPC|168618|

A Words Have Power |QID|58272| |N|Click Join the rebellion! in {Decimated Crossroad} (67.74, 67.71)| |Z|1525|
C Words Have Power |QID|58272| |N|Collect 9 (item:173945) from the walls in {Decimated Crossroad} (68.07, 66.59)| |Z|1525|
T Words Have Power |QID|58272| |N|(npc:155533) in {Decimated Crossroad} (63.24, 61.84)| |Z|1525| |NPC|155533|

A Bring Out Your Tithe |QID|60176| |N|(npc:156822) in {The Sinposium} (61.34, 63.78)| |Z|1525| |NPC|156822|
A Reason for the Treason |QID|60177| |N|(npc:167489) in {Darkhaven} (62.23, 61.38)| |Z|1525| |NPC|167489|
A A Curious Invitation |QID|59710| |N|(npc:165859) in {Darkhaven} (60.74, 62.47)| |Z|1525| |NPC|165859|

N (npc:156295) |QID|60177.1| |N|Find (npc:156295) clue in {Darkhaven} (60.51, 60.62)| |Z|1525| |NPC|156295|
N (npc:167838) |QID|60177.2| |N|Find (npc:167838) clue in {Darkhaven} (63.64, 61.07)| |Z|1525| |NPC|167838|
C Bring Out Your Tithe |QID|60176| |N|Collect anima from the village for the tithe in {Darkhaven} (60.46, 60.31)| |Z|1525|
N Soul of Keltesh Clue |QID|60177.3| |N|Find Soul of Keltesh clue found in {Darkhaven} (62.64, 64.65)| |Z|1525|
C Reason for the Treason |QID|60177| |N|Speak with the "help" in the village to find clues to the identity of the traitor. in {Darkhaven} (62.64, 64.65)| |Z|1525|
T Reason for the Treason |QID|60177| |N|(npc:167489) in {Darkhaven} (62.24, 61.37)| |Z|1525| |NPC|167489|
A And Then There Were None |QID|60178| |N|(npc:167489) in {Darkhaven} (62.24, 61.37)| |Z|1525| |NPC|167489|
N (npc:168237) |QID|60178.2| |N|Speak to (npc:168237) in {Darkhaven} (63.23, 60.37)| |Z|1525| |NPC|168237|

T Bring Out Your Tithe |QID|60176| |N|(npc:156822) in {The Sinposium} (61.35, 63.77)| |Z|1525| |NPC|156822|
N (npc:168238) |QID|60178.1| |N|Speak to (npc:168238) in {The Sinposium} (61.80, 64.39)| |Z|1525| |NPC|168238|
C And Then There Were None |QID|60178| |N|Gather the suspects and meet Lajos in the large crypt in {Darkhaven}<br/><br/>Last 2 npc inside the building (62.13, 63.93) (61.32, 59.79) (61.32, 59.79)| |Z|1525|
T And Then There Were None |QID|60178| |N|(npc:168448) in {Darkhaven} (61.24, 59.75)| |Z|1525| |NPC|168448|

N Use Elevator |QID|59710.1| |N|Use Elevator (Optional) in {Feeders' Thicket} (58.38, 64.11)| |Z|1525| |REACH|59.53,66.80|
N (npc:169238) |QID|59710.2| |N|Find (npc:169238) in {Feeders' Thicket} (59.53, 66.80)| |Z|1525| |NPC|169238|
T A Curious Invitation |QID|59710| |N|(npc:169238) in {Feeders' Thicket} (59.53, 66.80)| |Z|1525| |NPC|169238|
A The Lay of the Land |QID|59712| |N|(npc:169238) in {Feeders' Thicket} (59.45, 66.72)| |Z|1525| |NPC|169238|
N (npc:165864) |QID|59712.1| |N|Check on (npc:165864) in {Feeders' Thicket} (59.88, 68.86)| |Z|1525| |NPC|165864|

C The Lay of the Land |QID|59712| |N|Find (item:180177) in {Stonevigil Overlook} (58.64, 69.35)| |Z|1525|
T The Lay of the Land |QID|59712| |N|(npc:165921) in {Feeders' Thicket} (60.31, 69.24)| |Z|1525| |NPC|165921|
A Finders-Keepers, Sinners-Weepers |QID|59846| |N|(npc:165864) in {Feeders' Thicket} (59.93, 68.92)| |Z|1525| |NPC|165864|
N (npc:166543) |QID|59846.2| |N|Speak to (npc:166543) in {Feeders' Thicket} (60.06, 69.58)| |Z|1525| |NPC|166543|
N (npc:166541) |QID|59846.1| |N|Speak to (npc:166541) in {Feeders' Thicket} (60.26, 68.51)| |Z|1525| |NPC|166541|
N (npc:166542) |QID|59846.3| |N|Speak to (npc:166542) in {Feeders' Thicket} (61.35, 68.02)| |Z|1525| |NPC|166542|
C Finders-Keepers, Sinners-Weepers |QID|59846| |N|Discover the secrets of Taskmaster Matyas's efforts in {Feeders' Thicket} (60.81, 72.11)| |Z|1525|

T Finders-Keepers, Sinners-Weepers |QID|59846| |N|(npc:165864) in {Feeders' Thicket} (59.91, 68.88)| |Z|1525| |NPC|165864|
A Active Ingredients |QID|59713| |N|(npc:165864) in {Feeders' Thicket} (59.91, 68.88)| |Z|1525| |NPC|165864|
A A Fine Vintage |QID|59714| |N|(npc:165864) in {Feeders' Thicket} (59.91, 68.88)| |Z|1525| |NPC|165864|

R Stonevigil Overlook |TID|60277| |N|Travel to {Stonevigil Overlook} (58.77, 69.56)| |Z|1525|
K (npc:165989) |QID|59713.1| |N|Collect (item:177713) in {Feeders' Thicket} (62.57, 69.52)| |Z|1525| |NPC|165989|
N (item:177714) |QID|59713.2| |N|Collect 60 (item:177714) from the plants in {Feeders' Thicket} (63.08, 68.24)| |Z|1525| |T| |POI|

R The Sneak Hole |QID|59714| |N|Travel to {The Sneak Hole} (63.64, 74.26)| |Z|1525|
C A Fine Vintage |QID|59714| |N|Kill (npc:166042) and collect (item:177765) in {The Sneak Hole} (63.46, 73.54)| |Z|1525| |NPC|166042|

R Feeders' Thicket |QID|59715| |N|Travel to {Feeders' Thicket} (59.92, 68.90)| |Z|1525| 
T Active Ingredients |QID|59713| |N|(npc:165864) in {Feeders' Thicket} (59.92, 68.90)| |Z|1525| |NPC|165864|
T A Fine Vintage |QID|59714| |N|(npc:165864) in {Feeders' Thicket} (59.92, 68.90)| |Z|1525| |NPC|165864|
A Message for Matyas |QID|59715| |N|(npc:165864) in {Feeders' Thicket} (59.92, 68.90)| |Z|1525| |NPC|165864|
N (npc:165921) |QID|59715.1| |N|Speak to (npc:59715) to send courier message in {Feeders' Thicket} (60.30, 69.30)| |Z|1525| |NPC|59715|
N Poison Bottle |QID|59715.2| |N|Click on the Bottle to poison it in {Feeders' Thicket} (60.27, 69.11)| |Z|1525|
C Message for Matyas |QID|59715| |N|Summon Taskmaster Matyas back to camp. in {Feeders' Thicket} (60.27, 69.11)| |Z|1525|
T Message for Matyas |QID|59715| |N|(npc:166081) in {Feeders' Thicket} (60.15, 69.41)| |Z|1525| |NPC|166081|
A Comfortably Numb |QID|59716| |N|(npc:166081) in {Feeders' Thicket} (60.15, 69.41)| |Z|1525| |NPC|166081|
N (npc:166277) |QID|59716.1| |N|Poison (npc:166277) in {Feeders' Thicket} (60.21, 69.15)| |Z|1525| |NPC|166277|
N (item:177881) |QID|59716.2| |N|Collect (item:177881) in {Feeders' Thicket} (60.30, 69.27)| |Z|1525|
C Comfortably Numb |QID|59716| |N|Poison the Taskmaster to get Nadjia's sinstone in {Feeders' Thicket} (60.30, 69.27)| |Z|1525|
T Comfortably Numb |QID|59716| |N|(npc:165864) in {Feeders' Thicket} (60.21, 69.32)| |Z|1525| |NPC|165864|
A The Field of Honor |QID|59724| |N|(npc:165864) in {Feeders' Thicket} (60.21, 69.32)| |Z|1525| |NPC|165864|
A Offer of Freedom |QID|59868| |N|(npc:165864) in {Feeders' Thicket} (60.21, 69.32)| |Z|1525| |NPC|165864|

R Witherfall Ruin |QID|59724| |N|Travel to {Witherfall Ruin} (59.19, 72.93)| |Z|1525|
C The Field of Honor |QID|59724| |N|Kill 12 Matyas' followers killed in {Witherfall Ruin}(59.19, 72.93) (57.24, 73.93) (59.96, 76.80)| |Z|1525| |NPC|166651, 166652, 166653, 166654|
C Offer of Freedom |QID|59868| |N|Damage (npc:166654) or (npc:166653) and use (item:179359) to compelled 3 venthyr in {Witherfall Ruin} (61.33, 78.94)| |Z|1525| |NPC|166654, 166653|
T The Field of Honor |QID|59724| |N|(npc:166616) in {Witherfall Ruin} (60.23, 78.66)<br/><br/>You will need to click on the vine to get to her| |Z|1525| |NPC|166616|
T Offer of Freedom |QID|59868| |N|(npc:166616) in {Witherfall Ruin} (60.23, 78.66)<br/><br/>You will need to click on the vine to get to her| |Z|1525| |NPC|166616|
A It's a Trap |QID|59726| |N|(npc:166616) in {Witherfall Ruin} (60.23, 78.66)| |Z|1525| |NPC|166616|
C It's a Trap |QID|59726| |N|Approach (npc:165834) to start the duel. Assist (npc:166616) when (npc:165834) cheats. in {Witherfall Ruin} (60.04, 75.88)| |Z|1525| |POI| |NPC|166616, 165834|
T It's a Trap |QID|59726| |N|(npc:166616) in {Witherfall Ruin} (60.18, 78.60)| |Z|1525| |NPC|166616|

A Beast Control |QID|58936| |N|Click on Bounty in {Grove of Terror} (49.61, 75.93)| |Z|1525|

K (npc:156395) |QID|58936| |N|Kill 6 (npc:156395) slain in {Grove of Terror} (52.63, 76.61)| |Z|1525| |NPC|156395|
T Beast Control |QID|58936| |N|(npc:163221) in {Grove of Terror} (51.25, 74.32)| |Z|1525| |NPC|163221|

A Hunting Trophies |QID|60514| |N|(npc:156384) in {Wanecrypt Hill} (48.49, 68.52)| |Z|1525| |NPC|156384|
K (npc:168862) |QID|60514.1| |N|Kill (npc:168862) and collect 3 (item:179316) in {The Banewood} (48.16, 65.95)| |Z|1525| |W| |NPC|168862|
K (npc:168855) |QID|60514.2| |N|Kill (npc:168855) and collect 3 (item:178996) in {The Banewood} (50.11, 63.23)| |Z|1525| |W| |NPC|168855|
K (npc:156636) |QID|60514.3| |N|Kill (npc:156636) and collect 3 (item:178997) in {The Banewood} (50.42, 61.50)| |Z|1525| |W| |NPC|156636|

R Wanecrypt Hill |QID|58996| |N|Travel to {Wanecrypt Hill} (48.50, 68.44)| |Z|1525|
T Hunting Trophies |QID|60514| |N|(npc:156384) in {Wanecrypt Hill} (48.50, 68.44)| |Z|1525| |NPC|156384|
A Abel's Fate |QID|58996| |N|(npc:156384) in {Wanecrypt Hill} (48.50, 68.44)| |Z|1525| |NPC|156384|

R Grove of Terror |QID|58996| |N|Travel to {Grove of Terror} (48.52, 78.81)| |Z|1525|
C Abel's Fate |QID|58996| |N|Kill (npc:163282) collect (item:174957) to investigate Soulwatcher Abel's fate in {Grove of Terror} (48.52, 78.81)| |Z|1525| |NPC|163282|

R Wanecrypt Hill |TID|58996| |N|Travel to {Wanecrypt Hill} (48.50, 68.44)| |Z|1525|
T Abel's Fate |QID|58996| |N|(npc:156384) in {Wanecrypt Hill} (48.49, 68.49)| |Z|1525| |NPC|156384|

A A Rousing Aroma |QID|60467| |N|(npc:168455) (42.82,71.21) (36.66,57.08) (35.07,53.88)| |Z|1525| |NPC|168455|
C A Rousing Aroma |QID|60467.1| |N|Kill (npc:160613) and collect 4 (item:178898) (35.69,54.93)| |Z|1525| |W| |NPC|160613|

T A Rousing Aroma |QID|60467| |N|(npc:168455) (35.07,53.88)| |Z|1525| |NPC|168455|
A Safe in the Shadows |QID|60469| |N|(npc:168455) (35.07,53.88)| |Z|1525| |NPC|168455|
A Rubble Rummaging |QID|60468| |N|(npc:168455) (35.07,53.88)| |Z|1525| |NPC|168455|

N Find Sabina's Companions |QID|60469.1| |N|Find Sabina's Companions (37.76,53.59)| |Z|1525|
N Search for Clues |QID|60469.2| |N|Click Stained Dagger, Tattered Journal, Light Satchel  (37.69,53.73) (37.68,53.45) (37.91,53.57)| |Z|1525|
N (item:178904) |QID|60468.1| |N|Collect (item:178904) from the Rubble pile (37.76,53.59)| |Z|1525|

T Safe in the Shadows |QID|60469| |N|(npc:168455) (35.07,53.88)| |Z|1525| |NPC|168455|
T Rubble Rummaging |QID|60468| |N|(npc:168455) (35.07,53.88)| |Z|1525| |NPC|168455|
A Setting Sabina Free |QID|60470| |N|(npc:168455) (35.07,53.88)| |Z|1525| |NPC|168455|
N (npc:168525) |QID|60470.1| |N|click Shackles to release (npc:168525) (35.09,53.88)| |Z|1525| |NPC|168525|
K (npc:168525) |QID|60470.2| |N|Kill (npc:168525)  (35.07,53.88)| |Z|1525| |NPC|168525|
T Setting Sabina Free |QID|60470| |N|Field turnin|

A Ash You Like It |QID|62781| |N|Auto accept (35.74,58.68)| |Z|1525|
C Ash You Like It |QID|62781.1| |N|Dessimate the Desiccation by killing enemies around this area and click (npc:175040) (35.74,58.68)| |Z|1525| |NPC|175040|

f Sanctuary of the Mad |QID|60275| |N|Speak to (npc:158416) and grab fight path for {Sanctuary of the Mad} (30.58, 48.83)| |Z|1525| |NPC|158416|
A WANTED: Enforcer Kristof |QID|60275| |N|Wanted Poster in {Sanctuary of the Mad} (30.68, 48.95)| |Z|1525|
A WANTED: Summoner Marcelis |QID|60276| |N|Wanted Poster in {Sanctuary of the Mad} (30.87, 49.00)| |Z|1525|

R Ember Ward |QID|57531| |N|Travel to {Ember Ward} (26.42, 49.02)| |Z|1525|
A An Unfortunate Situation |QID|57531| |N|(npc:158038) in {Ember Ward} (26.42, 49.02)| |Z|1525| |NPC|158038|
C An Unfortunate Situation |QID|57531| |N|Defeat (npc:158165) and collect (item:172074) in {Costel's Hideout} (29.59, 48.60)| |Z|1525| |NPC|158165|
T An Unfortunate Situation |QID|57531| |N|(npc:158038) in {Ember Ward} (26.43, 48.97)| |Z|1525| |NPC|158038|
A Foraging for Fragments |QID|57532| |N|(npc:158038) in {Ember Ward} (26.43, 48.97)| |Z|1525| |NPC|158038|
N (npc:158209) |QID|57532.1| |N|Follow (npc:158209) in {Ember Ward} (25.89, 48.61)| |Z|1525| |NPC|158209|
N (item:172085) |QID|57532.2| |N|Collect (item:172085) in {Ember Ward} (25.65, 48.59)| |Z|1525|
N (npc:158209) |QID|57532.3| |N|Follow (npc:158209) in {Ember Ward} (25.65, 48.56)| |Z|1525| |NPC|158209|
N (item:172086) |QID|57532.4| |N|Collect (item:172086) in {Ember Ward} (25.53, 47.38)| |Z|1525|
N (npc:158209) |QID|57532.5| |N|Follow (npc:158209) in {Ember Ward} (25.36, 47.35)| |Z|1525| |NPC|158209|
N (item:172087) |QID|57532.6| |N|Collect (item:172087) in {Ember Ward} (25.01, 47.98)| |Z|1525|

R The Shrouded Asylum |QID|57571| |N|Travel to {The Shrouded Asylum} (24.26, 49.40)| |Z|1525|
T Foraging for Fragments |QID|57532| |N|(npc:158205) in {The Shrouded Asylum} (24.26, 49.40)| |Z|1525| |NPC|158205|
A Moving Mirrors |QID|57571| |N|(npc:158205) in {The Shrouded Asylum} (24.26, 49.40)| |Z|1525| |NPC|158205|
C Moving Mirrors |QID|57571| |N|Click on Mirror trap to Redirect the mirror fragments to free (npc:158088) in {The Shrouded Asylum} (24.08, 49.60)| |Z|1525| |NPC|158088|
T Moving Mirrors |QID|57571| |N|(npc:158088) in {The Shrouded Asylum} (24.20, 49.48)| |Z|1525| |NPC|158088|
A Light Punishment |QID|57533| |N|(npc:158088) in {The Shrouded Asylum} (24.20, 49.48)| |Z|1525| |NPC|158088|
A When Only Ash Remains |QID|57534| |N|(npc:158205) in {The Shrouded Asylum} (24.24, 49.41)| |Z|1525| |NPC|158205|
C When Only Ash Remains |QID|57534| |N|Kill 10 (npc:164524) in {The Shrouded Asylum} (22.79, 51.41)| |Z|1525| |NPC|164524|
C WANTED: Enforcer Kristof |QID|60275| |N|Kill (npc:168118) in {The Shrouded Asylum} (22.81, 55.88)| |Z|1525| |NPC|168118|
C Light Punishment |QID|57533| |N|Free 5 (npc:158424) in {The Shrouded Asylum} (22.23, 48.12)| |Z|1525| |NPC|158424|
T When Only Ash Remains |QID|57534| |N|(npc:158205) in {The Shrouded Asylum} (24.24, 49.42)| |Z|1525| |NPC|158205|
T Light Punishment |QID|57533| |N|(npc:158088) in {The Shrouded Asylum} (24.22, 49.52)| |Z|1525| |NPC|158088|
A We Need More Power |QID|59427| |N|(npc:158088) in {The Shrouded Asylum} (24.22, 49.52)| |Z|1525| |NPC|158088|
A Escaping the Master |QID|57535| |N|(npc:158205) in {The Shrouded Asylum} (24.27, 49.42)| |Z|1525| |NPC|158205|
C We Need More Power |QID|59427| |N|Go inside and collect anima from around The {The Shrouded Asylum} (24.00, 53.25)| |Z|1525|
C Escaping the Master |QID|57535| |N|Collect 10 (item:172220) in {The Shrouded Asylum} (25.32, 52.88)| |Z|1525|
T Escaping the Master |QID|57535| |N|(npc:158205) in {The Shrouded Asylum} (24.24, 49.36)| |Z|1525| |NPC|158205|
T We Need More Power |QID|59427| |N|(npc:158088) in {The Shrouded Asylum} (24.21, 49.45)| |Z|1525| |NPC|158088|
A Mirror Making, Not Breaking |QID|57536| |N|(npc:158205) in {The Shrouded Asylum} (24.24, 49.42)| |Z|1525| |NPC|158205|
N (npc:158505) |QID|57536.1| |N|Follow (npc:158505) and Simone in {The Shrouded Asylum} (24.72, 50.51)| |Z|1525| |NPC|158505|
N (npc:158505) |QID|57536.2| |N|Speak to (npc:158505) in {The Shrouded Asylum} (24.79, 50.29)| |Z|1525| |NPC|158505|
C Mirror Making, Not Breaking |QID|57536| |N|Defend (npc:158505) and Simone from Stone Legion attackers in {The Shrouded Asylum} (24.64, 50.37)| |Z|1525| |NPC|158505|
T Mirror Making, Not Breaking |QID|57536| |N|(npc:158505) in {The Shrouded Asylum} (24.77, 50.27)| |Z|1525| |NPC|158505|

R Cinderwall |QID|60276| |N|Travel to {Cinderwall} (30.27, 64.00)| |Z|1525|
C WANTED: Summoner Marcelis |QID|60276| |N|Kill (npc:168093) in {Cinderwall} (30.27, 64.00)| |Z|1525| |NPC|168093|

R Sanctuary of the Mad |TID|60275| |N|Travel to {Sanctuary of the Mad} (30.72, 49.09)| |Z|1525|
T WANTED: Summoner Marcelis |QID|60276| |N|(npc:168120) in {Sanctuary of the Mad} (30.72, 49.09)| |Z|1525| |NPC|168120|
T WANTED: Enforcer Kristof |QID|60275| |N|(npc:168120) in {Sanctuary of the Mad} (30.72, 49.09)| |Z|1525| |NPC|168120|

R Old Gate |QID|57919| |N|Travel to {Old Gate} (61.21, 38.81)| |Z|1525|
f Old Gate |QID|57919| |N|Speak to (npc:158517) and grab flight path for {Old Gate} (61.21, 38.81)| |Z|1525| |NPC|158517|

--A The Night Market |QID|58060| |N|(npc:160100) in {Old Gate} (61.03, 39.71)| |Z|1525| |NPC|160100| --Level 60

R Halls of Atonement |QID|58093| |N|Travel to {Halls of Atonement} (72.98, 52.02)| |Z|1525| |OID|57919| |NPC|160248| 
A Our Forgotten Purpose |QID|58093| |N|(npc:160248) in {Halls of Atonement} (72.98, 52.02)| |Z|1525||OID|57919| |NPC|160248|

R Absolution Crypt |QID|57919| |N|Travel to {Absolution Crypt} (71.56, 40.11)| |Z|1525|
f Absolution Crypt |QID|57919| |N|Speak to (npc:158417) and grab flight path for {Absolution Crypt} (71.56, 40.11)| |Z|1525| |NPC|158417|
T Our Forgotten Purpose |QID|58093| |N|(npc:160116) in {Absolution Crypt} (71.78, 40.39)| |Z|1525| |OID|57919| |NPC|160116|
A An Abuse of Power |QID|57919| |N|(npc:160116) in {Absolution Crypt} (71.78, 40.39)| |Z|1525| |NPC|160116|
K (npc:160107) |QID|57919.1| |N|(npc:160107) subjugated in {Absolution Crypt} (71.50, 40.67)| |Z|1525| |NPC|160107|
K (npc:160120) |QID|57919.2| |N|Kill (npc:160120) in {Absolution Crypt} (71.60, 40.55)| |Z|1525| |NPC|160120|
T An Abuse of Power |QID|57919| |N|(npc:160116) in {Absolution Crypt} (71.78, 40.42)| |Z|1525| |NPC|160116|
A The Proper Souls |QID|57920| |N|(npc:160116) in {Absolution Crypt} (71.78, 40.42)| |Z|1525| |NPC|160116|
A The Proper Tools |QID|57921| |N|(npc:160116) in {Absolution Crypt} (71.78, 40.42)| |Z|1525| |NPC|160116|
A The Proper Punishment |QID|57922| |N|(npc:160116) in {Absolution Crypt} (71.78, 40.42)| |Z|1525| |NPC|160116|
K (npc:159677) |QID|57922.1| |N|Kill (npc:159677) in {Halls of Atonement} (65.49, 43.97)| |Z|1525| |NPC|159677|
N (npc:160149) |QID|57920.1| |N|Click on 4 (npc:160149) in {Halls of Atonement} (70.50, 43.40)| |Z|1525| |POI| |NPC|160149|
C The Proper Tools |QID|57921| |N|Kill Depraved npcs until you find (item:173695), (item:173696), and (item:173697), in {Halls of Atonement} (72.26, 42.51)| |Z|1525| |NPC|176116, 159659, 176119, 158927|
T The Proper Souls |QID|57920| |N|(npc:160139) in {Halls of Atonement} (70.71, 46.92)| |Z|1525| |NPC|160139|
T The Proper Tools |QID|57921| |N|(npc:160139) in {Halls of Atonement} (70.71, 46.92)| |Z|1525| |NPC|160139|
T The Proper Punishment |QID|57922| |N|(npc:160139) in {Halls of Atonement} (70.71, 46.92)| |Z|1525| |NPC|160139|
A Ritual of Absolution |QID|57923| |N|(npc:160139) in {Halls of Atonement} (70.71, 46.92)| |Z|1525| |NPC|160139|
C Ritual of Absolution |QID|57923| |N|Help (npc:160139) complete the ritual of absolution in {Halls of Atonement} (71.93, 46.32)| |Z|1525| |POI| |NPC|160139|
T Ritual of Absolution |QID|57923| |N|(npc:160163) in {Halls of Atonement} (71.97, 46.26)| |Z|1525| |NPC|160163|
A Ritual of Judgment |QID|57924| |N|(npc:160163) in {Halls of Atonement} (71.97, 46.26)| |Z|1525| |NPC|160163|
C Ritual of Judgment |QID|57924| |N|Participate in the ritual of judgment in {Halls of Atonement} (74.29, 49.75)| |Z|1525|
T Ritual of Judgment |QID|57924| |N|(npc:160294) in {Halls of Atonement} (74.29, 49.75)| |Z|1525| |NPC|160294|
A Archivist Fane |QID|57925| |N|(npc:160294) in {Halls of Atonement} (74.29, 49.75)| |Z|1525| |NPC|160294|
T Archivist Fane |QID|57925| |N|(npc:160248) in {Halls of Atonement} (72.98, 52.02)| |Z|1525| |NPC|160248|
A The Sinstone Archive |QID|57926| |N|(npc:160248) in {Halls of Atonement} (72.98, 52.02)| |Z|1525| |NPC|160248|
A Missing Stone Fiend |QID|60127| |N|(npc:160248) in {Halls of Atonement} (72.98, 52.02)| |Z|1525| |NPC|160248|
N (item:173735) |QID|57928| |N|Kill (npc:158908) and collect (item:173735) to start a new quest (72.07, 54.71)| |L|173735|
A Atonement Crypt Key |QID|57928| |N|Auto quest from (item:173735) (72.98, 52.02)| |O| |U|173735| |NPC|158908|
C Atonement Crypt Key |QID|57928| |N|Open an Atonement Crypt in {Halls of Atonement} (70.91, 55.76)| |Z|1525|
C The Sinstone Archive |QID|57926| |N|Kill Depraves and collect 100 (item:173733) in {Halls of Atonement} (70.14, 55.13)| |Z|1525| |NPC|156255, 156257, 156256, 158908|
T Missing Stone Fiend |QID|60127| |N|(npc:163073) in {Halls of Atonement} (70.16, 56.15)| |Z|1525| |NPC|163073|
T Atonement Crypt Key |QID|57928| |N|(npc:163073) in {Halls of Atonement} (70.16, 56.15)| |Z|1525| |NPC|163073|
A Rebuilding Temel |QID|57927| |N|(npc:163073) in {Halls of Atonement} (70.16, 56.15)| |Z|1525| |NPC|163073|
N (item:173739) |QID|57927.3| |N|Collect (item:173739) in {Halls of Atonement} (70.17, 53.87)| |Z|1525|
N (item:173737) |QID|57927.1| |N|Collect (item:173737) in {Halls of Atonement} (68.93, 53.36)| |Z|1525|
N (item:173738) |QID|57927.2| |N|Collect (item:173738) in {Halls of Atonement} (66.16, 53.08)| |Z|1525|
T Rebuilding Temel |QID|57927| |N|(npc:163073) in {Halls of Atonement} (70.15, 56.24)| |Z|1525| |NPC|163073|
A Ready to Serve |QID|60128| |N|(npc:163073) in {Halls of Atonement} (70.15, 56.24)| |Z|1525| |NPC|163073|
T The Sinstone Archive |QID|57926| |N|(npc:160248) in {Halls of Atonement} (73.00, 52.01)| |Z|1525| |NPC|160248|
T Ready to Serve |QID|60128| |N|(npc:160248) in {Halls of Atonement} (73.00, 52.01)| |Z|1525| |NPC|160248|
A Hunting an Inquisitor |QID|57929| |N|(npc:160248) in {Halls of Atonement} (73.00, 52.01)| |Z|1525| |NPC|160248|
C Hunting an Inquisitor |QID|57929| |N|Use use Rear Inquisitor Traian's Sinstone and kill (npc:159151) in {Halls of Atonement} (76.10, 52.01)| |Z|1525| |NPC|159151|
T Hunting an Inquisitor |QID|57929| |N|(npc:160248) in {Halls of Atonement} (73.01, 52.00)| |Z|1525| |NPC|160248|
A Halls of Atonement: Your Absolution |QID|58092| |N|(npc:160248) in {Halls of Atonement} (73.01, 52.00)| |Z|1525| |NPC|160248|

--Level 60 
N Level 60 Required |N|You need to be level 60 to continue with the guide| |PL|60|
R Old Gate |QID|60280| |N|Travel to {Old Gate} (60.86, 40.03)| |Z|1525|
A WANTED: Lord Darion |QID|60280| |N|Wanted Poster in {Old Gate} (60.86, 40.03)| |Z|1525|
A WANTED: Duke Anton |QID|60278| |N|Wanted Poster in {Old Gate} (60.71, 40.14)| |Z|1525|

R Briarbane Stables |N|Travel to {Briarbane Stables} (57.80, 39.50) (57.10, 37.43) (53.13, 38.24)| |Z|1525|
C WANTED: Duke Anton |QID|60278| |N|Find and slay (npc:161647) in {Briarbane Stables} (53.13, 38.24)| |Z|1525| |NPC|161647|
C WANTED: Lord Darion |QID|60280| |N|Find and slay (npc:161620) (55.25, 34.66) (54.62, 34.14)| |Z|1525| |NPC|161620|

R Old Gate |TID|60280| |N|Travel to {Old Gate} (60.86, 40.03)| |Z|1525|
T WANTED: Lord Darion |QID|60280| |N|(npc:168121) in {Old Gate} (60.75, 40.13)| |Z|1525| |NPC|168121|
T WANTED: Duke Anton |QID|60278| |N|(npc:168121) in {Old Gate} (60.75, 40.13)| |Z|1525| |NPC|168121|

N Guide Complete |N|Continue with your chosen covenant guide<br/><b>(guide:"Kyrian Covenant Campaign (60+)")<br/><b>(guide:"Night Fae Covenant Campaign (60+)")<br/><b>(guide:"Necrolord Covenant Campaign (60+)")<br/><b>(guide:"Venthyr Covenant Campaign (60+)")|

]]
end, {image = "revendreth.tga", description = [[]]})	end

	function Guide:Unload()
	end
end
