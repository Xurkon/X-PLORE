local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_68_71_The_Nexus")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "129(68-71)", nil, "Horde", nil, "I", nil, function()
return [[

R The Nexus Instance |N|Queue for the {The Nexus} with your dungeon finder or find the instance in {Borean Tundra}(Bottom floor) (27.51, 26.04)| |QID|13095| |I| |F|129| |WR| |Z|114|
A Have They No Shame? |QID|13095| |N|(npc:55537) (36.19, 83.09)| |NPC|55537|
A Prisoner of War |QID|11973| |N|(npc:55531) (36.17, 81.49)| |NPC|55531|
A Quickening |QID|11911| |N|(npc:55536) (37.14, 81.46)| |NPC|55536|
A Postponing the Inevitable |QID|11905| |N|(npc:55535) (35.18, 81.33)| |NPC|55535|

C Have They No Shame? |N|Collect (item:43095) from the middle of {Hall of Stasis} (35.7, 81.7) (26.9, 67.9) (22, 66.2) (19.1, 52.1)| |QID|13095| |OBJ|8128|
C Postponing the Inevitable |N|Use (item:35479) on Anomalus platform (29.7, 21.7) (61.7, 21.9)| |U|35479| |QID|11905|
C Quickening |N|Get 5 (item:35490) from (npc:26792) in {The Singing Grove} within {The Nexus} (51.4, 24.4) (56.8, 53.7) (64.1, 52.6) (64.7, 60.7) (59.9, 65.4)| |QID|11911| |NPC|26792|
C Prisoner of War |N|Enter {The Nexus} and release (npc:26723) (54.1, 71) (53.3, 61.9) (49.2, 67.3) (36, 67.5)| |QID|11973| |NPC|26723|

T Have They No Shame? |QID|13095| |N|(npc:55537) (36.19, 83.09)| |NPC|55537|
T Prisoner of War |QID|11973| |N|(npc:55531) (36.17, 81.49)| |NPC|55531|
T Quickening |QID|11911| |N|(npc:55536) (37.14, 81.46)| |NPC|55536|
T Postponing the Inevitable |QID|11905| |N|(npc:55535) (35.18, 81.33)| |NPC|55535|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
