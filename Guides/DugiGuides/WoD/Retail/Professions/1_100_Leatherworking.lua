local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Leatherworking_Draenor")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Leatherworking 1-100", nil, nil, nil, "P", nil, function()
return [[
N Read First |N|This guide covers the the required quests and items need to level. <br/><br/>You must have a character level 35+ and Warlords of Draenor is required. <br/><br/>Leveling is available in Draenor from 1-100. <br/><br/>Tick this step.| |QID|36185|
N Garrison |N|The Tannery is required to level Leatherworking. Tick this step.| |QID|36642|

N (item:114877) |LE| |QID|36176| |N|Quest reward or random world drop from NPCs| |L|114877| |Z|539| |FAC|Alliance|
A Call For Huntsman |QID|36176| |N|Use (item:114877) to start quest.| |U|114877| |Z|539| |FAC|Alliance|
T Call For Huntsman |QID|36176| |N|(npc:84385) (44,40)| |NPC|84385| |Z|539| |FAC|Alliance|
A Friendly Competition |QID|36177| |N|(npc:84385) (44,40)| |NPC|84385| |Z|539| |FAC|Alliance|
N 6 (item:114901) |QID|36177.2| |N|Collect 6 (item:114901) from (npc:82175) (39,43)| |NPC|82175| |Z|539| |FAC|Alliance|
N 12 (item:114900) |QID|36177.1| |N|Collect 12 (item:114900) from (npc:82308) (40,45)| |NPC|82308| |Z|539| |FAC|Alliance|
T Friendly Competition |QID|36177| |N|(npc:84385) (44,40)| |NPC|84385| |Z|539| |FAC|Alliance|
A Fair Trade |QID|36185| |N|(npc:84385) (44,40)| |NPC|84385| |Z|539| |FAC|Alliance|
T Fair Trade |QID|36185| |N|(npc:84492) (44,39)| |NPC|84492| |Z|539| |FAC|Alliance|

N (item:116173) |LE| |QID|36505| |N|Quest reward or drop from NPC's| |L|116173| |Z|525| |FAC|Horde|
A A Warrior's Shroud |QID|36505| |N|Use (item:116173) to start quest.| |U|116173| |Z|525| |FAC|Horde|
T A Warrior's Shroud |QID|36505| |N|(npc:85751) (20.6,60.2)| |NPC|85751| |Z|525| |FAC|Horde|
A Cut Em' Out! |QID|36516| |N|(npc:85751) (20.6,60.2)| |NPC|85751| |Z|525| |FAC|Horde|
N 4 (item:116195) |QID|36516.1| |N|Use (item:116246) to collect 4 (item:116195) from (npc:72162) (24.3,44.0)| |U|116246| |L|116195 4| |NPC|72162| |Z|525| |FAC|Horde|
N 15 (item:116351) |QID|36516.2| |N|Collect 15 (item:116351) (27.2,41.3)| |L|116351 15| |Z|525| |FAC|Horde|
T Cut Em' Out! |QID|36516| |N|(npc:85751) (20.6,60.2)| |NPC|85751| |Z|525| |FAC|Horde|

--Raw Beast Hide: 110609, Burnished Leather: 110611
U (item:115358) |N|Learn Draenor Leatherworking| |U|115358| |P|380 1|
U (item:111818) |N|Learn (item:111818). Tick this step.| |U|111818| |QID|36642|
N Build The Tannery |QID|36642| |N|Build The Tannery in your Garrison. Tick this step.|
A Your First Leatherworking Work Order |QID|36642| |N|Talk to (npc:77383) in your Garrison| |NPC|77383| |FAC|Alliance|
N 5 (item:110609) |QID|36642| |N|You need 5 (item:110609). These are skinned form any beast in Draenor.| |L|110609 5| |FAC|Alliance|
N Start.. |QID|36642.1| |N|Talk to (npc:78207) to start a Leatherworking Work Order in your Garrison| |NPC|78207| |FAC|Alliance|
N (item:116840) |QID|36642.2| |N|Collect (item:116840), right next to The Tannery in your Garrison.| |L|116840| |FAC|Alliance|
T Your First Leatherworking Work Order |QID|36642| |N|Talk to (npc:78207) in your Garrison| |NPC|78207| |FAC|Alliance|

A Your First Leatherworking Work Order |QID|37574| |N|Talk to (npc:79834) in your Garrison| |NPC|79834| |FAC|Horde|
N 5 (item:110609) |QID|37574| |N|You need 5 (item:110609). These are skinned form any beast in Draenor.| |L|110609 5| |FAC|Horde|
N Start.. |QID|37574.1| |N|Talk to (npc:79833) to start a Leatherworking Work Order in your Garrison| |NPC|79833| |FAC|Horde|
N (item:116840) |QID|37574.2| |N|Collect (item:116840), right next to The Tannery in your Garrison.| |L|116840| |FAC|Horde|
T Your First Leatherworking Work Order |QID|37574| |N|Talk to (npc:79833) in your Garrison| |NPC|79833| |FAC|Horde|

N More Work Orders |LE| |N|Continue creating work orders to collect (item:110611), these are required for Leatherworking recipes. <br/><br/>Each Work Order requires 5 (item:110609). Tick this step.| |P|380 100|

N (item:118721) |LE| |N|Craft with; <br/><b>5 (item:110609)| |P|380 5|
N Additional Recipes |N|(item:118721) are used to purchase additional recipes from (npc:77383) in your Garrison. Tick this step.| |NPC|77383|
B (item:116325) |N|(npc:77383) in your Garrison| |NPC|77383| |L|116325| |P|380 5| |FAC|Alliance|
B (item:120257) |N|(npc:79834) in your Garrison| |NPC|79834| |L|120257| |P|380 5| |FAC|Horde|

N (item:110609) |LE| |N|Create (item:110609) daily. These are required for leveling and high level recipes.<br/><b>10 (item:110610). <br/><br/>Tick this step.| |P|380 100|
N (item:118721) |LE| |N|Create 1 (item:118721) with; <br/><b>5 (item:110609)| |L|118721| |P|380 5|
B (item:116325) |N|(npc:77383) in your Garrison| |NPC|77383| |L|116325| |P|380 5| |FAC|Alliance|
B (item:116325) |N|(npc:79834) in your Garrison| |NPC|79834| |L|116325| |P|380 5| |FAC|Horde|
N 5-55 (item:120257) |LE| |N|Craft with;<br/><b>275 (item:110609)| |P|380 55| 
N 55-100 (item:116170) |LE| |N|Craft with; <br/><b>1350 (item:110609)| |P|380 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Draenor Leatherworking profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
