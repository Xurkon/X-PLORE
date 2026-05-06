local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Winterpelt_Furbolg_REP")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Reputation|r"}, "Winterpelt Furbolg (Unlock + Reputation Grind)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You will need to be level 70 to use this guide.<br/><b>If you are not Level 70, you can skip this step and complete the intro quests and receive the mail item, however, you must be Level 70 to use (item:204254) or accept from the Advenurer Guide.| |PL|70|
N Note |N|Reaching Language Proficiency 100 and Exalted with (fac:2526) awards the achievement (aid:17427), which not only grants you achievement points, it allows you to speak in Furbolg!<br/><b>The Furbolg language can be spoken in normal chat, but not in chat channels.<br/><b>The reward currently is NOT account-wide, which means you will need to grind on each character you wish to speak Furbolg on.<br/><br/><b>Tick this step.| |OID|72588|

--Unlocking the Winterpelt Furbolg faction
A Aggressive Self-Defence |QID|66554| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|
A Hollow Up |QID|66553| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|

R Winterpelt Hollow |QID|66554| |N|Travel to {Winterpelt Hollow} (66.85, 13.70)| |Z|2024|
C Aggressive Self-Defence |QID|66554| |N|Kill 6 (npc:189372) and (npc:189378) in {Winterpelt Hollow} (66.85, 13.70)| |Z|2024| |NPC|189372, 189378|
C Hollow Up |QID|66553| |N|Uncover 6 clues in {Winterpelt Hollow} (66.83, 13.17)| |Z|2024|

R Theron's Watch |TID|66553| |N|Travel to {Theron's Watch} (65.40, 15.95)| |Z|2024|
T Hollow Up |QID|66553| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|
T Aggressive Self-Defence |QID|66554| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|
A Bear With Me |QID|66555| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|

C Bear With Me |QID|66555| |N|Assist (npc:189401)'s translation by speaking to her in {Theron's Watch} (65.40, 15.95)| |Z|2024|

T Bear With Me |QID|66555| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|
A Ice Cave Ya Got There |QID|66556| |N|(npc:189401) in {Theron's Watch} (65.40, 15.95)| |Z|2024| |NPC|189401|

R Winterpelt Hollow |QID|66556| |N|Travel to {Winterpelt Hollow} (66.23, 11.12)| |Z|2024|
N Investigate |QID|66556.1| |N|Investigate the cave in {Winterpelt Hollow} (66.23, 11.12)| |Z|2024|
N (npc:189391) |QID|66556.2| |N|Kill (npc:189391) in {Winterpelt Hollow} (66.12, 10.97)| |Z|2024| |NPC|189391|

R Theron's Watch |QID|66556| |N|Travel to {Theron's Watch} (65.39, 15.93)| |Z|2024|
T Ice Cave Ya Got There |QID|66556| |N|(npc:189401) in {Theron's Watch} (65.39, 15.93)| |Z|2024| |NPC|189401|

A Broken Traditions, Broken Bodies |QID|66141| |N|(npc:187301) in {Camp Nowhere} (63.23, 58.61)| |Z|2024| |NPC|187301|

C Broken Traditions, Broken Bodies |QID|66141| |N|Meet (npc:190873) on the way to {Rustpine Den} in {The Azure Span} (65.61, 54.86)| |Z|2024| |NPC|190873|

R Rustpine Den |QID|66141| |N|Travel to {Rustpine Den} (63.51, 52.99)| |Z|2024|
T Broken Traditions, Broken Bodies |QID|66141| |N|(npc:187308) in {Rustpine Den} (63.51, 52.99)| |Z|2024| |NPC|187308|
A Former Furbolg Family |QID|66148| |N|(npc:187308) in {Rustpine Den} (63.51, 52.99)| |Z|2024| |NPC|187308|
A Elemental Influence |QID|66149| |N|(npc:187308) in {Rustpine Den} (63.51, 52.99)| |Z|2024| |NPC|187308|
A Rescuing Radza |QID|66150| |N|(npc:187308) in {Rustpine Den} (63.51, 52.99)| |Z|2024| |NPC|187308|

C Elemental Influence |QID|66149| |N|Destroy 3 Primalist Earthbind Totems in {Rustpine Den} (62.04, 51.76)| |Z|2024|
N (npc:187501) |QID|66150.1| |N|Speak to (npc:187501) in {Rustpine Den} (60.97, 51.45)| |Z|2024| |NPC|187501|
C Rescuing Radza |QID|66150| |N|Rescue(npc:187501) in {Rustpine Den} (60.99, 51.46)| |Z|2024| |NPC|187501|
C Former Furbolg Family |QID|66148| |N|Kill Rustpine furbolg and elementals in {Rustpine Den} (62.40, 51.12)| |Z|2024| |NPC|188664, 188803, 187396, 187506|

T Elemental Influence |QID|66149| |N|(npc:187534) in {Rustpine Den} (60.94, 50.54)| |Z|2024| |NPC|187534|
T Rescuing Radza |QID|66150| |N|(npc:187616) in {Rustpine Den} (60.94, 50.54)| |Z|2024| |NPC|187616|
T Former Furbolg Family |QID|66148| |N|(npc:187534) in {Rustpine Den} (60.97, 50.54)| |Z|2024| |NPC|187534|
A His Stone Heart |QID|66151| |N|(npc:187616) in {Rustpine Den} (60.92, 50.51)| |Z|2024| |NPC|187616|

C His Stone Heart |QID|66151| |N|Kill (npc:187387) in {Lair of Stoneheart} (60.81, 49.94)| |Z|2024| |NPC|187387|

T His Stone Heart |QID|66151| |N|(npc:187616) in {Rustpine Den} (60.91, 50.48)| |Z|2024| |NPC|187616|

A A Far Furbolg Friend |QID|71014| |N|(npc:196812) in {Grimtusk's Hideaway} (58.82, 34.90)| |Z|2024| |NPC|196812| |O|

R Longclaw Island |QID|71014| |N|Travel to {Longclaw Island} (1.18, 39.22)| |Z|2024|
T A Far Furbolg Friend |QID|71014| |N|(npc:196806) in {Longclaw Island} (1.18, 39.22)| |Z|2024| |NPC|196806| |O|
A A Little Kelp for My Friends |QID|70996| |N|(npc:196806) in {Longclaw Island} (1.18, 39.22)| |Z|2024| |NPC|196806| |O|

C A Little Kelp for My Friends |QID|70996| |N|Defeat the (npc:196809) in {Longclaw Island} (0.50, 38.93)| |Z|2024| |NPC|196809| |O|

T A Little Kelp for My Friends |QID|70996| |N|(npc:196806) in {Longclaw Island} (1.19, 39.22)| |Z|2024| |NPC|196806| |O|

--Grinding Winterpelt Furbolg Reputation
N (item:204254) |QID|72546| |N|Open your mail by walking up to a Mail Box and loot (item:204254)<br/><b>If you don't get mail, use your Adventure Guide (shift + j > Suggested Content tab)<br/><b>You will need to use the Arrow > to sift through the content until you find Academic Assistance<br/><b>Click the Accept Quest button.| |PPOS| |L|204254| |OID|72588|

A Academic Assistance |QID|72546| |U|204254| |N|Auto Accept<br/><b>Use (item:204254) and accept quest if it doesn't automatically accept the quest.| |PPOS| |OID|72588|
T Academic Assistance |QID|72546| |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401| |OID|72588|
A Primalist Pillagers |QID|72588| |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401|
A Honor Their Sacrifice |QID|72589| |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401|

N 8 (item:202244) |QID|72588.1| |N|Slay (npc:199822), (npc:199278), (npc:199276), (npc:199282) and (npc:199284) and collect 8 (item:202244) in {Winterpelt Hollow} (68.28, 17.57)| |Z|2024| |NPC|199822, 199278, 199276, 199282, 199284| |L|202244 8|
N 6 (item:202246) |QID|72589.1| |N|Collect 6 (item:202246) from (npc:199303) in {Winterpelt Hollow} (68.28, 17.57)| |Z|2024| |NPC|199303| |L|202246 6|

T Primalist Pillagers |QID|72588| |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401|
T Honor Their Sacrifice |QID|72589| |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401|

A Academic Acquisitions |QID|72547| |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401|

N 5 (item:202017) |QID|72547.1| |N|Slay enemies around this area (68.26, 18.54)<br/><b>If you are resonably geared slay (npc:189851) and (npc:186787) for a much higher drop rate in {Vakthros Summit} (78.41,38.35,2024, "Vakthros Summit")<br/><b>(npc:186787) appears like orange swirls on the ground, if you approach by proxmity they will rise and attack you.| |Z|2024| |L|202017 5| |NPC|189851, 186787|

T Academic Acquisitions |QID|72547 |N|(npc:189401) in {Theron's Watch} (65.39, 15.95)| |Z|2024| |NPC|189401|

--Reach Level 25 / Friendly
N 125 (item:202017) |QID|73550| |N|Slay enemies in this area and collect 125 (item:202017) (68.26, 18.54)<br/><b>If you are resonably geared slay (npc:189851) and (npc:186787) for a much higher drop rate in {Vakthros Summit} (78.41,38.35,2024, "Vakthros Summit")<br/><b>(npc:186787) appears like orange swirls on the ground, if you approach by proxmity they will rise and attack you.| |Z|2024| |L|202017 125| |REP|2526, 4|

A Additional Acedemic Acquisitions |QID|72586| |D| |N|(npc:201065) in {Winterpelt Hollow} (66.94, 12.74)<br/><b>Choose (qid:72587) if you have enough (item:202018)<br/><b>Reach (spell:79738) Level 25<br/><br/><b>Tick this step| |Z|2024| |NPC|201065| |NPC|189851, 186787| |OID|73550| |REP|2526, 4|
A Honeyfreeze Mead |QID|73550| |N|(npc:189401) in {Winterpelt Hollow} (66.94, 12.74)| |Z|2024| |NPC|189401| |REP|2526, 4|
A Hive Maintenance |QID|73692| |N|(npc:189401) in {Winterpelt Hollow} (66.94, 12.74)| |Z|2024| |NPC|189401| |REP|2526, 4|

N Gain the (spell:399327) |QID|73692.1| |N|Run into Blooming Frostbell to get (spell:399327) (61.61, 18.03)<br/><b>The buff lasts 9 seconds| |Z|2024| |BUFF|133848| |REP|2526, 4|
N Deliver Pollen |QID|73692.1| |N|Deliver Pollen to 8 (npc:201023) (61.61, 18.03)| |Z|2024| |NPC|201023| |REP|2526, 4|
N 8 (item:202243) |QID|73550.1| |N|Collect 8 (item:202243) by clicking on Honeyfreeze Honeycomb (62.22, 19.04)| |Z|2024| |REP|2526, 4|

T Honeyfreeze Mead |QID|73550| |N|(npc:189401) in {Winterpelt Hollow} (66.94, 12.74)| |Z|2024| |NPC|189401| |REP|2526, 4|
T Hive Maintenance |QID|73692| |N|(npc:189401) in {Winterpelt Hollow} (66.94, 12.74)| |Z|2024| |NPC|189401| |REP|2526, 4|
A Local Flavors |QID|73704| |N|(npc:189401) in {Winterpelt Hollow} (66.94, 12.74)| |Z|2024| |NPC|189401| |REP|2526, 4|

N (item:203219) |QID|73704.1| |N|Speak to (npc:201105) scroll down and choose any of the three options in {Winterpelt Hollow} (65.81, 12.69)| |Z|2024| |NPC|201105| |REP|2526, 4|

T Local Flavors |QID|73704| |N|(npc:189401) in {Winterpelt Hollow} (66.94, 12.74)| |Z|2024| |NPC|189401| |REP|2526, 4|

--Reach Level 50 / Honored
N 125 (item:202017) |QID|72551| |N|Slay enemies in this area and collect 125 (item:202017) (68.26, 18.54)<br/><b>If you are resonably geared slay (npc:189851) and (npc:186787) for a much higher drop rate in {Vakthros Summit} (78.41,38.35,2024, "Vakthros Summit")<br/><b>(npc:186787) appears like orange swirls on the ground, if you approach by proxmity they will rise and attack you.| |Z|2024| |L|202017 125| |NPC|189851, 186787| |REP|2526, 5|

A Additional Acedemic Acquisitions |QID|72586| |D| |N|(npc:201065) in {Winterpelt Hollow} (66.94, 12.74)<br/><b>Choose (qid:72587) if you have enough (item:202018)<br/><b>Reach (spell:79738) Level 50<br/><br/><b>Tick this step| |Z|2024| |NPC|201065| |OID|72551| |REP|2526, 5|
A A Living History |QID|72551| |N|(npc:199266) in {Winterpelt Hollow} (66.87, 12.98)| |Z|2024| |NPC|199266| |REP|2526, 5|

N A Living History |QID|72551.1| |N|Find the first Route Marker (61.80, 18.33)| |Z|2024| |REP|2526, 5|
N A Living History |QID|72551.2| |N|Find the last Route Marker (57.34, 20.06)| |Z|2024| |REP|2526, 5|
N A Living History |QID|72551.3| |N|Find the Hidden Elders (57.21, 21.33) (57.25, 21.26)| |Z|2024| |REP|2526, 5|

T A Living History |QID|72551| |N|(npc:199271) in {Upper Frostlands} (57.39, 21.08)| |Z|2024| |NPC|199271| |REP|2526, 5|
A Gathering Together |QID|72552| |N|(npc:199271) in {Upper Frostlands} (57.39, 21.08)| |Z|2024| |NPC|199271| |REP|2526, 5|
A More Effort, More Reward |QID|72553| |N|(npc:199272) in {Upper Frostlands} (57.37, 20.88)| |Z|2024| |NPC|199272| |REP|2526, 5|

N 8 (item:202181) |QID|72552.1| |N|Click Best-root Bush and collect 8 (item:202181) in {Upper Frostlands} (58.33, 21.42) (58.88, 19.55) (60.98, 20.10) (59.92, 24.01) (60.14, 26.09)| |Z|2024| |REP|2526, 5|
N 12 (item:202185) |QID|72553.1| |N|Slay Chillwrought enemies along this path (59.27, 22.82) (60.76,23.27) (62.47,23.70) (62.58,22.50) (61.40,21.83) (60.17,21.42)| |Z|2024| |LOOP| |REP|2526, 5|

T Gathering Together |QID|72552| |N|(npc:199271) in {Upper Frostlands} (57.39, 21.08)| |Z|2024| |NPC|199271| |REP|2526, 5|
T More Effort, More Reward |QID|72553| |N|(npc:199272) in {Upper Frostlands} (57.37, 20.88)| |Z|2024| |NPC|199272| |REP|2526, 5|
A Break Him |QID|72554| |N|(npc:199272) in {Upper Frostlands} (57.37, 20.88)| |Z|2024| |NPC|199272| |REP|2526, 5|

N (spell:401271) |QID|72554| |BUFF|611424| |N|Click on Fresh Worm Stew and eat until you get the buff (57.27, 20.94)| |Z|2024| |REP|2526, 5|
N (npc:199279) |QID|72554.2| |N|Slay (npc:199279) and collect (item:203651) in {Upper Frostlands} (55.09, 19.72)| |Z|2024| |NPC|199279| |L|205651| |REP|2526, 5|

A Returning the Blade |QID|74433| |N|Auto Accept| |REP|2526, 5|

N (npc:200861) |QID|72554.1| |N|Find (npc:200861) in {Upper Frostlands} (54.92, 19.69)| |Z|2024| |NPC|200861| |REP|2526, 5|

T Break Him |QID|72554| |N|(npc:199272) in {Upper Frostlands} (57.37, 20.88)| |Z|2024| |NPC|199272| |REP|2526, 5|
T Returning the Blade |QID|74433| |N|(npc:200206) in {Winterpelt Hollow} (66.83, 13.01)| |Z|2024| |NPC|200206| |REP|2526, 5|

--Reach Level 75 / Revered
N 125 (item:202017) |QID|73035| |N|Slay enemies in this area and collect 125 (item:202017) (68.26, 18.54)<br/><b>If you are resonably geared slay (npc:189851) and (npc:186787) for a much higher drop rate in {Vakthros Summit} (78.41,38.35,2024, "Vakthros Summit")<br/><b>(npc:186787) appears like orange swirls on the ground, if you approach by proxmity they will rise and attack you.| |Z|2024| |L|202017 125| |NPC|189851, 186787| |REP|2526, 6|

A Additional Acedemic Acquisitions |QID|72586| |D| |N|(npc:201065) in {Winterpelt Hollow} (66.94, 12.74)<br/><b>Choose (qid:72587) if you have enough (item:202018)<br/><b>Reach (spell:79738) Level 75<br/><br/><b>Tick this step| |Z|2024| |NPC|201065| |OID|73035| |REP|2526, 6|
A Path of Trust |QID|73035| |N|(npc:199266) in {Winterpelt Hollow} (66.87, 12.98)| |Z|2024| |NPC|199266| |REP|2526, 6|
T Path of trust |QID|73035| |N|(npc:199267) in {Winterpelt Hollow} (65.99, 12.61)| |Z|2024| |NPC|199267| |REP|2526, 6|
A Our Honored Ancestors |QID|72558| |N|(npc:199267) in {Winterpelt Hollow} (65.99, 12.61)| |Z|2024| |NPC|199267| |REP|2526, 6|

N Use Radza's Incense |QID|72558.1| |N|Click on Radza's Spirit Incense in {Winterpelt Hollow} (65.94, 12.63)| |Z|2024| |NPC|199267| |REP|2526, 6|

T Our Honored Ancestors |QID|72558| |N|(npc:199267) in {Winterpelt Hollow} (65.99, 12.61)| |Z|2024| |NPC|199267| |REP|2526, 6|
A Ancestral Advice |QID|72941| |N|(npc:199996) in {Winterpelt Hollow} (65.97, 12.73)| |Z|2024| |NPC|199996| |REP|2526, 6|

N Listen to the Ancestor's Message |QID|72941.1| |N|Speak to (npc:199996) in {Winterpelt Hollow} (65.97, 12.73)| |Z|2024| |NPC|199996| |REP|2526, 6|

A Our Path Ahead |QID|72945| |N|(npc:199300) in {Winterpelt Hollow} (67.05, 13.12)| |Z|2024| |NPC|199300| |REP|2526, 6|

N Listen to the Ancestor's Message |QID|72945.1| |N|Speak to (npc:199300) in {Winterpelt Hollow} (67.05, 13.12)| |Z|2024| |NPC|199300| |REP|2526, 6|

A History Heist |QID|72559| |N|(npc:199299) in {Winterpelt Hollow} (66.98, 11.90)| |Z|2024| |NPC|199299| |REP|2526, 6|

N Give the Message to Little T'oz |QID|72941.2| |N|Speak to (npc:199315) inside cave (66.33, 11.51 ) (67.18, 12.06) and choose options<br/><b>"I have an important message from your ancestor."<br/><b>"Make sure to marry Bright Fur immediately."| |Z|2024| |NPC|199315| |REP|2526, 6|
N Give the Message to Kranac Sagesnow |QID|72945.2| |N|Speak to (npc:189394) inside the cave (65.92, 10.68) and choose options<br/><b>"I have an important message from your ancestor."<br/><b>"The Winterpelt must obtain allies."| |Z|2024| |NPC|189394| |REP|2526, 6|
N (item:198834) |QID|72559.1| |N|Click on Stolen Winterpelt Crate and collect (item:198834) (70.60, 31.72)| |Z|2024| |REP|2526, 6|

T History Heist |QID|72559| |N|(npc:199267) in {Winterpelt Hollow} (65.99, 12.61)| |Z|2024| |NPC|199267| |REP|2526, 6|
T Ancestral Advice |QID|72941| |N|(npc:199267) in {Winterpelt Hollow} (65.99, 12.61)| |Z|2024| |NPC|199267| |REP|2526, 6|
T Our Path Ahead |QID|72945| |N|(npc:199267) in {Winterpelt Hollow} (65.99, 12.61)| |Z|2024| |NPC|199267| |REP|2526, 6|

--Reach Level 100 / Exalted
N 125 (item:202017) |QID|72598| |N|Slay enemies in this area and collect 125 (item:202017) (68.26, 18.54)<br/><b>If you are resonably geared slay (npc:189851) and (npc:186787) for a much higher drop rate in {Vakthros Summit} (78.41,38.35,2024, "Vakthros Summit")<br/><b>(npc:186787) appears like orange swirls on the ground, if you approach by proxmity they will rise and attack you.| |Z|2024| |L|202017 125| |NPC|189851, 186787| |REP|2526, 7|

A Additional Acedemic Acquisitions |QID|72586| |D| |N|(npc:201065) in {Winterpawpelt Hollow} (66.94, 12.74)<br/><b>Choose (qid:72587) if you have enough (item:202018)<br/><b>Reach (spell:79738) Level 100<br/><br/><b>Tick this step| |Z|2024| |NPC|201065| |OID|72598| |REP|2526, 7|
A Words of the Winterpelt |QID|72598| |N|(npc:201065) in {Winterpelt Hollow} (66.92, 12.72)| |Z|2024| |NPC|201065| |REP|2526, 7|
T Words of the Winterpelt |QID|72598| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (66.33, 11.51) (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|
A Ursol's Wisdom |QID|72590| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|
A Ursoc's Strength |QID|72597| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|

N Ride the Winds of the Isles on a drake |QID|72590.1| |N|Make sure you are using your Dragonflight mount. (66.41, 11.85) (66.28, 13.18)<br/><b>Mount the Dragonriding mount then use updraft, this step should tick.| |Z|2024| |REP|2526, 7|
N 12 (item:202245) |QID|72590.2| |N|Collect 12 (item:202245) in the trees above the village (65.72, 10.94)| |Z|2024| |REP|2526, 7|
N Ursol Contacted |QID|72590.3| |N|Click on Rustpine Cone (69.91, 9.70)| |Z|2024| |REP|2526, 7|
N Contact Ursoc |QID|72597.1| |N|Click on Ursoc's Totem (72.88, 18.14)| |Z|2024| |REP|2526, 7|
N (npc:199308) |QID|72597.2| |N|Speak to (npc:199308) and then defeat (npc:199308) (72.84, 18.21)| |Z|2024| |REP|2526, 7|

T Ursol's Wisdom |QID|72590| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (66.33, 11.51) (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|
T Ursoc's Strength |QID|72597| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|
A Champion of the Winterpelt |QID|73031| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|

N Celebration Begun |QID|73031.1| |N|Speak to (npc:189394) inside the cave in {Winterpelt Hollow} (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|

T Champion of the Winterpelt |QID|73031| |N|(npc:189394) inside the cave in {Winterpelt Hollow} (65.92, 10.68)| |Z|2024| |NPC|189394| |REP|2526, 7|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end