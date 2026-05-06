local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Raptari_Rider_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "Raptari Rider", nil, "Horde", nil, "A", nil, function()
return [[

N Read |N|This guide will help with getting the (aid:13038) achievement.<br/>Tick this step.|
N Choose |N|(choice:1:Quest Line)<br/>(choice:2:Change Loa)<br/>(choice:3:Achievement)|

A Picking a Side |QID|47438| |N|(npc:126560) in {Zanchul} (42.34, 9.09)| |Z|1165| |NPC|126560| |CHOICE|1|
C Picking a Side |QID|47438| |N|Choose a loa in {Zanchul} (42.45, 9.10)| |Z|1165| |CHOICE|1|
T Picking a Side |QID|47438| |N|(npc:126560) in {Zanchul} (42.33, 9.15)| |Z|1165| |NPC|126560| |CHOICE|1|
A Gonk, Lord of the Pack |QID|47439| |N|(npc:126560) in {Zanchul} (42.33, 9.15)| |Z|1165| |NPC|126560| |CHOICE|1|
R Garden of the Loa |QID|47439| |N|Travel to {Garden of the Loa} (35.94, 5.29) (48.21, 32.26)| |Z|862| |CHOICE|1|
C Gonk, Lord of the Pack |QID|47439| |N|Speak with (npc:127444) to bargain in {Garden of the Loa} (48.21, 32.26)| |Z|862| |NPC|127444| |CHOICE|1|
T Gonk, Lord of the Pack |QID|47439| |N|(npc:127576) in {Dazar'alor} (49.94, 33.45)| |Z|1165| |NPC|127576| |CHOICE|1|
A The Bargain is Struck |QID|48897| |N|(npc:127576) in {Dazar'alor} (49.94, 33.45)| |Z|1165| |NPC|127576| |CHOICE|1|
T The Bargain is Struck |QID|48897| |N|(npc:120740) in {Dazar'alor} (49.92, 46.55)| |Z|1165| |NPC|120740| |CHOICE|1|

N Change Loa's |N|If you chose Pa'Ku, you can change the Loa.<br/>Speak to (npc:137510) in {Dazar'alor} (50.71, 35.32)<br/>Choose: "I would like to change the loa represented here from Zuldazar."<br/>Select "I would like to choose Gonk, Lord of the Pack."<br/><br/>Tick this step.| |Z|1165| |NPC|137510| |CHOICE|2|

N Keep Running For Three Minutes |AID|13038| |N|Keep running between these two Totem of Gonk's until you get the achievement (49.91, 34.37)| |Z|1165| |CHOICE|3| |AC|1|

N Guide Complete |N|You earned the (aid:13038) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:13038) achievement]]}) end

    function Guide:Unload()
    end
end
