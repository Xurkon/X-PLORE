local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Pakuai_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "Paku'ai", nil, "Horde", nil, "A", nil, function()
return [[

N Read |N|This guide will help with getting the (aid:13039) achievement.<br/>Tick this step.|
N Choice |N|(choice:1:Quest Line)<br/>(choice:2:Change Loa)<br/>(choice:3:Achievement)|

A Picking a Side |QID|47438| |N|(npc:126560) in {Zanchul} (42.34, 9.09)| |Z|1165| |NPC|126560| |CHOICE|1|
C Picking a Side |QID|47438| |N|Choose Pa'Ku, Master of Winds in {Zanchul} (42.45, 9.10)| |Z|1165| |CHOICE|1|
T Picking a Side |QID|47438| |N|(npc:126560) in {Zanchul} (42.33, 9.15)| |Z|1165| |NPC|126560| |CHOICE|1|
A Pa'ku, Master of Winds |QID|47440| |N|(npc:126564) in {Zanchul} (42.33, 9.15)| |Z|1165| |NPC|126564| |CHOICE|1|
N (npc:127414) |QID|47440.1| |N|Ride Ata the Winglord in {Pterror Rise} (55.48, 32.36)| |Z|862| |NPC|127414| |V| |CHOICE|1|
N Bargain with Pa'ku |QID|47440.2| |N|Speak to (npc:127377) to bargain (71.19, 48.48) (71.47, 49.23)| |Z|862| |NPC|127377| |CHOICE|1|
N Jump off the cliff |QID|47440.3| |N|Jump off the cliff, don't worry (npc:127377) will catch you (71.77, 49.24)| |Z|862| |NPC|127377| |CHOICE|1|
T Pa'ku, Master of Winds |QID|47440| |N|(npc:127489) in {Dazar'alor} (49.52, 33.42)| |Z|1165| |NPC|127489| |CHOICE|1|
A The Bargain is Struck |QID|47432| |N|(npc:127489) in {Dazar'alor} (49.52, 33.42)| |Z|1165| |NPC|127489| |CHOICE|1|
T The Bargain is Struck |QID|47432| |N|(npc:120740) in {The Golden Throne} (49.92, 46.55)| |Z|1165| |NPC|120740| |CHOICE|1|

N Change Loa's |N|If you chose Gonk, you can change the Loa.<br/>Speak to (npc:137510) in {Dazar'alor} (50.71, 35.32)<br/>Choose: "I would like to change the loa represented here from Zuldazar."<br/>Select "I would like to choose Pa'Ku, Master of Winds."<br/><br/>Tick this step.| |Z|1165| |NPC|137510| |CHOICE|2|

R The Sliver |AID|13039| |N|Travel to {The Sliver} (53.12, 19.29)| |Z|1165| |CHOICE|3|
N Pa'Ku 1 |AID|13039| |N|Click on the Totem of Pa'Ku in {The Sliver} (53.17, 18.95)| |Z|1165| |REACH| |V| |CHOICE|3|
N Pa'Ku 2 |AID|13039| |N|Click on the Totem of Pa'Ku in {The Sliver} (52.97, 11.36)| |Z|1165| |REACH| |V| |CHOICE|3|
N Pa'Ku 3 |AID|13039| |N|Click on the Totem of Pa'Ku in {The Sliver} (59.09, 10.72)| |Z|1165| |REACH| |V| |CHOICE|3|
N Pa'Ku 4 |AID|13039| |N|Click on the Totem of Pa'Ku in {The Sliver} (52.90, 12.39)| |Z|1165| |REACH| |V| |CHOICE|3|
N Pa'Ku 5 |AID|13039| |N|Jump down ledge and then click on the Totem of Pa'Ku in {Zanchul} (45.17, 5.39)| |Z|1165| |REACH| |V| |CHOICE|3|
N Pa'Ku 6 |AID|13039| |N|Click on the Totem of Pa'Ku in {Terrace of the Chosen} (46.56, 19.79)| |Z|1165| |REACH| |V| |CHOICE|3|
N Pa'Ku 7 |AID|13039| |N|Click on the Totem of Pa'Ku in {Dazar'alor} (49.56, 32.74)| |Z|1165| |REACH| |V| |CHOICE|3|

N Guide Complete |N|You earned the (aid:13039) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:13039) achievement]]}) end

    function Guide:Unload()
    end
end
