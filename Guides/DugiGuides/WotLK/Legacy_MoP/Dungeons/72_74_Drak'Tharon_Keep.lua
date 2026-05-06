local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_72_74_Drak'Tharon_Keep")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "160(74-76)", nil, "Horde", nil, "I", nil, function()
return [[

R Drak'Tharon Keep |N|Queue for {Drak'Tharon Keep} with your dungeon finder| |QID|12037| |I| |Z|116| |F|160| |WR|
A Head Games |QID|13129| |N|(npc:55677) (35.63, 83.02)| |NPC|55677| |Z|160|
A What the Scourge Dred |QID|29828| |N|(npc:55677) (35.63, 83.02)| |NPC|55677| |Z|160|
A Cleansing Drak'Tharon |QID|30120| |N|(npc:58149) (37.09, 80.67)| |NPC|58149| |Z|160|
N 5 (item:38303) |N|Collect 5 (item:38303) from Drakkari Trolls as you go, (38.9, 86.4) (46.6, 85.2) (47.5, 44.4) (56.6, 31.6) (56.4, 18.4) (66.8, 17.6)| |L|38303 5| |T| |QID|12238| |Z|160| |NPC|26639, 26620, 27431|
C Head Games |N|Use (item:43214) at the corpse of (npc:26631), he's the second boss inside the instance. Use the cloth right away as the corpse can disappear quite quickly (65.9, 27.3)(63.6, 32) (69.4, 46.9)| |U|43214| |QID|13129| |Z|160| |NPC|26631|
C What the Scourge Dred |QID|29828| |N|Kurzel inside {Drak'Tharon Keep} wants you to slay (npc:27483) and bring her his tooth. (67.8, 54.9)(55.8, 59.8)(55.3, 77)(66.7, 77.8)(64.63, 84.87)| |Z|160| |NPC|27483|

R Drak'Tharon Overlook floor |N|Travel to {Drak'Tharon Overlook} (65.2, 71.8) (59, 71.8)| |Z|160| |F|161|
T Cleansing Drak'Tharon |N|(npc:28016) (37.5, 69.7) (36.5, 28.9) (56.3, 23.3) (56.3, 13.3) (37.8, 13.7) - summon him using (item:35797) (requires 5 (item:38303) to use) at his brazier by the final boss| |U|35797| |QID|30120| |Z|161| |NPC|28016|

R Hall of Return |N|Jump down for a shortcut to the first floor {Hall of Return} (39.90, 13.92)| |WR| |F|160| |Z|161|
T Head Games |QID|13129| |N|(npc:55677) (35.59, 83.12)| |NPC|55677| |Z|160|
T What the Scourge Dred |QID|29828| |N|(npc:55677) (35.57, 83.27)| |NPC|55677| |Z|160|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
