local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Alliance_En_Grizzly_Hills_Daily_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "116(74+ Dailies)", nil, "Alliance", nil, "D", nil, function()
return [[

R Amberpine Lodge |N|Travel to Amberpine Lodge in  Grizzly Hills (30, 59.8)|

A Blackriver Skirmish |N|Scout Captain Carter (30, 59.8)| |QID|12444| |D| |NPC|27783|
C Blackriver Skirmish |N|Kill 10 Horde NPCs or Players in Blackriver Logging Camp (28.5, 62.6)| |QID|12444| |D| |NPC|27118|
T Blackriver Skirmish |N|Scout Captain Carter (30, 59.8)| |QID|12444| |D| |NPC|27783|

A Kick 'Em While They're Down |N|Sergeant Hartsman (39.4, 43.8)| |QID|12289| |D| |NPC|27468|
A Shredder Repair |N|Synipus (39.5, 43.6)| |QID|12244| |D| |NPC|27371|
A Pieces Parts |N|Pipthwack (39.6, 43.4)| |QID|12268| |D| |NPC|27416|
A Life or Death |N|Rheanna (40.5, 42.6)| |QID|12296| |D| |NPC|27484|

C Life or Death |N|Find the Wounded Soldiers (35, 40) and use the (item:37576) on them| |U|37576| |QID|12296| |D| |NPC|27482|
C Pieces Parts |N|Collect 4 (item:37412), 3 (item:37413) and 2 (item:37416) around (35, 40)| |QID|12268| |D| |OBJ|451, 7000, 6681|
C Shredder Repair |N|Collect a Shredder (35, 40) and bring it back to Synipus (39.5, 43.6)| |QID|12244| |D| |NPC|27354|
C Kick 'Em While They're Down |N|Kill 15 Horde NPCs or Players in Blue Sky Logging Grounds (35, 40)| |QID|12289| |D| |NPC|27475, 27456|

T Shredder Repair |N|Synipus (39.5, 43.6)| |QID|12244| |D| |NPC|27371|
T Pieces Parts |N|Pipthwack (39.6, 43.4)| |QID|12268| |D| |NPC|27416|
T Life or Death |N|Rheanna (40.5, 42.6)| |QID|12296| |D| |NPC|27484|
T Kick 'Em While They're Down |N|Sergeant Hartsman (39.4, 43.8)| |QID|12289| |D| |NPC|27468|

A Keep Them at Bay! |N|Lieutenant Stuart (22.1, 81.2)| |QID|12316| |D| |NPC|27562|
A Smoke 'Em Out |N|Sergeant Downey (22, 80.8)| |QID|12323| |D| |NPC|27602|
A Down With Captain Zorna! |N|Baron Freeman (22.2, 81.2)| |QID|12314| |D| |NPC|27520|
A Seeking Solvent |O| |N|Barblefink (23, 80.2)| |QID|12443| |D| |NPC|27495|

C Smoke 'Em Out |N|Go to Bunkhouse: (15,76) Sawmill: (16, 76) Stables: (18, 80) and  agro all the Venture Company Stragglers and use the (item:37621) the group chasing you| |U|37621| |QID|12323| |D| |NPC|27570|
C Down With Captain Zorna! |N|Kill Captain Zorna (13.5, 80.2)| |QID|12314| |D| |NPC|27511|
C Keep Them at Bay! |N|Kill 10 Horde Units (Conquest Hold Berserkers) or Horde players in Venture Bay area (13.8, 78.4)| |QID|12316| |D| |NPC|27501, 27500|
C Seeking Solvent |O| |N|Get the (item:37664) in the Goblin boat (16.5, 80.3)| |QID|12443| |D| |OBJ|8099|

T Seeking Solvent |O| |N|Barblefink (23, 80.2)| |QID|12443| |D| |NPC|27495|
T Keep Them at Bay! |N|Lieutenant Stuart (22.1, 81.2)| |QID|12316| |D| |NPC|27562|
T Smoke 'Em Out |N|Sergeant Downey (22, 80.8)| |QID|12323| |D| |NPC|27602|
T Down With Captain Zorna! |N|Baron Freeman (22.2, 81.2)| |QID|12314| |D| |NPC|27520|

A Riding the Red Rocket |N|Commander Howser (14.8, 86.6)| |QID|12437| |D| |NPC|27759|
N Get Element 115 |N|Get the (item:37664) in the Goblin boat (16.5, 80.3)| |L|37664| |OBJ|8099|
N Use the Red Rocket |N|Use the Red Rocket (13.7, 88.8)| |OBJ|9182| |V|
C Riding the Red Rocket |N|Jump on a Red Rocket and use your keys to steer and make a big U turn towards the Alliance Boat and aim of the X (9.6, 79.2) drawn on the boat. Take the long way going around all the icebergs, rather than between them| |QID|12437| |D| |OBJ|9182|
T Riding the Red Rocket |N|Commander Howser (14.8, 86.6)| |QID|12437| |D| |NPC|27759|

A Seared Scourge |N|Mack Fearsen (16.7, 48.3)| |QID|12038| |D| |NPC|26604|
C Seared Scourge |N|Go to the Troll area (16, 27) just out of agro range throw the (item:35908) to burn 30 Famished Scourge Trolls| |U|35908| |QID|12038| |D| |NPC|26570|
T Seared Scourge |N|Mack Fearsen (16.7, 48.3)| |QID|12038| |D| |NPC|26604|

N Guide Complete 
]]
end)
	end
	
	function Guide:Unload()
	end
end