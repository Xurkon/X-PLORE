local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_73_76_AhnKahet_The_Old_Kingdom")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "132(73-74)", nil, "Horde", nil, "I", nil, function()
return [[

R Ahn'kahet: The Old Kingdom |N|Queue for {Ahn'kahet: The Old Kingdom} with your dungeon finder or enter the instance in {Dragonblight} (28.37, 51.67)| |QID|13187| |I| |Z|116| |WR| |F|132|
A Pupil No More |QID|29825| |N|(npc:55658), {Ahn'kahet: The Old Kingdom}, {Hall of the Conquered Kings} (87.24, 72.79)| |NPC|55658| |Z|132|
C Pupil No More |QID|29825| |N|Kill (npc:29309). (69.30, 26.68)| |NPC|29309| |Z|132|
T Pupil No More |QID|29825| |N|(npc:55658)| |NPC|55658| |Z|132|
A Reclaiming Ahn'Kahet |QID|29826| |N|(npc:55658)| |NPC|55658| |Z|132|
C Reclaiming Ahn'Kahet |QID|29826| |N|Destroy the two crystal to summon and kill (npc:29308) (64.5, 26.2)(60.8, 34.7)(56.4, 25.4)(50.7, 30.8)(62.91, 49.54)| |NPC|29308|  |Z|132|
T Reclaiming Ahn'Kahet |N|(npc:55658)| |QID|29826| |NPC|55658| |Z|132|
A The Faceless Ones |QID|13187| |N|Seer Ixit| |Z|132|
N (item:43512) |T| |N|Kill a Savage Cave Beasts for (item:43512) to begin new quest (64.94, 58.84) (64.94, 58.84)| |L|43512| |Z|132| |QID|13204|
A Funky Fungi |N|Use (item:43512)| |U|43512| |Z|132|
C Funky Fungi |N|Go through a tunnel into the {Fallen Temple of Ahn'kahet}, to your left theres an entry into the {Shimmering Bog} where the (npc:30329) are. Get 6 (item:43511) from them (64.94, 58.84)| |Z|132| |QID|13204| |NPC|30329|
C The Faceless Ones |N|Kill (npc:29311) and 3 (npc:30414) at the waypoint (23.7, 50.6)| |Z|132| |QID|13187| |NPC|29311, 30414|
T Funky Fungi |N|(npc:55658) (26.73, 50.46)| |QID|13204| |NPC|55658| |O| |Z|132|
T The Faceless Ones |QID|13187| |N|(npc:55658) (26.73, 50.46)| |NPC|55658| |Z|132|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
