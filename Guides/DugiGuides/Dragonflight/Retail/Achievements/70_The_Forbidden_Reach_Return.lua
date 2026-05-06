local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Return_to_the_Reach")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Return to the Reach (70+ Storyline)", "Embers of Neltharion (70+ Storyline)", nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

-- A Creche Divided
R Valdrakken |TID|74381| |N|Travel to {Valdrakken} (59.55,41.46)| |Z|2112| |FAC|Alliance| |OID|72712|
R Valdrakken |TID|74381| |N|Travel to {Valdrakken} (56.93,38.69)| |Z|2112| |FAC|Horde| |OID|72712|
A Hidden Legacies |QID|74381| |N|Auto Accept<br/><br/><b>There is no prerequisite for this quest. If you do not get this quest automatically, head atop of {The Seat of the Aspects} and speak to (npc:201398) (60.99, 26.25)| |Z|2112| |OID|72712|

N (npc:201398) |QID|74381.1| |N|Speak to (npc:201398) to hear (npc:201398)'s report in {The Seat of the Aspects} (60.99, 26.25)<br/><br/><b>If you have done this on another character on the same account, you can choose option You can count on me. <color:ff142e><Skip intro quests, forfeit their rewards, and travel to the Forbidden Reach.></c><br/><b>If you skip, you will lose the following:<br/>1 (item:203646)<br/>1,000 (cur:2118)<br/>1 (item:204276)<br/>1,200 (fac:2510) reputation.| |Z|2112| |NPC|201398| |OID|72712|

T Hidden Legacies |QID|74381| |N|(npc:201398) in {The Seat of the Aspects} (60.99, 26.25)| |Z|2112| |NPC|201398| |OID|72712|
A Return to the Reach |QID|73076| |N|(npc:201398) in {The Seat of the Aspects} (60.99, 26.25)| |Z|2112| |NPC|201398| |OID|72712|

N (npc:193321) |QID|73076.1| |N|Speak with (npc:193321) to fly to the {Forbidden Reach} (44.16, 67.69)| |Z|2112| |NPC|193321| |OID|72712|
f Morqut Village |QID|73076| |N|Speak to (npc:200561) and grab the flight path for {Morqut Village} (35.81,59.14)| |Z|2151| |NPC|200561| |OID|72712|
N (npc:199532) |QID|73076.2| |N|Find (npc:199532) in {Morqut Village} (34.84, 58.27)| |Z|2151| |NPC|199532| |OID|72712|

T Return to the Reach |QID|73076| |N|(npc:199532) in {Morqut Islet} (32.57, 60.53)| |Z|2151| |NPC|199532| |OID|72712|
f Morqut Village |QID|72712| |N|Speak to (npc:200561) and grab the flight path for {Morqut Village} (35.81,59.14)| |Z|2151| |NPC|200561| |OID|73156, 73076|
A The Best We Have |QID|72712| |N|(npc:199532) in {Morqut Islet} (32.57, 60.53)<br/><br/><b>If you have done this on another character on the same account, you can choose option You can count on me. <color:ff142e><Skip intro quests, forfeit their rewards, and travel to the Forbidden Reach.></c><br/><b>If you skip, you will lose the following:<br/>1550 (cur:2118)<br/>1,575 (fac:2510) reputation.| |Z|2151| |NPC|199532| |OID|73156|
T The Best We Have |QID|72712| |N|(npc:200403) in {The Lost Atheneum} (55.14, 37.36)| |Z|2151| |NPC|200403| |OID|73156|
A Inheritance |QID|72713| |N|(npc:200403) in {The Lost Atheneum} (55.14, 37.36)| |Z|2151| |NPC|200403| |OID|73156|

N Assist Emberthal's Scouts |QID|72713.1| |N|Slay (npc:199238) on the middle floor (53.57, 40.57)<br/>Tick this step| |OID|73156|
N Assist Emberthal's Scouts |QID|72713.1| |N|Click Damage Tome (54.99, 40.57)<br/>Tick this step| |Z|2151| |OID|73156|
N Assist Emberthal's Scouts |QID|72713.1| |N|Click Suspicious Rubble (5363, 39.16)<br/>Tick this step| |Z|2151| |OID|73156|
N Secure the Lost Atheneum (100%) |QID|72713.2| |N|Slay (npc:200460), (npc:199533), (npc:200461) in {The Lost Atheneum} (55.07, 40.02)| |Z|2151| |NPC|200460, 199533, 200461| |OID|73156|

T Inheritance |QID|72713| |N|(npc:200459) in {The Lost Atheneum} (55.16, 35.90)| |Z|2151| |NPC|200459| |OID|73156|
A Creche Fallen |QID|72545| |N|(npc:199531) in {The Lost Atheneum} (55.16, 35.90)| |Z|2151| |NPC|199531| |OID|73156|

N (item:203689) |QID|72545.1| |N|Click on (npc:199217) to get (item:203689) in {The Lost Atheneum} (53.85, 36.57)| |Z|2151| |NPC|199217| |OID|73156|
N (item:203692) |QID|72545.2| |N|Click on (npc:199215) to get (item:203692) in {The Lost Atheneum} (53.86, 36.50)| |Z|2151| |NPC|199215| |OID|73156|
N (item:203697) |QID|72545.3| |N|Click on (npc:205925) to get (item:203697) in {The Lost Atheneum} (53.61, 39.47)| |Z|2151| |NPC|205925| |OID|73156|
N (item:203698) |QID|72545.4| |N|Click on (npc:199218) to get (item:203698) in {The Lost Atheneum} (55.00, 37.06)| |Z|2151| |NPC|199218| |OID|73156|

T Creche Fallen |QID|72545| |N|(npc:199531) in {The Lost Atheneum} (55.18, 35.89)| |Z|2151| |NPC|199531| |OID|73156|
A Aiding the Expedition |QID|73094| |N|(npc:199531) in {The Lost Atheneum} (55.18, 35.89)| |Z|2151| |NPC|199531| |OID|73156|
T Aiding the Expedition |QID|73094| |N|(npc:199175) in {Stormsunder Crater} (61.53, 61.62)| |Z|2151| |NPC|199175| |OID|73156|
A Keeping the Flame at Bay |QID|72715| |N|(npc:199175) in {Stormsunder Crater} (61.53, 61.62)| |Z|2151| |NPC|199175| |OID|73156|
A An Interdisciplinary Approach |QID|72714| |N|(npc:199520) in {Stormsunder Crater} (61.65, 61.34)| |Z|2151| |NPC|199520| |OID|73156|

N As You Go... |AYG|72714| |N|Slay 4 (npc:199374) and 6 (npc:199379) and (npc:199401) for (qid:72715) rescue (npc:202599), (npc:199358), (npc:202601), (npc:202602) and (npc:202603) for (qid:72714)| |QID|72715| |OID|73156|
N An Interdisciplinary Approach |QID|72714.1| |N|Rescue 5 researchers in this area (56.91, 66.23) (58.23, 60.80) (59.51, 63.91) (57.52, 63.68) (58.91, 66.11)| |Z|2151| |NPC|202599, 199358, 202601, 202602, 202603| |OID|73156|
N 4 (npc:199374) |QID|72715.1| |N|Slay 4 (npc:199374) in {Talonlords' Perch} (58.45, 66.17)| |Z|2151| |NPC|199374| |OID|73156|
N 6 (npc:199379) |QID|72715.2| |N|Slay 6 (npc:199379) in {Talonlords' Perch} (58.45, 66.17)| |Z|2151| |NPC|199379| |OID|73156|
N (npc:202603) |QID|72715.3| |N|Slay (npc:202603) in {High Creche} (56.13, 68.51)| |Z|2151| |NPC|202603| |OID|73156|
N Find (npc:199177) |QID|72714.2| |N|Find (npc:199177) in {High Creche} (58.72, 70.00)| |Z|2151| |NPC|199177| |OID|73156|

T An Interdisciplinary Approach |QID|72714| |N|(npc:199177) in {The High Creche} (58.77, 70.35)| |Z|2151| |NPC|199177| |OID|73156|
T Keeping the Flame at Bay |QID|72715| |N|(npc:199521) in {The High Creche} (58.81, 70.36)| |Z|2151| |NPC|199521| |OID|73156|
A Chasing the Flame |QID|73137| |N|(npc:199521) in {The High Creche} (58.81, 70.36)| |Z|2151| |NPC|199521| |OID|73156|
T Chasing the Flame |QID|73137| |N|(npc:199538) in {Dragonskull Island} (74.37, 36.96)| |Z|2151| |NPC|199538| |OID|73156|
A A Creche Divided |QID|72717| |N|(npc:199538) in {Dragonskull Island} (74.37, 36.96)| |Z|2151| |NPC|199538| |OID|73156|

N (npc:201820) |QID|72717.1| |N|Slay (npc:201820) in {Dragonskull Island} (15.10, 50.41)| |Z|2150| |NPC|201820| |OID|73156|
N (npc:201823) |QID|72717.3| |N|Slay (npc:201823) in {Dragonskull Island} (31.97, 35.89)| |Z|2150| |NPC|201823| |OID|73156|
N (npc:201822) |QID|72717.2| |N|Slay (npc:201822) in {Dragonskull Island} (65.66, 15.15)| |Z|2150| |NPC|201822| |OID|73156|
N Forbidden Memoire Examined |QID|72717.4| |O| |N|Examine Forbidden Memoire, they appear like chests in {Dragonskull Island} (84.20, 46.70)| |Z|2150| |OID|73156|

T A Creche Divided |QID|72717| |N|(npc:199539) in {Dragonskull Island} (76.74, 38.48)| |Z|2151| |NPC|199539| |OID|73156|
A Return to Viridia |QID|73156| |N|(npc:199539) in {Dragonskull Island} (76.77, 38.50)| |Z|2151| |NPC|199539|

R Morqut Village |QID|73156| |N|Travel to {Morqut Village} (35.74, 59.18)| |Z|2151|
T Return to Viridia |QID|73156| |N|(npc:199201) in {Morqut Village} (34.62, 57.73)| |Z|2151| |NPC|199201|

N Switch Guide |N|Tick this step to continue this quest line in (guide:"Embers of Neltharion (70+ Storyline)")|

]]

end, {image = "forbiddenreach.tga", description = [[]]})	end

	function Guide:Unload()
	end
end