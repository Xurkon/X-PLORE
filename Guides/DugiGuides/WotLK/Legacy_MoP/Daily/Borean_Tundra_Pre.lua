local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Borean_Tundra_Pre")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Pre Quests", "114(80 Pre Quests)", nil, "Horde", nil, "D", nil, function()
return [[

R Transitus Shield |N|Travel to {Transitus Shield} (33.50, 34.31)| |QID|11918|
A Basic Training |N|(npc:26117) (33.3, 34.5) in {Transitus Shield}| |QID|11918| |NPC|26117|
C Basic Training |QID|11918| |N|Kill 10 (npc:25722) found in {Coldarra} (32.3, 28.7)| |NPC|25722|
T Basic Training |N|(npc:26117) (33.3, 34.5) in {Transitus Shield}| |QID|11918| |NPC|26117|
A Hatching a Plan |N|(npc:26117) (33.3, 34.5) in {Transitus Shield}| |QID|11936| |NPC|26117|

R Coldarra |N|Travel to {Coldarra} (24.52, 29.66)| |QID|11936|
C Hatching a Plan |QID|11936| |N|Kill (npc:25728) surrounding {Coldarra} for their (item:35586), then use them on the eggs near the Nexus (28.5, 28.9)| |U|35586| |NPC|25728| |OBJ|7247|
T Hatching a Plan |N|(npc:26117) (33.3, 34.5) in {Transitus Shield}| |QID|11936| |NPC|26117|
A Drake Hunt |N|(npc:26117) (33.3, 34.5) in {Transitus Shield}| |QID|11919| |NPC|26117|

R Coldarra |N|Travel to {Coldarra} (27.98, 22.11)| |QID|11931|
C Drake Hunt |QID|11919| |U|35506| |N|Find a (npc:26127) flying around to the west in {Coldarra}. Hit it with (item:35506) until controlled then deliver to Raelorasz (33.3, 34.5) in {Transitus Shield}| |NPC|26127|
T Drake Hunt |N|(npc:26117) (33.3, 34.5) in {Transitus Shield}| |QID|11919| |NPC|26117|

N Level 80 Required |N|Level 80 Required| |PL|80|
A Aces High! |N|(npc:32548) (29.5, 24.8)| |QID|13414| |NPC|32548|
C Aces High! |N|Kill 5 (npc:32534) using the Drake by using this ability combo 1, 1, 1, 1, 1, 5, 3</br><b>NOTE: When you press 3 you need to self-cast or target yourself| |QID|13414| |NPC|32534|
T Aces High! |N|(npc:32548) (29.5, 24.8)| |QID|13414| |NPC|32548|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end