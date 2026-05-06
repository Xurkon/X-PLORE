local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_34_39_Maraudon_Pristine")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "280(34-39 Earth Song Falls)", "230(35-39)", "Horde", nil, "I", nil, function()
return [[

R Maraudon Pristine Waters |N|Queue/Zone into {Maraudon} Pristine Waters in {Desolace} (29.15, 62.55)(29.31, 61.07)| |I| |QID|27692| |Z|66| |WR| |F|280|
A Princess Theradras |N|Auto-accept (28.58, 43.24) within Inner {Maraudon}| |QID|27692| |Z|281|
C Princess Theradras |N|Kill (npc:12201) (33, 61.1) (45.4, 59.4) (45.9, 54.7) (41, 57.8) (40.9, 65.4) (45.9, 67.3) (44.6, 73.5) (36.9, 79) (26.4, 79.4)| |QID|27692| |Z|281| |NPC|12201|
T Princess Theradras |N|(npc:12238) (25.7, 78.5)| |QID|27692| |Z|281| |NPC|12238|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
