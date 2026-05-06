local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_30_34_Maraudon_Purple")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "280(30-34 The Wicked Grotto)", "301(30-35)", "Horde", nil, "I", nil, function()
return [[

R Maraudon Purple Crystal |N|Queue/Zone into {Maraudon} Purple Crystal in {Desolace} (29.15, 62.55)(30.17, 54.61)| |QID|27697| |F|280| |Z|101| |WR| |I|
A Corruption in Maraudon |N|Auto-accept (76.86, 66.53) you will receive this quest automatically after you enter the instance| |QID|27697| |Z|280|
C Corruption in Maraudon |N|Kill (npc:12236) (71.2, 66.4) (64.3, 58.6) (56.7, 49.5) (51.4, 52.4) (48.9, 68.9) (48.4, 83.6) 35.7, 85.8) (37.6, 70.8)| |QID|27697| |Z|280| |NPC|12236|
T Corruption in Maraudon |N|Auto-turn in (37.6, 70.8)| |QID|27697| |Z|280|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
