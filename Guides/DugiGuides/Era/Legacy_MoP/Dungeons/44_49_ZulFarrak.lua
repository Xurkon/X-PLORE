local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_44_49_ZulFarrak")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "219(44-49)", "765(46-51 Service Entrance)", "Horde", nil, "I", nil, function()
return [[

R Zul'Farrak Instance |N|Queue/Zone into {Zul'Farrak} in {Tanaris} (39.23, 22.19)| |I| |QID|27070| |Z|71| |F|219| |WR|
A Chief Ukorz Sandscalp |N|(npc:40712) (56.7, 89.5)| |QID|27068| |NPC|40712|
A Wrath of the Sandfury |N|(npc:40712) (56.7, 89.5)| |QID|27071| |NPC|40712|
A Breaking and Entering |N|(npc:44929) (58.1, 88.9)| |QID|27076| |NPC|44929|
A A Fool's Errand |N|(npc:7407) (58.0, 89.1)| |QID|27070| |NPC|7407|

K (npc:7272) |N|Kill (npc:7272) (59, 66) (53.7, 42.1) (59, 38.4) (55.4, 29.3) (53.6, 8.0)| |QID|27071.1| |NPC|7272|
K (npc:8127) |N|Kill (npc:8127) (64.6, 26.6)| |QID|27071.3| |NPC|8127|
K (npc:7271) |N|Kill (npc:7271) (51.6, 25.2) (44.2, 15.4)| |QID|27071.2| |NPC|7271|
N (item:8444) |N|Kill (npc:7274) and collect (item:8444) (24.26, 17.88)| |L|8444| |T| |QID|27076| |NPC|7274|
C Breaking and Entering |N|Free (npc:7607) (24.26, 17.88) to start the event and Kill (npc:7796) and (npc:7275)| |QID|27076| |NPC|7607, 7796, 7275|
N Speak to Weegli Blastfuse |N|Speak to (npc:7607) (30.2, 17.8) to get him to blow open the door for you, tick this step| |QID|27068| |NPC|7607|
C Chief Ukorz Sandscalp |N|Kill (npc:7267) (43.6, 35.0)| |QID|27068| |NPC|7267|
K (npc:7797) |N|Kill (npc:7797) (43.6, 35.0)| |QID|27071.4| |NPC|7797|
K (npc:7795) |N|Kill (npc:7795) (29.6, 40.0) and collect the (item:9234)| |QID|27070.1| |NPC|7795|
K (npc:7273) |N|Ring the gong to summon and kill (npc:7273) (32.61, 43.48) and collect (item:8707)| |QID|27070.2| |NPC|7273|

T Breaking and Entering |N|(npc:44929) (58.1, 88.9)| |QID|27076| |NPC|44929|
T A Fool's Errand |N|(npc:7407) (58.0, 89.1)| |QID|27070| |NPC|7407|
T Chief Ukorz Sandscalp |N|(npc:40712) (56.7, 89.5)| |QID|27068| |NPC|40712|
T Wrath of the Sandfury |N|(npc:40712) (56.7, 89.5)| |QID|27071| |NPC|40712|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
