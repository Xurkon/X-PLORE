local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_23_28_Razorfen_Kraul")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Razorfen Kraul (23-28)", "Gnomeregan (24-29)", "Horde", nil, "I", nil, function()
return [[

N Level 23 Required |N|You must be at least level 23 to pick up the following quests| |QID|1013| |PL|23|
R Undercity |QID|1109| |N|Run to the Undercity (62, 70)| |Z|1420|
h Undercity |QID|1109| |N|(npc:6741) in {Undercity} (67.7, 37.9)| |Z|1458| |NPC|6741|
A Going, Going, Guano! |QID|1109| |N|(npc:2055) in {Undercity} (49.7, 69.8)| |Z|1458| |NPC|2055|

R Ratchet |QID|1221| |N|Travel to {Ratchet} (62.4, 37.6)| |Z|1413| 
A Blueleaf Tubers |QID|1221| |N|(npc:3446) in {Ratchet} (62.4, 37.6)| |Z|1413| |NPC|3446|
N (item:5880) |QID|1221.2| |N|Collect the (item:5880) on the table (62.3, 37.7)| |Z|1413| |L|5880|
N (item:6684) |QID|1221.4| |N|Collect (item:6684) in {Ratchet} (62.3, 37.7)| |Z|1413| |L|6684|
N (item:5897) |QID|1221.3| |N|Collect (item:5897) in {Ratchet} (62.3, 37.7)||Z|1413| |L|5897| 

R Thunder Bluff |QID|1102| |N|Travel to {Thunder Bluff} (36.9, 59.4)| |Z|1456|
A A Vengeful Fate |QID|1102| |N|(npc:4451) in {Thunder Bluf} (36.9, 59.4)| |Z|1456|

R Razorfen Kraul |QID|1109| |N|Zone into {Razorfen Kraul} (42.64, 90.10)| |Z|1413| |I|
C Going, Going, Guano! |QID|1109| |N|Collect (item;5801) from the (npc:4538), elite mobs that spawn only in the caves at the far west side of the instance| |DMAP|Razorfen_Kraul_H| |NPC|4538, 4539|
C A Vengeful Fate |QID|1102| |N|Kill (npc:4421) (the final boss) and collect (item:5793)| |DMAP|Razorfen_Kraul_H| |NPC|4421|

N (item:49205) |QID|14352| |N|Collect (item:49205) from (npc:4421)| |L|49205| |DMAP|Razorfen_Kraul_H| |NPC|4421|
A (npc:4508) |QID|1144| |N|Find (npc:4508) and complete the escort quest| |DMAP|Razorfen_Kraul_H| |NPC|4508|
C (npc:4508) |QID|1144| |N|Follow and protect (npc:4508) in {Razorfen Kraul}| |DMAP|Razorfen_Kraul_H| |NPC|4508|
T (npc:4508) |QID|1144| |N|(npc:4508) in {Razorfen Kraul}| |DMAP|Razorfen_Kraul_H| |NPC|4508|
U (item:5880) |QID|1221| |N|Use (item:5880) to summon your gopher to find the Truffle| |U|5880|
C Blueleaf Tubers |QID|1221| |N|Keep using your (item:6684) to help you collect 6 (item:5876), head towards the area where you found (npc:4508)| |U|6684| |DMAP|Razorfen_Kraul_H|

R Thunder Bluff |QID|14353| |N|Travel to {Thunder Bluff} (36.9, 59.4)| |Z|1456|
T A Vengeful Fate |QID|1102| |N|(npc:4451) in {Thunder Bluff} (36.9, 59.4)| |Z|1456| |NPC|4451|

R Ratchet |TID|1221| |N|Travel to {Ratchet} (62.4, 37.6)| |Z|1413|
T Blueleaf Tubers |QID|1221| |N|(npc:3446) in {Ratchet} (62.4, 37.6)| |Z|1413| |NPC|3446|

R Undercity |TID|1109| |N|Travel to {Undercity} (49.7, 69.8)| |Z|1458| 
T Going, Going, Guano! |QID|1109| |N|(npc:2055) in {Undercity} (49.7, 69.8)| |Z|1458| |NPC|2055|
A Hearts of Zeal |QID|1113| |N|(npc:2055) in {Undercity} (49.7, 69.8)| |Z|1458| |NPC|2055|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end