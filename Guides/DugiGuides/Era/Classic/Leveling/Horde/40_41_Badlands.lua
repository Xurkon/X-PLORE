local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_40_41_Badlands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1418(40-41)#1418(40-41)#1418(40-41)", "1435(41-42)#1435(41-42)#1435(41-42)", "Horde", nil, "L", nil, function()
return [[

R Undercity |QID|710| |N|Travel to {Undercity} (64.0, 36.0)| |Z|1458|
B (item:3829) |QID|710| |N|Buy (item:3829) from Auction House<br/><br/>Skip this if not available<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|3829| |Z|1458| |NPC|15683|
B (item:4389) |QID|710| |N|Buy (item:4389) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|4389| |Z|1458| |NPC|15683|
B (item:929) |QID|710| |N|Buy (item:929) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829) and (item:4389)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|929| |Z|1458| |NPC|15683|
B (item:3823) |QID|710| |N|Buy (item:3823) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829) and (item:4389)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|3823| |Z|1458| |NPC|15683|
B 4 (item:3404) |QID|710| |N|Buy 4 (item:3404) from Auction House - Skip this if not available (64.0, 36.0)| |L|3404 4| |Z|1458| |NPC|15683|
N (item:5827) |QID|1106| |N|Withdraw (item:5827) from the bank (66.0, 45.2)| |Z|1458| |L|5827| |OO| |NPC|4549, 2458| -- Undercity

R Wetlands |QID|710| |N|Travel to {Wetlands} (45.4, 96.6)| |Z|1417| 
R Loch Modan |QID|710| |N|Travel to {Loch Modan} through the tunnel (53.7, 72.2) (55, 95)| |Z|1437|
R Badlands |QID|710| |N|Travel to {Badlands} (47.2, 94.9)| |Z|1432|

R Valley of Fangs |N|Travel to {Valley of Fangs} (42.25, 52.70)| |Z|1418|
T Martek the Exiled |QID|1106| |N|(npc:4618) in {Valley of Fangs} (42.25, 52.70)| |Z|1418| |O| |NPC|4618|
A Indurium |QID|1108| |N|(npc:4618) in {Valley of Fangs} (42.25, 52.70)| |Z|1418| |NPC|4618|
A Barbecued Buzzard Wings |QID|703| |N|(npc:2817) in {Valley of Fangs} (42.38, 52.83)| |Z|1418| |NPC|2817|
C Indurium |QID|1108| |N|Collect 10 (item:5797) from Stonevault mobs in {Agmond's End} (49.97, 68.31)| |Z|1418| |PRE|1106| |W| |NPC|2893, 2894|
T Indurium |QID|1108| |N|(npc:4618) in {Valley of Fangs} (42.25, 52.70)| |Z|1418| |PRE|1106| |NPC|4618|
A News for Fizzle |QID|1137| |N|(npc:4618) in {Valley of Fangs} (42.25, 52.70)| |Z|1418| |NPC|4618|

R The Dustbowl |QID|710| |N|Travel to {The Dustbowl} (25.91, 44.91)| |Z|1418|
A Study of the Elements: Rock (1) |QID|710| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Coolant Heads Prevail |QID|713| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921| |L|3829| |O|
T Coolant Heads Prevail |QID|713| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921| |O|
A Gyro... What? |QID|714| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921| |L|4389| |O|
T Gyro... What? |QID|714| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921| |O|
A Liquid Stone |QID|715| |N|(npc:2920) in {The Dustbowl} (25.83, 44.29)| |Z|1418| |NPC|2920| |L|3823| |O|
T Liquid Stone |QID|715| |N|(npc:2920) in {The Dustbowl} (25.83, 44.29)| |Z|1418| |NPC|2920| |O|

C Study of the Elements: Rock (1) |QID|710| |N|Kill the (npc:2735) and collect 10 (item:4626)<br/><br/>Make a start on this quest and skip it for now if you can't find any (npc:2735) (13.12, 38.86)| |W| |NPC|2735|

R Kargath |QID|1419| |N|Travel to {Kargath} (4, 44.9)| |Z|1418|
h Kargath |QID|1419| |N|Speak to (npc:9356) and set hearth at {Kargath} (2.84, 45.91)| |Z|1418| |NPC|9356|
f Kargath |QID|1419| |N|Speak to (npc:2861) and grab flight path for {Kargath} (4, 44.9)| |NPC|2861| 
A Coyote Thieves |QID|1419| |N|(npc:5394) in {Kargath} (6.5, 47.1)| |NPC|5394|
A Report to Helgrum |QID|1420| |N|(npc:5394) in {Kargath} (6.5, 47.1)| |NPC|5394|
A Broken Alliances |QID|782| |N|(npc:1068) in {Kargath} in {Kargath} (2.9, 45.8)| |NPC|1068|
A Badlands Reagent Run |QID|2258| |N|(npc:6868) in {Kargath} (2.5, 46.1)| |NPC|6868|

C Study of the Elements: Rock (1) |QID|710| |N|Kill the (npc:2735) and collect 10 (item:4626) (13.12, 38.86)| |W| |NPC|2735|
T Study of the Elements: Rock (1) |QID|710| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Study of the Elements: Rock (2) |QID|711| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
C Study of the Elements: Rock (2) |QID|711| |N|Kill (npc:92) until you've collected 3 (item:4627). They are found either further West or to the South of Badlands (15.52, 32.18)| |W| |NPC|92|
N (item:7848) |QID|2258.3| |N|Kill Rock Elementals to collect 5 (item:7848) (15.52, 32.18)| |W| |NPC|2735, 92|
T Study of the Elements: Rock (2) |QID|711| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Study of the Elements: Rock (3) |QID|712| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|

N As you go... |AYG|782| |QID|1419| |N|Kill any Coyotes for 30 (item:6166) and 10 (item:7846)| |NPC|2727, 2728, 2831, 2829|
C Barbecued Buzzard Wings |QID|703| |N|Kill the Buzzards for 4 (item:3404) (15.10, 59.84)| |W| |NPC|2831, 2829, 2830|
N (item:7847) |QID|2258.1| |N|Kill any Buzzards and collect 5 (item:7847) in {Apocryphan's Rest} (15.10, 59.84)| |Z|1418| |W| |NPC|2831, 2829, 2830|

R Camp Cagg |QID|712| |N|Travel to {Camp Cagg} (17.03, 84.40)|
C Study of the Elements: Rock (3) |QID|712| |N|Kill the (npc:2736) and collect 5 (item:4628) in {Camp Cagg}<br/><br/>Drop rate is high, avoid the level 44 (npc:2736) (17.03, 84.40)| |W| |NPC|2736|
C Broken Alliances |QID|782| |N|Kill (npc:2944) who patrol down to the southwest side of the zone and back in a circle. You should be able to pick (npc:2944) off the back of the pack easily (11, 72) (18, 79.7) (59, 69) (48, 51) (29.5, 59) (23, 52)| |LOOP| |NPC|2944|

R Badlands |QID|782| |N|Travel to {Badlands} (13, 36)|
C Badlands Reagent Run |QID|2258| |N|Kill Coyotes for 10 (item:7846) (13, 36) (14, 60) (11, 63)| |LOOP| |NPC|2727, 2728, 2729|
C Coyote Thieves |QID|1419| |N|Kill Coyotes for 30 (item:6166) (20.09, 51.10) (29.91, 70.79) (42.01, 73.53)| |LOOP| |NPC|2727, 2728, 2729|

R The Dustbowl |QID|710| |N|Travel to {The Dustbowl} (25.91, 44.91)| |Z|1418|
T Study of the Elements: Rock (3) |QID|712| |N|(npc:2921) in {The Dustbowl} - Skip the follow-up (25.9, 45.0)| |NPC|2921|

R Kargath |TID|2258| |N|Travel to {Kargath} (25.9, 45.0)|
T Coyote Thieves |QID|1419| |N|(npc:5394) in {Kargath} (6.5, 47.1)| |NPC|5394|
T Broken Alliances |QID|782| |N|(npc:1068) in {Kargath} (2.9, 45.8)| |NPC|1068|
T Badlands Reagent Run |QID|2258| |N|(npc:6868) in {Kargath} (2.5, 46.1)| |NPC|6868|

R Valley of Fangs |TID|703| |N|Travel to {Valley of Fangs} (42.38, 52.83)| |Z|1418|
T Barbecued Buzzard Wings |QID|703| |N|(npc:2817) in {Valley of Fangs} (42.38, 52.83)| |Z|1418| |NPC|2817|

--H Grom'gol Base Camp |U|6948| |QID|1372|
--T The Green Hills of Stranglethorn |Z|1434| |QID|338| |N|(npc:716) (35.7, 10.5)| |O| |NPC|716|
--A Nothing But The Truth (1) |Z|1431| |QID|1372| |N|(npc:5414) (87.0, 36.4)| |NPC|5414|
--T Nothing But The Truth (1) |Z|1431| |QID|1372| |N|(npc:5418) (87.7, 35.7)| |NPC|5418|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end, {image = "badlands.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
