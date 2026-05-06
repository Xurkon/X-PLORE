local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Dragonblight_Daily")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "115(72-74+ Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

R Moa'Ki Harbor |N|Travel to Moa'Ki Harbor in Dragonblight (48.3, 74.3)|
A Planning for the Future |N|Trapper Mau'i (48.3, 74.3)| |QID|11960| |D| |NPC|26228|
C Planning for the Future |N|Go to the camp site around (45.7, 61.6) and collect 12x (item:35692)| |QID|11960| |D| |NPC|26200|
T Planning for the Future |N|Trapper Mau'i (48.3, 74.3)| |QID|11960| |D| |NPC|26228|

A Defending Wyrmrest Temple |N|Lord Afrasastrasz (59.2, 54.3)| |QID|12372| |D| |NPC|27575|
C Defending Wyrmrest Temple |N|Kill 3 Azure Dragons, 5 Azure Drakes. The little dragons only need 1 Fireball and 1 Immolate to kill, while the big dragons will need 4 - 5 Fireballs and an Immolate to die. Then destabilize the Azure Dragonshrine (55.5, 66). Just fly right down into the core of the blue swirly thing and keep on clicking the Destablize button| |QID|12372| |D| |NPC|27608, 27682|
T Defending Wyrmrest Temple |N|Lord Afrasastrasz (59.2, 54.3)| |QID|12372| |D| |NPC|27575|

N Guide Complete  |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end