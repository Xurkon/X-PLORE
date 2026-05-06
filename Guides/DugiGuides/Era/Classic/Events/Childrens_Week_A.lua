local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_Childrens_Quests_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Children's Week|r", "Children's Week Quests", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_ChildrensWeek]])|", function() 
return [[

A Children's Week |QID|1468| |N|(npc:14450) in {Stormwind City} (47.35,38.19)| |Z|1453| |NPC|14450|
B (item:7228) |QID|4822| |N|Speak to (npc:14481) and buy (item:7228) (53.79,65.38)| |Z|1453| |NPC|14481|

T Children's Week |QID|1468| |N|Use (item:18598) to summon (npc:14305)| |U|18598| |PPOS|
A The Bough of the Eternals |QID|1479| |N|Use (item:18598) to summon (npc:14305)| |U|18598| |PPOS|
A The Stonewrought Dam |QID|1558| |N|Use (item:18598) to summon (npc:14305)| |U|18598| |PPOS|
A Spooky Lighthouse |QID|1687| |N|Use (item:18598) to summon (npc:14305)| |U|18598| |PPOS|

C Spooky Lighthouse |QID|1687.1| |N|Go to the Westfall Lighthouse and use (item:18598) to summon (npc:14305) in {Westfall} (30.52,85.82)| |Z|1436| |U|18598| |NPC|14305|
C The Stonewrought Dam |QID|1558.1| |N|Go to the Top of the Stonewrought Dam and use (item:18598) to summon (npc:14305) in {Dun Morogh} (48.26,14.11)| |Z|1426| |U|18598| |NPC|14305|
C The Bough of the Eternals |QID|1479.1| |N|Go to the Bank in Darnassus and use (item:18598) to summon (npc:14305) in {Darnassus} (41.04,42.91)| |Z|1457| |U|18598| |NPC|14305|

T The Bough of the Eternals |QID|1479| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
T The Stonewrought Dam |QID|1558| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
T Spooky Lighthouse |QID|1687| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
A You Scream, I Scream... |QID|4822| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
A Jaina's Autograph |QID|558| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|

C Jaina's Autograph |N|Speak to (npc:4968) inside the building to collect Jaina's Autograph in {Dustwallow Marsh} (65.74,48.63)| |Z|1445| |NPC|4968|
T You Scream, I Scream... |QID|4822| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
T Jaina's Autograph |QID|558| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
A A Warden of the Alliance |QID|171| |N|Use (item:18598) to summon (npc:14305)| |PPOS| |NPC|14305|
T A Warden of the Alliance |QID|171| |N|(npc:14450) in {Stormwind City} (47.35,38.19)| |Z|1453| |NPC|14450|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
