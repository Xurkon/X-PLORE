local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_15_21_Wailing_Caverns")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "The Wailing Caverns (15-21)", "Blackfathom Deeps (20-24)", "Alliance", nil, "I", nil, function()
return [[

N Level 15 Required |N|You must be at least level 15 to pick up the following quests| |QID|865| |PL|15|

R Ratchet |QID|865| |N|Travel to Ratchet (62.6, 37.5)| |Z|1413|
A Raptor Horns |QID|865| |N|(npc:3446) in {Ratchet} (62.36, 37.67)| |Z|1413| |NPC|3446|
C Raptor Horns |QID|865| |N|Kill (npc:3256) and collect 5 (item:5055) at the Raptor Grounds (58, 53.8)| |Z|1413| |W| |NPC|3256|

T Raptor Horns |QID|865| |N|(npc:3446) in {Ratchet} (62.36, 37.67)| |Z|1413| |NPC|3446|
A Smart Drinks |QID|1491| |N|(npc:3446) in {Ratchet} (62.36, 37.67)| |Z|1413| |NPC|3446|

N Follow the path...  |QID|1487| |N|Follow the waypoint path carefully to reach the npc<br/><br/>Climb up the hill and run to the roof of the Wailing Cavern, drop to the 'nose' and enter cave to your left<br/><br/>Tick this step once you reach the quest npcs (47, 34.7) (46.08, 35.13) (45.93, 36.23)| |QID|1487| |Z|1413|
A Deviate Eradication |QID|1487| |N|(npc:5768) in {The Wailing Caverns} (51.92, 55.45)| |Z|1414| |NPC|5768|
A Deviate Hides |QID|1486| |N|(npc:5767) in {The Wailing Caverns} (51.91, 55.42)| |Z|1414| |NPC|5767|

R The Wailing Caverns |QID|914| |N|Zone into {The Wailing Caverns} dungeon, level 18 is recommended (46.04, 36.64)| |Z|1413|
N Please Read... |QID|6981| |N|Your goal here is to kill all 4 leaders of the fang so that you can summon (npc:3654) at the end and get an extra quest. The best order is (npc:3669)  > (npc:3671) >  (npc:3670) > (npc:3673) (follow the green line to reach Phytas and Serpentis)<br/><br/>Tick this step| |DMAP|Wailing_Caverns_A| 
C Smart Drinks |QID|1491| |N|Collect 6 (item:6464) from the Oozes in {The Wailing Caverns}| |DMAP|Wailing_Caverns_A| |NPC|3638, 3640|
C Deviate Eradication |QID|1487| |N|Kill the required Deviates all found in {The Wailing Caverns}, you should finish this naturally if you complete the instance| |DMAP|Wailing_Caverns_A| |NPC|3636, 5755, 5761, 5056|
K (npc:3654) |QID|6981| |N|If you killed all four leaders of the fang, speak to (npc:3678) by the entrance of Wailing Caverns to begin the event for the final boss (npc:3654)<br/><br/>Collect (item:10441) from (npc:3654) to begin a new quest| |L|10441| |DMAP|Wailing_Caverns_A| |NPC|3678, 3654|
A The Glowing Shard |QID|6981| |N|Use (item:10441) to accept quest| |U|10441|

R Ratchet |QID|6981| |N|Travel to {Ratchet} (63, 37.2)| |Z|1413|
N (npc:3442) |QID|6981| |N|Speak to (npc:3442) in {Ratchet} (63, 37.2)| |Z|1413| |NPC|3442|
T Smart Drinks |QID|1491| |N|(npc:3442) in {Ratchet} (62.36, 37.67)| |Z|1413| |NPC|3442|
T The Glowing Shard |QID|6981| |N|(npc:8418) in {The Barrens}, top of the mountain (48.2, 32.8)| |Z|1413| |NPC|8418|
A In Nightmares |QID|3370| |N|(npc:8418) in {The Barrens}, top of the mountain (48.2, 32.8)| |Z|1413| |NPC|8418|

T Deviate Eradication |QID|1487| |N|(npc:5768) in {The Wailing Caverns} (51.92, 55.45)| |Z|1414| |NPC|5768|
C Deviate Hides |QID|1486| |N|Collect 20 (item:6443) from the Deviate Serpents inside {The Wailing Caverns}, this might take you 2 runs of Wailing Caverns or you can complete this solo outside the entrance to Wailing Caverns (46.2, 32.5) (47.7, 33)| |Z|1413| |NPC|8886, 3632, 3630, 3631|
T Deviate Hides |QID|1486| |N|(npc:5767) in {The Wailing Caverns} (51.91, 55.42)| |Z|1414| |NPC|5767|

R Darnassus |TID|3370| |N|Travel to {Darnassus} (35.22, 8.0)| |Z|1457|
T In Nightmares |QID|3370| |N|(npc:4217) in {Darnassus} (35.22, 8.0)| |Z|1457| |NPC|4217|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
