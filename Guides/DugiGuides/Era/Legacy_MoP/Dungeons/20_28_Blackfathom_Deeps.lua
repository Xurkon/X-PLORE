local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_20_28_Blackfathom_Deeps")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "221(20-28)", "431(26-31)", "Horde", nil, "I", nil, function()
return [[

R Blackfathom Deeps Instance |N|Queue/Zone into {Blackfathom Deeps} in {Ashenvale} (13.27, 13.25)(13.99, 11.14)(14.43, 9.32)(16.54, 11.02)| |I| |QID|26888| |Z|43| |F|221| |WR|
A Amongst the Ruins |N|(npc:12736) (48.2, 11.8)| |QID|26891| |Z|221| |NPC|12736|
A Deep in the Deeps |N|(npc:44375) (48.2, 12.7)| |QID|26892| |Z|221| |NPC|44375|
A Nightmare of the Deeps |N|(npc:12736) (48.2, 12.7)| |QID|26888| |Z|221| |NPC|12736|

K (npc:4887) |N|Kill (npc:4887) the giant turtle (55, 46.7) (52.95, 46.79) (51.37, 41.46) (51.39, 38.21) (45.79, 35.03) (33.6, 60.6)| |QID|26892.1| |Z|221| |NPC|4887|
K (npc:4831) |N|Kill (npc:4831) (19.68, 40.64) (11.8, 40.4)| |QID|26892.2| |Z|221| |NPC|4831|
K (npc:6243) |N|Kill (npc:6243) (24.70, 47.61) (33.6, 60.6) (31.63, 90.14) (53.87, 87.20) (58.06, 71.76) (54.2, 56.8)| |QID|26892.3| |Z|221| |NPC|6243|

R Moonshrine Sanctum |N|Travel to {Moonshrine Sanctum} (59.54, 71.93)| |Z|221| |F|223| |QID|26888|
A The Enemy of My Enemy |N|(npc:44387) (37.36, 48.48) (29.70, 61.30) (31.2, 65.7)| |QID|26899| |Z|223| |NPC|44387|
C Amongst the Ruins |N|Collect the (item:16762), found in the {Moonshrine Ruins} pond, directly under the circular platform (40.89, 65.14) (41.5, 75.5). (npc:12876) will spawn after you grab it. Kill him and loot the item to start the next quest| |QID|26891| |Z|223| |OBJ|1027| |NPC|12876|
K (npc:12876) |N|Kill (npc:12876) (42.2, 75.6) and collect (item:16782) to accept a new quest| |QID|6922| |L|16782| |Z|223| |NPC|12876|
A (npc:12876) |N|The item (item:16782) starts this quest. Dropped by (npc:12876)| |QID|6922| |U|16782| |Z|223|
C The Enemy of My Enemy |N|Kill (npc:4832) (34.82, 73.56) (33.88, 65.14) (41.10, 65.00) (41.02, 81.53) (51.8, 80.6) to collect the (item:5881). Clear the room first as Kelris wont notice you until directly attacked| |QID|26899| |Z|223| |NPC|4832|
C Nightmare of the Deeps |N|Kill (npc:4829), the final boss (84.8, 85.4). To open the doors to (npc:4829), light the four fires around the statue. Waves of enemies will spawn as each candle is lit| |QID|26888| |Z|223| |NPC|4829|

T The Enemy of My Enemy |N|(npc:44387) (31.2, 65.7)| |QID|26899| |Z|223| |NPC|44387|
T Deep in the Deeps |N|(npc:44375) (48.2, 12.7)| |QID|26892| |Z|221| |NPC|44375|
T Nightmare of the Deeps |N|(npc:12736) (48.2, 12.7)| |QID|26888| |Z|221| |NPC|12736|
T (npc:12876) |N|(npc:12736) (48.2, 11.8)| |QID|6922| |Z|221| |NPC|12736|
T Amongst the Ruins |N|(npc:12736) (48.2, 11.8)| |QID|26891| |Z|221| |NPC|12736|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
