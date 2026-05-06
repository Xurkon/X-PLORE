local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_50_50_Azshara")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1447(50-50)#1447(50-50)#1447(50-50)", "1425(50-51)#1425(50-51)#1425(50-51)", "Horde", nil, "L", nil, function()
return [[

R Orgrimmar |QID|3517| |N|Travel to {Orgrimmar} (54.1, 68.6)| |Z|1454|
h Orgrimmar |QID|3517| |N|Speak to (npc:6929) and set hearth in {Orgrimmar} (54.1, 68.6)| |Z|1454| |NPC|6929|
N (item:10695) |QID|3568| |N|Withdraw (item:10695) from the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|10695| |OO| |NPC|3309| --Orgrimmar
N (item:4589) |QID|7842| |N|Withdraw (item:4589) from the bank <br/><br/>Tick this step (49.6, 69.4)| |Z|1454| |L|10695| |OO| |NPC|3309| --Orgrimmar

R Valormok |QID|3517| |N|Travel to {Valormok} (22.53, 51.40)| |Z|1447| 
A Stealing Knowledge |QID|3517| |N|(npc:8587) in {Valormok} (22.53, 51.40)| |Z|1447| |NPC|8587|
N (item:10540) |QID|3517.3| |N|Collect (item:10540) from the ground in {Ruins of Eldarath} it spawns randomly around the area (35.73, 56.56)| |Z|1447| |W| |OBJ|2653|
N (item:10541) |QID|3517.4| |N|Collect (item:10541) from the ground in {Ruins of Eldarath} it spawns randomly around the area (39.56, 48.17)| |Z|1447| |W| |OBJ|2654|
N (item:10538) |QID|3517.1| |N|Collect (item:10538) from the ground in {Ruins of Eldarath} it spawns randomly around the area (39.2, 52.4)| |Z|1447| |W| |OBJ|2651|
N (item:10539) |QID|3517.2| |N|Collect (item:10539) from the ground in {Ruins of Eldarath} it spawns randomly around the area (37.38, 60.66)| |Z|1447| |W| |OBJ|2652|

N (item:10691) |QID|3568.1| |N|Use (item:10687) in the pool to collect (item:10691) at {Southridge Beach} (47.74, 61.03)| |Z|1447| |U|10687|
N (item:10692) |QID|3568.2| |N|Use (item:10688) in the pool to collect (item:10692) at {Southridge Beach} (47.90, 51.43)| |Z|1447| |U|10688|
N (item:10693) |QID|3568.3| |N|Use (item:10689) in the pool to collect (item:10693) at {The Shattered Strand} (48.63, 48.53)| |Z|1447| |U|10689|
N (item:10694) |QID|3568.4| |N|Use (item:10690) in the pool to collect (item:10694) at {The Shattered Strand} (47.38, 46.28)| |Z|1447| |U|10690|

R Valormok |TID|3517| |N|Travel to {Valormok} (22.56, 51.41)| |Z|1447|
T Stealing Knowledge |QID|3517| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|
A Delivery to Magatha |QID|3518| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|
A Delivery to Jes'rimon |QID|3541| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|
A Delivery to Andron Gant |QID|3542| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|
A Delivery to Archmage Xylem |QID|3561| |N|(npc:8587) in {Valormok} (22.56, 51.41)| |Z|1447| |NPC|8587|

N (npc:8395) |QID|3565| |N|Speak to (npc:8395) to teleport up to {Bear's Head} (28.12, 50.08)| |Z|1447| |REACH|26.32,46.22| |NPC|8395|
T Delivery to Archmage Xylem |QID|3561| |N|(npc:8379) in {Bear's Head} (26.89, 43.02) (29.72, 40.49)| |Z|1447| |NPC|8379|
A Xylem's Payment to Jediga |QID|3565| |N|(npc:8379) in {Bear's Head} (29.72, 40.49)| |Z|1447| |NPC|8379|
N (npc:8399) |QID|3565| |N|Speak to (npc:8399) to teleport down (26.46, 46.25)| |Z|1447| |REACH|28.07,50.18| |NPC|8399|

R Valormok |TID|3565| |N|Travel to {Valormok} (22.58, 51.43)| |Z|1447|
T Xylem's Payment to Jediga |QID|3565| |N|(npc:8587) in {Valormok} (22.58, 51.43)| |Z|1447| |NPC|8587|

R Elder Rise |TID|3518| |N|Travel to {Elder Rise} in {Thunder Bluff} (69.84, 30.88)| |Z|1456|
T Delivery to Magatha |QID|3518| |N|(npc:4046) in {Elder Rise} (69.84, 30.88)| |Z|1456| |NPC|4046|
A Magatha's Payment to Jediga |QID|3562| |N|(npc:4046) in {Elder Rise} (69.84, 30.88)| |Z|1456| |NPC|4046|
T Assisting Arch Druid Runetotem |QID|936| |N|(npc:4046) in {Elder Rise} (78.40, 28.50)| |Z|1456| |O| |NPC|4046|

R The Drag |TID|81| |N|Travel to {The Drag} in {Orgrimmar} (56.39, 46.54)| |Z|1454|
T Rise of the Silithid |QID|32| |N|(npc:7010) in {The Drag} (56.39, 46.54)| |Z|1454| |O| |NPC|7010|
A March of the Silithid |QID|4494| |N|(npc:7010) in {The Drag} (56.39, 46.54)| |Z|1454| |PRE|32| |NPC|7010|
T Delivery to Jes'rimon |QID|3541| |N|(npc:8659) in {The Drag}, he's up the very top of the building (55.48, 34.13)| |Z|1454| |NPC|8659|
A Jes'rimon's Payment to Jediga |QID|3563| |N|(npc:8659) in {The Drag} (55.48, 34.13)| |Z|1454| |NPC|8659|
A Bone-Bladed Weapons |QID|4300| |N|(npc:8659) in {The Drag} (55.67, 34.21)| |Z|1454| |NPC|8659|
T Ripple Delivery |QID|81| |N|(npc:6986) in {The Drag} (59.45, 36.64)| |Z|1454| |O| |NPC|6986|

R The Apothecarium |OID|4133| |N|Travel to {The Apothecarium} in {Undercity} (54.84, 76.31)| |Z|1458| 
T Delivery to Andron Gant |QID|3542| |N|(npc:6522) in {The Apothecarium} (54.84, 76.31)| |Z|1458| |NPC|6522|
A Andron's Payment to Jediga |QID|3564| |N|(npc:6522) in {The Apothecarium} (54.84, 76.31)| |Z|1458| |NPC|6522|
T Seeping Corruption |QID|3568| |N|(npc:8390) in {The Apothecarium} (52.09, 80.40) (47.51, 75.73) (48.70, 71.60)| |Z|1458| |NPC|8390|
A Seeping Corruption |QID|3569| |N|(npc:8390) in {The Apothecarium} (48.76, 71.64)| |Z|1458| |NPC|8390|
T Seeping Corruption |QID|3569| |N|(npc:8393) in {The Apothecarium} (49.09, 70.68)| |Z|1458| |NPC|8393|
T Return to Apothecary Zinge |QID|864| |N|(npc:5204) in {The Apothecarium} (49.92, 68.23)| |Z|1458| |O| |NPC|5204|
A Vivian Lagrave |QID|4133| |N|(npc:5204) in {The Apothecarium} (49.92, 68.23)| |Z|1458| |NPC|5204|
A A Sample of Slime... |QID|4293| |N|(npc:10136) in {The Apothecarium} (47.46, 73.30)| |Z|1458| |NPC|10136|
A ... and a Batch of Ooze |QID|4294| |N|(npc:10136) in {The Apothecarium} (47.46, 73.30)| |Z|1458| |NPC|10136|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "azshara.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
