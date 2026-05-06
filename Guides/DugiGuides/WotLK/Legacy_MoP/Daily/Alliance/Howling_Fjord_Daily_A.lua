local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Alliance_En_Howling_Fjord_Daily_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "117(71+ Dailies)", nil, "Alliance", nil, "D", nil, function()
return [[

R Kamagua |N|Fly to Kamagua in Howling Fjord (24.6, 58.8)|

A The Way to His Heart... |N|Anuniaq (24.6, 58.8)| |QID|11472| |D| |NPC|24810|
N (item:34127) |N|Use the (item:40946) on a school of fish around (33, 71.8)| |U|40946| |L|34127| |T|
C The Way to His Heart... |N|Damage a Bull (31.9, 74.1) slightly (be unarmed if you melee attack hits too hard) and make them chase you to the Cow, once you reach the cow use (item:34127) on the Bull| |U|34127| |QID|11472| |D| |NPC|24786, 24797|
T The Way to His Heart... |N|Anuniaq (24.6, 58.8)| |QID|11472| |D| |NPC|24810|

A Break the Blockade |N|Bombardier Petrov (29, 42)| |QID|11153| |D| |NPC|23895|
C Break the Blockade |N|Wait for the Zeppelin at (28.1, 41.2) and board it when it arrives then use the (item:33098) to drop on the pirates and cannons while on board the Zeppelin. If you have a flying mount you can just fly over to the Pirate boats and kill them manually| |QID|11153| |D| |NPC|23755, 23771|
T Break the Blockade |N|Bombardier Petrov (29, 42)| |QID|11153| |D| |NPC|23895|

A Steel Gate Patrol |N|Steel Gate Chief Archaeologist (30.8, 28.6)| |QID|11391| |D| |NPC|24399|
C Steel Gate Patrol |N|Use the Flying machine to kill 8x Gargoyles at the dig site area (31.1, 26.4)| |QID|11391| |D| |NPC|24440|
T Steel Gate Patrol |N|Steel Gate Chief Archaeologist (30.8, 28.6)| |QID|11391| |D| |NPC|24399|

N Guide Complete 
]]
end)
	end
	
	function Guide:Unload()
	end
end