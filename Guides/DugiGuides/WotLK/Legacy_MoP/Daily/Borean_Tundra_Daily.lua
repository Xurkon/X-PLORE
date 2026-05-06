local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Borean_Tundra_Daily")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "114(72-80 Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

R Borean Tundra |N|Travel to Borean Tundra (64, 45.8)|
A Preparing for the Worst |N|Utaik (64, 45.8)| |QID|11945| |D| |NPC|26213|
C Preparing for the Worst |N|Collect 8x (item:35711) around (73.4, 51.9)| |QID|11945| |D| |OBJ|644|
T Preparing for the Worst |N|Utaik (64, 45.8)| |QID|11945| |D| |NPC|26213|

R Transitus Shield |N|Travel to Transitus Shield in Borean Tundra (33.3, 34.5)|
A Drake Hunt |N|Raelorasz (33.3, 34.5)| |QID|11940| |D| |NPC|26117|
C Drake Hunt |N|Go to the valley at (27, 30) and look for a Nexus Drake Hatchling up above, then use (item:35506)| |U|35506| |QID|11940| |D| |NPC|26127|
T Drake Hunt |N|Raelorasz (33.3, 34.5)| |QID|11940| |D| |NPC|26117|

A Aces High! |N|Corastrasza (29.5, 24.8)| |QID|13414| |D| |NPC|32548|
C Aces High! |N|Kill 5 Scalesworn Elites using the Drake by using this ability combo 1, 1, 1, 1, 1, 5, 3  NOTE: When you press 3 you need to self-cast or target yourself| |QID|13414| |D| |NPC|32534|
T Aces High! |N|Corastrasza (29.5, 24.8)| |QID|13414| |D| |NPC|32548|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end