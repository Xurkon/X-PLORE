local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_20_24_Blackfathom_Deeps")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Blackfathom Deeps (20-24)", "Razorfen Kraul (23-28)", "Horde", nil, "I", nil, function()
return [[

N Level 21 Required |QID|6563| |N|You must be at least level 21 to pick up the following quests| |PL|21|

R Zoram'gar Outpost |QID|6563| |N|Travel to Zoram'gar Outpost (12.2, 33.8)| |Z|1440|
A Amongst the Ruins |QID|6921| |N|(npc:12736) in {Zoram'gar Outpost} (11.6, 34.3)| |Z|1440| |NPC|12736|

R Blackfathom Deeps |QID|6561| |N|Zone into {Blackfathom Deeps} dungeon (14.60, 14.73)| |Z|1440| |I|
N As you go... |AYG|6561| |QID|6564| |N|Collect (item:16790) from (npc:4802) to begin a new quest| |L|16790| |DMAP|Blackfathom_Deeps_H| |NPC|4802|
A Blackfathom Villainy |QID|6561| |N|(npc:4787), inside {Blackfathom Deeps} refer to the Dungeon Map| |DMAP|Blackfathom_Deeps_H| |NPC|4787|
C Amongst the Ruins |QID|6921| |N|Click on the Fathom Stone underwater to collect (item:16762). refer to the Dungeon Map| |Z|1440| |OBJ|1027| |DMAP|Blackfathom_Deeps_H|
K (npc:12876) |QID|6922| |N|Kill (npc:12876) and collect (item:16782), he's the final boss in | |L|16782| |DMAP|Blackfathom_Deeps_H| |NPC|12876|
A Baron Aquanis |QID|6922| |N|Use (item:16782) to accept quest | |U|16782| |DMAP|Blackfathom_Deeps_H|
C Blackfathom Villainy |QID|6561| |N|Kill (npc:4832) and collect (item:5881)| |DMAP|Blackfathom_Deeps_H| |NPC|4832|
A Allegiance to the Old Gods |QID|6564| |N|Use (item:16790) to accept the quest| |U|16790| |O| |DMAP|Blackfathom_Deeps_H|

R Zoram'gar Outpost |QID|6564| |N|Travel to {Zoram'gar Outpost} (11.6, 34.3)| |Z|1440|
T Allegiance to the Old Gods |QID|6564| |N|(npc:12736) in {Zoram'gar Outpost} (11.6, 34.3)| |Z|1440| |O| |NPC|12736|
T Baron Aquanis |QID|6922| |N|(npc:12736) in {Zoram'gar Outpost} (11.6, 34.3)| |Z|1440| |O| |NPC|12736|
T Amongst the Ruins |QID|6921| |N|(npc:12736) in {Zoram'gar Outpost} (11.6, 34.3)| |Z|1440| |O| |NPC|12736|

R Thunder Bluff |TID|6561| |N|Travel to {Thunder Bluff} (70.9, 33.7)| |Z|1456|
T Blackfathom Villainy |QID|6561||N|(npc:9087) in {Thunder Bluff} (70.9, 33.7)| |Z|1456| |NPC|9087|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end