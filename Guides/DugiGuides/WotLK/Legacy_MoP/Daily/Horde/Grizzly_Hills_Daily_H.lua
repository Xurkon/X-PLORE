local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Grizzly_Hills_Daily_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "116(74+ Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

R Conquest Hold |N|Fly to Conquest Hold in Grizzly Hills (26.5, 65.8)|

A Blackriver Brawl |N|Raider Captain Kronn (26.5, 65.8)| |QID|12170| |D| |NPC|27120|
C Blackriver Brawl |N|Kill 10 Alliance NPCs or Players in Blackriver Logging Camp (28.5, 62.6)| |QID|12170| |D| |NPC|27117|
T Blackriver Brawl |N|Raider Captain Kronn (26.5, 65.8)| |QID|12170| |D| |NPC|27120|

A Keep 'Em on Their Heels |N|Commander Bargok (34.5, 33)| |QID|12284| |D| |NPC|27451|
A Shred the Alliance |N|Grekk (34.5, 32.6)| |QID|12270| |D| |NPC|27423|
A Making Repairs |N|Lurz (34.3, 32.6)| |QID|12280| |D| |NPC|27422|
A Overwhelmed! |N|Aumana (33.9, 32.8)| |QID|12296| |D| |NPC|27464|

C Overwhelmed! |N|Find the Wounded Skirmishers (35, 40) and use the (item:37576) on them| |U|37576| |QID|12296| |D| |NPC|27463|
C Making Repairs |N|Collect 4 (item:37412), 3 (item:37413) and 2 (item:37416) around (35, 40)| |QID|12280| |D| |OBJ|451, 7000, 6681|
C Shred the Alliance |N|Accept a Shredder (35, 40) and bring it back to Grekk (34.5, 32.6)| |QID|12270| |D| |NPC|27354|
C Keep 'Em on Their Heels |N|Kill 15 Alliance NPCs or Players in Blue Sky Logging Grounds (35, 40)| |QID|12284| |D| |NPC|27463, 27456, 27475|

T Shred the Alliance |N|Grekk (34.5, 32.6)| |QID|12270| |D| |NPC|27423|
T Making Repairs |N|Lurz (34.3, 32.6)| |QID|12280| |D| |NPC|27422|
T Overwhelmed! |N|Aumana (33.9, 32.8)| |QID|12296| |D| |NPC|27464|
T Keep 'Em on Their Heels |N|Commander Bargok (34.5, 33)| |QID|12284| |D| |NPC|27451|

A Keep Them at Bay |N|Centurion Kaggrum (10.1, 77.3)| |QID|12317| |D| |NPC|27563|
A Crush Captain Brightwater! |N|General Khazgar (10.1, 77.2)| |QID|12315| |D| |NPC|27532|
A Smoke 'Em Out |N|Stone Guard Ragetotem (11.3, 76.8)| |QID|12324| |D| |NPC|27606|
A Seeking Solvent |O| |N|Gurtor (11.2, 76.6)| |QID|12433| |D| |NPC|27565|

C Smoke 'Em Out |N|Go to Bunkhouse: (15, 76) Sawmill: (16, 76) Stables: (18, 80) and agro all the Venture Company Stragglers and use the (item:37621) on the group chasing you| |U|37621| |QID|12324| |D| |NPC|27570|
C Crush Captain Brightwater! |N|Kill Captain Brightwater (17, 82)| |QID|12315| |D| |NPC|27509|
C Keep Them at Bay |N|Kill 10 Alliance Units or Alliance players in Venture Bay area (16.7, 79)| |QID|12317| |D| |NPC|27501, 27500, 27550|
C Seeking Solvent |O| |N|Get the (item:37664) in the Goblin boat (16.5, 80.3)| |QID|12433| |D| |OBJ|8099|

T Seeking Solvent |O| |N|Gurtor (11.2,76.6)| |QID|12433| |D| |NPC|27565|
T Keep Them at Bay |N|Centurion Kaggrum (10.1, 77.3)| |QID|12317| |D| |NPC|27563|
T Crush Captain Brightwater! |N|General Khazgar (10.1, 77.2)| |QID|12315| |D| |NPC|27532|
T Smoke 'Em Out |N|Stone Guard Ragetotem (11.3, 76.8)| |QID|12324| |D| |NPC|27606|

A Riding the Red Rocket |N|General Gorlok (14.8, 86.5)| |QID|12432| |D| |NPC|27708|
N Get Element 115 |N|Get the (item:37664) in the Goblin boat (16.5, 80.3)| |L|37664| |OBJ|8099|
N Use the Red Rocket |N|Use the Red Rocket (13.7, 88.8)| |OBJ|9182| |V|
C Riding the Red Rocket |N|Jump on a Red Rocket and use your keys to steer and make a big U turn towards the Horde Boat and aim at the X (21.56, 84.93) drawn on the boat. Take the long way going around all the icebergs, rather than between them| |QID|12432| |D| |OBJ|9182|
T Riding the Red Rocket |N|General Gorlok (14.8, 86.5)| |QID|12432| |D| |NPC|27708|

A Seared Scourge |N|Mack Fearsen (16.7, 48.3)| |QID|12038| |D| |NPC|26604|
C Seared Scourge |N|Go to the Troll area (16, 27) just out of agro range throw the (item:35908) to burn 30 Famished Scourge Trolls| |U|35908| |QID|12038| |D| |NPC|26570|
T Seared Scourge |N|Mack Fearsen (16.7, 48.3)| |QID|12038| |D| |NPC|26604|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)	end
	
	function Guide:Unload()
	end
end