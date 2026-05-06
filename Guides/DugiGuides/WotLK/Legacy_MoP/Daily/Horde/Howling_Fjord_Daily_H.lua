local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Howling_Fjord_Daily_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "117(71+ Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

R Kamagua |N|Travel to Kamagua in Howling Fjord (24.6, 58.8)|

A The Way to His Heart... |N|Anuniaq (24.6, 58.8)| |QID|11472| |D| |NPC|24810|
N (item:34127) |N|Use the (item:40946) on a school of fish around (33, 71.8)| |U|40946| |L|34127| |T|
C The Way to His Heart... |N|Damage a Bull (31.9, 74.1) slightly (be unarmed if you melee attack hits too hard) and make them chase you to the Cow, once you reach the cow use (item:34127) on the Bull| |U|34127| |QID|11472| |D| |NPC|24786, 24797|
T The Way to His Heart... |N|Anuniaq (24.6, 58.8)| |QID|11472| |D| |NPC|24810|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end