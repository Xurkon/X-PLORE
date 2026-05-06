local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_Deaths_Rising_Daily")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "Death's Rising (Daily 50+)", nil, nil, nil, "D", nil, function()
return [[

N Switch Guide |QID|60827| |N|Switch to (guide:"Death's Rising Pre-Quest") guide and complete it first|
N Level 48 Required |N|You need to be level 48 to continue| |PL|48|
N Accept Daily Quest |N|Accept daily quest<br/><br/>Tick this step (71.04, 21.65)| |Z|118| |MD| |W| |E| |OID|62401, 62262, 62553, 59878|
A Strange Scourgestones |QID|62401| |N|Speak to (npc:169718) (71.04, 21.65)| |O| |D| |Z|118| |NPC|169718|
A Fungal Feeding |QID|62262| |N|Speak to (npc:167572) (71.63, 21.06)| |O| |D| |Z|118| |NPC|167572|
A Delaying Their Efforts |QID|62553| |N|Speak to (npc:167045) (71.06, 21.99)| |O| |D| |Z|118| |NPC|167045|
A Too Many Whelps |QID|59878| |N|Speak to (npc:167045) (71.06, 21.99)| |O| |D| |Z|118| |NPC|167045|
A Evacuation Effort |QID|60841| |N|Speak to (npc:167045) (71.05, 21.99)| |O| |D| |Z|118| |NPC|167045|
A Combat Nullifier 07-X |QID|59863| |N|Speak to (npc:173124) (73.16, 35.64)| |O| |D| |Z|118| |NPC|173124|

N (spell:338630) |QID|59863| |N|Use (spell:338630) to charge it| |BUFF|2735166| |O| |D| |Z|118|
C Combat Nullifier 07-X |QID|59863| |N|Kill enemies around this area<br/><b>Target an enemy and use the special action button that appears on-screen (72.67, 37.94)| |O| |D| |Z|118| |NPC|173124|
T Combat Nullifier 07-X |QID|59863| |N|Speak to (npc:173124) (73.16, 35.64)| |O| |D| |Z|118| |NPC|173124|

K (npc:168024) |QID|59878.2| |N|Kill 2 (npc:168024) (71.50, 38.15)| |O| |D| |Z|118| |NPC|168024|
K (npc:168026) |QID|59878.1| |N|Kill 6 (npc:168026)  (72.04, 43.45)| |O| |D| |Z|118| |NPC|168026|
C Evacuation Effort |QID|60841| |N|Rescue 6 (npc:172863) and kill 6 Scourge Attackers <br/><b>They look like wounded Argent humans on the ground around this area. (65.01, 43.98)| |O| |D| |Z|118| |NPC|172863, 172868, 172878, 172881|

N Plant the Northern Bomb |QID|62553.1| |N|Click Preventative Measure to plant the Northern Bomb (58.04, 39.02)| |O| |D| |Z|118|
N Plant the Western Bomb |QID|62553.3| |N|Click Preventative Measure to Plant the Western Bomb (57.44, 41.51)| |O| |D| |Z|118|
N Plant the Eastern Bomb |QID|62553.2| |N|Click Preventative Measure to Plant the Eastern Bomb (59.29, 42.72)| |O| |D| |Z|118|
K (npc:168227) |QID|62553| |N|Kill 12 (npc:168227) from the area (58.21, 40.08)| |O| |D| |Z|118| |NPC|168227|
N (item:183139) |QID|62262.1| |N|Collect 20 (item:183139)<br/><b>Lure nearby undead creatures to Gloomshrooms and kill them next to it<br/><b>The Gloomshroom will grow bigger, dropping a Mature Spore Sample for each undead killed next to it. (78.46, 66.46)| |O| |D| |Z|118| |NPC|173888|
T Fungal Feeding |QID|62262| |N|Speak to (npc:167572) (71.63, 21.06)| |O| |D| |Z|118| |NPC|167572|

T Delaying Their Efforts |QID|62553| |N|Speak to (npc:167045) (71.06, 21.99)| |O| |D| |Z|118| |NPC|167045|
T Too Many Whelps |QID|59878| |N|Speak to (npc:167045) (71.06, 21.99)| |O| |D| |Z|118| |NPC|167045|
T Evacuation Effort |QID|60841| |N|Speak to (npc:167045) (71.05, 21.99)| |O| |D| |Z|118| |NPC|167045|

N Accept Daily Quest |N|Accept the random daily quest from (npc:172905)<br/><br/>Tick this step (66.10, 22.50)| |Z|118| |MD| |E| |OID|59839, 59783, 59782|
A WARNING: This is Only a Test! |QID|59839| |N|Speak to (npc:172905) (66.10, 22.50)| |O| |D| |Z|118| |NPC|172905|
A Cultist Captors |QID|59783| |N|Speak to (npc:168880) (66.08, 21.97)| |O| |D| |Z|118| |NPC|168880|
A The Deathspeaker's Devout |QID|59782| |N|Speak to (npc:168880) (66.08, 21.97)| |O| |D| |Z|118| |NPC|168880|

N (spell:337882) |QID|59839| |N|Safely Apply the "Secret Weapon" use (spell:337882)| |BUFF|644269| |O| |D| |Z|118|
N (spell:337912) |QID|59839| |N|Use (spell:337912) to control the Secret Weapon| |BUFF|1531513| |O| |D| |Z|118|
C Thoroughly Test the "Secret Weapon" |QID|59839| |N|Kill enemies around this area<br/><b>Use the abilities on your action bar<br/><b>The "Devour Flesh" ability will heal you but has a 30 second cooldown.(64.46, 21.57)| |O| |D| |Z|118| |NPC|172906|
K (npc:172490) |QID|59783.1| |N|Kill (npc:172490) and collect (item:181497)<br/><b>He walks around this area. (61.94, 20.64)| |O| |D| |Z|118| |NPC|172490|

C Cultist Captors |QID|59783.2| |N|Click Interrogator's Cell and Rescue 8 (npc:168077)<br/><b>Only the ones with NPCs inside will count for the quest. (61.94, 20.64)| |O| |D| |Z|118| |NPC|168077|
C The Deathspeaker's Devout |QID|59782.1| |N|Kill 6 (npc:168079) and 6 (npc:168078) (62.16, 20.68)| |O| |D| |Z|118| |NPC|168079, 168078|
T WARNING: This is Only a Test! |QID|59839| |N|Speak to (npc:172905) (66.10, 22.50)| |O| |D| |Z|118| |NPC|172905|
T Cultist Captors |QID|59783| |N|Speak to (npc:168880) (66.08, 21.97)| |O| |D| |Z|118| |NPC|168880|
T The Deathspeaker's Devout |QID|59782| |N|Speak to (npc:168880) (66.08, 21.97)| |O| |D| |Z|118| |NPC|168880|
A Cleaning Out the Vault |QID|62295| |N|Speak to (npc:173869) (42.86, 29.94)| |O| |D| |Z|118| |NPC|173869|
C Cleaning Out the Vault |QID|62295| |N|Kill enemies around this area and click Scourge Banner<br/><b>They look like banners with spiked poles and hanging skulls on the ground around this area. (43.36, 24.55)| |O| |D| |Z|118|
T Cleaning Out the Vault |QID|62295| |N|Speak to (npc:173869) (42.86, 29.94)| |O| |D| |Z|118| |NPC|173869|

N Accept Daily Quest |N|Accept the random daily quest from (npc:172905)<br/><br/>Tick this step (66.10, 22.50)| |Z|118| |MD| |E| |OID|59838, 59851, 59847, 59772|
A Scourge War Machines |QID|59838| |N|Speak to (npc:170467) (44.95, 44.78) | |O| |D| |Z|118| |NPC|170467|
A Frozen Solid |QID|59851| |N|Speak to (npc:170467) (44.95, 44.78) | |O| |D| |Z|118| |NPC|170467|
A Defending the Rampart |QID|59847| |N|Speak to (npc:170467) (44.95, 44.78) | |O| |D| |Z|118| |NPC|170467|
A Research Ruination |QID|59772| |N|Speak to (npc:170467) (44.95, 44.78)| |O| |D| |Z|118| |NPC|170467|

C Defend the Rampart |QID|59847| |N|Kill enemies around this area and click (npc:173285)<br/><b>They look like wounded Argent Soldiers lying on the ground around this area.<br/><br/>Click Summoning Portal<br/><b>They look like large blue portals on the ground around this area. (44.02, 39.26)| |O| |D| |Z|118| |NPC|173285|
C Research Ruination |QID|59772| |N|Click Archival Parchment to destroy 5 Research Notes <br/><b>They look like small scrolls on tables inside the building around this area. (51.91, 32.78) (51.93, 30.36)| |O| |D| |Z|118|
C Scourge War Machines |QID|59838| |N|Click (npc:169221) to destroy 5 Scourge War Machines<br/><b>They look like large vehicles with smoking green cauldrons on them around this area. (45.36, 62.53)| |O| |D| |Z|118| |NPC|169221|

A Careful Creations |QID|62365| |N|Speak to (npc:173997) (35.39, 66.32)| |O| |D| |Z|118| |NPC|173997|
N Experimental Blightspreader |QID|62365.1| |N|Click Experimental Blightspreader (33.69, 69.52)| |O| |D| |Z|118|
N (item:183442) |QID|62365.2| |N|Collect 8 (item:183442)<br/><b>They look like round globes full of green fluid on the ground around this area. (33.96, 69.26)| |O| |D| |Z|118|
K Reconstructed Abominations |QID|62365.3| |N|Destroy 3 Reconstructed Abominations<br/><b>Use the special action button that appears on-screen.<br/><b>Use it at close range and stand still until the channeling finishes.<br/><b>They look like large abominations chained to posts around this area. (31.85, 70.18)| |O| |D| |Z|118|
T Careful Creations |QID|62365| |N|Speak to (npc:173997) (35.39, 66.32)| |O| |D| |Z|118| |NPC|173997|
C Frozen Solid |QID|59851.1| |N|use (item:182199) on 12 (npc:173079)<br/><b>They look like crusaders trapped in ice on the ground around this area (49.28, 72.61)| |O| |D| |Z|118| |NPC|173079|

T Scourge War Machines |QID|59838| |N|Speak to (npc:170467) (44.95, 44.78)| |O| |D| |Z|118| |NPC|170467|
T Frozen Solid |QID|59851| |N|Speak to (npc:170467) (44.95, 44.78)| |O| |D| |Z|118| |NPC|170467|
T Defending the Rampart |QID|59847| |N|Speak to (npc:170467) (44.95, 44.78)| |O| |D| |Z|118| |NPC|170467|
T Research Ruination |QID|59772| |N|Speak to (npc:170467) (44.95, 44.78)| |O| |D| |Z|118| |NPC|170467|

C Strange Scourgestones |QID|62401| |N|Collect Darkened and Pitch Black Scourgestones<br/><b>Darkened Scourgestones drop from normal scourge mobs<br/><b>Pitch Black Scourgestones drop from elite scourge mobs| |POI| |O| |D| |Z|118|
T Strange Scourgestones |QID|62401| |N|Speak to (npc:169718) (71.04, 21.65)| |O| |D| |Z|118| |NPC|169718|

N Guide Complete 

]]
end, {image = "icecrown.tga", description = [[This guide covers the Shadowlands scourge invasion ]]})	end

	function Guide:Unload()
	end
end
