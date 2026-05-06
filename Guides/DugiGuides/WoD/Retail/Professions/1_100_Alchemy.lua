local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Alchemy_Draenor")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Alchemy 1-100", nil, nil, nil, "P", nil, function()
return [[
N Read First |N|This guide covers the the required quests and items need to level. <br/><br/>You must have a character level 35+ and Warlords of Draenor is required. <br/><br/>Leveling is available in Draenor from 1-100. <br/><br/>Tick this step.| |QID|35345|
N Garrison |N|An Alchemy lab is required to level alchemy. Tick this step.| |QID|36641|

N (item:112566) |AL| |QID|35342| |N|Quest reward or random world drop from NPCs| |L|112566| |Z|539| |O| |FAC|Alliance|
A The Mysterious Flask |QID|35342| |N|Use (item:112566) to start quest.| |U|112566| |Z|539| |O| |FAC|Alliance|
T The Mysterious Flask |QID|35342| |N|(npc:82466) (47,45)| |NPC|82466| |Z|539| |O| |FAC|Alliance|
A The Young Alchemist |QID|35343| |N|(npc:82466) (47,45)| |NPC|82466| |Z|539| |PRE|35342| |FAC|Alliance|
T The Young Alchemist |QID|35343| |N|(npc:82497) (55,41)| |NPC|82497| |Z|539| |PRE|35342| |FAC|Alliance|
A The Missing Father |QID|35344| |N|(npc:82497) (55,41)| |NPC|82497| |Z|539| |PRE|35342| |FAC|Alliance|
T The Missing Father |QID|35344| |N|(npc:82496) (54,45)| |NPC|82496| |Z|539| |PRE|35342| |FAC|Alliance|
A Shocking Assistance |QID|35345| |N|(npc:82496) (54,45)| |NPC|82496| |Z|539| |PRE|35342| |FAC|Alliance|
C Shocking Assistance |QID|35345| |N|Collect 100 (item:113248) from (npc:80653) (53,44)| |NPC|80653| |Z|539| |PRE|35342| |FAC|Alliance|
T Shocking Assistance |QID|35345| |N|(npc:82497) (55,41)| |NPC|82497| |Z|539| |PRE|35342| |FAC|Alliance|

N (item:113103) |AL| |QID|35058| |N|Quest reward or drop from NPC's in WoD| |L|113103| |Z|525| |FAC|Horde|
A The Mysterious Flask |QID|35058| |N|(item:112566) starts this quest.| |U|112566| |Z|525| |FAC|Horde|
T The Mysterious Flask |QID|35058| |N|(npc:81166) (45.8,49.4)| |NPC|81166| |Z|525| |FAC|Horde|
A The Alchemist |QID|35103| |N|(npc:81166) (45.8,49.4)| |NPC|81166| |Z|525| |FAC|Horde|
T The Alchemist |QID|35103| |N|(npc:81209) (38.0,47.4)| |NPC|81209| |Z|525| |FAC|Horde|
A The Apprentice |QID|35104| |N|(npc:81209) (38.0,47.4)| |NPC|81209| |Z|525| |FAC|Horde|
T The Apprentice |QID|35104| |N|(npc:81210) (37.8,47.6)| |NPC|81210| |Z|525| |FAC|Horde|
A Avenge and Reclaim |QID|35106| |N|(npc:81210) (37.8,47.6)| |NPC|81210| |Z|525| |FAC|Horde|
C Avenge and Reclaim |QID|35106| |N|Slay (npc:81243) and retrieve (item:112655) (41.8,40.0)| |L|112655| |NPC|81243| |Z|525| |FAC|Horde|
T Avenge and Reclaim |QID|35106| |N|(npc:81210) (37.8,47.6)| |NPC|81210| |Z|525| |FAC|Horde|

--Frostweed: 109124
B (item:109558) |N|Buy (item:109558) from (npc:77363) in {Lunarfall} (50.6, 58.0)| |Z|582| |L|109558| |NPC|77363| |P|332 1| |FAC|Alliance|
B (item:109558) |N|Buy (item:109558) from (npc:79813) in your Garrison| |L|109558| |NPC|79813| |P|332 1| |FAC|Horde|
U (item:109558) |N|Use (item:109558) to learn Draenor Alchemy| |U|109558| |P|332 1|
U (item:111812) |N|Learn (item:111812). Tick this step.| |U|111812| |QID|36641|
N Build Alchemy Lab |QID|36641| |N|Build an Alchemy Lab in your Garrison. Tick this step.|
A Your First Alchemy Work Order |QID|36641| |N|Talk to (npc:77363) in your Garrison| |NPC|77363| |FAC|Alliance|
N (item:109124) |QID|36641| |N|You will need 5 (item:109124) to complete Your First Alchemy Work Order. These are gathered around Draenor.| |L|109124 5| |FAC|Alliance|
N Start... |AL| |QID|36641.1| |N|Talk to (npc:77791) to start an Alchemy Work Order in your Garrison| |NPC|77791| |FAC|Alliance|
N (item:116842) |QID|36641.2| |N|Collect (item:116842), right next to Alchemy Lab in your Garrison.| |L|116844| |FAC|Alliance|
T Your First Alchemy Work Order |QID|36641| |N|Talk to (npc:77791) in your Garrison| |NPC|77791| |FAC|Alliance|

A Your First Alchemy Work Order |QID|37568| |N|Talk to (npc:79813) in your Garrison| |NPC|79813| |FAC|Horde|
N (item:109124) |QID|37568| |N|You will need 5 (item:109124) to complete Your First Alchemy Work Order. These are gathered around Draenor.| |L|109124 5| |FAC|Horde|
N Start... |AL| |QID|37568.1| |N|Talk to (npc:79814) to start an Alchemy Work Order in your Garrison| |NPC|79814| |FAC|Horde|
N (item:116842) |QID|37568.2| |N|Collect (item:116842), right next to Alchemy Lab in your Garrison.| |L|116844| |FAC|Horde|
T Your First Alchemy Work Order |QID|37568| |N|Talk to (npc:79814) in your Garrison| |NPC|79814| |FAC|Horde|

N More Work Orders |AL| |N|Continue creating work orders to collect (item:108996), these are required for Alchemy recipes. <br/><b>Each Work Order requires <br/><b>5 (item:109124). <br/><br/>Tick this step.| |P|332 100|

N 1 - 2 (item:118700) |AL| |N|Craft with; <br/><b>5 (item:109124)| |L|118700| |P|332 55|
N Additional Recipes |N|(item:118700) is on a daily cooldown and are used to purchase additional recipes from (npc:77363) in your Garrison. Tick this step.| |NPC|77363| |P|332 100|
B (item:112024) |N|(npc:77363) (npc:77363) in {Lunarfall} (50.6, 58.0)| |Z|582| |L|112024| |P|332 55| |FAC|Alliance|
B (item:112024) |N|(npc:79813) in your Garrison| |L|112024| |NPC|79813| |P|332 55| |FAC|Horde|

N (item:108996) |AL| |N|Create (item:108996) daily. These are required for leveling and high level recipes. <br/><b>20 (item:109124) <br/><b>10 (item:109118). <br/><br/>Tick this step.| |P|332 55|
N Required Materials; |N|<b>162 (item:109125) <br/><b>54 (item:3371) <br/><br/>Tick this step.| |P|332 55|
N 2 - 55 (item:109217) |AL| |N|Craft with; <br/><b>3 (item:109125) <br/><b>1 (item:3371)| |P|332 55|
N Required Materials; |N|<b>180 (item:109125) <br/><b>180 (item:109127<br/><b>45 (item:3371) <br/><br/>Tick this step.| |P|332 100|
N 55 - 100 (item:109145) |AL| |N|Craft with; <br/><b>4 (item:109125)<br/><b>4 (item:109127) <br/><b>1 (item:3371)| |P|332 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Draenor Alchemy profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
