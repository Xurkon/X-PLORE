local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_The_Wyrmrest_Accord")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("WOTLK Reputation Dailies", "The Wyrmrest Accord (750 +Rep)", nil, "Horde", nil, "D", nil, function()
return [[

R Transitus Shield |N|Fly to {Transitus Shield} in {Borean Tundra} (33.3, 34.5)|
A Drake Hunt |N|(npc:26117) (33.3, 34.5)| |QID|11940| |Z|114| |D| |NPC|26117|
C Drake Hunt |N|Go to the valley at (27, 30) and look for a (npc:26127) up above, then use (item:35506)| |U|35506| |QID|11940| |Z|114| |D| |NPC|26127|
T Drake Hunt |N|(npc:26117) (33.3, 34.5)| |QID|11940| |Z|114| |D| |NPC|26117|

A Aces High! |N|(npc:32548) (29.5, 24.8)| |QID|13414| |Z|114| |D| |NPC|32548|
C Aces High! |N|Kill 5 (npc:32534) using the Drake by using this ability combo 1, 1, 1, 1, 1, 5, 3 NOTE: When you press 3 you need to self-cast or target yourself (28, 27)| |QID|13414| |Z|114| |D| |NPC|32534|
T Aces High! |N|(npc:32548) (29.5, 24.8)| |QID|13414| |Z|114| |D| |NPC|32548|

R Wyrmrest Temple |N|Fly to {Wyrmrest Temple} in {Dragonblight} (59.2, 54.3)|
A Defending Wyrmrest Temple |N|(npc:27575) (59.2, 54.3)| |QID|12372| |Z|115| |D| |NPC|27575|
C Defending Wyrmrest Temple |N|Kill 3 (npc:27608), 5 (npc:27682), the little dragons only need 1 Fireball and 1 Immolate to kill, while the big dragons will need 4 - 5 Fireball and an Immolate to die. Then go to (55.5, 66) to destabilize the Azure Dragonshrine. Just fly right down into the core of the blue swirly thing and keep clicking the Destabilize button| |QID|12372| |Z|115| |D| |NPC|27608, 27682|
T Defending Wyrmrest Temple |N|(npc:27575) (59.2, 54.3)| |QID|12372| |Z|115| |D| |NPC|27575|

N Guide Complete 
]]
end)
	end
	
	function Guide:Unload()
	end
end