local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_30_ArathiHighlands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 30-40|r", "1417(30-30)#1417(30-30)#1417(30-30)", "1434(30-31)#1434(30-31)#1434(30-31)", "Horde", nil, "L", nil, function()
return [[

A Call of Air |QID|1532| |N|(npc:5906) in {Spirit Rise} (25.20, 20.65)| |C|Shaman| |R|Tauren| |Z|1456| |OID|1531| |NPC|5906|
A Call of Air |QID|1531| |N|(npc:5892) in {Grommash Hold} (38.00, 37.70)| |C|Shaman| |R|Orc, Troll| |Z|1454| |OID|1532| |NPC|5892|

T Call of Air |QID|1532| |N|(npc:5905) in {The Weathered Nook} (54.62, 44.97)  (53.53, 42.66)| |Z|1441| |C|Shaman| |O| |OID|1531| |NPC|5905|
T Call of Air |QID|1531| |N|(npc:5905) in {The Weathered Nook} (54.62, 44.97)  (53.53, 42.66)| |Z|1441| |C|Shaman| |O| |OID|1532| |NPC|5905|

R Orgrimmar |QID|1718| |N|Travel to {Orgrimmar} (80.2, 32.4)| |Z|1454| |C|Warrior|
A The Islander |QID|1718| |N|(npc:3354) in {Orgrimmar}, This is a Level 30 quest for (spell:2458) (80.2, 32.4)| |Z|1454| |C|Warrior| |NPC|3354|

R Fray Island |QID|1719| |N|Travel to {Fray Island} (68.6, 49.1)| |Z|1413| |C|Warrior|
T The Islander |QID|1718| |N|(npc:6236) in {Fray Island} (68.6, 49.1)| |Z|1413| |C|Warrior| |NPC|6236|
A The Affray |QID|1719| |N|(npc:6236) in {Fray Island} (68.6, 49.1)| |Z|1413| |C|Warrior| |NPC|6236|
C The Affray |QID|1719| |N|Kill the series of Mobs, bandage and eat in between Mobs. As for (npc:6238), you're given the privilege to attack him first because he's neutral, so just run back and (spell:100) then use your (spell:20230) for (npc:6238) (68.6, 48.7)| |Z|1413| |C|Warrior| |NPC|6236|
T The Affray |QID|1719| |N|(npc:6236) in {Fray Island} (68.6, 49.1)| |Z|1413| |C|Warrior| |NPC|6236|

R Ratchet |OID|1801| |N|Travel to {Ratchet} (62.6, 35.5)| |Z|1413| |C|Warlock|
A Tome of Cabal (1) |QID|1801| |N|(npc:6251) in {Ratchet}, this is a Level 30 quest to summon (npc:6268) make sure you get this (62.6, 35.5)| |Z|1413|  |C|Warlock| |NPC|6251|

R Undercity |OID|1803| |N|Travel to {Undercity} (77, 35.6)| |Z|1458| |C|Warlock|
T Tome of Cabal (1) |QID|1801| |N|(npc:6293) in {Undercity} (77, 35.6)| |Z|1458| |C|Warlock| |NPC|6293|
A Tome of Cabal (2) |QID|1803| |N|(npc:6293) in {Undercity} (77, 35.6)| |Z|1458| |C|Warlock| |NPC|6293|

N (item:6931) |QID|1803| |N|Pick up the (item:6931) from Tome of the Cabal (27.7, 72.8)| |L|6931| |C|Warlock| |Z|1424| |OBJ|928|

C Tome of Cabal (2) |QID|1803| |N|Get the (item:6997) from the Damaged Chest inside the centaur cave (43.5, 32.7)| |C|Warlock| |Z|1441| |OBJ|1|

R Undercity |OID|1805| |N|Travel to {Undercity} (77, 35.6)| |Z|1458| |C|Warlock|
T Tome of Cabal (2) |QID|1803| |N|(npc:6293) in {Undercity} (77, 35.6)| |Z|1458| |C|Warlock| |NPC|6293|
A Tome of Cabal (3) |QID|1805| |N|(npc:6293) in {Undercity} (77, 35.6)| |Z|1458| |C|Warlock| |NPC|6293|

C Tome of Cabal (3) |QID|1805| |N|Kill (npc:1057) and (npc:1038) to collect 3 (item:6930) (49.7.4, 46.6)| |Z|1437| |C|Warlock| |W| |NPC|1057, 1038|

R Ratchet |QID|1795| |N|Travel to {Ratchet} (62.6, 35.5)| |Z|1413| |C|Warlock|
T Tome of Cabal (3) |QID|1805| |N|(npc:6251) in {Ratchet} (62.6, 35.5)| |Z|1413| |C|Warlock| |NPC|6251|
A The Binding |QID|1795| |N|(npc:6251) in {Ratchet} (62.6, 35.5)| |Z|1413| |C|Warlock| |NPC|6251|
C The Binding |QID|1795| |N|Use (item:6999) to summon the (npc:6268) and kill it (62.6, 35.5)| |U|6999| |Z|1413| |C|Warlock| |NPC|6268|
T The Binding |QID|1795| |N|(npc:6251) in {Ratchet} (62.6, 35.5)| |Z|1413| |C|Warlock| |NPC|6251|

R Hammerfall |QID|655| |N|Travel to {Hammerfall} in {Arathi Highlands} (30.77, 51.66) (45.49, 59.00) (51.73, 57.86) (72.98, 43.35)|
A Hammerfall |QID|655| |N|(npc:2792) in {Hammerfall} (72.68, 34.04)| |NPC|2792|
T Hammerfall |QID|655| |N|(npc:2706) in {Hammerfall} (74.65, 36.32)| |NPC|2706|
A Raising Spirits (1) |QID|672| |N|(npc:2706) in {Hammerfall} (74.65, 36.32)| |NPC|2706|
f Hammerfall |QID|674| |N|Speak to (npc:2851) and grab flight path for (Hammerfall} (73.1, 32.7)| |NPC|2851|

C Raising Spirits (1) |QID|672| |N|Kill (npc:2559) and collect 10 (item:4512) west of Hammerfall (53.36, 44.56) (64, 37)| |W| |NPC|2559|

T Raising Spirits (1) |QID|672| |N|(npc:2706) in {Hammerfall} (74.65, 36.32)| |NPC|2706|
A Raising Spirits (2) |QID|674| |N|(npc:2706) in {Hammerfall} (74.65, 36.32)| |NPC|2706|
T Raising Spirits (2) |QID|674| |N|(npc:2792) in {Hammerfall} (72.68, 34.04)| |NPC|2792|
A Raising Spirits (3) |QID|675| |N|(npc:2792) in {Hammerfall} (72.68, 34.04)| |NPC|2792|
T Raising Spirits (3) |QID|675| |N|(npc:2706) in {Hammerfall}, skip follow (74.65, 36.34)| |NPC|2706|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "arathi.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
