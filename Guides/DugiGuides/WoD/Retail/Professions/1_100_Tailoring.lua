local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Tailoring_Draenor")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Tailoring 1-100", nil, nil, nil, "P", "|SG|DugisGuideViewer.SuggestProfessionGuidePredicate([[Tailoring]], nil, 700) and UnitLevel([[player]])>=90|", function()
return [[

N Garrison |N|A Tailoring Emporium is required to level Tailoring. Tick this step.| |QID|36643|

N (item:114972) |QID|36236| |N|Quest reward or random world drop from NPCs| |L|114972| |Z|539| |FAC|Alliance|
A Cryptic Tome of Tailoring |QID|36236| |N|Use (item:114972) to start quest.| |U|114972| |Z|539| |FAC|Alliance|
T Cryptic Tome of Tailoring |QID|36236| |N|(npc:84776) (43,54)| |NPC|84776| |Z|539| |FAC|Alliance|
A Ameeka, Master Tailor |QID|36262| |N|(npc:84776) (43,54)| |NPC|84776| |Z|539| |FAC|Alliance|
T Ameeka, Master Tailor |QID|36262| |N|(npc:84523) (58,26)| |NPC|84523| |Z|539| |FAC|Alliance|
A The Clothes on Their Backs |QID|36266| |N|(npc:84523) (58,26)| |NPC|84523| |Z|539| |FAC|Alliance|
C The Clothes on Their Backs |QID|36266| |N|Collect 10 (item:115013) from (npc:82112) (43,56)| |NPC|82112| |Z|539| |FAC|Alliance|
T The Clothes on Their Backs |QID|36266| |N|(npc:84523) (58,26)| |NPC|84523| |Z|539| |FAC|Alliance|
A Hexcloth |QID|36269| |N|(npc:84523) (58,26)| |NPC|84523| |Z|539| |FAC|Alliance|
C Hexcloth |QID|36269| |N|Use the Flytrap Ichor sitting next to (npc:84523) (58,26)| |NPC|84523| |Z|539| |FAC|Alliance|
A Hexcloth |QID|36269| |N|(npc:84523) (58,26)| |NPC|84523| |Z|539| |FAC|Alliance|

N (item:114973) |TA| |QID|36301| |N|Quest reward or drop from NPC's in WoD| |L|114973| |Z|525| |FAC|Horde|
A Trega's Tailoring Kit |QID|36301| |N|(item:114973) starts this quest.| |U|114973| |Z|525| |FAC|Horde|
T Trega's Tailoring Kit |QID|36301| |N|(npc:84689) (20,60)| |NPC|84689| |Z|525| |FAC|Horde|
A From Their Cold Dead Hands |QID|36417| |N|(npc:84689) (20,60)| |NPC|84689| |Z|525| |FAC|Horde|
C From Their Cold Dead Hands |QID|36417| |N|Collect 10 (item:115590) dropped from Orgres (25,41)| |L|115590 10| |Z|525| |FAC|Horde|
T From Their Cold Dead Hands |QID|36417| |N|(npc:84689) (20,60)| |NPC|84689| |Z|525| |FAC|Horde|
A Dyed in the Fur |QID|36419| |N|(npc:84689) (20,60)| |NPC|84689| |Z|525| |FAC|Horde|
C Dyed in the Fur |QID|36419| |N|Use Trega's Flytrap Ichor next to (npc:84689) (20,60)| |NPC|84689| |Z|525| |FAC|Horde|
T Dyed in the Fur |QID|36419| |N|(npc:84689) (20,60)| |NPC|84689| |Z|525| |FAC|Horde|

--Sumptuous Fur: 111557, Hewweave Cloth: 111556
U (item:115357) |N|Learn Draenor Tailoring| |U|115357| |P|369 1|
U (item:111816) |N|Learn (item:111816). Tick this step.| |U|111816| |QID|36643|
N Build A Tailoring Emporium |QID|36643| |N|Build A Tailoring Emporium in your Garrison. Tick this step.|
A Your First Tailoring Work Order |QID|36643| |N|Talk to (npc:77382) in your Garrison| |NPC|77382| |FAC|Alliance|
N 5 (item:111557) |QID|36643| |N|You need 5 (item:111557). These are dropped form NPC's in Draenor.| |L|111557 5| |FAC|Alliance|
N Start.. |QID|36643.1| |N|Talk to (npc:77778) to start a Tailoring Work Order in your Garrison| |NPC|77778| |FAC|Alliance|
N (item:116840) |QID|36643.2| |N|Collect (item:116840), right next to Tailoring Emporium in your Garrison.| |L|116840| |FAC|Alliance|
T Your First Tailoring Work Order |QID|36643| |N|Talk to (npc:77778) in your Garrison| |NPC|77778| |FAC|Alliance|

A Your First Tailoring Work Order |QID|37575| |N|Talk to (npc:79864) in your Garrison| |NPC|79864| |FAC|Horde|
N 5 (item:111557) |QID|37575| |N|You need 5 (item:111557). These are dropped form NPC's in Draenor.| |L|111557 5| |FAC|Horde|
N Start.. |QID|37575.1| |N|Talk to (npc:79863) to start a Tailoring Work Order in your Garrison| |NPC|79863| |FAC|Horde|
N (item:116840) |QID|37575.2| |N|Collect (item:116840), right next to Tailoring Emporium in your Garrison.| |L|116840| |FAC|Horde|
T Your First Tailoring Work Order |QID|37575| |N|Talk to (npc:79863) in your Garrison| |NPC|79863| |FAC|Horde|

N More Work Orders |LE| |N|Continue creating work orders to collect (item:111556), these are required for Tailoring recipes. <br/><br/>Each Work Order requires 5 (item:111557). Tick this step.| |P|369 100|

N (item:118722) |TA| |N|Craft with; <br/><b>5 (item:111557)| |P|369 5|
B (item:114852) |N|(npc:77382) in your Garrison| |NPC|77382| |L|114852| |P|369 5| |FAC|Alliance|
B (item:114852) |N|(npc:79864) in your Garrison| |NPC|79864| |L|114852| |P|369 5| |FAC|Horde|
N 5-100 (spell:168836) |TA| |N|Craft with; <br/><b>2940 (item:111557)| |P|369 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Draenor Tailoring profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
