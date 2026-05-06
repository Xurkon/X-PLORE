local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Alliance_En_20_25_The_Stockade")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "225(20-25)", "688(20-28)", "Alliance", nil, "I", nil, function()
return [[

R Stormwind Stockade |N|Queue/Zone into {Stormwind Stockade} in {Stormwind City} (50.57, 66.59)| |I| |QID|27733| |Z|84| |WR| |F|225|
A The Good Ol' Switcheroo |N|(npc:46417) (50.0, 62.0)| |QID|27733| |NPC|46417|
A By Fire Be Saved! |N|(npc:46410) (56.4, 53.9)| |QID|27737| |NPC|46410|
A The Gnoll King |N|(npc:46409) (43.2, 54)| |QID|27739| |NPC|46409|

C The Good Ol' Switcheroo |N|Kill (npc:46383), he's the first boss and is located at the end of the main tunnel (50.6, 23.0)| |QID|27733| |NPC|46383|
C By Fire Be Saved! |N|Kill (npc:46264) and collect (item:62305). He's the second boss, found at the end of the right wing (80.0, 47.0)| |QID|27737| |NPC|46264|
C The Gnoll King |N|Kill (npc:46254), he's at the end of the left wing (21.8, 26.4)| |QID|27739| |NPC|46254|

T The Gnoll King |N|(npc:46409) (43.2, 54)| |QID|27739| |NPC|46409|
T By Fire Be Saved! |N|(npc:46410) (56.4, 53.9)| |QID|27737| |NPC|46410|
T The Good Ol' Switcheroo |N|(npc:46417) (50.0, 62.0)| |QID|27733| |NPC|46417|

N Guide Complete 

]]
end)
	end
	
	function Guide:Unload()
	end
end
