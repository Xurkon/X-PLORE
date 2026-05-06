local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_39_44_Dire_Maul_West")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "234(39-44 Capital Gardens)", "760(40-46)", "Horde", nil, "I", nil, function()
return [[

R Dire Maul West |N|Queue/Zone into {Dire Maul} West (60.33, 30.25)| |I| |QID|27111| |Z|121| |F|234| |WR|
A The Cursed Remains |N|(npc:44991) (90.1, 45.2)| |QID|27112| |Z|234| |NPC|44991|
A The Shen'dralar Ancient |N|(npc:44991) (90.1, 45.2)| |QID|27113| |Z|234| |NPC|44991|
A The Warped Defender |QID|27109| |N|(npc:44999) (87.41, 52.36)| |Z|234| |NPC|44999|
N Disable 1st Plyon |N|Kill the Elementals surrounding the plyon to disable it (71.23, 55.90), tick this step| |Z|234| |QID|27110|
C The Warped Defender |QID|27109.1| |N|Kill (npc:11489), make sure you kill the tree NPC nearby as they will all agro when you start the fight with Warpwood (34.27, 53.50)| |Z|234| |NPC|11489, 11459|

R Court of the Highborne |N|Travel to {Court of the Highborne} (44.9, 49.5) (44.8, 36.1) (39.33, 32.81)| |Z|234| |F|237| |QID|27110|
K (npc:11487) |N|Kill (npc:11487) (36.7, 74.9) (32.2, 46.2)| |QID|27112.1| |Z|237| |NPC|11487|

R Capital Gardens |N|Go upstairs to the upper level of {Capital Gardens} (49.6, 13.2) (39.54, 12.96)| |QID|27110| |Z|237| |F|234|
K (npc:11488) |N|Kill (npc:11488) on the 2nd level of the balcony area (20.8, 77.6)| |QID|27112.2| |Z|234| |NPC|11488|
N Disable 2nd Plyon |N|Kill the Elementals surrounding the plyon to disable it (38.82, 81.09), tick this step| |Z|234| |QID|27110|
T The Shen'dralar Ancient |N|(npc:14358) (48.4, 52.8)| |QID|27113| |Z|234| |NPC|14358|
A The Madness Within |N|(npc:14358) (48.4, 52.8)| |QID|27110| |Z|234| |NPC|14358|
N Disable 3rd Plyon |N|Kill the Elementals surrounding the plyon to disable it (42.86, 22.60), tick this step| |QID|27110| |Z|234|

R Prison of Immol'Thar |N|Travel to Prison of Immol'Thar (29.6, 42.7)| |QID|27110| |Z|234| |F|238|
N Disable 4th Plyon |N|Kill the Elementals surrounding the plyon to disable it (46.29, 81.68), tick this step| |Z|238| |QID|27110| 
N Disable 5th Plyon |N|Kill the Elementals surrounding the plyon to disable it (44.62, 33.55), tick this step| |Z|238| |QID|27110| 
K (npc:11496) |N|Kill (npc:11496) (34.8, 57.4) who is in middle of Prison| |QID|27110.1| |Z|238| |NPC|11496|
K (npc:11486) |N|Kill (npc:11486) (57.1, 36.1) (60.6, 23.6) who is in the {Athenaeum}, below the stairs| |QID|27110.2| |Z|238| |NPC|11486|

R Capital Gardens |N|Travel to {Court of the Highborne} (57.1, 36.1) (61.2, 57.6) (69.4, 52.8) (71.6, 40.3) (76.87, 39.91)| |Z|238| |F|234| |QID|27111|
R Court of the Highborne |N|Travel to {Court of the Highborne} (44.9, 49.5) (44.8, 36.1) (39.33, 32.81)| |Z|234| |F|237| |QID|27111|
R Capital Gardens |N|Go upstairs to the upper level of {Capital Gardens} (49.6, 13.2) (39.54, 12.96)| |QID|27111| |Z|237| |F|234|
T The Madness Within |N|(npc:14358) (48.4, 52.8)| |QID|27110| |Z|234| |NPC|14358|
A The Treasure of the Shen'dralar |N|(npc:14358) (48.4, 52.8)| |QID|27111| |Z|234| |NPC|14358|

R Prison of Immol'Thar |N|Travel to Prison of Immol'Thar (29.6, 42.7)| |Z|234| |F|238|
T The Treasure of the Shen'dralar |N|Treasure of the Shen'dralar (70.1, 24.4), in the library hidden under the staircase inside a chest| |QID|27111| |Z|234| |OBJ|1387|

R Capital Gardens |N|Travel to {Court of the Highborne} (57.1, 36.1) (61.2, 57.6) (69.4, 52.8) (71.6, 40.3) (76.87, 39.91)| |Z|238| |F|234|
T The Cursed Remains |N|(npc:44991) (90.1, 45.2)| |QID|27112| |Z|234| |NPC|44991|
T The Warped Defender |QID|27109| |N|(npc:44999) (87.41, 52.36)| |Z|234| |NPC|44999|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
