local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_The_Kaluak")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("WOTLK Reputation Dailies", "The Kalu'ak (1500 +Rep)", nil, "Horde", nil, "D", nil, function()
return [[

R Borean Tundra |N|Travel to {Borean Tundra} (64, 45.8)|
A Preparing for the Worst |N|(npc:26213) (64, 45.8)| |QID|11945| |Z|114| |D| |NPC|26213|
C Preparing for the Worst |N|Collect 8 (item:35711) around (73.4, 51.9)| |L|35711 8| |QID|11945| |Z|114| |D| |OBJ|644|
T Preparing for the Worst |N|(npc:26213) (64, 45.8)| |QID|11945| |Z|114| |D| |NPC|26213|

R Moa'Ki Harbor |N|Fly to {Moa'Ki Harbor} in {Dragonblight} (48.3, 74.3)|
A Planning for the Future |N|(npc:26228) (48.3, 74.3)| |QID|11960| |Z|115| |D| |NPC|26228|
C Planning for the Future |N|Go to the camp site around (45.7, 61.6) and collect 12 (item:35692)| |QID|11960| |Z|115| |D| |NPC|26200|
T Planning for the Future |N|(npc:26228) (48.3, 74.3)| |QID|11960| |Z|115| |D| |NPC|26228|

R Kamagua |N|Fly to {Kamagua} in {Howling Fjord} 24.6, 58.8)|
A The Way to His Heart... |N|(npc:24810) (24.6, 58.8)| |QID|11472| |Z|117| |D| |NPC|24810|
N (item:34127) |N|Use the (item:40946) on a school of fish around (33, 71.8)| |U|40946| |L|34127| |Z|117| |T|
C The Way to His Heart... |N|Damage a Bull (31.9, 74.1) slightly (be unarmed if you melee attack hits too hard) and make them chase you to the Cow, once you reach the cow use (item:34127) on the Bull| |U|34127| |QID|11472| |Z|117| |D| |NPC|24786, 24797|
T The Way to His Heart... |N|(npc:24810) (24.6, 58.8)| |QID|11472| |Z|117| |D| |NPC|24810|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end