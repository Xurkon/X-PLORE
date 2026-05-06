local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_55_58_Ardenweald_Thread")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1565(55-58 Threads of Fate)#1565(55-58 Threads of Fate)#1565(55-58 Threads of Fate)", "1525(58-60 Threads of Fate)#1525(58-60 Threads of Fate)#1525(58-60 Threads of Fate)", nil, nil, "L", nil, function()
return [[

-- //Kyrian Covenant //
R Refugee Camp |OID|62739| |N|Travel to {Refugee Camp} (49.30, 51.89)| |Z|1565| |REACH| |COV|1|
T Restoring Balance |QID|62739| |N|(npc:172431) in {Heart of the Forest} (49.33, 52.34)| |Z|1565| |NPC|172431| |COV|1|
A Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (49.33, 52.34)| |Z|1565| |NPC|172431| |COV|1|
T Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (92.71, 28.27)| |Z|1565| |NPC|172431| |COV|1| |O|
A Return to Oribos |QID|62776| |N|(npc:172431) in {Heart of the Forest} (92.71, 28.27)| |Z|1565| |NPC|172431| |COV|1| |PRE|62763|
R Ring of Transferance |QID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|1| |PRE|62763|
T Return to Oribos |QID|62776| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|1| |PRE|62763|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62763|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|1| |PRE|62763|

-- //Venthyr Covenant //
R Refugee Camp |OID|62739| |N|Travel to {Refugee Camp} (49.30, 51.89)| |Z|1565| |REACH| |COV|2|
T Restoring Balance |QID|62739| |N|(npc:172431) in {Heart of the Forest} (49.33, 52.34)| |Z|1565| |NPC|172431| |COV|2|
A Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (49.33, 52.34)| |Z|1565| |NPC|172431| |COV|2|
T Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (92.71, 28.27)| |Z|1565| |NPC|172431| |COV|2| |O|
A Return to Oribos |QID|62776| |N|(npc:172431) in {Heart of the Forest} (92.71, 28.27)| |Z|1565| |NPC|172431| |COV|2| |PRE|62763|
R Ring of Transferance |QID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|2| |PRE|62763|
T Return to Oribos |QID|62776| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|2| |PRE|62763|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62763|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|2| |PRE|62763|

-- //Nightfae Covenant //
R Heart of the Forest |OID|63036| |N|Travel to {Heart of the Forest} (52.82, 11.14)| |Z|1701| |REACH| |COV|3|
T Restoring Balance |QID|63036| |N|(npc:172431) in {Heart of the Forest} (49.96, 38.44)| |Z|1701| |NPC|172431| |COV|3|
A Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (49.96, 38.44)| |Z|1701| |NPC|172431| |COV|3|
T Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (49.32, 52.33)| |Z|1565| |NPC|172431| |COV|3| |O|
A Return to Oribos |QID|62776| |N|(npc:172431) in {Heart of the Forest} (49.32, 52.33)| |Z|1565| |NPC|172431| |COV|3| |PRE|62763|
R Ring of Transferance |QID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|3| |PRE|62763|
T Return to Oribos |QID|62776| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|3| |PRE|62763|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62763|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|3| |PRE|62763|

-- //Necrolord Covenant //
R Refugee Camp |OID|62739| |N|Travel to {Refugee Camp} (49.30, 51.89)| |Z|1565| |REACH| |COV|4|
T Restoring Balance |QID|62739| |N|(npc:172431) in {Heart of the Forest} (49.33, 52.34)| |Z|1565| |NPC|172431| |COV|4|
A Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (49.33, 52.34)| |Z|1565| |NPC|172431| |COV|4|
T Support the Court |QID|62763| |N|(npc:172431) in {Heart of the Forest} (92.71, 28.27)| |Z|1565| |NPC|172431| |COV|4| |O|
A Return to Oribos |QID|62776| |N|(npc:172431) in {Heart of the Forest} (92.71, 28.27)| |Z|1565| |NPC|172431| |COV|4| |PRE|62763|
R Ring of Transferance |QID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |COV|4| |PRE|62763|
T Return to Oribos |QID|62776| |N|(npc:159478) (38.88,70.00)| |Z|1670| |NPC|159478| |COV|4| |PRE|62763|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62763|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|4| |PRE|62763|

R Tirna Vaal |QID|57952| |N|Travel to {Starlit Overlook} (62.56,35.31)| |Z|1565|
A The Waning Grove |QID|62775| |N|Auto quest (67.37,21.98) (68.74,25.06)| |Z|1565| |PRE|62716|
C The Waning Grove |QID|62775.1| |N|Preserve Heartwood Grove by killing enemies around this area (68.74,25.06)| |Z|1565| |W| |PRE|62716| |NPC|157949|
A In Need of Gorm Gris |QID|57952| |N|(npc:158921) in {Tirna Vaal} (62.61, 36.08)| |Z|1565| |NPC|158921|
f Tirna Vaal |QID|57952| |N|Speak to (npc:165164) and grab flight path for {Tirna Vaal} (63.46, 37.57)| |Z|1565| |NPC|165164|
A Forest Disappearances |QID|58161| |N|(npc:160440) in {Tirna Vaal} (64.40, 35.18)| |Z|1565| |NPC|160440|
T In Need of Gorm Gris |QID|57952| |N|(npc:158969) in {Tranquil Pools} (64.86, 38.95)| |Z|1565| |NPC|158969|
A Nothing Goes to Waste |QID|57818| |N|(npc:158969) in {Tranquil Pools} (64.86, 38.95)| |Z|1565| |NPC|158969|
N (item:172953) |QID|57818.1| |N|Collect (item:172953) in {Tranquil Pools} (64.99, 38.95)| |Z|1565|
N (item:172953) |QID|57818.2| |N|Place (item:172953) in {Tranquil Pools} (65.43, 39.03)| |Z|1565|
C Nothing Goes to Waste |QID|57818| |N|Collect the Depleted Wildseed, place it in the gormling pen, and coax gormlings to eat it. in {Tranquil Pools} (65.50, 38.90)| |Z|1565|
T Nothing Goes to Waste |QID|57818| |N|(npc:158969) in {Tranquil Pools} (64.89, 38.93)| |Z|1565| |NPC|158969|
A Collection Day |QID|57824| |N|(npc:158969) in {Tranquil Pools} (64.89, 38.93)| |Z|1565| |NPC|158969|
N (npc:159011) |QID|57824.1| |N|Use (item:172955) on (npc:159011) in {Tranquil Pools} (64.82, 38.92)| |Z|1565| |NPC|159011|
N (item:173268) |QID|57824.2| |N|Collect (item:173268) in {Tranquil Pools} (64.84, 38.90)| |Z|1565|
N (npc:159006) |QID|57824.3| |N|Use (item:172955) on 4 (npc:159006) in {Tranquil Pools} (66.23, 37.93)| |Z|1565| |NPC|159006|
T Collection Day |QID|57824| |N|(npc:158969) in {Tranquil Pools} (64.87, 38.94)| |Z|1565| |NPC|158969|
A Delivery for Guardian Kota |QID|57825| |N|(npc:158969) in {Tranquil Pools} (64.87, 38.94)| |Z|1565| |NPC|158969|
T Delivery for Guardian Kota |QID|57825| |N|(npc:158921) in {Tirna Vaal} (62.61, 36.10)| |Z|1565| |NPC|158921|
A The Absent-Minded Artisan |QID|61051| |N|(npc:158921) in {Tirna Vaal} (62.61, 36.10)| |Z|1565| |NPC|158921|
C The Absent-Minded Artisan |QID|61051| |N|Search for Master Sha'lor on the {Autumnal Rise} (63.07, 33.82)| |Z|1565|
T The Absent-Minded Artisan |QID|61051| |N|(npc:171099) in {Autumnal Rise} (62.89, 32.15)| |Z|1565| |NPC|171099|
A Finish What He Started |QID|58022| |N|(npc:171099) in {Autumnal Rise} (62.89, 32.15)| |Z|1565| |NPC|171099|
A One Big Problem |QID|58023| |N|(npc:171099) in {Autumnal Rise} (62.89, 32.15)| |Z|1565| |NPC|171099|
N As you go... |AYG|58022| |QID|58024| |N|Click on 8 Gorm Burrow to collapse it|
N (npc:159013) |QID|58023.1| |N|Find (npc:159013) in {Dusty Burrows} (63.21, 30.82)| |Z|1565| |NPC|159013|
A Burrows Away |QID|58024| |N|(npc:171195) in {Dusty Burrows} (62.21, 30.02)| |Z|1565| |NPC|171195|
N (npc:160070) |QID|58023.2| |N|Confront (npc:160070) (62.19, 28.97) (62.38, 27.64)| |Z|1565| |NPC|160070|
N (npc:160070) |QID|58023.3| |N|Confront (npc:160070) (62.23, 33.63)| |Z|1565|
C One Big Problem |QID|58023.4| |N|Hunt down the (npc:160070) (59.65, 34.30)| |Z|1565| |NPC|160070|
C Finish What He Started |QID|58022| |N|Use the (item:173534) to collect 10 (item:180543) from gorm in the Dusty Burrows. (59.76, 34.56)| |Z|1565| |NPC|160075, 160074, 160076|

T Finish What He Started |QID|58022| |N|(npc:160155) (59.87, 44.80)| |Z|1824| |NPC|160155|
T One Big Problem |QID|58023| |N|(npc:160155) (59.87, 44.80)| |Z|1824| |NPC|160155|
A Queen of the Underground |QID|58025| |N|(npc:160155) (59.87, 44.80)| |Z|1824| |NPC|160155|
C Queen of the Underground |QID|58025| |N|Kill (npc:160145) (36.71, 30.87)| |Z|1824| |NPC|160145|
T Queen of the Underground |QID|58025| |N|(npc:160155) (60.04, 44.33)| |Z|1824| |NPC|160155|
A When a Gorm Eats a God |QID|58026| |N|(npc:160155) (60.04, 44.33)| |Z|1824| |NPC|160155|

C Burrows Away |QID|58024| |N|Click on 8 Gorm Burrow to collapse it in {Dusty Burrows} (59.77, 35.39)| |Z|1565| |POI|
T Burrows Away |QID|58024| |N|(npc:160155) (60.13, 45.00)| |Z|1824| |NPC|160155|

R Tirna Vaal |QID|57660| |N|Travel to {Tirna Vaal} (63.48, 36.22)| |Z|1565|
T When a Gorm Eats a God |QID|58026| |N|(npc:158487) in {Tirna Vaal} (63.48, 36.22)| |Z|1565| |NPC|158487|
A The Grove of Creation |QID|57660| |N|(npc:160121) in {Tirna Vaal} (62.90, 36.24)| |Z|1565| |NPC|160121|

R Glitterfall Basin |QID|60628| |N|Travel to {Glitterfall Basin} (51.32, 33.97)| |Z|1565|
f Glitterfall Basin |QID|57651| |N|Speak to (npc:167243) and grab flight path for {Glitterfall Basin} (51.42, 34.53)| |Z|1565| |NPC|167243|
T The Grove of Creation |QID|57660| |N|(npc:158345) in {Glitterfall Basin} (51.13, 33.91)| |Z|1565| |NPC|158345|
A Trouble in the Banks |QID|57651| |N|(npc:158345) in {Glitterfall Basin} (51.12, 33.90)| |Z|1565| |NPC|158345|

R Banks of Life |QID|59621| |N|Travel to {Banks of Life} (46.66, 29.43)| |Z|1565| 
T Trouble in the Banks |QID|57651| |N|(npc:158422) in {Banks of Life} (46.66, 29.43)| |Z|1565| |NPC|158422|
A Breaking A Few Eggs |QID|59621| |N|(npc:158422) in {Banks of Life} (46.66, 29.43)| |Z|1565| |NPC|158422|
A Tending to the Tenders |QID|59622| |N|(npc:158422) in {Banks of Life} (46.66, 29.43)| |Z|1565| |NPC|158422|
A Supplies Needed: Amber Grease |QID|57652| |N|Muddy scroll in {Banks of Life} (46.92, 27.70)| |Z|1565|
K (npc:165398) |QID|59622.1| |N|Kill (npc:165398) in {Banks of Life} (45.59, 25.45)| |Z|1565| |NPC|165398|
K (npc:165401) |QID|59622.3| |N|Kill (npc:165401) in {Furrowed Glen} (44.54, 23.88)| |Z|1565| |NPC|165401|
K (npc:165400) |QID|59622.2| |N|Kill (npc:165400) slain in {Banks of Life} (45.30, 23.26)| |Z|1565| |NPC|165400|
C Breaking A Few Eggs |QID|59621| |N|Destroy 10 Gorm Eggs in the Banks of Life in {Banks of Life} (45.26, 23.28)| |Z|1565|
C Supplies Needed: Amber Grease |QID|57652| |N|Kill (npc:165400) and collect 8 (item:172221) in {Banks of Life} (45.31, 23.21)| |Z|1565| |NPC|165400|
T Breaking A Few Eggs |QID|59621| |N|(npc:158422) in {Banks of Life} (46.66, 29.41)| |Z|1565| |NPC|158422|
T Tending to the Tenders |QID|59622| |N|(npc:158422) in {Banks of Life} (46.66, 29.41)| |Z|1565| |NPC|158422|
A Unsafe Workplace |QID|57653| |N|(npc:158422) in {Banks of Life} (46.66, 29.41)| |Z|1565| |NPC|158422|
A Supplies Needed: More Husks! |QID|57655| |N|Discarded scroll in {Banks of Life} (47.50, 26.40)| |Z|1565|
A Gifts of the Forest |QID|57656| |N|(npc:158489) in {Banks of Life} (48.06, 24.38)| |Z|1565| |NPC|158489|
C Gifts of the Forest |QID|57656| |N|Use (item:172517) on (npc:158751) to collect 3 (item:172512) in {Banks of Life} (48.07, 21.68)| |Z|1565| |POI| |NPC|158751|
C Unsafe Workplace |QID|57653| |N|Heal 10 (npc:158532) in {Banks of Life} (46.87, 23.95)| |Z|1565| |NPC|158532| |U|172950|
C Supplies Needed: More Husks! |QID|57655| |N|Collect 6 Treated Gorm Husk from the ground in {Banks of Life} (48.77, 21.67)| |Z|1565| |POI|
T Gifts of the Forest |QID|57656| |N|(npc:158489) in {Banks of Life} (48.05, 24.36)| |Z|1565| |NPC|158489|
A Tied Totem Toter |QID|57657| |N|(npc:158489) in {Banks of Life} (48.08, 24.33)| |Z|1565| |NPC|158489|
C Gormling Lure |QID|57657.1| |N|Take the Gormling Lure in {Banks of Life} (47.99, 24.26)| |Z|1565|
C Tied Totem Toter |QID|57657| |N|Lure 30 (npc:158426) to the wrangler in {Banks of Life} (47.03, 28.77)| |Z|1565| |NPC|158426|
T Unsafe Workplace |QID|57653| |N|(npc:158422) in {Banks of Life} (46.67, 29.40)| |Z|1565| |NPC|158422|
T Tied Totem Toter |QID|57657| |N|(npc:158422) in {Banks of Life} (46.66, 29.40)| |Z|1565| |NPC|158422|
A Well, Tell the Lady |QID|59656| |N|(npc:158422) in {Banks of Life} (46.66, 29.40)| |Z|1565| |NPC|158422|

R Glitterfall Basin |QID|57865| |N|Travel to {Glitterfall Basin} (51.10, 33.86)| |Z|1565|
T Well, Tell the Lady |QID|59656| |N|(npc:158345) in {Glitterfall Basin} (51.10, 33.86)| |Z|1565| |NPC|158345|
A Ages-Echoing Wisdom |QID|57865| |N|(npc:158345) in {Glitterfall Basin} (51.10, 33.86)| |Z|1565| |NPC|158345|
A Idle Hands |QID|57866| |N|(npc:158345) in {Glitterfall Basin} (51.10, 33.86)| |Z|1565| |NPC|158345|
T Supplies Needed: More Husks! |QID|57655| |N|(npc:165382) in {Glitterfall Basin} (51.57, 33.98)| |Z|1565| |NPC|165382|
T Supplies Needed: Amber Grease |QID|57652| |N|(npc:165382) in {Glitterfall Basin} (51.57, 33.98)| |Z|1565| |NPC|165382|
A What a Buzzkill |QID|59623| |N|(npc:165382) in {Glitterfall Basin} (51.57, 33.98)| |Z|1565| |NPC|165382|
C What a Buzzkill |QID|59623| |N|Kill (npc:165404) and collect (item:176760) to Gormsmith Cavina (50.34, 26.20)| |Z|1565|
T What a Buzzkill |QID|59623| |N|(npc:165382) in {Glitterfall Basin} (51.66, 34.05)| |Z|1565| |NPC|165382|

R The Growthworks |QID|57867| |N|Travel to {The Growthworks} (55.50, 29.88)| |Z|1565| |NPC|160045|
A The Sweat of Our Brow |QID|57867| |N|(npc:160045) in {The Growthworks} (55.50, 29.88)| |Z|1565| |NPC|160045|
A Spirit-Gathering Labor |QID|57869| |N|(npc:159428) in {The Growthworks} (56.43, 29.26)| |Z|1565| |NPC|159428|
N (npc:159428) |QID|57865.1| |N|Find (npc:159428) in {The Growthworks} (56.40, 29.27)| |Z|1565| |NPC|159428|
C Idle Hands |QID|57866| |N|Slay 12 Brittlebark invaders in the {The Growthworks} (56.67, 25.71)| |Z|1565| |NPC|168490, 159414, 159415, 165677|
A Craftsman Needs No Tools |QID|57868| |N|(npc:159427) in {The Growthworks} (55.81, 23.43)| |Z|1565| |NPC|159427|
N (npc:159427) |QID|57865.2| |N|Find (npc:159427) in {The Growthworks} (55.82, 23.44)| |Z|1565| |NPC|159427
N (item:173150) |QID|57868.1| |N|Kill Brittlebark invaders until you find (item:173150) in {The Growthworks} (56.92, 26.57)| |Z|1565| |NPC|159414, 159415, 165677|
C Spirit-Gathering Labor |QID|57869| |N|Click on the water buckets to collect 6 (item:173187) in {The Growthworks} (55.22, 26.57)| |Z|1565| |POI|
A The Games We Play |QID|57870| |N|(npc:159465) in {The Growthworks} (59.07, 24.38)| |Z|1565| |NPC|159465|
N (npc:159465) |QID|57865.3| |N|Find (npc:159465) in {The Growthworks} (59.07, 24.38)| |Z|1565| |NPC|159465|
C The Games We Play |QID|57870| |N|Target the (npc:159477) and respond with the correct / commands. (58.39, 27.41)<br/><br/>"Not so much as a word of praise! Hmph!"<br/>Type /praise<br/><br/>"The other spriggans were all cheering my name for days!"<br/>Type /cheer<br/><br/>"Dance with me!"<br/>Type /dance<br/><br/>"Introductions were an important part of first impressions!"<br/>Type /introduce<br/><br/>"Some ask permission, and always thank us for our trouble."<br/>Type /thank<br/><br/>"How strong he must have been!"<br/>Type /flex | |Z|1565| |NPC|159477|
T The Games We Play |QID|57870| |N|(npc:159465) in {The Growthworks} (59.05, 24.39)| |Z|1565| |NPC|159465|
A Outplayed |QID|57871| |N|(npc:159465) in {The Growthworks} (59.05, 24.39)| |Z|1565| |NPC|159465|
C Outplayed |QID|57871| |N|Use (item:173355) to defeat (npc:159476) in {The Growthworks} (57.18, 25.97)| |Z|1565| |U|173355| |NPC|159476|
T Craftsman Needs No Tools |QID|57868| |N|(npc:159427) in {The Growthworks} (55.80, 23.43)| |Z|1565| |NPC|159427|
C The Sweat of Our Brow |QID|57867| |N|You will need to get the buff from objects first to the disarmed trapped tools<br/><br/>For the Suspiciously Untouched Harp, you need the (spell:311107) buff from Gossamer Thread objects<br/><br/>For the Suspiciously Untouched Basket, you need the (spell:311058) buff from Shimmerdust Pile objects<br/><br/>For the Suspiciously Untouched Soulweb, you need the (spell:311103) buff from Freshleaf objects (53.34, 26.13)| |Z|1565| |POI|
T Spirit-Gathering Labor |QID|57869| |N|(npc:159428) in {The Growthworks} (56.42, 29.27)| |Z|1565| |NPC|159428|

R Glitterfall Basin |TID|57871| |N|Travel to {Glitterfall Basin} (51.11, 33.88)| |Z|1565|
T Ages-Echoing Wisdom |QID|57865| |N|(npc:158345) in {Glitterfall Basin} (51.11, 33.88)| |Z|1565| |NPC|158345|
T Idle Hands |QID|57866| |N|(npc:158345) in {Glitterfall Basin} (51.11, 33.88)| |Z|1565| |NPC|158345|
T The Sweat of Our Brow |QID|57867| |N|(npc:158345) in {Glitterfall Basin} (51.11, 33.88)| |Z|1565| |NPC|158345|
T Outplayed |QID|57871| |N|(npc:158345) in {Glitterfall Basin} (51.11, 33.88)| |Z|1565| |NPC|158345|

A Tranquil Pools |QID|62774| |N|Auto accept (64.31,37.68) (64.49, 39.57)| |Z|1565|
C Tranquil Pools |QID|62774.1| |N|Aid the Night Fae by killing enemies and using (item:179921) on Devouring Hydra in this area (62.70, 41.09)| |Z|1565|

A Wild Hunt Offensive |QID|60840| |N|Auto accept (62.79,44.67)| |Z|1565|
C Wild Hunt Offensive |QID|60840.1| |N|Disrupt the Blighted Forces by killing enemies around this area and click Draining Totem (63.71,47.14)| |Z|1565|

A Dreamshrine Basin |QID|62773| |N|Auto accept  (63.50,49.42) (62.86,49.55)| |Z|1565|
C Dreamshrine Basin |QID|62773.1| |N|Defend Hibernal Hollow by killing enemies around this area and click (npc:175059) (62.19,50.92)| |Z|1565| |W|

R Hibernal Hollow |QID|62807| |N|Travel to {Hibernal Hollow} (60.34, 53.50)| |Z|1565|
f Hibernal Hollow |QID|60905| |N|Speak to (npc:165166) and grab flight path for {Hibernal Hollow} (60.34, 53.50)| |Z|1565| |NPC|165166|
A Forest Refugees |QID|62807| |N|(npc:160894) in {Hibernal Hollow} (60.10, 53.81)| |Z|1565| |NPC|160894|
A Blooming Villains |QID|58265| |N|(npc:160929) in {Hibernal Hollow} (60.66, 51.37)| |Z|1565| |NPC|160929|
A Break It Down |QID|58266| |N|(npc:160749) (58.11,55.33) (53.48,58.72)| |Z|1565|

A Wake Up, Get Up, Get Out There |QID|58264| |N|(npc:160749), next to you| |PPOS|
N 2 (item:174078) |QID|58266| |N|Collect 2 (item:174078) from the small baskets in hanging fae nests (51.80,59.38)| |Z|1565| |L|174078 2|
N (spell:323695) |N|Click Basket of Enchanted Wings (52.67,57.53)| |Z|1565| |QID|58266| |BUFF|132858|
N 3 (item:174078) |N|Collect 3 (item:174078) from small basket in the hanging fae nest. (53.54,60.80)| |Z|1565| |QID|58266| |L|174078 5|
N 4 (item:174078) |N|Collect 4 (item:174078) from small basket in the hanging fae nest. (53.52,60.93)| |Z|1565| |QID|58266| |L|174078 9|
N 5 (item:174078) |N|Collect 5 (item:174078) from small basket in the hanging fae nest. (52.87,61.73)| |Z|1565| |QID|58266| |L|174078 14|
N Destroy the Runed Altar |QID|58266.1| |N|use (item:174078) to destroy the Runed Altar (53.78,61.52) (53.28,62.68) (52.54,62.33) (52.08,63.26) (51.27,61.06)| |Z|1565| |U|174078|
T Break It Down |QID|58266|  |N|(npc:160749), next to you| |PPOS|

C Wake Up, Get Up, Get Out There |QID|58264.1| |N|Aid 10 (npc:161153) (52.65,60.18)| |Z|1565| |NPC|161153|
T Wake Up, Get Up, Get Out There |QID|58264| |N|(npc:160749), next to you| |PPOS|
A Beneath the Mask |QID|58267| |N|(npc:160749), next to you| |PPOS|
N (npc:160746) |QID|58267.1| |N|Confront (npc:160746) (53.13,57.99) (54.64,61.72)| |Z|1565| |NPC|160746|
K (npc:160951) |QID|58267.2| |N|Kill (npc:160951) (54.64,61.72)| |Z|1565| |NPC|160951|
C Blooming Villains |QID|58265.1| |N|Slay 15 masked night fae (52.65,60.18)| |Z|1565| |W| |NPC|160747, 160748|
T Beneath the Mask |QID|58267| |N|(npc:160929) (60.68,51.34)| |Z|1565| |NPC|160929|

C Blooming Villains |QID|58265| |N|Slay 15 (npc:160747) or (npc:160748) in {Shimmerbough} (52.59, 60.32)| |Z|1565| |NPC|160747, 160748|

R Heart of the Forest |QID|62371| |N|Travel to {Heart of the Forest} (49.34, 51.85)| |Z|1565|
f Heart of the Forest |QID|62371| |N|Speak to (npc:167255) and grab flight path for {Heart of the Forest} (49.34, 51.85)| |Z|1565| |NPC|167255|
T Forest Refugees |QID|62807| |N|(npc:168032) in {Heart of the Forest} (48.41, 50.51)| |Z|1565| |NPC|168032|
A Tirna Scithe: A Warning Silence |QID|62371| |N|(npc:168032) in {Heart of the Forest} (48.41, 50.51)| |Z|1565| |NPC|168032|

R Hibernal Hollow |TID|58265| |N|Travel to {Hibernal Hollow} (60.67, 51.37)| |Z|1565|  |OID|62739|
T Blooming Villains |QID|58265| |N|(npc:160929) in {Hibernal Hollow} (60.67, 51.37)| |Z|1565| |NPC|160929|

T Tirna Scithe: A Warning Silence |QID|62371| |N|(npc:168032) in {Heart of the Forest} (80.04, 3.49)| |Z|1565| |NPC|168032|
T Forest Disappearances |QID|58161| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
A Cult of Personality |QID|58164| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
A Mysterious Masks |QID|58162| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
A A Desperate Solution |QID|58163| |N|(item:173798) in {Crumbled Ridge} (72.19, 33.88)| |Z|1565|
N (item:173872) |QID|58163.3| |N|Click on battered journal to collect (item:173872) in {Crumbled Ridge} (73.47, 33.80)| |Z|1565|
N (item:155876) |QID|58163.1| |N|Collect (item:155876) in {Crumbled Ridge} (73.49, 34.28)| |Z|1565|
N (item:173873) |QID|58163.2| |N|Collect (item:173873) in {Crumbled Ridge} (71.83, 38.11)| |Z|1565|
C Mysterious Masks |QID|58162| |N|Kill (npc:160293) or (npc:160290) and collect 15 (item:173800) in {Crumbled Ridge} (73.53, 34.54)| |Z|1565| |NPC|160293, 160290|
C Cult of Personality |QID|58164| |N|Rescue 8 trapped night fae. in {Crumbled Ridge} (72.37, 36.39)| |Z|1565|

T Cult of Personality |QID|58164| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
T Mysterious Masks |QID|58162| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
T A Desperate Solution |QID|58163| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
A The Crumbling Village |QID|59802| |N|(npc:160439) in {Crumbled Ridge} (70.34, 32.60)| |Z|1565| |NPC|160439|
T The Crumbling Village |QID|59802| |N|(npc:160439) in {Crumbled Ridge} (74.33, 32.34)| |Z|1565| |NPC|160439|
A Cut the Roots |QID|58165| |N|(npc:160439) in {Crumbled Ridge} (74.33, 32.34)| |Z|1565| |NPC|160439|
A Take the Power |QID|59801| |N|(npc:160439) in {Crumbled Ridge} (74.33, 32.34)| |Z|1565| |NPC|160439|

K (npc:160442) |QID|58165.2| |N|Kill (npc:160442) in {Crumbled Ridge} (74.98, 31.75) (73.81, 31.25)| |Z|1565| |NPC|160442|
K (npc:160295) |QID|58165.3| |N|Kill (npc:160295) in {Crumbled Ridge} (75.89, 30.87)| |Z|1565| |NPC|160295|
K (npc:160445) |QID|58165.1| |N|Kill (npc:160445) in {Crumbled Ridge} (75.63, 34.21)| |Z|1565| |NPC|160445|
C Take the Power |QID|59801| |N|Collect 8 (item:177878) from the ground in {Crumbled Ridge} (75.22, 33.97)| |Z|1565| |POI|
T Cut the Roots |QID|58165| |N|(npc:160439) in {Crumbled Ridge} (74.31, 32.34)| |Z|1565| |NPC|160439|
T Take the Power |QID|59801| |N|(npc:160439) in {Crumbled Ridge} (74.31, 32.34)| |Z|1565| |NPC|160439|
A Unknown Assailants |QID|58166| |N|(npc:160439) in {Crumbled Ridge} (74.31, 32.34)| |Z|1565| |NPC|160439|
T Unknown Assailants |QID|58166| |N|(npc:158487) in {Tirna Vaal} (63.48, 36.25)| |Z|1565| |NPC|158487|

--N Level 60 Required |N|You need to be level 60 to continue with the guide| |PL|60|

A Silk Shortage |QID|57661| |N|(npc:158556) in {Heart of the Forest} (48.48, 50.44)| |Z|1565| |NPC|158556| |COV|3|

R Gossamer Cliffs |QID|60061| |N|Travel to {Gossamer Cliffs} (38.98, 29.93)| |Z|1565|
T Silk Shortage |QID|57661| |N|(npc:159270) in {Gossamer Cliffs} (38.98, 29.93)| |Z|1565| |NPC|159270| |COV|3|
A Tough as Silk |QID|60061| |N|(npc:159270) in {Gossamer Cliffs} (38.98, 29.93)| |Z|1565| |NPC|159270|
A The Shattered Harp |QID|60062| |N|Click on Broken Harp in {Gossamer Cliffs} (38.12, 28.73)| |Z|1565|
C The Shattered Harp |QID|60062| |N|Find 3 (item:178138) in {Gossamer Cliffs} (38.01, 27.39)| |Z|1565| |POI|
C Tough as Silk |QID|60061| |N|Slay attackers, save (npc:159424), and hatch silkstrider larvae until the bar is 100% in {Gossamer Cliffs} (38.07, 26.36)| |Z|1565| |POI|
T The Shattered Harp |QID|60062| |N|(npc:167047) in {Gossamer Cliffs} (37.05, 29.70)| |Z|1565| |NPC|167047|
A A Song for Silkstriders |QID|60063| |N|(npc:167047) in {Gossamer Cliffs} (37.05, 29.70)| |Z|1565| |NPC|167047|
A Save Ol' Gertie |QID|60064| |N|(npc:167047) in {Gossamer Cliffs} (37.05, 29.70)| |Z|1565| |NPC|167047|

C Save Ol' Gertie |QID|60064| |N|Slay (npc:167089) in {Gossamer Cliffs} (36.24, 28.10) (35.05, 28.79) (36.38, 25.71)| |Z|1565| |NPC|167089|
T Save Ol' Gertie |QID|60064| |N|(npc:159388) in {Gossamer Cliffs} (37.28, 25.95)| |Z|1565| |NPC|159388|
A Thread of Hope |QID|60065| |N|(npc:159388) in {Gossamer Cliffs} (37.28, 25.95)| |Z|1565| |NPC|159388|
C A Song for Silkstriders |QID|60063| |N|Collect 4 (item:178144) from the silkstriders by using (item:178143) for them. in {Gossamer Cliffs} (38.67, 26.27)| |Z|1565| |NPC|169332|
T A Song for Silkstriders |QID|60063| |N|(npc:167047) in {Gossamer Cliffs} (39.05, 29.90)| |Z|1565| |NPC|167047|
T Tough as Silk |QID|60061| |N|(npc:159270) in {Gossamer Cliffs} (39.00, 29.96)| |Z|1565| |NPC|159270|
T Thread of Hope |QID|60065| |N|(npc:159270) in {Gossamer Cliffs} (39.00, 29.96)| |Z|1565| |NPC|159270|
A Silk for Ardenweald |QID|60066| |N|(npc:159270) in {Gossamer Cliffs} (39.00, 29.96)| |Z|1565| |NPC|159270|

R Dreamsong Fenn |TID|60066| |N|Travel to {Dreamsong Fenn} (36.79, 36.73)| |Z|1565|
--f Dreamsong Fenn |TID|60066| |N|Speak to (npc:159905) and grab flight path for {Dreamsong Fenn} (36.79, 36.73)| |Z|1565| |NPC|159905|
T Silk for Ardenweald |QID|60066| |N|(npc:158556) in {Heart of the Forest} (48.49, 50.41)| |Z|1565| |NPC|158556|

N Guide Complete |N|Tick to continue to (guide:"1525(58-60 Threads of Fate)#1525(58-60 Threads of Fate)#1525(58-60 Threads of Fate)")|

]]
end, {image = "ardenweald.tga", description = [[]]})	end

	function Guide:Unload()
	end
end
