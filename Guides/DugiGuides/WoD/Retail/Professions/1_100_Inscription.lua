local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Inscription_Draenor")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Inscription 1-100", nil, nil, nil, "P", nil, function()
return [[
N Read First |N|This guide covers the the required quests and items need to level. <br/><br/>You must have a character level 35+ and Warlords of Draenor is required. <br/><br/>Leveling is available in Draenor from 1-100. <br/><br/>Tick this step.| |QID|36241|
N Garrison |N|A Scribe's Quarters is required to level Inscription. Tick this step.| |QID|36647|

N (item:114984) |IN| |QID|36239| |N|Quest reward or random world drop from NPCs| |L|114984| |Z|539| |FAC|Alliance|
A A Mysterious Satchel |QID|36239| |N|Use (item:114984) to start quest.| |U|114984| |Z|539| |FAC|Alliance|
T A Mysterious Satchel |QID|36239| |N|(npc:84724) (57,21)| |NPC|84724| |Z|539| |FAC|Alliance|
A Slow and Steady |QID|36240| |N|(npc:84724) (57,21)| |NPC|84724| |Z|539| |FAC|Alliance|
C Slow and Steady |QID|36240| |N|Collect 5 (item:114986) from (npc:82323) (54,22)| |NPC|82323| |Z|539| |FAC|Alliance|
T Slow and Steady |QID|36240| |N|(npc:84724) (57,21)| |NPC|84724| |Z|539| |FAC|Alliance|
A The Power of Preservation |QID|36241| |N|(npc:84724) (57,21)| |NPC|84724| |Z|539| |FAC|Alliance|
T The Power of Preservation |QID|36241| |N|(npc:84728) (57,21)| |NPC|84728| |Z|539| |FAC|Alliance|

N (item:115593) |IN| |QID|36435| |N|Quest reward or drop from NPC's in WoD| |L|115593| |Z|525| |FAC|Horde|
A Unintelligible Intelligence |QID|36435| |N|(item:115593) starts this quest.| |U|115593| |Z|525| |FAC|Horde|
T A Unintelligible Intelligence |QID|36435| |N|(npc:85439) (21,56)| |NPC|85439| |Z|525| |FAC|Horde|
A Bypassing Security |QID|36457| |N|(npc:85439) (21,56)| |NPC|85439| |Z|525| |FAC|Horde|
U (item:116063) |N|Use (item:116063) on cage (61,71). Tick this step.| |U|116063| |Z|525| |FAC|Horde|
T Bypassing Security |QID|36457| |N|(npc:85440) (61,71)| |NPC|85440| |Z|525| |FAC|Horde|
A Stealing the Declaration |QID|36475| |N|(npc:85440) (61,71)| |NPC|85440| |Z|525| |FAC|Horde|
C Stealing the Declaration |QID|36475| |N|Locate Uratok's Strongbox (63,75), and collect (item:116069) and (item:116072)| |Z|525| |FAC|Horde|
T Stealing the Declaration |QID|36475| |N|(npc:85440) (61,71)| |NPC|85440| |Z|525| |FAC|Horde|

--Cerulean Pigment: 114931, War Paints: 112377
U (item:111923) |N|Learn Draenor Inscription| |U|111923| |P|410 1|
U (item:111815) |N|Learn (item:111815). Tick this step.| |U|111815| |QID|36647|
N Build Scribe's Quarters |QID|36647| |N|Build a Scribe's Quarters in your Garrison. Tick this step.|
A Your First Inscription Work Order |QID|36647| |N|Talk to (npc:77372) in your Garrison| |NPC|77372| |FAC|Alliance|
N (item:114931) |QID|36647| |N|You will need 5 (item:114931) to complete Your First Inscription Work Order| |L|114931 5| |FAC|Alliance|
N Start... |IN| |QID|36647.1| |N|Talk to (npc:77777) to start an Inscription Work Order in your Garrison| |NPC|77777| |FAC|Alliance|
N (item:116846) |QID|36647.2| |N|Collect (item:116846), right next to Scribe's Quarters in your Garrison.| |L|116844| |FAC|Alliance|
T Your First Inscription Work Order |QID|36647| |N|Talk to (npc:77777) in your Garrison| |NPC|77777| |FAC|Alliance|

A Your First Inscription Work Order |QID|37572| |N|Talk to (npc:79829) in your Garrison| |NPC|79829| |FAC|Horde|
N (item:114931) |QID|37572| |N|You will need 5 (item:114931) to complete Your First Inscription Work Order| |L|114931 5| |FAC|Horde|
N Start... |IN| |QID|37572.1| |N|Talk to (npc:77831) to start an Inscription Work Order in your Garrison| |NPC|77831| |FAC|Horde|
N (item:116846) |QID|37572.2| |N|Collect (item:116846), right next to Scribe's Quarters in your Garrison.| |L|116844| |FAC|Horde|
T Your First Inscription Work Order |QID|37572| |N|Talk to (npc:79831) in your Garrison| |NPC|79831| |FAC|Horde|

N More Work Orders |IN| |N|Continue creating work orders to collect (item:112377), these are required for Inscription recipes. <br/><b>Each Work Order requires 5 (item:114931). <br/><br/>Tick this step.| |P|410 100|

N (item:120136) |IN| |N|Craft with; <br/><b>2 (item:114931)| |P|410 100|
N Additional Recipes |N|(item:120136) are used to purchase additional recipes from (npc:77372) in your Garrison. Tick this step.| |NPC|77372|
B (item:118614) |N|(npc:77372) in your Garrison| |NPC|77372| |L|118614| |P|410 5| |FAC|Alliance|
B (item:118614) |N|(npc:79829) in your Garrison| |NPC|79829| |L|118614| |P|410 5| |FAC|Horde|

N (item:112377) |IN| |N|Create (item:112377) daily. These are required for leveling and high level recipes. <br/><b>10 (item:114931). <br/><br/>Tick this step.| |P|410 100|
N 2-100 (item:113289) |IN| |N|Craft with; <br/><b>1176 (item:114931)| |P|410 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Inscription profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
