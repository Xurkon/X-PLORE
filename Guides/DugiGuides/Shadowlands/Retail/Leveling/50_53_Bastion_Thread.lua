local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_50_53_Bastion_Threads")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "1533(50-53 Threads of Fate)#1533(50-53 Threads of Fate)#1533(50-53 Threads of Fate)", "1536(53-55 Threads of Fate)#1536(53-55 Threads of Fate)#1536(53-55 Threads of Fate)", nil, nil, "L", nil, function()
return [[

-- // Kyrian Covenent //
R Elysian Hold |OID|63034| |N|Travel to {Elysian Hold} (65.91, 17.41)| |Z|1707| |COV|1|
T The Elysian Fields |QID|63034| |N|(npc:168517) in {Elysian Hold} (37.29, 61.03)| |Z|1707| |NPC|168517| |COV|1|
A Bolstering Bastion |QID|62723| |N|(npc:168517) in {Elysian Hold} (37.29, 61.03)| |Z|1707| |NPC|168517| |COV|1|
T Bolstering Bastion |QID|62723| |N|(npc:168517) in {Elysian Hold} (37.29, 61.03)| |Z|1707| |NPC|163427| |COV|1| |O|
A Return to Oribos |QID|62729| |N|(npc:168517) in {Elysian Hold} (37.32, 61.00)| |Z|1707| |NPC|168517| |COV|1| |PRE|62723|
R Ring of Transferance |OID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |REACH| |COV|1| |PRE|62723|
T Return to Oribos |QID|62729| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |PRE|62723|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62723|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|1| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|1| |PRE|62723|

-- // Venthyr Covenant //
R Hero's Rest |OID|62707| |N|Travel to Hero's Rest (51.48, 46.82)| |Z|1533| |COV|2|
T The Elysian Fields |QID|62707| |N|(npc:168517) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|2|
A Bolstering Bastion |QID|62723| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|2|
T Bolstering Bastion |QID|62723| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|2| |O|
A Return to Oribos |QID|62729| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|2| |PRE|62723|
R Ring of Transferance |OID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |REACH| |COV|2| |PRE|62723|
T Return to Oribos |QID|62729| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |PRE|62723|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62723|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|2| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|2| |PRE|62723|

-- // Nightfae Covenant //
R Hero's Rest |OID|62707| |N|Travel to Hero's Rest (51.48, 46.82)| |Z|1533| |COV|3|
T The Elysian Fields |QID|62707| |N|(npc:168517) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|3|
A Bolstering Bastion |QID|62723| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|3|
T Bolstering Bastion |QID|62723| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|3| |O|
A Return to Oribos |QID|62729| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|3| |PRE|62723|
R Ring of Transferance |OID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |REACH| |COV|3| |PRE|62723|
T Return to Oribos |QID|62729| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |PRE|62723|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62723|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|3| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|3| |PRE|62723|

-- // Necrolord Covenant //
R Hero's Rest |OID|62707| |N|Travel to Hero's Rest (51.48, 46.82)| |Z|1533| |COV|4|
T The Elysian Fields |QID|62707| |N|(npc:168517) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|4|
A Bolstering Bastion |QID|62723| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|4|
T Bolstering Bastion |QID|62723| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|4| |O|
A Return to Oribos |QID|62729| |N|(npc:163427) in {Hero's Rest} (51.12, 46.79)| |Z|1533| |NPC|163427| |COV|4| |PRE|62723|
R Ring of Transferance |OID|62776| |N|Travel to {Ring of Transferance} (60.19, 67.55)| |Z|1671| |REACH| |COV|4| |PRE|62723|
T Return to Oribos |QID|62729| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |PRE|62723|
A The Next Step |QID|63208| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62723|
A Furthering the Purpose |QID|63209| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62723|
A The Last Step |QID|63210| |N|(npc:159478) in {The Enclave} (38.66, 69.60)| |Z|1670| |NPC|159478| |COV|4| |O| |PRE|62723|
N Switch Guide |N|Switch to (guide:"1648(50+)#1648(50+)#1648(50+)")| |COV|4| |PRE|62723|

R Aspirant's Rest |QID|57261.3| |N|Travel to {Aspirant's Rest} (48.02, 73.12)| |Z|1533|
f Aspirant's Rest |QID|60466| |N|Speak to (npc:159127) and grab flight path for {Aspirant's Rest} (48.10, 74.29)| |Z|1533|
h Aspirant's Rest |QID|57677| |N|Speak to (npc:160601) and set hearth at {Aspirant's Rest} (48.07, 73.02)| |Z|1533| |NPC|160601|

R Aspirant's Rest |TID|57676| |N|Travel to {Aspirant's Rest} (47.76, 71.77) (48.17, 72.54)| |Z|1533|
A The Old Ways |QID|60466| |N|(npc:160598) in {Aspirant's Rest} (47.90, 73.48)| |Z|1533| |NPC|160598|
B (item:178891) |QID|60466.1| |N|Buy (item:178891) from (npc:160601) in {Aspirant's Rest} (48.10, 72.96)| |Z|1533| |NPC|160601|
C The Old Ways |QID|60466| |N|Kill (npc:168442) and (npc:157761) for 4 (item:178885), and 12 (item:178890) in {Sophia's Aria} (50.84, 69.91)| |Z|1533| |POI| |NPC|168442, 157761|
T The Old Ways |QID|60466| |N|(npc:160598) in {Aspirant's Rest} (47.86, 73.50)| |Z|1533| |NPC|160598|
A A Gift for An Acolyte |QID|62714| |N|(npc:160598) in {Aspirant's Rest} (47.90, 73.50)| |Z|1533| |NPC|160598|

A Aspirant For a Day |QID|62737| |N|Auto quest (52.29, 78.07)| |Z|1533|
A Suggested Reading |QID|57712| |N|(npc:157138) in {Aspirant's Crucible} (55.39, 83.42)| |Z|1533| |NPC|157138|
C Aspirant For a Day |QID|62737| |N|Aid the aspirants and killing enemies around this area (53.94, 80.63)| |Z|1533|
N (npc:159277) |QID|57712.2| |N|Speak to (npc:159277) to collect (item:173025) in {Aspirant's Crucible} (56.09, 82.79)| |Z|1533| |NPC|159277|
N (npc:159278) |QID|57712.1| |N|Speak to (npc:159278) to collect (item:173025)in {Aspirant's Crucible} (52.97, 82.38)| |Z|1533| |NPC|159278|

K (npc:157274) |QID|57712.3| |N|Kill (npc:157274) until you collect (item:173023) in {Aspirant's Crucible} (54.79, 75.87)| |Z|1533| |NPC|157274|
T Suggested Reading |QID|57712| |N|(npc:157138) in {Aspirant's Crucible} (55.39, 83.42)| |Z|1533| |NPC|157138|

T A Gift for An Acolyte |QID|62714| |N|(npc:174900), in {Purity's Reflection} (53.87, 73.96)| |Z|1533| |NPC|174900|
A More Than A Gift |QID|62715| |N|(npc:174900), in {Purity's Reflection} (53.87, 73.96)| |Z|1533| |NPC|174900|
A An Inspired Moral Inventory |QID|57444| |N|(npc:160647) in {The Temple of Purity} (57.97, 75.89)| |Z|1533| |NPC|160647|

A Scour the Temple |QID|62705| |N|Auto accept (55.06,73.63)| |Z|1533|
C An Inspired Moral Inventory |QID|57444| |N|Slay 3 (npc:157660) in {The Temple of Purity} (57.07, 71.89)| |Z|1533| |POI| |NPC|157660|
C Scour the Temple |QID|62705| |N|Defend the Temple by killing enemies around this area and speak to (npc:168119) <br/><b>click Vesper, They look like huge bells floating above the ground around this area (58.04,73.47)| |W| |Z|1533| |NPC|168119|

T An Inspired Moral Inventory |QID|57444| |N|(npc:160647) in {The Temple of Purity} (54.03, 73.95)| |Z|1533| |NPC|160647|
A Locus Focus |QID|62732| |N|Auto accept (55.66,62.93)| |Z|1533| 

C Locus Focus |QID|62732.1| |N|Defend the Mnemonic Locus, click (npc:174934) and Soul mirrors (55.66,62.93)| |Z|1533| |W| |NPC|174934|
A Hostile Recollection |QID|62735| |N|Auto accept (58.11,64.52)| |Z|1533| 
C Hostile Recollection |QID|62735.1| |N|Repel the Felsworn Threat, Collect (item:178149) and click (npc:167387) (58.87,59.71)| |Z|1533| |W| |NPC|167387
A Garden in Turmoil |QID|57529| |N|(npc:158005) in {The Mnemonic Locus} (52.32, 61.33)| |Z|1533| |NPC|158005|
T Garden in Turmoil |QID|57529| |N|(npc:158004) in {Garden of Respite} (51.32, 59.54)| |Z|1533| |NPC|158004|
A Disturbing the Peace |QID|57538| |N|(npc:158004) in {Garden of Respite} (51.32, 59.55)| |Z|1533| |NPC|158004|
A Distractions for Kala |QID|57545| |N|(npc:158004) in {Garden of Respite} (51.32, 59.55)| |Z|1533| |NPC|158004|
N (item:172036) |QID|57545.1| |N|Collect (item:172036) in {Garden of Respite} (51.09, 58.73)| |Z|1533|
N (item:172037) |QID|57545.2| |N|Collect (item:172037) in {Garden of Respite} (49.61, 60.00)| |Z|1533|
N (item:172039) |QID|57545.3| |N|Collect (item:172039) in {Garden of Respite} (52.89, 58.16)| |Z|1533|
T Distractions for Kala |QID|57545| |N|(npc:1580575494) in {Garden of Respite} (51.32, 59.55)| |Z|1533| |NPC|158004|
C Disturbing the Peace |QID|57538| |N|Kill 10 (npc:158054) creatures in {Garden of Respite} (49.85, 56.50)| |Z|1533| |POI| |NPC|158054|
T Disturbing the Peace |QID|57538| |N|(npc:158004) in {Garden of Respite} (51.32, 59.55)| |Z|1533| |NPC|158004|
A A Test of Courage |QID|57547| |N|(npc:158004) in {Garden of Respite} (51.32, 59.55)| |Z|1533| |NPC|158004|

R Korinna's Reliquary |QID|57547| |N|Travel to {Korinna's Reliquary} (51.22, 56.34)| |Z|1533|
C A Test of Courage |QID|57547| |N|Click on the Bell of Remembrance to start the event and defend it until (npc:158179) appears and collect (item:183045) in {Korinna's Reliquary} (51.87, 54.75)| |Z|1533| |NPC|158179|
T A Test of Courage |QID|57547| |N|(npc:158004) in {Garden of Respite} (51.24, 56.75)| |Z|1533| |NPC|158004|
A Tough Love |QID|57568| |N|(npc:158004) in {Garden of Respite} (51.24, 56.75)| |Z|1533| |NPC|158004|

R Kala's Den |QID|57568| |N|Travel to {Kala's Den} (48.86, 57.94) (47.70, 57.91)| |Z|1533|
C Tough Love |QID|57568| |N|Collect (item:183045) from (npc:158254) inside her den. in {Kala's Den} (47.70, 57.91) (45.95, 56.78)| |Z|1533| |NPC|158254|
C More Than A Gift |QID|62715| |N|Acquire 1 (item:183967) from the ground (51.96, 61.84) (45.45, 59.71)| |Z|1533|

R Garden of Respite |N|Travel to {Garden of Respite} (48.95, 57.94) (51.33, 59.53)| |Z|1533|
T Tough Love |QID|57568| |N|(npc:158004) in {Garden of Respite} (51.33, 59.53)| |Z|1533| |NPC|158004|

A A Friendly Rivalry |QID|59674| |N|(npc:158765) in (map:1533) (53.58, 59.44) (57.41, 54.26)| |Z|1533| |NPC|158765|

T You'll Never Walk Alone |QID|62170| |N|(npc:160173) in {Hero's Rest} (53.18, 46.86)| |Z|1533| |NPC|160173| |O|
A A Fine Journey |QID|59554| |N|Click on notice in {Hero's Rest} (51.93, 47.70)| |Z|1533|
f Hero's Rest |N|Speak to (npc:159423) and grab flight path for {Hero's Rest} (51.38, 46.80)| |Z|1533| |NPC|159423|
h Hero's Rest |QID|59197| |N|Speak to (npc:160173) and set hearth at {Hero's Rest} (53.18, 46.83)| |Z|1533| |NPC|160173|
A Maldraxxi Eviction Notice |QID|62736| |N|Auto quest (41.71,55.27)| |Z|1533| 
A Necrotic Wake: A Paragon's Plight |QID|60057| |N|(npc:167584) in {Xandria's Vigil} (40.93, 55.34)| |Z|1533| |NPC|167584|
C Maldraxxi Eviction Notice  |QID|62736.1| |N|Repel the Maldraxxi Threat by killing enemies around this area and click Necrotic Extractor and banner (40.38,57.86)| |Z|1533| 

R Agthia's Repose |QID|57549| |N|Travel to {Agthia's Repose} (46.98, 63.45)| |Z|1533|
T A Fine Journey |QID|59554| |N|(npc:158078) in {Agthia's Repose} (46.98, 63.45)| |Z|1533| |NPC|158078|
A In Agthia's Memory |QID|57549| |N|(npc:158078) in {Agthia's Repose} (46.98, 63.45)| |Z|1533| |NPC|158078|
N First scroll |QID|57549.1| |N|Click scroll of remembrance meditate on first scroll in {Agthia's Repose} (47.43, 66.03)| |Z|1533|
N Second scroll |QID|57549.2| |N|Click scroll of remembrance to meditate on second scroll in {Agthia's Repose} (44.82, 68.73)| |Z|1533|
N Third scroll |QID|57549.3| |N|Click scroll of remembrance to meditate on third scroll in {Agthia's Repose} (44.67, 64.36)| |Z|1533|
T In Agthia's Memory |QID|57549| |N|(npc:158078) in {Agthia's Repose} (46.99, 63.46)| |Z|1533| |NPC|158078|
A Agthia's Path |QID|57551| |N|(npc:158078) in {Agthia's Repose} (46.99, 63.46)| |Z|1533| |NPC|158078|
C Agthia's Path |QID|57551| |N|Ring the Vesper of History in {Agthia's Repose} (47.01, 63.39)| |Z|1533|
T Agthia's Path |QID|57551| |N|(npc:158181) in {Agthia's Repose} (46.59, 63.40)| |Z|1533| |NPC|158181|
A Warriors of the Void |QID|57552| |N|(npc:158181) in {Agthia's Repose} (46.58, 63.42)| |Z|1533| |NPC|158181|
A Wicked Gateways |QID|57554| |N|(npc:158181) in {Agthia's Repose} (46.58, 63.44)| |Z|1533| |NPC|158181|
A On Wounded Wings |QID|57553| |N|(npc:158178) in {Agthia's Repose} (46.45, 63.61)| |Z|1533| |NPC|158178|
N As you go... |AYG|57554| |QID|57553| |N|Heal 5 (npc:158319) in {Agthia's Repose}| |Z|1533| |NPC|158319|
C Wicked Gateways |QID|57554| |N|Destroy 3 Void Portals in each way point (46.53, 64.96) (44.26, 65.07) (46.86, 66.93)| |Z|1533|
R Agthia's Repose |QID|57554| |N|Travel to {Agthia's Repose} (45.38, 65.65)| |Z|1533|
C On Wounded Wings |QID|57553| |N|Heal 5 (npc:158319) in {Agthia's Repose} (44.54, 65.60)| |Z|1533| |NPC|158319|
C Warriors of the Void |QID|57552| |N|Kill 15 Void forces in {Agthia's Repose} (45.38, 65.65)| |Z|1533|

T Warriors of the Void |QID|57552| |N|(npc:158181) in {Agthia's Repose} (46.55, 63.42)| |Z|1533| |NPC|158181|
T Wicked Gateways |QID|57554| |N|(npc:158181) in {Agthia's Repose} (46.55, 63.42)| |Z|1533| |NPC|158181|
T On Wounded Wings |QID|57553| |N|(npc:158181) in {Agthia's Repose} (46.55, 63.42)| |Z|1533| |NPC|158181|
A Shadow's Fall |QID|57555| |N|(npc:158181) in {Agthia's Repose} (46.55, 63.42)| |Z|1533| |NPC|158181|
C Shadow's Fall |QID|57555| |N|Kill (npc:158290) in {Agthia's Repose} (44.59, 68.49)| |Z|1533| |NPC|158290|
T Shadow's Fall |QID|57555| |N|(npc:158078) in {Agthia's Repose} (46.99, 63.46)| |Z|1533| |NPC|158078|

R Purity's Reflection |TID|62715| |N|Travel to {Purity's Reflection} (53.87, 73.97)| |Z|1533| 
T More Than A Gift |QID|62715| |N|(npc:174900) in {Purity's Reflection} (53.87, 73.97)| |Z|1533| |NPC|174900|

R Forgefire Outpost |N|Travel to {Forgefire Outpost} (44.83, 47.81) (44.75, 46.28) (49.32, 38.95) (51.09, 37.70) (54.97, 37.88) (54.77, 41.17)| |Z|1533|
T A Friendly Rivalry |QID|59674| |N|(npc:158765) in {Forgefire Outpost} (54.77, 41.17)| |Z|1533| |NPC|158765|
A Phalynx Malfunction |QID|57931| |N|(npc:158765) in {Forgefire Outpost} (54.77, 41.17)| |Z|1533| |NPC|158765|
A Resource Drain |QID|57932| |N|(npc:159609) in {Forgefire Outpost} (54.81, 41.21)| |Z|1533| |NPC|159609|
C Resource Drain |QID|57932| |N|Use (item:173691) to drain anima from (npc:159298) 5 times in {The Golden Pasture} (58.52, 45.91)| |Z|1533| |U|173691| |NPC|159298|
N (npc:159675) |QID|57931.1| |N|Find (npc:159675) found in {The Golden Pasture} (54.87, 43.57)| |Z|1533| |NPC|159675|

R Forgefire Outpost |QID|57931| |N|Travel to {Forgefire Outpost} (56.55, 44.74) (55.35, 42.03)| |Z|1533| 
N (npc:159675) |QID|57931.2| |N|Return (npc:159675) in {Forgefire Outpost} (55.35, 42.03)| |Z|1533| |NPC|159675|
T Resource Drain |QID|57932| |N|(npc:159609) in {Forgefire Outpost} (54.81, 41.28)| |Z|1533| |NPC|159609|
T Phalynx Malfunction |QID|57931| |N|(npc:158765) in {Forgefire Outpost} (54.80, 41.16)| |Z|1533| |NPC|158765|
A We Can Rebuild Him |QID|57933| |N|(npc:158765) in {Forgefire Outpost} (54.80, 41.16)| |Z|1533| |NPC|158765|
N (npc:159835) |QID|57933.2| |N|(npc:159835) brought to build rig in {Forgefire Outpost} (54.63, 40.43)| |Z|1533| |NPC|159835|
C We Can Rebuild Him |QID|57933.3| |N|Get all the required stuff<br/><b>Escort 3 (npc:159410)<br/><b>Bring Anima Barrels<br/><b>And 5 (item:173307) placed in {Forgefire Outpost} (54.62, 40.99)| |Z|1533| |NPC|159410|
C We Can Rebuild Him |QID|57933.5| |N|Get all the required stuff<br/><b>Escort 3 (npc:159410)<br/><b>Bring Anima Barrels<br/><b>And 5 (item:173307) placed in {Forgefire Outpost} (54.62, 40.99)| |Z|1533| |NPC|159410|
C We Can Rebuild Him |QID|57933.4| |N|Get all the required stuff<br/><b>Escort 3 (npc:159410)<br/><b>Bring Anima Barrels<br/><b>And 5 (item:173307) placed in {Forgefire Outpost} (54.62, 40.99)| |Z|1533| |NPC|159410|
N (npc:158765) |QID|57933.6| |N|Talk to (npc:158765) to finish repair in {Forgefire Outpost} (54.74, 40.40)| |Z|1533| |NPC|158765|
T We Can Rebuild Him |QID|57933| |N|(npc:158765) in {Forgefire Outpost} (54.78, 41.16)| |Z|1533| |NPC|158765|
A Combat Drills |QID|57934| |N|(npc:158765) in {Forgefire Outpost} (54.78, 41.16)| |Z|1533| |NPC|158765|
A Laser Location |QID|57935| |N|(npc:158765) in {Forgefire Outpost} (54.80, 41.24)| |Z|1533| |NPC|158765|
A Superior Programming |QID|57936| |N|(npc:159609) in {Forgefire Outpost} (54.81, 41.24)| |Z|1533| |NPC|159609|
N (npc:159675) |QID|57934.1| |N|(npc:159675) retrieved in {Forgefire Outpost} (55.35, 42.02)| |Z|1533| |NPC|159675|

R Hall of Beasts |QID|57936| |N|Travel to {Hall of Beasts} (56.28, 44.78) (55.70, 42.88)| |Z|1533|
K (npc:159612) |QID|57936.1| |N|Kill (npc:159612) in {Hall of Beasts} (56.03, 40.05)| |Z|1533| |NPC|159612|
N (spell:311682) |QID|57935| |N|Use (spell:311682) to find 6 Training Gem in {Hall of Beasts} (57.77, 38.92)| |Z|1533|
C Combat Drills |QID|57934| |N|Kill 8 (npc:159610) in {Hall of Beasts} (57.77, 38.92)| |Z|1533| |NPC|159610|

R Firstborne's Bounty |QID|60315| |N|Travel to {Firstborne's Bounty} (55.65, 43.02) (48.97, 46.64)| |Z|1533|
T Combat Drills |QID|57934| |N|(npc:158765) in {Forgefire Outpost} (54.78, 41.16)| |Z|1533| |NPC|158765|
T Laser Location |QID|57935| |N|(npc:158765) in {Forgefire Outpost} (54.78, 41.16)| |Z|1533| |NPC|158765|
T Superior Programming |QID|57936| |N|(npc:159609) in {Forgefire Outpost} (54.79, 41.26)| |Z|1533| |NPC|159609|
A Tactical Formation |QID|57937| |N|(npc:158765) in {Forgefire Outpost} (54.80, 41.17)| |Z|1533| |NPC|158765|
N (npc:159675) |QID|57937.1| |N|Retrieve (npc:159675) in {Forgefire Outpost} (55.38, 41.99)| |Z|1533| |NPC|159675|
N (npc:159675) |QID|57937.2| |N|Complete Line formation in {Forgefire Outpost}<br/><br/>Select the correct yellow tiger to create a line formation (55.08, 41.56)| |Z|1533| |NPC|159675|
N (npc:159675) |QID|57937.3| |N|Complete V formation in {Forgefire Outpost}<br/><br/>Select the correct yellow tiger to create a V formation (55.04, 41.63)| |Z|1533| |NPC|159675|
N (npc:159675) |QID|57937.4| |N|Complete Cross in {Forgefire Outpost}<br/><br/>Select the correct yellow tiger to create a Cross formation (55.22, 41.53)| |Z|1533| |NPC|159675|
N (npc:159675) |QID|57937.5| |N|Return (npc:159675) in {Forgefire Outpost} (55.36, 42.04)| |Z|1533| |NPC|159675|
T Tactical Formation |QID|57937| |N|(npc:158765) in {Forgefire Outpost} (54.79, 41.16)| |Z|1533| |NPC|158765|
A Part of the Pride |QID|58037| |N|(npc:157696) in {Nemea's Retreat} (57.25, 39.25)| |Z|1533| |NPC|157696|
C Part of the Pride |QID|58037| |N|Introduce yourself to 5 (npc:158767) in {Nemea's Retreat} (57.96, 39.48)| |Z|1533| |NPC|158767|
T Part of the Pride |QID|58037| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.21)| |Z|1533| |NPC|157696|
A All Natural Chews |QID|58038| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.21)| |Z|1533| |NPC|157696|
A Larion at Large |QID|58039| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.21)| |Z|1533| |NPC|157696|
N (npc:160189) |QID|58039.1| |N|Retrieve (npc:160189) in {The Golden Pasture} (55.24, 44.59)| |Z|1533| |NPC|160189|
K (npc:159298) |QID|58038.1| |N|Kill (npc:159298) and collect 5 (item:173690) in {The Golden Pasture} (55.36, 44.17)| |Z|1533| |NPC|159298|

R Nemea's Retreat |QID|58039| |N|Travel to {Nemea's Retreat} (57.11, 39.69)| |Z|1533|
N (npc:160189) |QID|58039.2| |N|Return (npc:160189) in {Nemea's Retreat} (57.11, 39.69)| |Z|1533| |NPC|160189|
T All Natural Chews |QID|58038| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|
T Larion at Large |QID|58039| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|
A With Lance and Larion |QID|58040| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|
A Providing for the Pack |QID|58041| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|

R Greatwing Roost |QID|58040| |N|Travel to {Greatwing Roost} (56.22, 49.62)| |Z|1533|
C With Lance and Larion |QID|58040| |N|Use (item:173692) and to help you kill 5 (npc:159192) in {Greatwing Roost} (56.22, 49.62)| |Z|1533| |U|173692| |NPC|159192|
C Providing for the Pack |QID|58041| |N|Kill (npc:159289) 10 (item:173702) in {Greatwing Roost} (56.54, 49.73)| |Z|1533| |NPC|159289|
T With Lance and Larion |QID|58040| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|
T Providing for the Pack |QID|58041| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|
A On Larion Wings |QID|58042| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.23)| |Z|1533| |NPC|157696|
N (npc:160255) |QID|58042.1| |N|Mount (npc:160255) in {Nemea's Retreat} (56.88, 39.34)| |Z|1533| |V| |NPC|160255|
C On Larion Wings |QID|58042| |N|Fly through the rings to complete the flight course in {Forgefire Outpost} (56.91, 40.75) (56.92, 42.52) (57.56, 43.26) (58.32, 42.88) (58.93, 42.08) (59.11, 40.57) (59.02, 39.82)| |Z|1533|
T On Larion Wings |QID|58042| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.22)| |Z|1533| |NPC|157696|
A Pride or Unit |QID|60296| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.22)| |Z|1533| |OID|58103| |NPC|157696|
N (npc:158765) |QID|60296.1| |N|Meet with (npc:158765) and (npc:157696) in {Nemea's Retreat} (56.23, 39.68)| |Z|1533| |OID|58103| |NPC|158765, 157696|
N (npc:158765) |QID|60296.2| |N|Speak to (npc:158765) (Optional) in {Nemea's Retreat} (55.73, 39.48)| |Z|1533| |OID|58103| |NPC|158765|
N (npc:157696) |QID|60296.3| |N|Speak to (npc:157696) (Optional) in {Nemea's Retreat} (55.81, 39.39)| |Z|1533| |OID|58103| |NPC|157696|
C Pride or Unit |QID|60296| |N|Meet with Pelodis and Nemea, then pick a side in {Nemea's Retreat}<br/><br/>Choose Phalynx or Larion, this might result with different mount reward later (55.81, 39.39)| |Z|1533| |OID|58103|
T Pride or Unit |QID|60296| |N|(npc:157696) in {Nemea's Retreat} (55.81, 39.39)| |Z|1533| |OID|58103| |NPC|157696|

A Pride or Unit |QID|58103| |N|(npc:157696) in {Nemea's Retreat} (57.27, 39.22)| |Z|1533| |OID|60296| |NPC|157696|
N (npc:158765) |QID|58103.1| |N|Meet with (npc:158765) and (npc:157696) in {Nemea's Retreat} (56.23, 39.68)| |Z|1533| |OID|60296| |NPC|158765, 157696|
N (npc:158765) |QID|58103.2| |N|Speak to (npc:158765) (Optional) in {Nemea's Retreat} (55.73, 39.48)| |Z|1533| |OID|60296| |NPC|158765|
N (npc:157696) |QID|58103.3| |N|Speak to (npc:157696) (Optional) in {Nemea's Retreat} (55.81, 39.39)| |Z|1533| |OID|60296| |NPC|157696|
C Pride or Unit |QID|58103| |N|Meet with Pelodis and Nemea, then pick a side in {Nemea's Retreat}<br/><br/>Choose Phalynx or Larion, this might result with different mount reward later (55.81, 39.39)| |Z|1533| |OID|60296|
T Pride or Unit |QID|58103| |N|(npc:157696) in {Nemea's Retreat} (55.81, 39.39)| |Z|1533| |OID|60296| |NPC|157696|

N Guide Complete |N|Tick to continue to (guide:"1536(53-55 Threads of Fate)#1536(53-55 Threads of Fate)#1536(53-55 Threads of Fate)")|

]]
end, {image = "bastion.tga", description = [[]]})	end

	function Guide:Unload()
	end
end