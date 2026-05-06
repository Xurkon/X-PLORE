local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_32_36_Maraudon_Orange")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "280(32-36 Foulspore Cavern)", "280(34-39 Earth Song Falls)", "Horde", nil, "I", nil, function()
return [[

R Maraudon Orange Crystal |N|Queue/Zone into {Maraudon} (Orange Crystal) in {Desolace} (29.15, 62.55)(35.96, 64.16)| |I| |QID|27698| |Z|66| |WR| |F|280|
A Servants of Theradras |N|Auto-accept (62.51, 21.10) this quest should appear for you to accept automatically| |QID|27698| |Z|280|
K (npc:13282) |N|Kill (npc:13282) (53.7, 27.5) (40.4, 42.3) (43.2, 48.3) (53.4, 34.3) (45.4, 25.6) (47.5, 19.8) (35.8, 10.8)| |QID|27698.1| |Z|280| |NPC|13282|
K (npc:12258) |N|Kill (npc:12258) (32.5, 40.1) (17.2, 34.0)| |QID|27698.2| |Z|280| |NPC|12258|
T Servants of Theradras |N|Auto-turn in (17.2, 34.0)| |QID|27698| |Z|280|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
