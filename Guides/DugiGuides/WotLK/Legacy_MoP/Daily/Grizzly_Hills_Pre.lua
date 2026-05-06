local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Grizzly_Hills_Pre")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Pre Quests", "116(74+ Pre Quests)", nil, "Horde", nil, "D", nil, function()
return [[

R Granite Springs |N|Travel to {Granite Springs} (16.22, 47.65)| |QID|11984|
A Filling the Cages |N|(npc:26424) (16.2, 47.7) in {Granite Springs}| |QID|11984| |NPC|26424|
N Speak to Budd |QID|11984.1| |N|Speak to (npc:26422) in {Granite Springs} so that he will follow you then tick this step (16.4, 48.1)| |NPC|26422|
C Filling the Cages |QID|11984| |U|35736| |N|Head to the {Ruins of Drak'Zin} and use your pet bar to send Budd after a troll, then use the (item:35736) once dazed (13.7, 58.6)| |NPC|26425|
T Filling the Cages |N|(npc:26424) (16.2, 47.7) in {Granite Springs}| |QID|11984| |NPC|26424|
A Truce? |N|(npc:26423) (16.5, 47.8) in {Granite Springs}| |QID|11989| |NPC|26423|
N (item:38083) |N|Collect the (item:38083) next to the cage (16.5, 47.8) in {Granite Springs}| |L|38083| |QID|11989| |T| |OBJ|7871|
U (item:38083) |QID|11989| |N|Use (item:38083)| |U|38083| |PPOS|
C Truce? |QID|11989| |N|Use (item:38083) then talk to (npc:26423) in {Granite Springs} (16.5, 47.8) to shake his hand| |U|38083| |NPC|26423|
T Truce? |N|(npc:26423) (16.5, 47.8) in {Granite Springs}| |QID|11989| |NPC|26423|
A Vial of Visions |N|(npc:26423) (16.5, 47.8) in {Granite Springs}| |QID|11990| |NPC|26423|
B (item:3371) |N|Talk to (npc:26474) in {Granite Springs} (16.0, 47.8) and buy an (item:3371)| |L|3371| |QID|11990.1| |NPC|26474|
N (item:35795) |N|Get (item:35795) in the lake (15.2, 40.6) in {Zeb'Halak}| |QID|11990.3| |T| |OBJ|267|
N 3 (item:37085) |N|Get (item:37085) in {Zeb'Halak} (13.1, 41.3) (13.0, 38.9)| |QID|11990.2| |T| |OBJ|358|

R Granite Springs |N|Travel to {Granite Springs} (16.5, 47.8)| |QID|11990|
T Vial of Visions |N|(npc:26423) (16.5, 47.8) in {Granite Springs}| |QID|11990| |NPC|26423|
A Scourgekabob |N|(npc:26519) (15.8, 46.8) in {Granite Springs}| |QID|12484| |NPC|26519|
N (item:38149) |QID|12484| |N|Collect a (item:38149) (15.8, 46.8) in {Granite Springs}| |L|38149| |T| |OBJ|6804|
C Scourgekabob |QID|12484| |N|Loot a mummy then head down to the bonfire (16.84, 48.33) in {Granite Springs} and burn it| |U|38149| |OBJ|6804|
T Scourgekabob |N|(npc:26604) (16.7, 48.3) in {Granite Springs}| |QID|12484| |NPC|26604|
A Seared Scourge |N|(npc:26604) (16.7, 48.3) in {Granite Springs}| |QID|12029| |NPC|26604|
C Seared Scourge |QID|12029| |U|35908| |N|Go to {Drak'tharon Keep} (16.96, 28.66). Go up the stairs and jump onto the edges of the staircase then use (item:35908) at 20 (npc:26570) below| |NPC|26570|
T Seared Scourge |N|(npc:26604) (16.7, 48.3) in {Granite Springs}| |QID|12029| |NPC|26604|

N Guide Complete 
]]
end)
	end
	
	function Guide:Unload()
	end
end