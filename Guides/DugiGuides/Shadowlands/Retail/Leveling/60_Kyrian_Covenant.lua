local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_60_Kyrian_Covenant")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "Kyrian Covenant Campaign (60+)", nil, nil, nil, "L", nil, function()
return [[

N Level 60 Required |N|You need to be level 60 to continue with the guide| |PL|60|
T Choosing Your Purpose |QID|62000| |N|(npc:159478) (38.88,70.00)| |Z|1670| |O|

R Sinfall |QID|59644| |N|Travel to {Sinfall} (43.51, 54.96)| |Z|1699| |OID|62000, 57878|
A Blinded By The Light |QID|59644| |N|(npc:162688) in {Sinfall} (43.51, 54.96)| |Z|1699| |NPC|162688| |OID|62000, 57878|

C Blinded By The Light |QID|59644| |N|Use the mirrors atop Sinfall to seal the gates of Castle Nathria (27.32, 40.34) (29.79, 38.75) (31.92, 38.99) (31.84, 40.61) (31.82, 42.30) (31.55, 44.08) (28.38, 45.58)| |Z|1525| |OID|62000, 57878|
T Blinded By The Light |QID|59644| |N|(npc:172673) in {Sinfall} (32.10, 41.44)| |Z|1525| |NPC|172673| |OID|62000, 57878|
A The Master of Lies |QID|58086| |N|(npc:172673) in {Sinfall} (32.10, 41.44)| |Z|1525| |NPC|172673| |OID|62000, 57878|
N (npc:172673) |QID|58086.1| |N|Speak with the (npc:172673) in {Sinfall} (32.07, 41.50)| |Z|1525| |NPC|172673| |OID|62000, 57878|

C Rally to Prince Renathal |SID|48327|1| |N|Meet (npc:162688) in {Court of the Harvesters} (37.46, 41.47)| |Z|1688| |QID|58086| |NPC|162688| |OID|62000, 57878|
C Awaken Darkwing Stoneborn |SID|46664|2| |N|Awaken stoneborn who are loyal to Prince Renathal in {Castle Nathria} (43.02, 41.81)| |Z|1688| |QID|58086| |OID|62000, 57878|
C Rally at Dominance Gate |SID|0|3| |N|Meet Prince Renathal and your allies at Dominance Gate (42.02, 37.64)| |Z|1688| |QID|58086|  |OID|62000, 57878|
C Menagerie of the Master reached |SID|46668|4| |N|Reach the far side of {Dominance Gate} (44.76, 31.38)| |Z|1688| |QID|58086|  |OID|62000, 57878|
C Defeat General Kaal |SID|46671|5| |N|Defeat (npc:156984) in {Menagerie of the Master} (45.81, 31.47)| |Z|1688| |QID|58086| |NPC|156984| |OID|62000, 57878|
C The Curator empowered |SID|47768|6| |N|Empower The Curator {Menagerie of the Master} (47.39, 30.06)| |Z|1688| |QID|58086|  |OID|62000, 57878|
C The Accuser empowered |SID|47767|6| |N|Empower The Accuser in {Menagerie of the Master} (47.81, 33.04)| |Z|1688| |QID|58086|  |OID|62000, 57878|
C Renathal empowered |SID|46669|6| |N|Empower Renthal in {Menagerie of the Master} (49.29, 34.69)| |Z|1688| |QID|58086| |OID|62000, 57878|
C The Master of Lies |QID|58086| |N|Defeat (npc:159279) in {Menagerie of the Master} (50.37, 30.32)| |Z|1688| |NPC|159279| |OID|62000, 57878|
T The Master of Lies |QID|58086| |N|(npc:165557) in {Menagerie of the Master} (50.28, 28.29)| |Z|1525| |NPC|165557| |OID|62000, 57878|

A The End of the Beginning |QID|57876| |N|(npc:165557) in {Menagerie of the Master} (50.36, 28.29)| |Z|1525| |NPC|165557| |OID|62000, 57878|
N (npc:171589) |QID|57876.1| |N|Speak to Draven in {Menagerie of the Master} (50.29, 28.72)| |Z|1525| |NPC|171589| |OID|62000, 57878|
N (npc:171589) |QID|57876.2| |N|Fly with (npc:171589) to {Oribos} (50.29, 28.72)| |Z|1525| |V| |NPC|171589| |OID|62000, 57878|
T The End of the Beginning |QID|57876| |N|(npc:159478) in {The Enclave} (38.97, 69.91)| |Z|1670| |NPC|159478| |OID|62000, 57878|
A The Looming Dark |QID|57877| |N|(npc:159478) in {The Enclave} (38.97, 69.91)| |Z|1670| |NPC|159478| |OID|62000, 57878|
C The Looming Dark |QID|57877| |N|Speak to (npc:159478) to reveal the Jailer's plan. in {The Enclave} (38.97, 69.91)| |Z|1670| |NPC|159478| |OID|62000, 57878|
T The Looming Dark |QID|57877| |N|(npc:159478) in {The Enclave} (38.97, 69.91)| |Z|1670| |NPC|159478| |OID|62000, 57878|

A Choosing Your Purpose |QID|57878| |N|(npc:159478) in {The Enclave} (38.97, 69.91)| |Z|1670| |NPC|159478| |OID|62000, 57878|
N (npc:171821) |QID|57878.4| |N|Speak with (npc:171821) in {The Enclave} (42.92, 74.06)| |Z|1670| |NPC|171821| |OID|62000, 57878|
N (npc:171589) |QID|57878.2| |N|Speak with (npc:171589) in {The Enclave} (44.78, 69.06)| |Z|1670| |NPC|171589| |OID|62000, 57878|
N (npc:171795) |QID|57878.3| |N|Speak with (npc:171795) in {The Enclave} (39.76, 60.99)| |Z|1670| |NPC|171795| |OID|62000, 57878|
N (npc:171787) |QID|57878.1| |N|Speak with (npc:171787) in {The Enclave} (36.34, 64.07)| |Z|1670| |NPC|171787| |OID|62000, 57878|
C Choosing Your Purpose |QID|57878| |N|Click on map to Choose your Covenant in {The Enclave} (39.80, 68.57)| |Z|1670| |OID|62000, 57878|
T Choosing Your Purpose |QID|57878| |N|(npc:159478) in {The Enclave} (38.95, 69.93)| |Z|1670| |NPC|159478| |OID|62000, 57878|
A Report to Adrestes |QID|63211| |N|(npc:159478) in {The Enclave} (39.08, 69.74)| |Z|1670| |NPC|159478|
T Report to Adrestes |QID|63211| |N|(npc:171787) in {The Enclave} (36.32, 64.22)| |Z|1670| |NPC|171787|

R Hero's Rest |QID|60491.1| |N|Travel to {Hero's Rest} (51.48, 46.82)| |Z|1533|
C Among the Kyrian |QID|60491| |N|Meet (npc:168742) at the Seat of Eternal Hymns in Bastion (51.48, 46.82)| |Z|1533| |NPC|168742|
T Among the Kyrian |QID|60491| |N|(npc:168742) in {Seat of Eternal Hymns} (56.74, 31.47)| |Z|1533| |NPC|168742|
A A Proper Reception |QID|60492| |N|(npc:168742) in {Seat of Eternal Hymns} (56.75, 31.45)| |Z|1533| |NPC|168742|
N (npc:168906) |QID|60492.1| |N|Speak with (npc:168906) in {Seat of Eternal Hymns} (56.75, 31.45)| |Z|1533| |NPC|168906|
N (npc:168906) |QID|60492.2| |N|Follow (npc:168906) in {Seat of Eternal Hymns} (58.18, 29.19)| |Z|1533| |NPC|168906|
N (spell:328582) |QID|60492.3| |N|Use (spell:328582) to join the Kyrian Covenant in {Seat of Eternal Hymns} (58.21, 29.08)| |Z|1533|
T A Proper Reception |QID|60492| |N|(npc:168906) in {Seat of Eternal Hymns} (58.42, 28.94)| |Z|1533| |NPC|168906|
A Elysian Hold |QID|57895| |N|(npc:168906) in {Seat of Eternal Hymns} (58.42, 28.94)| |Z|1533| |NPC|168906|
C Elysian Hold |QID|57895| |N|Speak and travel with (npc:168906) to Elysian Hold in {Seat of Eternal Hymns} (58.42, 28.94)| |Z|1533| |V| |NPC|168906|

T Elysian Hold |QID|57895| |N|(npc:160037) in {Elysian Hold} (55.53, 42.15)| |Z|1707| |NPC|160037|
A Of Great Renown |QID|62789| |N|(npc:160037) in {Elysian Hold} (55.48, 42.13)| |Z|1707| |NPC|160037|
T Of Great Renown |QID|62789| |N|(npc:176100) in {Elysian Hold} (42.74, 70.08)| |Z|1707| |NPC|176100|
A The Path Provides |QID|62790| |N|(npc:176100) in {Elysian Hold} (42.74, 70.08)| |Z|1707| |NPC|176100|
C The Path Provides |QID|62790| |N|Examine your Renown with the Kyrian Covenant in {Elysian Hold} (42.74, 70.08)| |Z|1707|
T The Path Provides |QID|62790| |N|(npc:176100) in {Elysian Hold} (42.74, 70.08)| |Z|1707| |NPC|176100|
A A Call to Service |QID|62698| |N|(npc:176100) in {Elysian Hold} (42.74, 70.08)| |Z|1707| |NPC|176100|

R The Eternal Watch |QID|62692| |N|Travel to {The Eternal Watch} (41.04, 41.05)| |Z|1707|
T A Call to Service |QID|62698| |N|(npc:160387) in {The Eternal Watch} (41.04, 41.05)| |Z|1707| |NPC|160387|
A A Calling in Bastion |QID|62692| |N|(npc:160387) in {The Eternal Watch} (41.04, 41.05)| |Z|1707| |NPC|160387|
C A Calling in Bastion |QID|62692| |N|Complete 3 World Quests in Bastion<br/><b>Open the map and check for World Quests until you complete 3| |Z|1533|
T A Crisis of Memory |QID|61593| |N|in {Path of Wisdom} (41.19, 26.79)| |Z|1533|
T A Calling in Bastion |QID|62692| |N|(npc:160387) in {The Eternal Watch} (41.01, 41.10)| |Z|1707| |NPC|160387|
A Our Most Precious Resource |QID|62791| |N|(npc:160387) in {The Eternal Watch} (40.78, 41.13)| |Z|1707| |NPC|160387|
T Our Most Precious Resource |QID|62791| |N|(npc:167745) in {Elysian Hold} (42.68, 53.13)| |Z|1707| |NPC|167745|
A Into the Reservoir |QID|62792| |N|(npc:167745) in {Elysian Hold} (42.68, 53.13)| |Z|1707| |NPC|167745|
C Into the Reservoir |QID|62792| |N|Use (item:181372) to get 500 (cur:1813)<br/><b>You should have this from turning in the (qid:62692) quest<br/><b>If you don't have this, complete world quests that reward Anima items,<br/><b>Click the "Deposit" button to deposit the Anima to your covenant in {Ring of Fates} (48.37, 56.11)| |Z|1670| |NPC|172188|
T Into the Reservoir |QID|62792| |N|(npc:167745) in {Elysian Hold} (42.62, 53.30)| |Z|1707| |NPC|167745|
A A Unique Opportunity |QID|57905| |N|(npc:167745) in {Elysian Hold} (42.62, 53.30)| |Z|1707| |NPC|167745|

R Sanctum of Binding |QID|62832| |N|Travel to {Sanctum of Binding} (59.58, 34.28)| |Z|1708
T A Unique Opportunity |QID|57905| |N|(npc:160212) in {Sanctum of Binding} (59.58, 34.28)| |Z|1708| |NPC|160212|
A Friends in Dark Places |QID|62832| |N|in {Sanctum of Binding} (59.58, 34.28)| |Z|1708|

R Ve'nari's Refuge |QID|62882| |N|Travel to {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543|
T Friends in Dark Places |QID|62832| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A Setting the Ground Rules |QID|62882| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
C Setting the Ground Rules |QID|62882| |N|Set the ground rules about working together with (npc:162804) (46.88, 41.68)| |Z|1543| |NPC|162804|
T Setting the Ground Rules |QID|62882| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A Rule 1: Have an Escape Plan |QID|60287| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
N 60 (item:180852) |QID|60287.2| |N|Kill enemies around this area and rescue 5 (npc:174182) and collect 60 (item:180852)<br/><b>They look like white spirits that float out of the cages<br/><b>You can also click Caged Souls that come out of cages other players opened (37.75,39.18)| |Z|1543| |T| |NPC|174182|
B (item:180817) |QID|60287.4| |N|Speak to (npc:162804) and buy 1 (item:180817) (44.60,41.08)(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804| 
T Rule 1: Have an Escape Plan |QID|60287| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A Rule 2: Keep a Low Profile |QID|61355| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
C Rule 2: Keep a Low Profile |QID|61355| |N|Use (item:184314) to Reinforce the Soul Ward in each waypoint (47.19,43.16) (48.41,41.84) (48.19,40.20) (46.93,39.48)| |Z|1543| |U|184314| |POI|
T Rule 2: Keep a Low Profile |QID|61355| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A Rule 3: Trust is Earned |QID|60289| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
N Signaling Beacon |QID|60289.1| |N|click Signaling Beacon Place the Signaling Beacon (34.98,47.68)| |Z|1543|
N (item:184284) |QID|60289.2| |N|Click Baine's Mace to collect Collect (item:184284) (33.46,49.06)| |Z|1543|
K (npc:171626) |QID|60289.3| |N|Kill (npc:171626) (33.46,49.06)| |Z|1543| |NPC|171626|
N Return to Ve'nari |N|use (item:180817) to Return to Ve'nari (46.22,41.25)| |Z|1543| |U|180817| |QID|60289|
T Rule 3: Trust is Earned |QID|60289| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A Hopeful News |QID|62837| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|

R Ring of Fates |QID|62796| |N|Travel to {Ring of Fates} (39.94,68.61)| |Z|1670|
T Hopeful News |QID|62837| |N|(npc:164079) in {Ring of Fates} (39.94,68.61)| |Z|1670| |NPC|164079|
A Return to Adrestes |QID|62796| |N|(npc:164079) in {Ring of Fates} (39.94,68.61)| |Z|1670| |NPC|164079|

R Archon's Rise |QID|62793| |N|Travel to {Elysian Hold} (55.66,41.94)| |Z|1707| |REACH|
T Return to Adrestes |QID|62796| |N|(npc:160037) in {Elysian Hold} (55.66,41.94)| |Z|1707| |NPC|160037|
A It's All Coming Together |QID|62793| |N|(npc:160037) in {Elysian Hold} (55.66,41.94)| |Z|1707| |NPC|160037|
T It's All Coming Together |QID|62793| |N|(npc:167745) in {Elysian Hold} (42.61,53.10)| |Z|1707| |NPC|167745|
A Enhancing the Hold |QID|62794| |N|(npc:167745) in {Elysian Hold} (42.61,53.10)| |Z|1707| |NPC|167745|
C Enhancing the Hold |QID|62794.1| |N|Speak to (npc:167745) and Start a Sanctum Upgrade <br/><b>There are 4 upgrades to choose from<br/><b>Choose whichever one you like best and you will eventually unlock them all over time and click the "Activate" button. (42.61,53.10)| |Z|1707|
T Enhancing the Hold |QID|62794| |N|(npc:167745) in {Archon's Rise} (42.61,53.10)| |Z|1707| |NPC|167745|
A Dangerous to Go Alone |QID|57897| |N|(npc:167745) in {Archon's Rise} (42.61,53.10)| |Z|1707| |NPC|167745|
T Dangerous to Go Alone |QID|57897| |N|(npc:160212), downstairs inside the building (59.49,34.24)| |Z|1708| |NPC|160212|
A Soul Meets Body |QID|57898| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
N (npc:160595) |QID|57898.1| |N|Speak to (npc:160595) and watch the dialogue (60.02,36.32)| |Z|1708| |NPC|160595|
T Soul Meets Body |QID|57898| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
A Strengthen the Bond |QID|60504| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
C Strengthen the Bond|QID|60504| |N|Click Forge of Bonds, Follow the instructions then click the Activate button (59.84,34.66)| |Z|1708|
T Strengthen the Bond |QID|60504| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
A A Conduit for Good |QID|62795| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
N Forge of Bonds |QID|62795.1| |N|Use the conduits in your bags to add the Conduits to the Forge of Bonds (59.84,34.67)| |Z|1708|
N Pelagos |QID|62795.2| |N|Use the conduits in your bags to Apply the Conduit to Pelagos (59.84,34.67)| |Z|1708|
T A Conduit for Good |QID|62795| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
A Our Eternal Charge |QID|57904| |N|(npc:160212) in {Sanctum of Binding} (59.49,34.24)| |Z|1708| |NPC|160212|
T Our Eternal Charge |QID|57904| |N|(npc:160037) in {Elysian Hold} (55.53, 42.15)| |Z|1707| |NPC|160037|
A The Highlord Calls |QID|63029| |N|(npc:160037) in {Elysian Hold} (55.53, 42.15)| |Z|1707| |NPC|160037|
T The Highlord Calls |QID|63029| |N|(npc:164079) in {The Enclave} (40.08, 68.97)| |Z|1670| |NPC|164079|
A Into Torghast |QID|60136| |N|(npc:164079) in {The Enclave} (40.08, 68.97)| |Z|1670| |NPC|164079|
N (npc:162804) |QID|60136.1| |N|Speak to (npc:162804) about a Way into Torghast (46.88, 41.68)| |Z|1543| |NPC|162804|
T Into Torghast |QID|60136| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A The Search for Baine |QID|61099| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
N Use Ve'nari's Portal |QID|61099.1| |N|Use Ve'nari's Portal to Enter Torghast (48.20,39.38)| |Z|1543|
N Take the Attuned Shard |QID|61099.2| |N|Take the Attuned Shard to the Wayfinder and See Where it Leads<br/><b>Enter the instance with the popup that displays (37.96,47.08)| |Z|1911|
K (npc:175123) |QID|61099.3| |N|Fight your way to to the 6th floor and kill (npc:175123) (46.43,50.95)| |Z|1656| |NPC|175123|
A Prison of the Forgotten |QID|60267| |N|Auto quest after looting (npc:175123) (46.43,50.95)| |Z|1656| |NPC|175123|
N (npc:175294) |QID|61099.4| |N|Rescue (npc:175294) (34.79,56.25)| |Z|1656| |NPC|175294|

T The Search for Baine |QID|61099| |N|(npc:164079) in {The Enclave} (40.08, 68.97)| |Z|1670| |NPC|164079|
N (npc:162804) |QID|60267.1| |N|Speak to (npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
T Prison of the Forgotten |QID|60267| |N|Click Domination Lock (15.96,62.97)| |Z|1911|

A Deep Within |QID|60268| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
C Deep Within |QID|60268.1| |N|Speak to (npc:164937) to Learn More About the Prisoner (50.17,53.83)| |Z|1912| |NPC|164937|
T Deep Within |QID|60268| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
A Reawakening |QID|60269| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
K (npc:172207) |QID|60269.1| |N|Kill (npc:172207) and collect (item:178561) in {The Maw} (44.56,41.13) (38.63,28.84)| |Z|1543| |NPC|172207|
T Reawakening |QID|60269| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|
A A Damned Pact |QID|60270| |N|(npc:164937) in {The Runecarver's Oubliette} (50.17,53.83)| |Z|1912| |NPC|164937|

T A Damned Pact |QID|60270| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A A Grave Chance |QID|60271| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
C A Grave Chance |QID|60271.2| |N|Kill (npc:170208) or (npc:157824) around this area<br/><b>Enemies that are on fire will drop Molten Anima. (37.76,39.29)| |Z|1543| |NPC|157824|

N 50 (cur:1767) |QID|58787| |N|Collect 50 (cur:1767), it's a reward from world quests, daily quests, bonus objectives and rare spawns in The Maw| |CUR|1767 50|
B (item:181324) |QID|60271.1| |N|Speak to (npc:162804) and buy (item:181324) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |L|181324| |NPC|162804|
T A Grave Chance |QID|60271| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
A The Weak Link |QID|60272| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|

N (npc:164937) |QID|60272.1| |N|Speak to (npc:164937) to Break the Chain (50.17,53.83)| |Z|1912| |POI| |NPC|164937|
T The Weak Link |QID|60272| |N| (npc:164937) in {The Runecarver's Oubliette} (50.72,54.13)| |Z|1912|

N Reach Renown Level 5 |QID|58787| |N|Reach Renown Level 5 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|5|

R Elysian Hold |N|Travel to {Elysian Hold} (55.53, 42.15)| |Z|1707| 
A Trial of Ascension |QID|58787| |N|(npc:160037) in {Elysian Hold} (55.53, 42.15)| |Z|1707| |NPC|160037|

T Trial of Ascension |QID|58787| |N|(npc:162542) in {Bastion}(33.19,26.14)| |Z|1533| |NPC|162542|
A Censers of Guidance |QID|58788| |N|(npc:162542) in {Bastion}(33.19,26.14)| |Z|1533| |NPC|162542|
A Misguiding Mentors |QID|58789| |N|(npc:162544) in {Bastion} (33.25,26.15)| |Z|1533| |NPC|162542|
K (npc:162613) |QID|58789.1| |N|Kill (npc:162613) in {Bastion}<br/><b>She flies in the air around this area. (32.59,23.78)| |Z|1533| |NPC|162613|
K (npc:162614) |QID|58789.2| |N|Kill (npc:162614) in {Bastion} (33.94,21.66)| |Z|1533| |NPC|162614|
C Censers of Guidance |QID|58788.1| |N|Kill Forsworn forces around this area collect 10 (item:174821) (33.29,23.16)| |Z|1533| |NPC|162611, 162612, 163392|
T Misguiding Mentors |QID|58789| |N|(npc:162544) in {Bastion} (32.36,20.81) (32.11,21.04)| |Z|1533| |NPC|162542|
T Censers of Guidance |QID|58788| |N|(npc:162542) in {Bastion} (32.09,21.25)| |Z|1533| |NPC|162542|
A To Cross the Veil |QID|58790| |N|(npc:162542) in {Bastion} (32.09,21.25)| |Z|1533| |NPC|162542|
N (npc:162542) |QID|58790.1| |N|Speak to (npc:162542) (32.49,19.20)| |Z|1533| |NPC|162542|
N Light the Censer of Service |QID|58790.3| |N|Click Censer of Service (32.41,19.56)| |Z|1533| 
N Light the Censer of Spirit |QID|58790.4| |N|Click Censer of Spirit (32.01,19.16)| |Z|1533| 
N Light the Censer of Faith |QID|58790.5| |N|Click Censer of Faith (32.28,18.57)| |Z|1533| 
N Light the Censer of Discipline |QID|58790.2| |N|Click Censer of Discipline (32.68,18.96)| |Z|1533| 
N Complete the Ritual |QID|58790.6| |N|Watch the dialogue (32.48,19.20)| |Z|1533|
N (npc:162542) |QID|58790.7| |N|Speak to (npc:162542) (32.48,19.20)| |Z|1533| |NPC|162542|
N Take a Veil Gateway |QID|58790.8| |N|click Veil Gateway (32.89,18.11)| |Z|1533| 

R Lakeshire |QID|58790| |N|Travel to Lakeshire (32.63,39.89)| |Z|49| |REACH|
T To Cross the Veil |QID|58790| |N| (npc:162558) in {Lakeshire} (32.44,39.69)| |Z|49| |NPC|162558|
A A Day in the Life |QID|58791| |N| (npc:162558) in {Lakeshire} (32.44,39.69)| |Z|49| |NPC|162558|
N (npc:162591) |QID|58791.1| |N|Speak to (npc:162591) and Witness Ben Howell's Life (32.62,39.77)| |Z|49| |NPC|162591|
T A Day in the Life |QID|58791| |N|(npc:162953) in {Lakeshire} (21.91,42.23) (21.59,42.04)| |Z|49| |NPC|162953|
A Food on the Table |QID|58948| |N|(npc:162953) in {Lakeshire} (21.59,42.04)| |Z|49| |NPC|162953|
A Millie's Garden |QID|58949| |N|(npc:162953) in {Lakeshire} (21.59,42.04)| |Z|49| |NPC|162953|
C Millie's Garden |QID|58949| |N|Use the (spell:316712) ability on your action bar to Till the Untilled Soil (21.12,42.30) (20.81,42.55) (20.52,42.84)| |Z|49|
T Millie's Garden |QID|58949| |N|(npc:162962) in {Lakeshire} (20.95,42.85)| |Z|49| |NPC|162962|
K (npc:163096) |QID|58948.1| |N|Kill (npc:163096) collect 4 (item:174935) (19.37,44.07)| |Z|49| |NPC|163096|
T Food on the Table |QID|58948| |N|(npc:162953) in {Lakeshire} (21.91,42.23) (21.59,42.04)| |Z|49| |NPC|162953|
A Lumber for Lakeshire |QID|58950| |N|(npc:162953) in {Lakeshire} (21.59,42.04)| |Z|49| |NPC|162953|
T Lumber for Lakeshire |QID|58950| |N|(npc:163111) in {Lakeshire} (28.49,42.55) (28.91,41.11)| |Z|49| |NPC|163111|
A Lakeshire's Last Stand |QID|58951| |N|(npc:163111) in {Lakeshire} (28.91,41.11)| |Z|49| |NPC|163111|
N Board Up the Window |QID|58951.1| |N|click Boards outside the building (28.96,41.95) (27.65,41.96) (26.52,42.40)| |Z|49|
N Warn 5 Citizens |QID|58951.2| |N|Warn 5 Citizens<br/><b>They look like friendly NPC's with various names all around this area (27.43,43.65)| |Z|49|
N (npc:162953) |QID|58951.3| |N|Speak to (npc:162953) to warn your family (22.13,42.24)| |Z|49| |NPC|162953|
N Fight the Scourge |QID|58951.4| |N|Kill the enemies that attack, you will die (22.39,42.34)| |Z|49| 
T Lakeshire's Last Stand |QID|58951| |N|(npc:162962) in {Lakeshire} (32.51,39.93)| |Z|49| |NPC|162962|
A Where a Soul Belongs |QID|58792| |N|(npc:162558) in {Lakeshire} (32.44,39.69)| |Z|49| |NPC|162558|
N (item:175011) |QID|58792.1| |N|Use (item:175011) in {Lakeshire} (32.44,39.69)| |Z|49| |U|175011| |NPC|162558|
N Arrive in Oribos |QID|58792.2| |N|Watch the dialogue| |POI|

N (npc:162542) |QID|58792.3| |N|Speak to (npc:162542) (43.59,51.59) |Z|1671| |NPC|162542|
T Where a Soul Belongs |QID|58792| |N|(npc:162542) in {Oribos} (43.59,51.59)| |Z|1671| |NPC|162542|
A Faith Through the Darkness |QID|58793| |N|(npc:162542) in {Oribos} (43.59,51.59)| |Z|1671| |NPC|162542|

R Elysian Hold |QID|58795| |N|Travel to {Elysian Hold} (47.90,53.65)| |Z|1707| 
T Faith Through the Darkness |QID|58793| |N|(npc:160037) in {Elysian Hold} (47.90,53.65)| |Z|1707| |NPC|160037|
A Ascended |QID|58795| |N|(npc:160037) in {Elysian Hold} (47.90,53.65)| |Z|1707| |NPC|160037|
N (npc:167716) |QID|58795.1| |N|Speak to (npc:167716) to assist in the ceremony (45.53,55.22)| |Z|1707| |NPC|167716|
N (npc:162556) |QID|58795.2| |N|Speak to (npc:162556) to usher (45.70,57.63)| |Z|1707| |NPC|162556|
N Witness Clora's Ascension |QID|58795.3| |N|Watch the dialogue (45.70,57.63)| |Z|1707|
N (npc:162557) |QID|58795.4| |N|Speak to (npc:162557) to usher (46.04,58.33)| |Z|1707| |NPC|162557|
N Witness Sophone's Ascension |QID|58795.5| |N|Watch the dialogue (46.04,58.33)| |Z|1707|
N (npc:162542) |QID|58795.6| |N|Speak to (npc:162542) to usher (45.26,57.44)| |Z|1707| |NPC|162542|
N Witness Kleia's Ascension |QID|58795.7| |N|Watch the dialogue (45.26,57.44)| |Z|1707|
T Ascended |QID|58795| |N|(npc:163650) in {Elysian Hold} (51.57,47.71)| |Z|1707| |NPC|163650|
A The Forsworn Onslaught |QID|58796| |N|(npc:163650) in {Elysian Hold} (51.57,47.71)| |Z|1707| |NPC|163650|
N Check the Wards |QID|58796.3| |N|Watch the dialogue and kill the enemies next to the Gilded Spiritmender upstairs (59.97,87.40)| |Z|1707|
N Summon the Ascended |QID|58796.2| |N|Click Bell of Recall (21.63,29.81)| |Z|1707|
C Repel the Forsworn Invasion |QID|58796.1| |N|Speak to (npc:163655) and Repel the Forsworn Invasion (47.30,54.42)| |Z|1707| |NPC|163655|
K (npc:163670) |QID|58796.4| |N|Defeat (npc:163670), he will eventually escape when he gets to about 50% health. (64.08,29.30)| |Z|1707|
T The Forsworn Onslaught |QID|58796| |N|(npc:163650) in {Elysian Hold} (51.55,47.71)| |Z|1707| |NPC|163650|
A Forged by Trial |QID|58797| |N|(npc:163650) in {Elysian Hold} (51.55,47.71)| |Z|1707| |NPC|163650|
N (npc:163650) |QID|58797| |N|Speak to (npc:163650) to soulbind (59.91,36.28)| |Z|1708| |NPC|163650|
T Forged by Trial |QID|58797| |N|(npc:163650) in {Elysian Hold} (59.91,36.28)| |Z|1708| |NPC|163650|
A The Spires of Ascension |QID|58798| |N|(npc:163650) in {Elysian Hold} (59.91,36.28)| |Z|1708| |NPC|163650|
K (npc:162061) |QID|58798.1| |N|Kill (npc:162061) in {Spires of Ascension} dungeon, use the dungeon finder to complete it <br/><b>She is the final boss in the dungeon (58.54,28.58)| |Z|1533| |NPC|162061|
T The Spires of Ascension |QID|58798| |N|(npc:160037) in {Elysian Hold} (55.66,41.96)| |Z|1707| |NPC|160037|

N Reach Renown Level 8 |QID|58175| |N|Reach Renown Level 8 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|8|

A The Eternal Forge |QID|58175| |N|(npc:160037) in {Elysian Hold} (55.66,41.96)| |Z|1707| |NPC|160037|

T The Eternal Forge |QID|58175| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
A Refining Ego |QID|58177| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
A Instruments of Perfection |QID|58179| |N|(npc:160648) in {Bastion} (50.11,20.60)| |Z|1533| |NPC|160648|
A Stewards of a Feather |QID|58176| |N|(npc:160648) in {Bastion} (50.11,20.60)| |Z|1533| |NPC|160648|
N (item:173910) |QID|58179.3| |N|Click Gracepetal Incense Burner to collect (item:173910) (49.87,17.26)| |Z|1533|
N (item:173882) |QID|58179.1| |N|Click Soulsteel Clamps to collect (item:173882) (51.15,18.34)| |Z|1533|
N (item:173909) |QID|58179.2| |N|Click Sparkling Driftglobe Core to collect (item:173909) (53.07,18.16)| |Z|1533|
N (npc:160360) |QID|58176.1| |N|Rescue 5 (npc:160360)<br/><b>They look like small white owl creatures on the ground around this area <br/><b>Kill the enemies holding their chains (51.60,17.95)| |Z|1533| |NPC|160360|
N (item:173879) |QID|58177| |N|Kill enemies around this area and collect 8 (item:173879) (51.60,17.95)| |Z|1533|
N (item:173880) |QID|58177.1| |N|Use (item:173879) to create 8 (item:173880) (51.60,17.95)| |Z|1533| |U|173879|
T Stewards of a Feather |QID|58176| |N|(npc:160648) in {Bastion} (50.11,20.60)| |Z|1533| |NPC|160648|
T Refining Ego |QID|58177| |N| (npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
T Instruments of Perfection |QID|58179| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
A Phaestus, Genesis of Aeons |QID|58180| |N|(npc:160280) in {Bastion} (50.15,20.46)| |Z|1533| |NPC|160280|
K (npc:160409) |QID|58180.1| |N|Kill (npc:160409) collect (item:174061) (50.16,19.32) (49.00,15.54)| |Z|1533| |NPC|160409|
T Phaestus, Genesis of Aeons |QID|58180| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
A A Partner for Eternity |QID|58178| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
N (npc:160280) |QID|58178.1| |N|Speak to (npc:160280) (50.15,20.47)| |Z|1533| |NPC|160280|
N Apply the Reinforced Armor |QID|58178.2| |N|Click on the Reinforced armor on the ground (49.94,20.58) (49.88,20.41) (50.03,20.26) (50.07,20.30)| |Z|1533| 
N (npc:160280) |QID|58178.3| |N|Speak to (npc:160280) (50.15,20.47)| |Z|1533| |NPC|160280|
T A Partner for Eternity |QID|58178| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
A Dismantling the Opposition |QID|58182| |N|(npc:160280) in {Bastion} (50.15,20.47)| |Z|1533| |NPC|160280|
N (npc:164402) |QID|58182.1| |N|Mount (npc:164402) (50.01,20.45)| |Z|1533| |V| |NPC|164402|
K (npc:160408) |QID|58182.3| |N|Kill (npc:160408), Use the (spell313757) ability (53.10,16.68) (51.03,15.44)| |Z|1533| |NPC|160408|
C Dismantling the Opposition |QID|58182| |N|Kill 30 Forsworn Forces around this area (51.71,17.59)| |Z|1533|
T Dismantling the Opposition |QID|58182| |N|(npc:160280) in {Bastion} (50.15,20.46)| |Z|1533| |NPC|160280|
A Friend to the Forgelite |QID|58183| |N|(npc:160280) in {Bastion} (50.15,20.46)| |Z|1533| |NPC|160280|

R Elysian Hold |QID|58181| |N|Travel to {Elysian Hold} (46.00,56.51)| |Z|1707| 
T Friend to the Forgelite |QID|58183| |N|(npc:160037) in {Elysian Hold} (46.00,56.51)| |Z|1707| |NPC|160037|
A Building the Base |QID|58181| |N|(npc:160280) in {Elysian Hold} (45.28,56.63)| |Z|1707| |NPC|160280|
N (npc:160280) |QID|58181.1| |N|Speak to (npc:160280) (45.28,56.63)| |Z|1707| |NPC|160280|
C Building the Base |QID|58181.2| |N|Click Crest of Ascension to Complete the Crest of Ascension Base (44.41,58.72)| |Z|1707|
T Building the Base |QID|58181| |N|(npc:160280) in {Elysian Hold} (45.28,56.63)| |Z|1707| |NPC|160280|

N Reach Renown Level 11 |QID|61785| |N|Reach Renown Level 11 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|11|

A An Expected Visitor |QID|61785| |N|(npc:160037) in {Elysian Hold} (45.95,56.55)| |Z|1707| |NPC|160037|
T An Expected Visitor |QID|61785| |N|(npc:154627) in {Elysian Hold} (62.21,37.77)| |Z|1707| |NPC|154627|
A A Perilous Journey |QID|61767| |N|(npc:154627) in {Elysian Hold} (62.21,37.77)| |Z|1707| |NPC|154627|

R Maldraxxus |QID|61768| |N|Travel to {Maldraxxus} (37.79,29.45)| |Z|1536| |
T A Perilous Journey |QID|61767| |N|(npc:173222) in {Maldraxxus} (37.79,29.45)| |Z|1536| |NPC|173222|
A Stronger Together |QID|61768| |N|(npc:173222) in {Maldraxxus} (37.79,29.45)| |Z|1536| |NPC|173222|
N (npc:173222) |QID|61768.1| |N|Speak to (npc:173222) in {Maldraxxus} (37.79,29.45)| |Z|1536| |V| |NPC|173222|
T Stronger Together |QID|61768| |N|(npc:171483) in {Maldraxxus} (36.32,36.63)| |Z|1536| |NPC|171483|
A Fight and Flight |QID|61769| |N|(npc:171483) in {Maldraxxus} (36.32,36.63)| |Z|1536| |NPC|171483|
N (npc:171551) |QID|61769.1| |N|Speak to (npc:171551) and fly with Xandria (35.61,26.49)| |Z|1536| |V| |NPC|171551|
T Fight and Flight |QID|61769| |N|(npc:166333) in {Maldraxxus} (npc:166333) in {Maldraxxus} (35.62,26.50)| |Z|1536| |NPC|166333|
A Justice from Above |QID|61771| |N|(npc:166333) in {Maldraxxus} (npc:166333) in {Maldraxxus} (35.62,26.50)| |Z|1536| |NPC|166333|
A The Butchers of Bastion |QID|61770| |N|(npc:168743) in {Maldraxxus} (35.32,25.95)| |Z|1536| |NPC|168743|

N As you go... |AYG|61772| |N|Destroy 5 Maldracite Cores| |QID|61771| 
A Dark Developments |QID|61772| |N|Click Tattered Scroll (34.04,25.82) (33.68,25.89) (34.58,23.75) (33.49,24.12)| |Z|1536|
C Justice from Above |QID|61771| |N|Destroy 5 Maldracite Cores (32.79,24.04) (32.18,23.93)| |Z|1536|
C The Butchers of Bastion|QID|61770| |N|Kill 10 House of Constructs Forces around this area (33.24,24.51)| |Z|1536|
T The Butchers of Bastion |QID|61770| |N|(npc:168743) in {Maldraxxus} (35.32,25.95)| |Z|1536| |NPC|168743|
T Justice from Above |QID|61771| |N|(npc:166333) in {Maldraxxus} (35.62,26.50)| |Z|1536| |NPC|166333|
T Dark Developments |QID|61772| |N|(npc:168744) in {Maldraxxus} (35.16,26.90)| |Z|1536| |NPC|168744|
A Burn Before Reading |QID|61774| |N|(npc:168744) in {Maldraxxus} (35.16,26.90)| |Z|1536| |NPC|168744|
A Descended |QID|61773| |N|(npc:166333) in {Maldraxxus} (35.62,26.50)| |Z|1536| |NPC|166333|
A An Early End |QID|61775| |N|(npc:168743) in {Maldraxxus} (35.33,25.95)| |Z|1536| |NPC|168743|
C An Early End |QID|61775.1| |N|Destroy 6 (npc:173261) (35.89,28.59) (34.69,29.32) (34.63,30.53) (33.95,30.16) (35.73,31.89) | |Z|1536| |NPC|173261|
K (npc:168697) |QID|61773.1| |N|Kill (npc:168697), use the (spell:334962) ability as you fight (33.61,31.19)| |Z|1536| |NPC|168697|
C Burn Before Reading |QID|61774.1| |N|Kill enemies around this area and collect 6 (item:180845) (34.87,29.63)| |Z|1536| |NPC|172210, 172217, 172221|
T Burn Before Reading |QID|61774| |N|(npc:168744) in {Maldraxxus} (35.16,26.90)| |Z|1536| |NPC|168744|
T Descended |QID|61773| |N|(npc:166333) in {Maldraxxus} (35.62,26.50)| |Z|1536| |NPC|166333|
T An Early End |QID|61775| |N|(npc:168743) in {Maldraxxus} (35.33,25.95)| |Z|1536| |NPC|168743|
A Trouble on the Western Front |QID|61776| |N|(npc:168860) in {Maldraxxus} (35.45,26.50)| |Z|1536| |NPC|168743|
N (npc:168860) |QID|61776| |N|Speak to (npc:168860) to fly (35.45,26.50)| |Z|1536| |NPC|168860|
T Trouble on the Western Front |QID|61776| |N|(npc:166211) in {Maldraxxus} (28.81,38.21)| |Z|1536| |NPC|166211|
A Charging The Blade |QID|61777| |N|(npc:166211) in {Maldraxxus} (28.81,38.21)| |Z|1536| |NPC|166211|
A Grave Intent |QID|61779| |N|(npc:167173) in {Maldraxxus} (28.69,37.61)| |Z|1536| |NPC|167173|
A Aerial Advantage |QID|61778| |N| (npc:167810) in {Maldraxxus} (28.08,37.51)| |Z|1536| |NPC|167810|
C Aerial Advantage |QID|61778| |N|Use (item:180899) on (npc:171782) and kill 6 of them<br/><b>They will appear on your minimap as yellow dots<br/><b>Jump to another one quickly when you see a message on your screen that they are panicking<br/><b>You don't need to target them to jump to them (28.07,37.37)| |Z|1536| |NPC|171782|
T Aerial Advantage |QID|61778| |N|(npc:167810) in {Maldraxxus} (28.08,37.51)| |Z|1536| |NPC|167810|
N Southwestern Projector |QID|61779.1| |N|Click Astral Projector Destroy the Southwestern Projector (24.84,37.62)| |Z|1536|
N Northwestern Projector |QID|61779.2| |N|Click Astral Projector Destroy the Northwestern Projector (25.43,33.09)| |Z|1536|
N Northeastern Projector |QID|61779.3| |N|Click Astral Projector Destroy the Northeastern Projector (27.90,32.91)| |Z|1536|
C Grave Intent |QID|61777| |N|Kill enemies around this area to Charge the Runeblade (26.95,35.42)| |Z|1536|
T Grave Intent |QID|61779| |N|(npc:167173) in {Maldraxxus} (28.69,37.61)| |Z|1536| |NPC|167173|
T Charging The Blade |QID|61777| |N|(npc:166211) in {Maldraxxus} (28.81,38.21)| |Z|1536| |NPC|166211|
A Power of the Chosen |QID|61780| |N|(npc:166211) in {Maldraxxus} (28.81,38.21)| |Z|1536| |NPC|166211|
N (npc:166211) |QID|61780.1| |N|Speak to (npc:166211) (28.81,38.21)| |Z|1536| |NPC|166211|
K (npc:173091) |QID|61780.2| |N|Destroy 4 (npc:173091)<br/><b>Use the ability on your action bar. (27.77,37.42)| |Z|1536| |NPC|173091|
T Power of the Chosen |QID|61780| |N|(npc:166211) in {Maldraxxus} (28.81,38.21)| |Z|1536| |NPC|166211|
A The End is Now |QID|61781| |N|(npc:166211) in {Maldraxxus} (28.81,38.21)| |Z|1536| |NPC|166211|
T The End is Now |QID|61781| |N|(npc:172002) in {Maldraxxus} (31.78,30.32)| |Z|1536| |NPC|172002|
A Pursuit of Justice |QID|61782| |N|(npc:172002) in {Maldraxxus} (31.78,30.32)| |Z|1536| |NPC|172002|
N (npc:172002) |QID|61782.1| |N|Speak to (npc:172002) (31.78,30.32)| |Z|1536| |NPC|172002|
K (npc:167437) |QID|61782.2| |N|Kill (npc:167437), fight the smaller enemies while Xandria kills Margrave Gharmal (31.04,29.17)| |Z|1536| |NPC|167437|
T Pursuit of Justice |QID|61782| |N|(npc:173193) in {Maldraxxus} (31.04,29.17)| |Z|1536| |NPC|173193|
A Take Heart |QID|61876| |N|(npc:173193) in {Maldraxxus} (31.04,29.17)| |Z|1536| |NPC|173193|
N (item:182334) |QID|61876.1| |N|click Fleshshaper's Heart and collect (item:182334) (30.96,29.05)| |Z|1536| 
T Take Heart |QID|61876| |N|(npc:173193) in {Maldraxxus} (31.04,29.17)| |Z|1536| |NPC|173193|
A Return to the Hold |QID|61877| |N|(npc:173193) in {Maldraxxus} (31.04,29.17)| |Z|1536| |NPC|173193|
T Return to the Hold |QID|61877| |N|(npc:173313) in {Elysian Hold} (38.92,59.77)| |Z|1707| |NPC|173313|
A Crest of Greatness |QID|61878| |N|(npc:173313) in {Elysian Hold} (38.92,59.77)| |Z|1707| |NPC|173313|
T Crest of Greatness |QID|61878| |N|click Fleshshaper's Heart (40.52,60.48)| |Z|1707|

N Reach Renown Level 13 |QID|58557| |N|Reach Renown Level 13 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|13|

A Assistance from Sinfall |QID|58557| |N|(npc:160037) in {Maldraxxus} (45.06,56.87)| |Z|1707| |NPC|160037|

R Revendreth |QID|58557| |N|Travel to {Revendreth} (60.35,60.89)| |Z|1525| 
N (npc:161544) |QID|58557.1| |N|Speak to (npc:161544) in {Revendreth} (60.35,60.89)| |Z|1525| |NPC|161544|
T Assistance from Sinfall |QID|58557| |N|(npc:161544) in {Revendreth} (60.35,60.89)| |Z|1525| |NPC|161544|
A Overhead Intelligence |QID|58558| |N|(npc:161544) in {Revendreth} (60.35,60.89)| |Z|1525| |NPC|161544|
A Eyes of the Master |QID|58559| |N|(npc:161540) in {Revendreth} (60.26,60.84)| |Z|1525| |NPC|161540|
A Gothic Fashion |QID|58560| |N|(npc:165011) in {Revendreth} (60.64,62.40) (55.20,63.14) (50.13,52.50)| |Z|1525| |NPC|165011|
K (npc:165056) |QID|58559.3| |N|Kill (npc:165056) in {Revendreth} (48.16,54.35)| |Z|1525| |NPC|165056|
K (npc:165039) |QID|58559.1| |N|Kill (npc:165039) in {Revendreth} (50.92,51.63)| |Z|1525| |NPC|165039|
K (npc:165041) |QID|58559.2| |N|Kill (npc:165041) inside the building (53.28,45.12) (52.87,44.83)| |Z|1525| |NPC|165041|
K (npc:161621) |QID|58558.1| |N|Kill (npc:161621) and collect the Rumors of Favor<br/><b>They will drop other quest items that start a dialogue before dropping the quest item you need (51.98,49.11)| |Z|1525| |NPC|161621|
C Gothic Fashion |QID|58560.1| |N|Collect 5 articles of venthyr clothing from (npc:161195) and Garment Trunks in the Chalice District (51.98,49.11)| |Z|1525| |NPC|161195|
T Gothic Fashion |QID|58560| |N|(npc:161543) in {Revendreth} (54.81,45.69) (56.14,41.42) (56.36,41.40)| |Z|1525| |NPC|161543|
T Eyes of the Master |QID|58559| |N|(npc:161540) in {Revendreth} (56.41,41.47)| |Z|1525| |NPC|161540|
T Overhead Intelligence |QID|58558| |N|(npc:161544) in {Revendreth} (56.42,41.38)| |Z|1525| |NPC|161544|
A Collecting Dust |QID|58562| |N|(npc:161544) in {Revendreth} (56.42,41.38)| |Z|1525| |NPC|161544|
A Shards of the Countess |QID|58561| |N|(npc:161540) in {Revendreth} (56.41,41.47)| |Z|1525| |NPC|161540|
N Bell of Transport |QID|58561.1| |N|Click Bell of Transport and Watch the dialogue (55.39,41.16)| |Z|1525|
N 3 (item:174375) |QID|58561.2| |N||Click Shard of the Countess and kill (npc:161624) to collect 3 (item:174375) inside the building (52.81,37.87) (54.78,37.11) (56.39,39.90)| |Z|1525| |POI| |NPC|161624|
N 30 (item:174357) |QID|58562.2| |N|Click Death Lotus and collect 30 (item:174357)<br/><b>They look like large plants with purple flowers on them on the ground (55.25,36.57)| |Z|1525| 
T Collecting Dust |QID|58562| |N|(npc:161544) in {Revendreth} (55.23,34.78)| |Z|1525| |NPC|161544|
T Shards of the Countess |QID|58561| |N|(npc:161544) in {Revendreth} (55.23,34.78)| |Z|1525| |NPC|161544|
A Through Glass |QID|58563| |N|(npc:161544) in {Revendreth} (55.23,34.78)| |Z|1525| |NPC|161544|
N (npc:161544)|QID|58563.1| |N|Speak to (npc:161544), downstairs inside the building (55.47,34.44) (55.23,35.66)| |Z|1525| |NPC|161544|
N Wait for the Curator |QID|58563.2| |N|Watch the dialogue (55.23,35.66)| |Z|1525|
N Apply the Death Lotus Powder |QID|58563.3| |N|Use (item:174382) to apply (55.23,35.66)| |Z|1525|
N Enter the Mirror |QID|58563.4| |N|Enter the Mirror (55.29,35.80)| |Z|1525|
K (npc:161947) |QID|58563.5| |N|Kill (npc:161947), downstairs inside the building. (78.38,39.00)| |Z|1525| |NPC|161947|
N (item:174454) |QID|58563.6| |N|click The Countess's Sinstone to Collect (item:174454) (78.49,39.11)| |Z|1525|
T Through Glass |QID|58563| |N|(npc:161540) in {Revendreth} (77.90,39.64)| |Z|1525| |NPC|161540|
A Sins of the Past |QID|58564| |N|(npc:161544) in {Revendreth} (77.96,39.63)| |Z|1525| |NPC|161544|
N Enter the Mirror |QID|58564.1| |N|Enter the Mirror (77.92,39.72)| |Z|1525|
N Meet The Countess |QID|58564.2| |N|Watch the dialogue (57.52,28.45)| |Z|1525|
N Sit in the Ornate Chair |QID|58564.3| |N|click Ornate Chair (58.13,27.65)| |Z|1525|
N Listen to The Countess |QID|58564.4| |N|Watch the dialogue (58.13,27.65)| |Z|1525|
N Eat the Grand Feast |QID|58564.5| |N|Click Grand Feast On the table next to you. (58.13,27.65)| |Z|1525|
N Listen to the Countess |QID|58564.6| |N|Watch the dialogue (58.13,27.65)| |Z|1525|
T Sins of the Past |QID|58564| |N|(npc:161996) in {Revendreth} (58.05,27.53)| |Z|1525| |NPC|161996|
A Land of Light |QID|58565| |N|(npc:161544) in {Revendreth} (58.17,27.60)| |Z|1525| |NPC|161544|
N (npc:165355) |QID|58565.1| |N|Ride the (npc:165355) (56.99,27.10)| |Z|1525| |V| |NPC|165355|

R Sanctuary of the Mad |N|Fly to the {Sanctuary of the Mad} (31.43,49.97)| |Z|1525| |REACH|
T Land of Light |QID|58565| |N|(npc:161515) in {Sanctuary of the Mad} (31.97,47.55)| |Z|1525| |NPC|161515|
A Skulking in the Darkness |QID|58567| |N|(npc:161540) in {Sanctuary of the Mad} (31.96,47.71)| |Z|1525| |NPC|161540|
A Light Respite |QID|58568| |N|(npc:161540) in {Sanctuary of the Mad} (31.96,47.71)| |Z|1525| |NPC|161540|
A Actions Speak Louder than Words |QID|58566| |N|(npc:161553) in {Sanctuary of the Mad} (31.92,47.57)| |Z|1525| |NPC|161553|
N (npc:161553) |QID|58566.1| |N|(npc:161553) in {Sanctuary of the Mad} (31.92,47.57)| |Z|1525| |NPC|161553|
N (npc:161553) |QID|58566.2| |N|Follow Mindscorched Alwin through the {Ashen Traverse} (39.99,59.05)| |Z|1525|
T Actions Speak Louder than Words |QID|58566| |N|(npc:161553) in {Ashen Traverse} (39.99,59.05)| |Z|1525|
N 25 (item:174497) |QID|58568.1| |N|Click Duskbrush bushes and collect 25 (item:174497) (38.33,55.63)| |Z|1525|
C Skulking in the Darkness |QID|58567.1| |N|Kill 8 Outcast Venthyr in {Ashen Traverse} (38.72,54.23)| |Z|1525| |NPC|162035, 162044|

R Sanctuary of the Mad |TID|58567| |N|Travel to {Sanctuary of the Mad} (39.94,59.04)| |Z|1525| |REACH|
T Skulking in the Darkness |QID|58567| |N|(npc:161540) in {Sanctuary of the Mad} (39.94,59.04)| |Z|1525| |NPC|161540|
T Light Respite |QID|58568| |N|(npc:161540) in {Sanctuary of the Mad} (39.94,59.04)| |Z|1525| |NPC|161540|
A The Folly of Envy |QID|58569| |N|(npc:161553) in {Sanctuary of the Mad} (39.99,59.06)| |Z|1525| |NPC|161553|
C The Folly of Envy |QID|58569.1| |N|Kill (npc:162109) and collect (item:174498) (39.84,59.98)| |Z|1525| |NPC|162109|
T The Folly of Envy |QID|58569| |N|(npc:161540) in {Sanctuary of the Mad} (39.94,59.04)| |Z|1525| |NPC|161540|
A Parting Words |QID|58570| |N|(npc:161540) in {Sanctuary of the Mad} (39.94,59.04)| |Z|1525| |NPC|161540|
N (npc:161544) |QID|58570.1| |N|Speak to (npc:161544) in {Sanctuary of the Mad} (32.04,47.64)| |Z|1525| |NPC|161544|

R Elysian Hold |QID|58570| |N|Travel to {Elysian Hold} (44.51,56.85)| |Z|1707|
N (npc:173860) |QID|58570.2| |N|Speak to (npc:173860) in {Elysian Hold} (44.51,56.85)| |Z|1707| |NPC|173860|
T Parting Words |QID|58570| |N|(npc:162149) in {Elysian Hold} (45.63,57.13)| |Z|1707| |NPC|162149|
A The Seal of Contrition |QID|58571| |N|(npc:162149) in {Elysian Hold} (45.63,57.13)| |Z|1707| |NPC|162149|
T The Seal of Contrition |QID|58571| |N|Click Seal of Contrition (44.29,58.98)| |Z|1707|

N Reach Renown Level 17 |N|Reach Renown Level 17 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|17|

A Meet the Queen |QID|58775| |N|(npc:160037) in {Elysian Hold} (45.06,56.88)| |Z|1707| |NPC|160037|

R Heart of the Forest |QID|58775| |N|Travel to {Heart of the Forest} (44.35,51.99)| |Z|1565|
N (npc:158544) |QID|58775.1| |N|Speak to (npc:158544) to fly up in {Heart of the Forest} (44.35,51.99)| |Z|1565| |NPC|158544|
N (npc:165671) |QID|58775.2| |N|Speak to (npc:165671) in {Heart of the Forest} (47.42,57.98)| |Z|1703| |NPC|165671|
N (npc:165671) |QID|58775.3| |N|Watch the dialogue and listen to the Winter Queen's Reply (47.42,57.98)| |Z|1703| 
N (npc:165550) |QID|58775| |N|Speak to (npc:165550) to exit (36.15,63.61)| |Z|1703| |REACH|25.02,24.32,1701|

T Meet the Queen |QID|58775| |N|(npc:162392) in {Ardenweald} (44.04,51.79)| |Z|1565| |NPC|162392|
A Who Are You Fooling? |QID|58856| |N|(npc:162392) in {Ardenweald} (44.04,51.79)| |Z|1565| |NPC|162392|
A Trinkle Trinkle Little Twerp |QID|58832| |N|Kill enemies around this area (39.57,55.93)<br/><b>You will eventually automatically accept this quest after looting| |Z|1565|

K (npc:162657) |QID|58832.1| |N|Kill (npc:162657) in {Ardenweald} (38.82,59.23)| |Z|1565| |NPC|162657|
T Trinkle Trinkle Little Twerp |QID|58832| |N|(npc:162679), next to you| |PPOS| |NPC|162679|

N (npc:162662) |QID|58856.1| |N|Kill (npc:163363) around this area and use (item:174843) (39.57,55.93)| |Z|1565| |U|174843| |NPC|162662, 163363|
T Who Are You Fooling? |QID|58856| |N|(npc:162679), next to you| |PPOS| |NPC|162679|
A Getting Backstage |QID|58816| |N|(npc:162679), next to you| |PPOS| |NPC|162679|

N Get Backstage |QID|58816.1| |N|Get Backstage at Star Lake Amphitheater (41.23,44.98)| |Z|1565|
N (spell:323723) |N|Use (spell:323723) to gain the buff (41.27,45.28)| |Z|1565| |QID|58816| |BUFF|463877|
N Stand on the First Mark |QID|58816.2| |N|Stand on the First Mark<br/><b>Avoid the circles beneath the NPCs (41.42,43.93)| |Z|1565|
N Stand on the Second Mark |QID|58816.3| |N|Stand on the Second Mark<br/><b>Avoid the circles beneath the NPCs (40.95,44.43)| |Z|1565|
N (item:174845) |QID|58816.4| |N|click Wreath of Night's Veil Flowers and collect (item:174845) (40.85,43.31) (40.27,43.47)| |Z|1565|
N "Enrich" Lady Moonberry's Soap |QID|58816.5| |N|click Lady Moonberry's Soap (41.25,42.71)| |Z|1565|
T Getting Backstage |QID|58816| |N|(npc:162679), next to you| |PPOS| |NPC|162679|
A Picking Up Pelagos |QID|58905| |N|(npc:162679), next to you| |PPOS| |NPC|162679|
T Picking Up Pelagos |QID|58905| |N|(npc:163328) in {Ardenweald} (50.56,68.96)| |Z|1565| |NPC|163328|
A Gorm Ruin Everything |QID|58938| |N|(npc:162392) in {Ardenweald} (50.53,68.92)| |Z|1565| |NPC|162392|
A Evil Grubbies |QID|58937| |N|(npc:162392) in {Ardenweald} (50.53,68.92)| |Z|1565| |NPC|162392|

C Evil Grubbies |QID|58937.1| |N|Use (spell:322202) and use it to burn 20 Evolving Mites in {Ardenweald} (51.40,75.43)| |Z|1565|
C Gorm Ruin Everything |QID|58938.1| |N|Slay 10 Mature Gorm in {Ardenweald} (51.40,75.43)| |Z|1565| |NPC|163186, 163316|

T Gorm Ruin Everything |QID|58938| |N|(npc:163060), next to you| |PPOS| |NPC|163060|
T Evil Grubbies |QID|58937| |N|(npc:163060), next to you| |PPOS| |NPC|163060|

A The Blue Seed |QID|58939| |N|(npc:165110), next to you| |PPOS| |NPC|165110|
N Locate the Cave Entrance |QID|58939.1| |N|Locate the Cave Entrance in {Ardenweald} (51.25,77.35)| |Z|1565|
N Destroy the Bramble Blockage |QID|58939.2| |N|Use (spell:322202) and Destroy the Bramble Blockage in {Ardenweald}<br/><b>Use it on the bunch of branches blocking the cave entrance (51.25,77.35)| |Z|1565|
N (item:176446) |QID|58939.3| |N|click Ripened Anima Seed and collect (item:176446) in {Ardenweald} (50.78,77.40)| |Z|1565|

T The Blue Seed |QID|58939| |N|(npc:162392) in {Ardenweald} (50.85,77.43)| |Z|1565| |NPC|162392| 
A Seeds Away! |QID|58857| |N|(npc:162392) in {Ardenweald} (50.85,77.43)| |Z|1565| |NPC|162392|
N (npc:162392) |QID|58857.1| |N|Speak to (npc:162392) in {Ardenweald} (50.85,77.43)| |Z|1565| |NPC|162392|
C Vanquish the Gorm Swarm |QID|58857.2| |N|Kill enemies around this area in {Ardenweald}<br/><b>Use the abilities on your action bar<br/><b>They are on the ground as you fly (51.54,77.35)| |Z|1565|

T Seeds Away! |QID|58857| |N|(npc:163328) in {Ardenweald} (45.23,65.35)| |Z|1565| |NPC|163328|
A I Dreamed A Dream |QID|58995| |N|(npc:163328) in {Ardenweald} (45.23,65.35)| |Z|1565| |NPC|163328|
N (npc:163328) |QID|58995.1| |N|Speak to (npc:163328) to witness the Ceremony in {Ardenweald} (45.23,65.35)| |Z|1565| |NPC|163328|
N (item:175153) |QID|58995.2| |N|click Vessel of Ardenweald and collect (item:175153) in {Ardenweald} (45.27,65.67)| |Z|1565|
T I Dreamed A Dream |QID|58995| |N|(npc:163328) in {Ardenweald} (45.23,65.35)| |Z|1565| |NPC|163328|
A A Bittersweet Prize |QID|58997| |N|(npc:163328) in {Ardenweald} (45.23,65.35)| |Z|1565| |NPC|163328|

R Elysian Hold |QID|61135| |N|Travel to {Elysian Hold} (55.66,41.96)| |Z|1707|
T A Bittersweet Prize |QID|58997| |N|(npc:160037) in {Elysian Hold} (55.66,41.96)| |Z|1707| |NPC|160037|
A Heart of the Crest |QID|61135| |N|(npc:160037) in {Elysian Hold} (55.66,41.96)| |Z|1707| |NPC|160037|
T Heart of the Crest |QID|61135| |N|click Vessel of Ardenweald in {Elysian Hold} (43.30,64.61)| |Z|1707|
A A New Age |QID|61697| |N|(npc:174177) in {Elysian Hold} (43.68,66.58)| |Z|1707| |NPC|174177|
N (spell:341837) |QID|61697.1| |N|Use (spell:341837) to activate the Crest of Ascension in {Elysian Hold} (42.70,61.38)| |Z|1707|
T A New Age |QID|61697| |N|(npc:174177) in {Elysian Hold} (43.66,66.60)| |Z|1707| |NPC|174177|

N Reach Renown Level 20 |N|Reach Renown Level 20 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|20|

A On Lysonia's Trail |QID|57113| |N|(npc:160037) in {Elysian Hold} (55.67,41.94)| |Z|1707| |NPC|160037|
T On Lysonia's Trail |QID|57113| |N|(npc:156361) in {Bastion} (61.85,43.61)| |Z|1533| |NPC|156361|
A Aerial Reconnaissance |QID|57114| |N|(npc:156361) in {Bastion} (61.85,43.61)| |Z|1533| |NPC|156361|
N (npc:156361) |QID|57114.1| |N|Speak to (npc:156361) in {Bastion} (61.85,43.61)| |Z|1533| |NPC|156361|
N Survey the Temple of Humility |QID|57114.2| |N|Watch the dialogue, you will fly automatically (66.10,46.66)| |Z|1533|
T Aerial Reconnaissance |QID|57114| |N|(npc:156327) in {Bastion} (66.05,47.10)| |Z|1533| |NPC|156327|
A Sacred Scrolls of Humility |QID|57115| |N|(npc:156327) in {Bastion} (66.05,47.10)| |Z|1533| |NPC|156327|
A Succumbing to Pride |QID|57116| |N|(npc:156361) in {Bastion} (65.88,46.91)| |Z|1533| |NPC|156361|
A Compassion, Blade of Humility |QID|57120| |N|click Radiant Sword in {Bastion} (64.74,45.69)| |Z|1533|
N 5 (item:170550) |QID|57115.1| |N|Click Sacred Scroll and collect 5 (item:170550) in {Bastion}<br/><b>They look like rolled up pieces of paper on the ground around this area (64.44,44.14)| |Z|1533|
C Succumbing to Pride |QID|57116.1| |N|Stop #5# Rituals in {Bastion}<br/><b>Kill the enemies next to Burdened Aspirants (64.44,44.14)| |Z|1533|
C Compassion, Blade of Humility|QID|57120.1| |N|Charge Compassion, Blade of Humility by killing manifestations in {Bastion} (64.44,44.14)| |Z|1533|
T Succumbing to Pride |QID|57116| |N|(npc:156361) in {Bastion} (65.88,46.91)| |Z|1533| |NPC|156361|
T Sacred Scrolls of Humility |QID|57115| |N|(npc:156327) in {Bastion} (66.04,47.09)| |Z|1533| |NPC|156327|
T Compassion, Blade of Humility |QID|57120| |N|(npc:156327) in {Bastion} (66.04,47.09)| |Z|1533| |NPC|156327|
A Distorted by the Maw |QID|57118| |N|(npc:156327) in {Bastion} (66.04,47.09)| |Z|1533| |NPC|156327|
A Fallen to Their Vices |QID|57117| |N|(npc:156327) in {Bastion} (66.04,47.09)| |Z|1533| |NPC|156327|
N Break the Anima Collector |QID|57118.1| |N|click Anima Collector in each waypoint (65.15,43.68) (68.98,44.53) (67.75,40.24)| |Z|1533|
C Fallen to Their Vices |QID|57117.1| |N|Slay #15# Forsworn Forces in {Bastion} (65.15,43.68) (68.98,44.53) (67.75,40.24) (66.88,43.93)| |Z|1533| |NPC|169955, 169966, 169980|
T Distorted by the Maw |QID|57118| |N|(npc:156361) in {Bastion}(68.38,41.64)| |Z|1533| |NPC|156361|
T Fallen to Their Vices |QID|57117| |N|(npc:156361) in {Bastion} (68.38,41.64)| |Z|1533| |NPC|156361|
A Lysonia's Plan |QID|57207| |N|(npc:156361) in {Bastion} (68.38,41.64)| |Z|1533| |NPC|156361|
C Lysonia's Plan |QID|57207.1| |N|Confront Lysonia (69.09,40.72)| |Z|1533|
T Lysonia's Plan |QID|57207| |N|(npc:156474) in {Bastion} (69.09,40.72)| |Z|1533| |NPC|156474|
A The Power of the Maw |QID|57121| |N|(npc:156474) in {Bastion} (69.09,40.72)| |Z|1533| |NPC|156474|
N (npc:156361) |QID|57121.1| |N|Speak to (npc:156361) in {Oribos} (45.43,51.60)| |Z|1671| |NPC|156361|

R The Maw |TID|57121| |N|Travel to {The Maw} (33.79,55.75)| |Z|1543| 
T The Power of the Maw |QID|57121| |N|(npc:156361) in {The Maw} (33.79,55.75)| |Z|1543| |NPC|156361|
A A Step Too Far |QID|57122| |N|(npc:170375), next to you| |PPOS| |NPC|170375|
A Kyrian No More |QID|57123| |N|(npc:170375), next to you| |PPOS| |NPC|170375|
C A Step Too Far | |QID|57122.1| |N|click (npc:170575) in {The Maw} (32.13,61.02)| |Z|1543| |NPC|170575|
C Kyrian No More |QID|57123.1| |N|Slay 10 Mawsworn Forces in {The Maw} (32.13,61.02)| |Z|1543| |NPC|170628, 170740, 175700, 175701|
T A Step Too Far |QID|57122| |N|(npc:170375), next to you| |PPOS| |NPC|170375|
T Kyrian No More |QID|57123| |N|(npc:170375), next to you| |PPOS| |NPC|170375|
A Her Will, Inflicted |QID|57124| |N|(npc:170375), next to you| |PPOS| |NPC|170375|
N (npc:169410) |QID|57124.1| |N|Kill (npc:169410) in {The Maw} (28.96,62.52) (25.28,67.14)| |Z|1543| |NPC|169410|
K (npc:169410) |QID|57124.2| |N|Kill (npc:169410) in {The Maw} (25.28,67.14)| |Z|1543| |NPC|169410|
T Her Will, Inflicted |QID|57124| |N|(npc:169850) in {The Maw} (25.65,65.17)| |Z|1543| |NPC|169850|
A Time to Reflect |QID|57125| |N|(npc:169850) in {The Maw} (25.65,65.17)| |Z|1543| |NPC|169850|
N (npc:156361) |QID|57125.1| |N|Speak to (npc:156361) in {The Maw} (25.64,65.30)| |Z|1543| |NPC|156361|
C Time to Reflect |QID|57125.2| |N|click Waystone to Oribos in {The Maw} (42.38,42.16)| |Z|1543|

T Time to Reflect |QID|57125| |N|(npc:160037) in {Elysian Hold} (55.65,41.96)| |Z|1707| |NPC|160037|
A A Touch of Humility |QID|62555| |N|(npc:160037) in {Elysian Hold}| (55.65,41.96)| |Z|1707| |NPC|160037|
N (npc:174497) |QID|62555.1| |N|Speak to (npc:174497) in {Elysian Hold} (45.38,57.36)| |Z|1707| |NPC|174497|
T A Touch of Humility |QID|62555| |N|(npc:160037) in {Elysian Hold} (55.66,41.95)| |Z|1707| |NPC|160037|

N Reach Renown Level 22 |N|Reach Renown Level 22 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|22|

A Convene the Paragons |QID|58854| |N|(npc:160037) in {Elysian Hold} (55.66,41.95)| |Z|1707| |NPC|160037|
N Summon the Paragons |QID|58854.1| |N|click Echo of Aeons in {Elysian Hold} (56.25,41.04)| |Z|1707|
N Enter Archon's Rise |QID|58854.2| |N|Enter Archon's Rise in {Elysian Hold} (58.95,40.66)| |Z|1707|
N Plan the Assault |QID|58854.3| |N|Watch the dialogue in {Elysian Hold} (62.80,28.78)| |Z|1707|
T Convene the Paragons |QID|58854| |N|(npc:160037) in {Elysian Hold} (55.65,41.95)| |Z|1707| |NPC|160037|
A Before the Dawn |QID|58844| |N|(npc:160037) in {Elysian Hold} (55.65,41.95)| |Z|1707| |NPC|160037|
N (npc:162889) |QID|58844.1| |N|click Vesper of Harmony then speak to (npc:162889) to gather the Watchers in {Bastion} (60.01,73.45)| |Z|1533| |POI| |NPC|162889|
N (npc:162904) |QID|58844.2| |N|Speak to (npc:162904) to gather the Bearers in {Bastion} (41.22,56.32)| |Z|1533| |NPC|162904|
N (npc:162888) |QID|58844.3| |N|Speak to (npc:162888) to Gather the Centurions in {Bastion} (47.62,26.41) (51.28,19.07)| |Z|1533| |NPC|162888|
C Before the Dawn |QID|58844| |N|Speak to (npc:170061) and kill (npc:170064), tick this step (40.48,20.40)| |Z|1533| |NPC|170061, 170064|
N (npc:162907) |QID|58844.4| |N|Speak to (npc:162907) and Gather the Collectors in {Bastion} (40.28,20.50)| |Z|1533| |NPC|162907|
T Before the Dawn |QID|58844| |N|(npc:164473) in {Bastion} (36.78,22.15) (31.39,23.41)| |Z|1533| |NPC|164473|
A The Greater Good |QID|58846| |N|(npc:164473) in {Bastion} (31.39,23.41)| |Z|1533| |NPC|164473|
N (npc:164473) |QID|58846.1| |N|(npc:164473) in {Bastion} (31.39,23.41)| |Z|1533| |NPC|164473|
N Enter the Citadel of Loyalty |SID|1| |N|Begin the Scenario and Enter the Citadel of Loyalt in {Bastion} (30.57,23.35)| |Z|1533| |QID|58846|
N Clear the Courtyard |SID|2| |N|Kill enemies around this area in {Bastion}<br/><b>Use the abilities that appear as buttons on the screen (28.78,22.91) | |Z|1533| |QID|58846|
N Defeat Adonias and Phaedra |SID|3| |N|Kill (npc:166169) and (npc:166170) in {Bastion} (28.50,22.86)| |Z|1533| |QID|58846| |NPC|166169, 166170|
N Push Forward |SID|4| |N|Push Forward to the Truthbringer in {Bastion} (27.97,24.41) (27.02,24.91)| |Z|1533| |QID|58846|
K (npc:166012) |SID|5| |N|Kill enemies around this area until (npc:166012) appear in {Bastion} (27.13,22.85)| |Z|1533| |QID|58846| |NPC|166012|
N Take the Gateway to the Temple |SID|6| |N|click Anima Gateway in {Bastion} (25.02,25.08)(24.49,22.78)| |Z|1533| |QID|58846|
K (npc:166046) |SID|7| |N|Kill (npc:166046) and Confront Lysonia in {Bastion} (20.65,22.88)| |Z|1533| |QID|58846| |NPC|166046|
N (npc:166609) |N|Speak to (npc:166609) and begin Flying with Chyrus (21.30,23.04)| |Z|1533| |QID|58846| |NPC|166609|
N Rally to Elysian Hold |SID|8| |N|Rally to Elysian Hold in {Bastion} (66.00,17.28)| |Z|1533| |QID|58846|
K (npc:166052) |N|Kill (npc:166052) in {Bastion} (67.28,15.36)| |Z|1533| |QID|58846| |NPC|166052|
T The Greater Good |QID|58846| |N|(npc:166693) in {Bastion} (67.43,15.24)| |Z|1533| |NPC|166693|
A Kyrestia's Grace |QID|58847| |N|(npc:166693) in {Bastion} (67.43,15.24)| |Z|1533| |NPC|166693|
N Escort Uther |QID|58847.1| |N|Escort Uther in {Bastion} (64.00,19.09)| |Z|1533| 
T Kyrestia's Grace |QID|58847| |N|(npc:160037) in {Bastion} (66.50,16.51)| |Z|1533| |NPC|160037|
A An Earned Bond |QID|59919| |N|(npc:160037) in {Bastion} (66.50,16.51)| |Z|1533| |NPC|160037|
N (npc:166740) |QID|59919.1| |N|Speak to (npc:166740) in {Bastion} (67.09,15.74)| |Z|1533| |NPC|166740|
T An Earned Bond |QID|59919| |N|(npc:160037) in {Bastion} (66.51,16.51)| |Z|1533| |NPC|160037|
A Our Realm Reclaimed |QID|62557| |N|(npc:160037) in {Bastion} (66.51,16.51)| |Z|1533| |NPC|160037|
N (npc:174503) |QID|62557.1| |N|Speak to (npc:174503) and Empower the Crest of Ascension in {Bastion} (65.12,18.60)| |Z|1533| 
T Our Realm Reclaimed |QID|62557| |N|(npc:160037) in {Bastion} (66.51,16.51)| |Z|1533| |POI| |NPC|160037|

N Reach Renown Level 40 |N|Reach Renown Level 40 <br/><b>Increase your Renown level by using (guide:"Kyrian Daily Quests (60+)") guide| |N|RENOWN|40|

N Guide Complete

]]
end, {image = "bastion.tga", description = [[]]})	end

	function Guide:Unload()
	end
end
