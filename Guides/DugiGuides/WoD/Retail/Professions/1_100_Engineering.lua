local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Engineering_Draenor")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Draenor Leveling|r", "Draenor Engineering 1-100", nil, nil, nil, "P", nil, function()
return [[

N Read First |N|This guide covers the the required quests and items need to level. <br/><br/>You must have a character level 35+ and Warlords of Draenor is required. <br/><br/>Leveling is available in Draenor from 1-100. <br/><br/>Tick this step.| |QID|36287|
N Garrison |N|An Engineering Works is required to level Engineering. Tick this step.| |QID|36646|

N (item:115278) |ENG| |QID|36286| |N|Quest reward or drop from NPC's| |L|115278| |Z|539| |FAC|Alliance|
A Transponder 047-B |QID|36286| |N|Use (item:115278) to start quest.| |U|115278| |Z|539| |FAC|Alliance|
T Transponder 047-B |QID|36286| |N|(npc:84825) (60,32)| |NPC|84825| |Z|539| |FAC|Alliance|
A Snatch 'n' Grab |QID|36287| |N|(npc:84825) (60,32)| |NPC|84825| |Z|539| |FAC|Alliance|
C Snatch 'n' Grab |QID|36287| |N|Search the beach for (item:115279) (66,27)| |L|115279| |Z|539| |FAC|Alliance|
T Snatch 'n' Grab |QID|36287| |N|(npc:84825) (60,32)| |NPC|84825| |Z|539| |FAC|Alliance|

N (item:116438) |ENG| |QID|36589| |N|Quest reward or drop from NPC's in WoD| |L|116438| |Z|525| |FAC|Horde|
A Heavy Arms |QID|36589| |N|Use (item:116438) to start quest.| |U|116438| |Z|525| |FAC|Horde|
T Heavy Arms |QID|36589| |N|(npc:85882) (60.1,38.7)| |NPC|85882| |Z|590| |FAC|Horde|
A "Spare" Parts |QID|36594| |N|(npc:85882) (60.1,38.7)| |NPC|85882| |Z|590| |FAC|Horde|
N As you go... |QID|36594| |N|Collect 20 (item:116434) from boxes on the ground or from (npc:86106). Tick this step.| |NPC|86106| |Z|525| |FAC|Horde|
N 50 (item:116430) |QID|36594.2| |N|Use (item:116645) to destroy Cannons for (item:116430) (56,72)| |U|116645| |L|116430 50| |Z|525| |FAC|Horde|
N 20 (item:116434) |QID|36594.1| |N|Kill (npc:86106) and collect 20 (item:116434) (56,72) |L|116434 20| |Z|525| |FAC|Horde|
T "Spare" Parts |QID|36594| |N|(npc:85882) (60.1,38.7)| |NPC|85882| |Z|590| |FAC|Horde|
A Big Frostfire Gun |QID|36627| |N|(npc:85882) (60.1,38.7)| |NPC|85882| |Z|590| |FAC|Horde|
C Big Frostfire Gun |QID|36627| |N|Use (item:116759) to subdue (npc:86000) (52,72)| |NPC|86000| |U|116759| |Z|525| |FAC|Horde|
T Big Frostfire Gun |QID|36627| |N|(npc:85882) (60.1,38.7)| |NPC|85882| |Z|590| |FAC|Horde|

--True Iron Ore: 109119
U (item:111921) |N|Learn Draenor Engineering| |U|111921| |P|347 1|
U (item:109258) |N|Learn (item:109258). Tick this step.| |U|109258| |QID|36646|
N Build Engineeering Works |QID|36646| |N|Build an Engineeering Works in your Garrison. Tick this step.|
A Your First Engineering Work Order |QID|36646| |N|Talk to (npc:77365) in your Garrison| |NPC|77365| |FAC|Alliance|
N (item:109119) |QID|36646| |N|You will need 5 (item:109119) to complete Your First Engineering Work Order. These are gathered around Draenor.| |L|109119 5| |FAC|Alliance|
N Start... |ENG| |QID|36646.1| |N|Talk to (npc:77831) to start an Engineering Work Order in your Garrison| |NPC|77831| |FAC|Alliance|
N (item:112971) |QID|36646.2| |N|Collect (item:112971), right next to Engineering Works in your Garrison.| |L|116844| |FAC|Alliance|
T Your First Engineering Work Order |QID|36646| |N|Talk to (npc:77831) in your Garrison| |NPC|77831| |FAC|Alliance|

A Your First Engineering Work Order |QID|37571| |N|Talk to (npc:79826) in your Garrison| |NPC|79826| |FAC|Horde|
N (item:109119) |QID|37571| |N|You will need 5 (item:109119) to complete Your First Engineering Work Order. These are gathered around Draenor.| |L|109119 5| |FAC|Horde|
N Start... |ENG| |QID|37571.1| |N|Talk to (npc:86696) to start an Engineering Work Order in your Garrison| |NPC|86696| |FAC|Horde|
N (item:112971) |QID|37571.2| |N|Collect (item:112971), right next to Forge in your Garrison.| |L|116844| |FAC|Horde|
T Your First Engineering Work Order |QID|37571| |N|Talk to (npc:86696) in your Garrison| |NPC|86696| |FAC|Horde|

N More Work Orders |ENG| |N|Continue creating work orders to collect (item:111366), these are required for Engineering recipes. <br/><b>Each Work Order requires 5 (item:109119). <br/><br/>Tick this step.| |P|347 100|

N (item:119299) |ENG| |N|Create 1 (item:119299) with; <br/><b>5 (item:109119)| |P|347 5|
N Additional Recipes |N|(item:119299) are used to purchase additional recipes from (npc:77365) in your Garrison. Tick this step.| |NPC|77365|
B (item:118488) |N|(npc:77365) in your Garrison| |L|118488| |NPC|77365| |P|347 5| |FAC|Alliance|
B (item:118488) |N|(npc:79826) in your Garrison| |L|118488| |NPC|79826| |P|347 5| |FAC|Horde|

N (item:111366) |ENG| |N|Create (item:111366) daily. These are required for leveling and high level recipes. <br/><b>10 (item:109119) <br/><b>10 (item:109118). <br/><br/>Tick this step.| |P|347 100|
N 1-30 (item:118007) |ENG| |N|Craft with; <br/><b>138 (item:109118)| |P|347 25| --Mecha-Blast Rocket
N 30-100 (item:114056) |ENG| |N|Craft with; <br/><b>1050  (item:109119)<br/><b>1050  (item:109118)| |P|347 100|

N Guide Complete

]]
end, {description = [[This guide covers how to level up the Draenor Engineering profession from 1-100]]})
	end
	
	function Guide:Unload()
	end
end
