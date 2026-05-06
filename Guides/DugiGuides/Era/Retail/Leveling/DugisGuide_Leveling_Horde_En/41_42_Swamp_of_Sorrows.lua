local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_41_42_Swamp_of_Sorrows")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1435(41-42)#1435(41-42)#1435(41-42)", "1434(42-43)#1434(42-43)#1434(42-43)", "Horde", nil, "L", nil, function()
return [[

T The Rumormonger |QID|1115| |N|(npc:773) in {The Salty Sailor Tavern} (26.95, 77.22)| |Z|1434| |O| |NPC|773|
A Dream Dust in the Swamp |QID|1116| |N|(npc:773) in {The Salty Sailor Tavern} (26.95, 77.22)| |Z|1434| |PRE|1116| |NPC|773|

R Duskwood |QID|1372| |N|Travel north to Duskwood (41.7, 0.3)| |Z|1434|
A Nothing But The Truth (1) |QID|1372| |N|(npc:5418) in {Beggar's Haunt} (87.7, 35.7)| |Z|1431| |NPC|5418|
T Nothing But The Truth (1) |QID|1372| |N|(npc:5414) in {Beggar's Haunt} (87.5, 35.4)| |Z|1431| |NPC|5414|

R Swamp of Sorrows |QID|1389| |N|Travel east through {Deadwind Pass} to {Swamp of Sorrows} (63.8, 40.7)| |Z|1430|
R The Harborage |QID|1389| |N|Travel to {The Harborage} (25.99, 31.44)| 
A Draenethyst Crystals |QID|1389| |N|(npc:1776) in {The Harborage} (25.99, 31.44)| |NPC|1776|

R Stonard |QID|698| |N|Travel to Stonard (46, 54.7)|
f Stonard |QID|698| |N|Speak to (npc:6026) and grab flight path for {Stonard} (46, 54.7)| |NPC|6026|
h Stonard |QID|698| |N|Speak to (npc:6930) set hearth in {Stonard} (45.1, 56.5)| |NPC|6930|
A Lack of Surplus |QID|698| |N|(npc:5591) in {Stonard} (44.8, 57.0)| |NPC|5591|
T Report to Helgrum |QID|1420| |N|(npc:1442) in {Stonard} (47.9, 55.1)| |NPC|1442|
A Pool of Tears |QID|1424| |N|(npc:1443) in {Stonard} (47.9, 54.9)| |NPC|1443|

C Lack of Surplus |QID|698| |N|Kill (npc:1082) for 8 (item:6169) (51.42, 58.24) (57.70, 54.35) (57.32, 46.45) (53.54, 41.79) (47.71, 35.45)| |LOOP| |NPC|1082|
R Pool of Tears |QID|1424| |N|Travel to {Pool of Tears} (66.47, 59.14)|
C Pool of Tears |QID|1424| |N|Collect 10 (item:6175) in and around {Pool of Tears}, quite hard to spot look for objects like plate, urn, sack in each waypoint (66.47, 59.14) (65.40, 55.41) (65.89, 47.04) (68.27, 43.12) (73.76, 42.29) (75.51, 60.15) (74.21, 61.62)(73.58, 64.66) (71.52, 59.42)| |LOOP| |OBJ|653, 652, 651|

R Misty Reed Post |TID|1427| |N|Travel to {Misty Reed Post} (81.4, 80.9)|
T Lack of Surplus |QID|698| |N|(npc:5592) in {Misty Reed Post} (81.4, 80.9)| |NPC|5592|
A Lack of Surplus (2) |QID|699| |N|(npc:5592) in {Misty Reed Post} (81.4, 80.9)| |NPC|5592|
C Lack of Surplus (2) |QID|699| |N|Kill (npc:1087) and collect 6 (item:6168) in {The Forbidding Sea} (82.21, 99.30)| |W| |NPC|1087|
T Lack of Surplus (2) |QID|699| |N|(npc:5592) in {Misty Reed Post} (81.4, 80.9)| |NPC|5592|
A Threat From the Sea |QID|1422| |N|(npc:5592) in {Misty Reed Post} (81.4, 80.9)| |NPC|5592|
T Threat From the Sea |QID|1422| |N|(npc:5593) in {Misty Reed Post} (83.7, 80.5)| |NPC|5593|
A Threat From the Sea (2) |QID|1426| |N|(npc:5593) in {Misty Reed Post} (83.7, 80.5)| |NPC|5593|
C Threat From the Sea (2) |QID|1426| |N|Kill 10 (npc:747), 10 (npc:750) and 10 (npc:751) found along the East coast (84, 87.3) (90, 73) (94, 57)| |LOOP| |NPC|747, 750, 751|
T Threat From the Sea (2) |QID|1426| |N|(npc:5593) in {Misty Reed Post} (83.7, 80.5)| |NPC|5593|
A Threat From the Sea (3) |QID|1427| |N|(npc:5593) in {Misty Reed Post} (83.7, 80.5)| |NPC|5593|
T Threat From the Sea (3) |QID|1427| |N|(npc:5592) in {Misty Reed Post} (81.4, 80.9)| |NPC|5592|

R Fallow Sanctuary |QID|1393| |N|Travel {Fallow Sanctuary} (65.40, 18.29)| |Z|1435|
A Galen's Escape |QID|1393| |N|(npc:5391) in {Fallow Sanctuary}<br/><br/>Clear the area then accept the quest (65.40, 18.29)| |Z|1435| |NPC|5391|

N As you go.. |AYG|1393| |QID|1389| |N|Collect 6 (item:6071) in {Fallow Sanctuary}, it is a large blue crystal on the ground| |OBJ|219|
C Galen's Escape |QID|1393| |N|Escort (npc:5391) until quest is complete (64.69, 25.17) (52.62, 29.83)| |Z|1435| |NPC|5391|
R Fallow Sanctuary |QID|1393| |N|Travel to {Fallow Sanctuary} (62, 24)|
C Draenethyst Crystals |QID|1389| |N|Loot 6 (item:6071) which are scattered around the Fallow Sanctuary (62, 24)| |W| |OBJ|219|

T Galen's Escape |QID|1393| |N|Galen's Strongbox in {The Shifting Mire} (47.86, 39.79)| |Z|1435| |OBJ|10|
K (npc:5477) |QID|1392| |N|Kill (npc:5477) and collect (item:6196), he patrols around in {The Shifting Mire} (46.76, 38.63)| |L|6196| |W| |NPC|5477|
A Noboru the Cudgel |QID|1392| |N|Use (item:6196) to begin the quest| |U|6196| |O|

R The Harborage |TID|1392| |N|Travel to {The Harborage} (25.99, 31.44)| 
T Noboru the Cudgel |QID|1392| |N|(npc:1776) in {The Harborage} (25.99, 31.44)| |O| |NPC|1776|
T Draenethyst Crystals |QID|1389| |N|(npc:1776) in {The Harborage} (25.99, 31.44)| |NPC|1776|

C Dream Dust in the Swamp |QID|1116| |N|Kill (npc:741) and (npc:740) and collect 10 (item:5803) near {Itharius's Cave} (12.67, 67.10)| |Z|1435| |W| |PRE|1116| |NPC|741, 740|

R Stonard |OID|1429| |N|Travel or (item:6948) to {Stonard} (47.9, 54.9)| |U|6948|
T Pool of Tears |QID|1424| |N|(npc:1443) in {Stonard} (47.9, 54.9)| |NPC|1443|
A The Atal'ai Exile |QID|1429| |N|(npc:1443) in {Stonard} (47.9, 54.9)| |NPC|1443|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "swampofsorrows.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end



