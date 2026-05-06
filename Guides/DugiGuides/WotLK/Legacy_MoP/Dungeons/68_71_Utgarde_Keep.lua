local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_68_71_Utgarde_Keep")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "133(68-70)", nil, "Horde", nil, "I", nil, function()
return [[

R Utgarde Keep Instance |N|Queue for {Utgarde Keep} using the dungeon finder or from the entrance in {Howling Fjord} (58, 50.14)(57.30, 46.83)| |QID|29763| |I| |F|133| |WR| |Z|117|
A Ingvar Must Die! |QID|11262| |N|(npc:24137) (68.20, 67.86)| |NPC|24137| |Z|133|
A Disarmament |QID|13206| |N|(npc:24137) (68.20, 67.86)| |NPC|24137| |Z|133|
A A Score to Settle |QID|30112| |N|(npc:24137) (68.20, 67.86)| |NPC|24137| |Z|133|

C Disarmament |N|Collect 5 (item:43513). They are on racks scattered throughout the instance (64.6, 51.8)(63.2, 42.1)(67.4, 32.8)(66.7, 31.4)(64.5, 23.6)(57.1, 22.5)(50.5, 27.1)| |QID|13206| |Z|133| |OBJ|8388|
C A Score to Settle |QID|30112| |N|Kill (npc:23953) in {Reavers' Hall} (28.63, 65.82)| |NPC|23953| |Z|133|
C Ingvar Must Die! |QID|11262|| |N|Kill Ingvar The Plunderer, the last boss on the 3rd floor and collect (item:33330) (75.60, 34.82)| |NPC|23954| |Z|135|

R Norndir Preparation |N|Jump down to the first floor Norndir Preparation (48.18, 55.53)| |Z|135| |F|133|
T Ingvar Must Die! |QID|11262| |N|(npc:24137) (68.23, 67.88)| |NPC|24137| |Z|133|
T Disarmament |QID|13206| |N|(npc:24137) (68.23, 67.88)| |NPC|24137| |Z|133|
T A Score to Settle |QID|30112| |N|(npc:24137) (0.00, 0.00)| |NPC|24137| |Z|133|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
