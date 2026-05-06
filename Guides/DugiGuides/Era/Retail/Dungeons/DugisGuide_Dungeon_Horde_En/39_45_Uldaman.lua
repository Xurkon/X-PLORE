local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_39_45_Uldaman")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Uldaman (39-45)", "Zul'Farrak (42-47)", "Horde", nil, "I", nil, function()
return [[

N Level 38 Required |N|You will need to be at least level 38 to pick up the following quests| |QID|2342| |PL|38|

R Undercity |QID|710| |N|Travel to {Undercity} (64.0, 36.0)| |Z|1458|
A Reclaimed Treasures |QID|2342| |N|(npc:5651) in {Undercity} (62.7, 48.7)| |Z|1458| |NPC|5651|
B (item:3829) |QID|710| |N|Buy (item:3829) from Auction House<br/><br/>Skip this if not available<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|3829| |Z|1458| |NPC|15683|
B (item:4389) |QID|710| |N|Buy (item:4389) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|4389| |Z|1458| |NPC|15683|
B (item:929) |QID|710| |N|Buy (item:929) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829) and (item:4389)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|929| |Z|1458| |NPC|15683|
B (item:3823) |QID|710| |N|Buy (item:3823) from Auction House<br/><br/>Don't buy if you didn't find a (item:3829) and (item:4389)<br/><br/>Don't buy if this is your first character and you still need to purchase a mount (64.0, 36.0)| |L|3823| |Z|1458| |NPC|15683|
B 4 (item:3404) |QID|710| |N|Buy 4 (item:3404) from Auction House - Skip this if not available (64.0, 36.0)| |L|3404 4| |Z|1458| |NPC|15683|

R Valley of Fangs |QID|2418| |N|Travel to {Valley of Fangs} (42.5, 53.1)| |Z|1418|
A Power Stones |QID|2418| |N|(npc:2817) in {Valley of Fangs} (42.5, 53.1)| |Z|1418| |NPC|2817|
A Barbecued Buzzard Wings |QID|703| |N|(npc:2817) in {Valley of Fangs} (42.38, 52.83)| |Z|1418| |NPC|2817|

R The Dustbowl |QID|710| |N|Travel to {The Dustbowl} (25.91, 44.91)| |Z|1418|
A Study of the Elements: Rock (1) |QID|710| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Coolant Heads Prevail |QID|713| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |L|3829| |O| |NPC|2921|
T Coolant Heads Prevail |QID|713| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |O| |NPC|2921| 
A Gyro... What? |QID|714| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |L|4389| |O| |NPC|2921| 
T Gyro... What? |QID|714| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |O| |NPC|2921|
A Liquid Stone |QID|715| |N|(npc:2920) in {The Dustbowl} (25.83, 44.29)| |Z|1418| |L|3823| |O| |NPC|2920| 
T Liquid Stone |QID|715| |N|(npc:2920) in {The Dustbowl} (25.83, 44.29)| |Z|1418| |O| |NPC|2920| 

R Kargath |N|Travel to Kargath in Badlands (4, 44.8)| |Z|1418| |QID|2258|
A Badlands Reagent Run |QID|2258| |N|(npc:6868) in {Kargath} (2.5, 46.1)| |Z|1418| |NPC|6868|
A Coyote Thieves |QID|1419| |N|(npc:5394) in {Kargath} (6.5, 47.1)| |Z|1418| |NPC|5394|

C Study of the Elements: Rock (1) |QID|710| |N|Kill the (npc:2735) and collect 10 (item:4626) (13.12, 38.86)| |W| |NPC|2735|
T Study of the Elements: Rock (1) |QID|710| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Study of the Elements: Rock (2) |QID|711| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
C Study of the Elements: Rock (2) |QID|711| |N|Kill (npc:92) until you've collected 3 (item:4627). They are found either further West or to the South of Badlands (15.52, 32.18)| |Z|1418| |W| |NPC|92|
N (item:7848) |QID|2258.3| |N|Kill Rock Elementals to collect 5 (item:7848) (15.52, 32.18)| |Z|1418| |W| |NPC|2735, 92|
T Study of the Elements: Rock (2) |QID|711| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|
A Study of the Elements: Rock (3) |QID|712| |N|(npc:2921) in {The Dustbowl} (25.91, 44.91)| |Z|1418| |NPC|2921|

N As you go... |AYG|782| |QID|1419| |N|Kill any Coyotes for 30 (item:6166) and 10 (item:7846)| |Z|1418| |NPC|2727, 2728, 2831, 2829|
C Barbecued Buzzard Wings |QID|703| |N|Kill the Buzzards for 4 (item:3404) (15.10, 59.84)| |Z|1418| |W| |NPC|2831, 2829, 2830|
N (item:7847) |QID|2258.1| |N|Kill any Buzzards and collect 5 (item:7847) in {Apocryphan's Rest} (15.10, 59.84)| |Z|1418| |W| |NPC|2831, 2829, 2830|

R Badlands |QID|782| |N|Travel to {Badlands} (13, 36)|
C Badlands Reagent Run |QID|2258| |N|Kill Coyotes for 10 (item:7846) (13, 36) (14, 60) (11, 63)| |Z|1418| |LOOP| |NPC|2727, 2728, 2729|
C Coyote Thieves |QID|1419| |N|Kill Coyotes for 30 (item:6166) (20.09, 51.10) (29.91, 70.79) (42.01, 73.53)| |Z|1418| |LOOP| |NPC|2727, 2728, 2729|

R The Dustbowl |QID|710| |N|Travel to {The Dustbowl} (25.91, 44.91)| |Z|1418|
T Study of the Elements: Rock (3) |QID|712| |N|(npc:2921) in {The Dustbowl} - Skip the follow-up (25.9, 45.0)| |Z|1418| |NPC|2921|

R Kargath |TID|2258| |N|Travel to {Kargath} (25.9, 45.0)| |Z|1418|
h Kargath |QID|1419| |N|Speak to (npc:9356) and set hearth at {Kargath} (2.84, 45.91)| |Z|1418| |NPC|9356|
T Coyote Thieves |QID|1419| |N|(npc:5394) in {Kargath} (6.5, 47.1)| |Z|1418| |NPC|5394|
T Broken Alliances |QID|782| |N|(npc:1068) in {Kargath} (2.9, 45.8)| |Z|1418| |NPC|1068|
T Badlands Reagent Run |QID|2258| |N|(npc:6868) in {Kargath} (2.5, 46.1)| |Z|1418| |NPC|6868|
A Uldaman Reagent Run |QID|2202| |N|(npc:6868) in {Kargath} (2.5, 46.1)| |Z|1418| |NPC|6868|

R Valley of Fangs |TID|703| |N|Travel to {Valley of Fangs} (42.38, 52.83)| |Z|1418|
T Barbecued Buzzard Wings |QID|703| |N|(npc:2817) in {Valley of Fangs} (42.38, 52.83)| |Z|1418| |NPC|2817|
A Solution to Doom |QID|709| |N|(npc:2785) in {Badlands} (51.5, 76.8)| |Z|1418| |NPC|2785|

R Uldaman |QID|709| |N|Enter the Uldaman mine area (not the instance), you will need a group to complete the quests in this area (44.5, 12.16)| |Z|1418| |QID|2418|
C Solution to Doom |QID|709| |N|Collect (item:4631) from the chest in Uldaman pre-instance area (39.32, 18.81)| |Z|1418|
C Reclaimed Treasures |QID|2342| |N|Find the (item:8026) from the chest in Uldaman pre-instance area (34.19, 18.61)| |Z|1418|
C Power Stones |QID|2418| |N|Collect 8 (item:8009) and 8 (item:8052), from the Shadowforge Dwarves outside Uldaman Instance (44.5, 12.16)| |Z|1418| |NPC|7091, 4844, 4849, 4846|
N (item:7666) |QID|2283| |N|Kill the Stonevault or Shadowforge mods outside the instance until you find the (item:7666) (44.5, 12.16)| |L|7666| |Z|1418| |NPC|4852, 4851, 4856, 4846|

R Badlands |QID|728| |N|Run out of the mine to Badlands (44.8, 12)| |Z|1418|
T Power Stones |QID|2418| |N|(npc:2817) in {Valley of Fangs} (42.5, 53.1)| |Z|1418| |NPC|2817|
T Solution to Doom |QID|709| |N|(npc:2785) in {Badlands} (51.5, 76.8)| |Z|1418| |NPC|2785|
A To the Undercity for Yagyin's Digest |QID|728| |N|(npc:2785) in {Badlands} (51.5, 76.8)| |Z|1418| |NPC|2785|

R Undercity |TID|2342| |N|Travel to {Undercity} (62.7, 48.7)| |Z|1458| 
T Reclaimed Treasures |QID|2342| |N|(npc:5651) in {Undercity} (62.7, 48.7)| |Z|1458| |NPC|5651|
T To the Undercity for Yagyin's Digest |QID|728| |N|(npc:2934) in {Undercity} (54.5, 53.4)| |Z|1458| |NPC|2934|

R Orgrimmar |QID|2283| |N|Take the Zeppelin to Orgrimmar (60.7, 58.8)| |Z|1420|
A Necklace Recovery |QID|2283| |N|(npc:6986) in {Orgrimmar} (59.5, 36.8)| |Z|1454| |NPC|6986|
T Necklace Recovery |QID|2283||N|(npc:6986) in {Orgrimmar} (59.5, 36.8)| |Z|1454| |NPC|6986|
A Necklace Recovery, Take 2 |QID|2284| |N|(npc:6986) in {Orgrimmar} (59.5, 36.8)| |Z|1454| |NPC|6986|

R Uldaman |QID|2318| |N|Zone into the Uldaman dungeon with your group| |I|
T Necklace Recovery, Take 2 |QID|2284| |N|Find (npc:6912), when you enter the instance, stick to the right side of the halls and you will find him on the 2nd hallway| |DMAP|Uldaman_H| |NPC|6912|
A Translating the Journal (1) |QID|2318| |N|(npc:6912) in {Uldaman}| |DMAP|Uldaman_H| |NPC|6912|

R Kargath |N|You need to go back to in {Kargath} to turn in 'Translating the Journal (1)" quest, it is a bit awkward otherwise you will need to do the dungeon twice to complete the main questline (2.6, 46.1)| |Z|1418| |I|
T Translating the Journal (1) |QID|2318| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |NPC|6868|
A Translating the Journal (2) |QID|2338| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |NPC|6868|
T Translating the Journal (2) |QID|2338| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |NPC|6868|
A Find the Gems and Power Source |QID|2339| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |NPC|6868|

R Uldaman |QID|2339| |N|Zone into the Uldaman dungeon with your group| |I|
N As you go.. |AYG|2339| |QID|2202| |N|Collect 12 (item:8047) scattered in the {Uldaman} dungeon|
K (npc:6906) |QID|2339| |N|Kill (npc:6906) and collect (item:7740), you need this to unlock the rest of the instance, only one person in the party need to use it<br/><br/>Tick this step if someone else picked it up| |L|7740| |DMAP|Uldaman_H|
N (item:7671) |QID|2339| |N|Collect (item:7671) is in a Conspicuous Urn in the room with the three lost viking| |L|7671| |OBJ|53| |DMAP|Uldaman_H|
N (item:7669) |QID|2339| |N|Collect (item:7669) in the Shadowforge cache is in the room with (npc:7291)|| |L|7669| |OBJ|1387| |DMAP|Uldaman_H| |NPC|7291|
N (item:7670) |QID|2339| |N|Collect (item:7670) dropped from (npc:4854)| |L|7670| |DMAP|Uldaman_H| |NPC|4854|
N (item:7672) |QID|2339| |N|Collect (item:7672) from (npc:2748) the final boss in Uldaman||L|7672| |DMAP|Uldaman_H| |NPC|2748|

A The Platinum Discs (1) |QID|2278| |N|The Discs of Norgannon in the room near (npc:2748) | |OBJ|1427| |DMAP|Uldaman_H|
N Talk to Stone Watcher |QID|2278| |N|Talk to Stone Watcher next to the disk and skip through all his story<br/><br/>Tick this step| |DMAP|Uldaman_H|
T The Platinum Discs (1) |QID|2278| |N|The Discs of Norgannon in the room near (npc:2748) | |OBJ|1427| |DMAP|Uldaman_H|
A The Platinum Discs (2) |QID|2280| |N|The Discs of Norgannon in the room near (npc:2748) | |OBJ|1427| |DMAP|Uldaman_H|
C Uldaman Reagent Run |QID|2202| |N|Collect 12 (item:8047) scattered in the {Uldaman} dungeon, If you don't find enough on your first time through, when the instance is finished, you can head back out through the instance and the mushrooms will have respawned. Just go pick from the newly spawned Mushrooms and you're done.| |Z|1418| |DMAP|Uldaman_H|

R Kargath |QID|2340| |N|Travel to Kargath in Badlands (4, 44.8)| |Z|1418|
T Uldaman Reagent Run |QID|2202| |N|(npc:6868) in {Kargath} (2.6, 46.1)||Z|1418| |NPC|6868|
T Find the Gems and Power Source |QID|2339| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |NPC|6868|
A Deliver the Gems |QID|2340| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |NPC|6868|

R Orgrimmar |N|Travel to {Orgrimmar} (59.5, 36.8)| |Z|1454| 
T Deliver the Gems |QID|2340| |N|(npc:6986) in {Orgrimmar} (59.5, 36.8)| |Z|1454| |NPC|6986|
A Necklace Recovery, Take 3 |QID|2341| |N|(npc:6986) in {Orgrimmar} (59.5, 36.8)| |Z|1454| |NPC|6986|

R Kargath |TID|2340| |N|Travel to Kargath in Badlands (4, 44.8)| |Z|1418|
T Necklace Recovery, Take 3 |QID|2341| |N|(npc:6868) in {Kargath} (2.6, 46.1)| |Z|1418| |QID|2341| |NPC|6868|

R Thunder Bluff |QID|2440| |N|Travel to Thunder Bluff (35, 48)| |Z|1456|
T The Platinum Discs (2) |QID|2280| |N|(npc:3978) in {Thunder Bluff} (35, 48)| |Z|1456| |NPC|3978|
A The Platinum Discs (3) |QID|2440| |N|(npc:3978) in {Thunder Bluff} (35, 48)| |Z|1456| |NPC|3978|
T The Platinum Discs (3) |QID|2440| |N|(npc:3009) in {Thunder Bluff} (46.8, 33.6)| |Z|1456| |NPC|3009|

N Guide Complete 

]]
end)
	end
	
	function Guide:Unload()
	end
end