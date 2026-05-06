
local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_29_35_Razorfen_Kraul")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Razorfen Kraul (29-35)", "Gnomeregan (24-29)", "Alliance", nil, "I", nil, function()
return [[

R Ratchet |QID|1221| |N|Travel to {Ratchet} (62.4, 37.6)| |Z|1413| 
A Blueleaf Tubers |QID|1221| |N|(npc:3446) in {Ratchet} (62.4, 37.6)| |Z|1413| |NPC|3446|
N (item:5880) |QID|1221.2| |N|Collect the (item:5880) on the table (62.3, 37.7)| |Z|1413| |L|5880|
N (item:6684) |QID|1221.4| |N|Collect (item:6684) in {Ratchet} (62.3, 37.7)| |Z|1413| |L|6684|
N (item:5897) |QID|1221.3| |N|Collect (item:5897) in {Ratchet} (62.3, 37.7)||Z|1413| |L|5897| 

R Thousand Needles |QID|1100|  |N|Travel to Thousand Needles (31.9, 24.1)| |Z|1441|
N (item:5791) |QID|1100| |N|Collect (item:5791) held by the corpse on the ground (30.7, 24.5)| |Z|1441| |L|5791|
A Lonebrow's Journal |QID|1100|  |N|Use (item:5791) to accept quest (30.7, 24.5)| |U|5791||Z|1441|

R Feralas |QID|1101| |N|Travel to Feralas (88.9, 41.2)| |Z|1444|
T Lonebrow's Journal |QID|1100| |N|(npc:4048) in {Feralas} (89.6, 46.6)| |Z|1444| |NPC|4048|
A The Crone of the Kraul |QID|1101| |N|(npc:4048) in {Feralas} (89.6, 46.6)| |Z|1444| |NPC|4048|

R Razorfen Kraul |QID|1142| |N|Use the dungeon finder to queue for Razorfen Kraul| |I|
C The Crone of the Kraul |QID|1101| |N|Kill (npc:4421) and collect (item:5793)| |DMAP|Razorfen_Kraul_A| |NPC|4421|
A Mortality Wanes |QID|1142| |N|(npc:4510) in {Razorfen Kraul}| |DMAP|Razorfen_Kraul_A| |NPC|4510|
A (npc:4508) |QID|1144| |N|Find (npc:4508) and complete the escort quest| |DMAP|Razorfen_Kraul_A| |NPC|4508|
C (npc:4508) |QID|1144| |N|Follow and Protect (npc:4508)| |DMAP|Razorfen_Kraul_A| |NPC|4508|
T (npc:4508) |QID|1144| |N|(npc:4508)| |DMAP|Razorfen_Kraul_A| |NPC|4508|
U (item:5880) |QID|1221| |N|Use (item:5880) to summon your gopher to find the Truffle| |U|5880| |DMAP|Razorfen_Kraul_A|
C Blueleaf Tubers |QID|1221| |N|Keep using your (item:6684) to help you collect 6 (item:5876), head towards the area where you found (npc:4508)| |U|6684| |DMAP|Razorfen_Kraul_A|
C Mortality Wanes  |QID|1142| |N|Keep killing any Elite NPCs inside the instance until you find (item:5825)| |DMAP|Razorfen_Kraul_A|

R Thalanaar |N|Teleport back to Thalanaar (89.6, 46.6)| |Z|1444|  |I|
T The Crone of the Kraul |N|(npc:4048) in {Feralas} (89.6, 46.6)| |Z|1444| |QID|1101|

R Ratchet |TID|1221| |N|Travel to {Ratchet} (62.4, 37.6)| |Z|1413|
T Blueleaf Tubers |QID|1221| |N|(npc:3446) in {Ratchet} (62.4, 37.6)| |Z|1413| |NPC|3446|

R Darnassus |N|Use the portal at (55.9, 89.8)| |Z|1438| |QID|971|
T Mortality Wanes |QID|1142| |N|(npc:4521) in {Darnassus} (69.5, 67.5)| |Z|1457| |NPC|4521|

N Guide Complete
]]
end)
	end
	
	function Guide:Unload()
	end
end