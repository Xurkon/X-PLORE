local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Enchanting_WoD")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Enchanting 1-100", nil, nil, nil, "P", nil, function()
return [[
N Read First |N|This guide covers the the required quests and items need to level. <br/><br/>You must have a character level 35+ and Warlords of Draenor is required. <br/><br/>Leveling is available in Draenor from 1-700. <br/><br/>Tick this step.| |QID|36315|
N Garrison |N|An Enchanter's Study is required to level Enchanting. Tick this step.| |QID|36645|

N (item:115008) |ENC| |QID|36308| |N|Quest reward or random world drop from NPCs| |L|115008| |Z|539| |FAC|Alliance|
A Enchanted Highmaul Bracer |QID|36308| |N|Use (item:115008) to start quest.| |U|115008| |Z|539| |FAC|Alliance|
T Enchanted Highmaul Bracer |QID|36308| |N|(npc:83491) (47.0,54.4)| |NPC|83491| |Z|539| |FAC|Alliance|
A The Arakkoan Enchanter |QID|36310| |N|(npc:83491) (47.0,54.4)| |NPC|83491| |Z|539| |FAC|Alliance|
T The Arakkoan Enchanter |QID|36310| |N|(npc:84966) (37.4,72.6)| |NPC|84966| |Z|539| |FAC|Alliance|
A Failed Apprentice |QID|36313| |N|(npc:84966) (37.4,72.6)| |NPC|84966| |Z|539| |FAC|Alliance|
C Failed Apprentice |QID|36313| |N|Find and release (npc:84963) (36.2,73.4)| |NPC|84963| |Z|539| |FAC|Alliance|
T Failed Apprentice |QID|36313| |N|(npc:84963) (36.2,73.4)| |NPC|84963| |Z|539| |FAC|Alliance|
A Oru'kai's Staff |QID|36315| |N|(npc:84963) (36.2,73.4)| |NPC|84963| |Z|539| |FAC|Alliance|
C Oru'kai's Staff |QID|36315| |N|Use (item:115372) on (item:115290), then retrive it (36.2,73.4)| |NPC|84963| |Z|539| |FAC|Alliance|
T Oru'kai's Staff |QID|36315| |N|(npc:84966) (37.4,72.6)| |NPC|84966| |Z|539| |FAC|Alliance|

N (item:115350) |ENC| |QID|36255| |N|Quest reward or drop from NPC's in WoD| |L|115350| |Z|525| |FAC|Horde|
A Enchanted Highmaul Bracer |QID|36255| |N|Use (item:115350) to start quest.| |U|115350| |Z|525| |FAC|Horde|
T Enchanted Highmaul Bracer |QID|36255| |N|(npc:83482) at Garrison (48,65)| |NPC|83482| |Z|525| |FAC|Horde|
A The Arakkoan Enchanter |QID|36256| |N|(npc:83482) at Garrison (48,65)| |NPC|83482| |Z|525| |FAC|Horde|
T The Arakkoan Enchanter |QID|36256| |N|(npc:84739) (54,51) |NPC|84739| |Z|525| |FAC|Horde|
A Failed Apprentice |QID|36257| |N|(npc:84739) (54,51) |NPC|84739| |Z|525| |FAC|Horde|
C Failed Apprentice |QID|36257| |N|(npc:84834) (56,48) |NPC|84834| |Z|525| |FAC|Horde|
T Failed Apprentice |QID|36257| |N|(npc:84834) (56,48) |NPC|84834| |Z|525| |FAC|Horde|
A Oru'kai's Scepter |QID|36260| |N|(npc:84834) (56,48) |NPC|84834| |Z|525| |FAC|Horde|
C Oru'kai's Scepter |QID|36260| |N|Use (item:115011) to retrieve (item:114990) (55,49)| |L|114990| |Z|525| |FAC|Horde|
T Oru'kai's Scepter |QID|36260| |N|(npc:84739) (54,51) |NPC|84739| |Z|525| |FAC|Horde|

--Draenic Dust: 109693
U (item:111922) |N|Learn Draenor Enchanting| |U|111922| |P|348 1|
U (item:111817) |N|Learn (item:111817). Tick this step.| |U|111817| |QID|36645|
N Build Enchanter's Study |QID|36645| |N|Build an Enchanter's Study in your Garrison. Tick this step.| 
A Your First Enchanting Work Order |QID|36645| |N|Talk to (npc:77354) in your Garrison| |NPC|77354| |FAC|Alliance|
N (item:109693) |QID|36645| |N|You will need 5 (item:109693) to complete Your First Enchanting Work Order. <br/><b>These come from disenchanting Draenor level green items.| |L|109693 5| |FAC|Alliance|
N Start... |ENC| |QID|36645.1| |N|Talk to (npc:77781) to start an Enchanting Work Order in your Garrison| |NPC|77781| |FAC|Alliance|
N (item:116844) |QID|36645.2| |N|Collect (item:116844), right next to Enchanter's Study in your Garrison.| |L|116844| |FAC|Alliance|
T Your First Enchanting Work Order |QID|36645| |N|Talk to (npc:77781) in your Garrison| |NPC|77781| |FAC|Alliance|

A Your First Enchanting Work Order |QID|37570| |N|Talk to (npc:79821) in your Garrison| |NPC|79821| |FAC|Horde|
N (item:109693) |QID|37570| |N|You will need 5 (item:109693) to complete Your First Enchanting Work Order. <br/><b>These come from disenchanting Draenor level green items.| |L|109693 5| |FAC|Horde|
N Start... |ENC| |QID|37570.1| |N|Talk to (npc:79820) to start an Enchanting Work Order in your Garrison| |NPC|79820| |FAC|Horde|
N (item:116844) |QID|37570.2| |N|Collect (item:116844), right next to Enchanter's Study in your Garrison.| |L|116844| |FAC|Horde|
T Your First Enchanting Work Order |QID|37570| |N|Talk to (npc:79820) in your Garrison| |NPC|79820| |FAC|Horde|

N More Work Orders |ENC| |N|Continue creating work orders to collect (item:115504), these are required for Enchanting recipes. <br/><b>Each Work Order requires 5 (item:109693). <br/><br/>Tick this step.| |P|348 100|

N (item:119293) |ENC| |N|Craft with; <br/><b>3 (item:109693)| |P|348 5|
N Additional Recipes |N|(item:119293) are used to purchase additional recipes from (npc:77354) in your Garrison. Tick this step.| |NPC|77354|

N (item:115504) |ENC| |N|Create (item:115504) daily. These are required for leveling and high level recipes. <br/><b>1 (item:111245). <br/><br/>Tick this step.| |P|348 100|
N 5-100 (item:112321) |ENC| |N|Craft (item:112321) with; <br/><b>180 (item:109693)| |P|348 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Draenor Enchanting profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
