local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_26_31_Scarlet_Halls")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "431(26-31)", "435(28-34)", "Horde", nil, "I", nil, function()
return [[

R Scarlet Monestary Library |N|Queue/Zone into Scarlet Monestary Library in {Tirisfal Glades} (85.29, 32.14)| |I| |QID|31493| |Z|20| |WR| |F|432|
A Rank and File |QID|31490| |N|(npc:64738) (31.99, 84.51) in {Scarlet Halls}| |NPC|64738|
A Just for Safekeeping, Of Course |QID|31493| |N|(npc:64738) (31.99, 84.51) in {Scarlet Halls}| |NPC|64738|

R Footman's Armory |QID|31493| |N|Travel to {Footman's Armory} (55.5, 17.54)| |Z|431| |F|432|
C Just for Safekeeping, Of Course |QID|31493| |N|Kill (npc:59150) and collect (item:87267) in {Athenaeum} (39.20, 13.52)| |NPC|59150| |Z|432|
C Rank and File |QID|31490| |N|Kill 50 members of the Scarlet Crusade within the {Scarlet Halls}. (49.11, 67.04)| |NPC|58676, 59293, 59240| |Z|432|
T Just for Safekeeping, Of Course |QID|31493| |N|(npc:64738) (39.13, 13.46) in {Athenaeum}| |NPC|64738| |Z|432|
T Rank and File |QID|31490| |N|(npc:64738) (39.13, 13.46) in {Athenaeum}| |NPC|64738| |Z|432|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
