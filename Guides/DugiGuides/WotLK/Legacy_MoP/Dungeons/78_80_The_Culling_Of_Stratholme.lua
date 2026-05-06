local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_78_80_The_Culling_Of_Stratholme")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "130(78-80)", nil, "Horde", nil, "I", nil, function()
return [[

R The Culling of Stratholme |N|Queue for {The Culling of Stratholme} using your dungeon finder or enter the instance from Cavern of Time in {Tanaris} (60.94, 62.10)| |QID|13149| |I| |Z|71| |WR| |F|130|
A Dispelling Illusions |N|(npc:26527) (86.4, 61.6)| |QID|13149| |Z|130| |NPC|26527|
C Dispelling Illusions |N|Use the (item:37888) on ALL 5 crates (77.4, 55.3) (69.3, 51.2)| |U|37888| |QID|13149| |Z|130| |OBJ|347|
T Dispelling Illusions |N|(npc:26527) (47.6, 39.8)| |QID|13149| |Z|130| |NPC|26527|

A A Royal Escort |N|(npc:26527) (47.6, 39.8)| |QID|13151| |Z|130| |NPC|26527|
C A Royal Escort |N|Kill (npc:26533), He is the final boss of the Culling of {Stratholme}. Make sure you turn the quest in while you are in the instance, Chromie may take a few minutes to respawn| |Z|131| |QID|13151| |NPC|26533|
T A Royal Escort |N|(npc:30997), Inside instance - Outside {Stratholme}| |QID|13151| |NPC|30997|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
