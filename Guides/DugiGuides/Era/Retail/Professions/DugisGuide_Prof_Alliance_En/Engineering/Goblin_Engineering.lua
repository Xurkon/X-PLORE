local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Engineering_Goblin_Engineering")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Engineering|r"}, "Goblin Engineering", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT GOBLIN ENGINEERING:<br/><b>You cannot specialize in both Gnomish and Goblin Engineering.<br/><b>Additionally, you cannot change your specialization without unlearning the Engineering profession, and leveling it up again.<br/><b>We recommend looking into the differences between Gnomish and Goblin Engineering before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>You can create some of the most desirable Bind On Pickup trinkets for a specialization, unlearn Engineering to level it up again to learn the other specialization.<br/><b>If you change specializations, you will still be able to use the items you create, unless they specifically require Goblin Engineering to use it.<br/>Tick this step.|

N Reach Level 30 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>You must be at least this level before you can begin this questline.| |PL|30|

N Reach Level 200 |ENG| |N|Reach level 200 Engineering<br/><b>You must be at least level 200 with your Engineering profession before you can begin this questline.<br/><b>Use the (guide:"Engineering (1-300)") guide to accomplish this.| |P|202 200|

A Goblin Engineering |QID|4181| |N|(npc:5174) in (map:1455) (68.46,43.56)| |Z|1455| |NPC|5174|
T Goblin Engineering |QID|4181| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126|
A The Pledge of Secrecy |QID|3638| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126|
C The Pledge of Secrecy |QID|3638| |N|Use (item:10792) (52.48,27.33)| |Z|1446| |U|10792|
T The Pledge of Secrecy |QID|3638| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126|
A Show Your Work |QID|3639| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126|

N 30 (item:3575) |QID|3639| |N|Collect 30 (item:3575)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3575 30|
N 40 (item:2838) |QID|3639| |N|Collect 40 (item:2838)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|2838 40|
N 2 (item:2842) |QID|3639| |N|Collect 2 (item:2842)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|2842 2|
N 20 (item:7912) |QID|3639| |N|Collect 20 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|7912 20|
N 10 (item:4306) |QID|3639| |N|Collect 10 (item:4306)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|4306 10|
N 20 (item:2841) |QID|3639| |N|Collect 20 (item:2841)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|2841 20|
N 5 (item:2319) |QID|3639| |N|Collect 5 (item:2319)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|2319 5|
N 20 (item:2592) |QID|3639| |N|Collect 20 (item:2592)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House.| |L|2592 20|

N Learn (spell:3967) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:3967) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:12586) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:12586) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3955) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:3955) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:12585) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:12585) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3953) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:3953) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3945) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:3945) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3942) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:3942) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3973) |QID|3639| |N|Speak to (npc:5174) inside the building and learn (spell:3973) in (map:1455) (68.47,43.56)| |Z|1455| |NPC|5174|

N 40 (spell:3945) |ENG| |QID|3639| |N|Create 40 (spell:3945)<br/><b>40 (item:2838) (49.83,44.12)| |Z|1455| |L|4377 40|
N 10 (spell:3973) |ENG| |QID|3639| |N|Create 10 (spell:3973)<br/><b>10 (item:2842) (49.83,44.12)| |Z|1455| |L|4404 10|
C Show Your Work |ENG| |QID|3639.1| |N|Create 20 (spell:3967)<br/><b>60 (item:3575)<br/><b>60 (item:4377)<br/><b>20 (item:4404) (49.83,44.12)| |Z|1455| |L|4394 20|
N 10 (spell:12585) |ENG| |QID|3639| |N|Create 10 (spell:12585)<br/><b>20 (item:7912) (49.83,44.12)| |Z|1455| |L|10505 10|
C Show Your Work |ENG| |QID|3639.2| |N|Create 20 (spell:12586)<br/><b> 20 (item:10505)<br/><b>20 (item:4306) (49.83,44.12)<br/><b>This schematic will give you 2 of these.| |Z|1455| |L|10507 20|
N 5 (spell:3953) |ENG| |QID|3639| |N|Create 5 (spell:3953)<br/><b>10 (item:2841)<br/><b>5 (item:2319)<br/><b>5 (item:2592) (49.83,44.12)| |Z|1455| |L|4382 5|
N 5 (spell:3942) |ENG| |QID|3639| |N|Create 5 (spell:3942)<br/><b>10 (item:2841)<br/><b>5 (item:2592) (49.83,44.12)| |Z|1455| |L|4375 5|
C Show Your Work |ENG| |QID|3639.3| |N|Create 5 (spell:3955)<br/><b>5 (item:4382)<br/><b>5 (item:4375)<br/><b>10 (item:4377)<br/><b>10 (item:2592) (49.83,44.12)| |Z|1455| |L|4384 5|

T Show Your Work |QID|3639| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126|

N Learn Schematics |N|Speak to (npc:8126) in (map:1446) (52.48,27.33) and learn schematics<br/>Tick this step.| |Z|1446| |NPC|8126|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Goblin Engineering questline for the Engineering profession.]]})
    end
       
    function Guide:Unload()
    end
end