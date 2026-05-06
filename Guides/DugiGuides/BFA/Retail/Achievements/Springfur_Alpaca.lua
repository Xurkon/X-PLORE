local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Springfur_Alpaca")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r", "Reins of the Sringfur Alpaca", nil, nil, nil, "A", nil, function()
return [[

N Required |PL|50| |N|You need to level 50 to use this guide|
N Note |N|You need to gather (item:174858) along the main river of (map:1527). You will need to find (npc:162765), currently there's 6 known spawn locations. You feed the (npc:162765) for 7 days, on the 7th day you will get (qid:58887) quest, which rewards (item:174859).<br/><b>The Friendly Alpaca seems to spawn for around 10 minutes, during this time multiple people can feed the Alpaca and seems to be on around a 3-6 hour respawn.<br/><br/>Tick this step|

R Ramkahen |QID|58879| |N|Travel to {Ramkahen} (54.92, 34.26)| |Z|1527| |D|
B (item:174858) |QID|58879| |N|Collect (item:174858) around the river in {Vir'naal Oasis} (58.82, 32.17) (57.87, 28.45) (56.64, 25.08) (56.63, 21.09) (57.37, 18.17)| |Z|1527| |L|174858| |POI| |D|
F (npc:162765) |QID|58879| |N|Find (npc:162765) (53.6, 18.6) (63.2, 14.8) (70.6, 39.0) (76.6, 67.8) (63.6, 52.2) (56.6, 70.0) (42.8, 70.0) (46.0, 48.2) (31.0, 28.2) (38.8, 9.0)| |Z|1527| |NPC|162765| |LOOP| |D| - Friendly Alpaca
T Alpaca It Up |QID|58879| |N|(npc:162765) in (1527)| |NPC|162765| |POI| |D|

N Guide Completed

]]
end, {description = [[This guide walks you through the Alpaca Quests]]})
	end

	function Guide:Unload()
	end
end
