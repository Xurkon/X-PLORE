local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_ZulDrak_Pre")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Pre Quests", "121(76+ Pre Quests)", nil, "Horde", nil, "D", nil, function()
return [[

R The Argent Stand |N|Fly to The Argent Stand in Zul'Drak (39.5, 66.9)| |QID|12740|
A Parachutes for the Argent Crusade |N|(npc:28059) (39.5, 66.9) at {The Argent Stand}| |QID|12740| |NPC|28059|
C Parachutes for the Argent Crusade |QID|12740| |U|39615| |N|Find the Argent fighters out in the courtyard (37.7, 65.9) and toss them (item:39615)| |NPC|28029, 28028|
T Parachutes for the Argent Crusade |N|(npc:28059) (39.5, 66.9) at {The Argent Stand}| |QID|12740| |NPC|28059|

A Pa'Troll |N|(npc:28039) (40.3, 66.6) at {The Argent Stand}| |QID|12596| |NPC|28039|
A Lab Work |N|(npc:28205) (35.1, 52.2) in {Heb'Valok}| |QID|12557| |NPC|28205|
N (item:38340) |QID|12557.3| |N|Collect (item:38340) on the lower shelf in {Heb'Valok}, it is round and brown (34.96, 51.52)| |OBJ|7918|
N (item:38386) |QID|12557.1| |N|Collect (item:38386) in the open sack on the floor in {Heb'Valok} (34.79, 51.22)| |OBJ|6484|
N (item:38339) |QID|12557.2| |N|Collect (item:38339) in {Heb'Valok}. It looks like a bone wing (34.88, 50.99)| |OBJ|7924|
N (item:38346) |QID|12557.4| |N|Collect (item:38346) in {Heb'Valok}, which is a small thin greenish colored bottle (35.05, 53.21)| |OBJ|228|
C Lab Work |QID|12557| |N|(item:38386), (item:38339), and (item:38346) are in the room to your left as you come into Alchemist Finkelstein's room (35, 53) in {Heb'Valok}. The (item:38340) is in the room to the right (35, 51.5)| |OBJ|7918, 6484, 7924, 228|
T Lab Work |N|(npc:28205) (35.1, 52.2) in {Heb'Valok}| |QID|12557| |NPC|28205|
A Something for the Pain |N|(npc:28042) (48.8, 78.9) in {Drak'Sotra}| |QID|12597| |NPC|28042|
C Something for the Pain |QID|12597| |N|Collect 5 (item:38552) west at the {Drak'Sotra Fields} (44.1, 79.6)| |OBJ|7935|
T Something for the Pain |N|(npc:28042) (48.8, 78.9) in {Drak'Sotra}| |QID|12597| |NPC|28042|
A Throwing Down |N|(npc:28044) (58.1, 72.5) in {Drak'Sotra}| |QID|12598| |NPC|28044|
C Throwing Down |QID|12598| |U|38574| |N|Just to the northwest (54.8, 71.0). Look for light brown hills with a hole in the middle and throw the (item:38574) in it|
T Throwing Down |N|(npc:28044) (58.1, 72.5) in {Drak'Sotra}| |QID|12598| |NPC|28044|

R Drak'Agal |N|Travel to {Drak'Agal} (48.19, 63.96)| |QID|12599|
A Creature Comforts |N|(npc:28043) (48.1, 63.8) in {Drak'Agal}| |QID|12599| |NPC|28043|
C Creature Comforts |QID|12599| |N|Collect 20 pieces of (item:38563) found all around the waters in {Drak'Agal} (44.8, 62.7)| |OBJ|7938|
T Creature Comforts |N|(npc:28043) (48.1, 63.8) in {Drak'Agal}| |QID|12599| |NPC|28043|
T Pa'Troll |N|(npc:28039) (40.3, 66.6) at {The Argent Stand}| |QID|12596| |NPC|28039|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end