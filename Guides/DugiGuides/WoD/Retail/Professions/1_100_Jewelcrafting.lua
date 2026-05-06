local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Jewelcrafting_Draenor")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Jewelcrafting 1-100", nil, nil, nil, "P", nil, function()
return [[

N Read First |N|This guide covers the the required quests and items need to level. <br/><br/>You must have a character level 35+ and Warlords of Draenor is required. <br/><br/>Leveling is available in Draenor from 1-100. <br/><br/>Tick this step.| |QID|36409|
N Garrison |N|A Gem Boutique is required to level Jewelcrafting. Tick this step.| |QID|36644|

N (item:115507) |JE| |QID|36408| |N|Quest reward or random world drop from NPCs| |L|115507| |Z|539| |FAC|Alliance|
A A Power Lost |QID|36408| |N|Use (item:115507) to start quest.| |U|115507| |Z|539| |FAC|Alliance|
T A Power Lost |QID|36408| |N|(npc:84830) (46,38)| |NPC|84830| |Z|539| |FAC|Alliance|
A Restoration |QID|36409| |N|(npc:84830) (46,38)| |NPC|84830| |Z|539| |FAC|Alliance|
K (npc:85394) |QID|36409| |N|Slay (npc:85394) and retrive (item:1155165)| |NPC|85394| |Z|539| |FAC|Alliance|
T Restoration |QID|36409| |N|(npc:84830) (46,38)| |NPC|84830| |Z|539| |FAC|Alliance|

N (item:115287) |JE| |QID|36314| |N|Quest reward or drop from NPC's in WoD| |L|115287| |Z|525| |FAC|Horde|
A The Intricate Pendant |QID|36314| |N|(item:115287) starts this quest.| |U|115287| |Z|525| |FAC|Horde|
T The Intricate Pendant |QID|36314| |N|(npc:84967) (57,53)| |NPC|84967| |Z|525| |FAC|Horde|
A Locating the Lapidarist |QID|36352| |N|(npc:84967) (57,53)| |NPC|84967| |Z|525| |FAC|Horde|
T Locating the Lapidarist |QID|36352| |N|(npc:85106) (20,56)| |NPC|85106| |Z|525| |FAC|Horde|
A No Pressure, No Diamonds |QID|36378| |N|(npc:85106) (20,56)| |NPC|85106| |Z|525| |FAC|Horde|
C No Pressure, No Diamonds |QID|36378| |N|Collect 3 (item:115445) from (npc:79630) and 1 (item:115461) from (npc:85185) (18,31)| |NPC|79630,85185| |Z|525| |FAC|Horde|
T No Pressure, No Diamonds |QID|36378| |N|(npc:85106) (20,56)| |NPC|85106| |Z|525| |FAC|Horde|
A Diamonds Are Forever |QID|36380| |N|(npc:85106)| (20,56) |NPC|85106| |Z|525| |FAC|Horde|
T Diamonds Are Forever |QID|36380| |N|(npc:85106)| (20,56) |NPC|85106| |Z|525| |FAC|Horde|

--Blackrock Ore: 109118, Taladite Crystal: 112377
U (item:115359) |N|Learn Draenor Jewelcrafting| |U|115359| |P|373 1|
U (item:111814) |N|Learn (item:111814). Tick this step.| |U|111814| |QID|36644|
N Build Gem Boutique |QID|36644| |N|Build a Gem Boutique in your Garrison. Tick this step.|
A Your First Jewelcrafting Work Order |QID|36644| |N|Talk to (npc:77356) in your Garrison| |NPC|77356| |FAC|Alliance|
N (item:109118) |QID|36644| |N|You will need 5 (item:109118) to complete Your First Jewelcrafting Work Order| |L|109118 5| |FAC|Alliance|
N Start... |JE| |QID|36644.1| |N|Talk to (npc:77775) to start an Jewelcrafting Work Order in your Garrison| |NPC|77775| |FAC|Alliance|
N (item:116843) |QID|36644.2| |N|Collect (item:116843), right next to Gem Boutique in your Garrison.| |L|116843| |FAC|Alliance|
T Your First Jewelcrafting Work Order |QID|36644| |N|Talk to (npc:77775) in your Garrison| |NPC|77775| |FAC|Alliance|

A Your First Jewelcrafting Work Order |QID|37573| |N|Talk to (npc:79832) in your Garrison| |NPC|79832| |FAC|Horde|
N (item:109118) |QID|37573| |N|You will need 5 (item:109118) to complete Your First Jewelcrafting Work Order| |L|109118 5| |FAC|Horde|
N Start... |JE| |QID|37573.1| |N|Talk to (npc:79830) to start an Jewelcrafting Work Order in your Garrison| |NPC|79830| |FAC|Horde|
N (item:116843) |QID|37573.2| |N|Collect (item:116843), right next to Gem Boutique in your Garrison.| |L|116843| |FAC|Horde|
T Your First Jewelcrafting Work Order |QID|37573| |N|Talk to (npc:79830) in your Garrison| |NPC|79830| |FAC|Horde|

N More Work Orders |JE| |N|Continue creating work orders to collect (item:115524), these are required for Jewelcrafting recipes. <br/><b>Each Work Order requires 5 (item:109118). <br/><b>Tick this step.| |P|373 100|

N (item:118723) |JE| |N|Craft with; <br/><b>5(item:109118)| |P|373 5|
N Additional Recipes |N|(item:118723) is on a daily cooldown and are used to purchase additional recipes from (npc:77356) in your Garrison. Tick this step.| |NPC|77356|
B (item:116078) |N|(npc:77356) in your Garrison| |NPC|77356| |L|116078| |P|373 5| |FAC|Alliance|
B (item:116097) |N|(npc:79832) in your Garrison| |NPC|79832| |L|116097| |P|373 5| |FAC|Horde|

N (item:115524) |JE| |N|Create (item:115524) daily. These are required for leveling and high level recipes. <br/><b>20 (item:109118) <br/><b>10 (item:109119). <br/><br/>Tick this step.| |P|373 100|
N 5-100 (item:115804) |JE| |N|Craft any Taladite jewel with; <br/><b>1000 (item:109118) <br/><b>200 (item:109124)| |P|373 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Draenor Jewelcrafting profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
