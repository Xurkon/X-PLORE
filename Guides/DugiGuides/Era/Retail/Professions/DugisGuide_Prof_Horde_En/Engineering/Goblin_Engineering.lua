local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Engineering_Goblin_Engineering")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Engineering|r"}, "Goblin Engineering", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT GOBLIN ENGINEERING:<br/><b>You cannot specialize in both Gnomish and Goblin Engineering.<br/><b>Additionally, you cannot change your specialization without unlearning the Engineering profession, and leveling it up again.<br/><b>We recommend looking into the differences between Gnomish and Goblin Engineering before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>You can create some of the most desirable Bind On Pickup trinkets for a specialization, unlearn Engineering to level it up again to learn the other specialization.<br/><b>If you change specializations, you will still be able to use the items you create, unless they specifically require Goblin Engineering to use it.<br/>Tick this step.|

N Reach Level 30 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|30|

N Reach Level 200 |ENG| |N|Reach Level 200 Engineering<br/><b>You must be at least level 200 with your Engineering profession before you can begin this questline.<br/><b>Use the (guide:"Engineering (1-300)") guide to accomplish this.| |P|202 200|

N Choose Your Current Location |N|Choose your current location.<br/><b>(choice:1:The Barrens)<br/><b>(choice:2:Undercity)|
A Goblin Engineering |QID|3633| |N|(npc:3494) in (map:1413) (62.67,36.31)| |Z|1413| |NPC|3494| |CHOICE|1|
T Goblin Engineering |QID|3633| |N|(npc:8126) in (map:1446) (62.67,36.31)| |Z|1446| |NPC|8126| |CHOICE|1|
A Goblin Engineering |QID|3526| |N|(npc:4586) in (map:1458) (75.6,73.2)| |Z|1458| |NPC|4586| |CHOICE|2|
T Goblin Engineering |QID|3526| |N|(npc:8126) in (map:1446) (62.67,36.31)| |Z|1446| |NPC|8126| |CHOICE|2|
A The Pledge of Secrecy |QID|3638| |N|(npc:3494) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|3494|
C The Pledge of Secrecy |QID|3628| |N|Use (item:10792) (52.48,27.33)| |Z|1446| |U|10792|
T The Pledge of Secrecy |QID|3628| |N|(npc:3494) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|3494|
A Show Your Work |QID|3639| |N|(npc:3494) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|3494|

N 30 (item:3575) |QID|3639| |N|Collect 30 (item:3575)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|3575 30|
N 40 (item:2838) |QID|3639| |N|Collect 40 (item:2838)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|2838 40|
N 2 (item:2842) |QID|3639| |N|Collect 2 (item:2842)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|2842 2|
N 20 (item:7912) |QID|3639| |N|Collect 20 (item:7912)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|7912 20|
N 10 (item:4306) |QID|3639| |N|Collect 10 (item:4306)<br/><b>You can also purchase them from the Auction House.| |L|4306 10|
N 20 (item:2841) |QID|3639| |N|Collect 20 (item:2841)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|2841 20|
N 20 (item:2592) |QID|3639| |N|Collect 20 (item:2592)<br/><b>You can also purchase them from the Auction House.| |L|2592 20|

N Learn (spell:3967) |N|Speak to (npc:11017) inside the building and learn (spell:3967) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:12586) |N|Speak to (npc:11017) inside the building and learn (spell:12586) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3955) |N|Speak to (npc:11017) inside the building and learn (spell:3955) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:12585) |N|Speak to (npc:11017) inside the building and learn (spell:12585) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3953) |N|Speak to (npc:11017) inside the building and learn (spell:3953) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3945) |N|Speak to (npc:11017) inside the building and learn (spell:3945) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3942) |N|Speak to (npc:11017) inside the building and learn (spell:3942) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3973) |N|Speak to (npc:11017) inside the building and learn (spell:3973) (76.17,25.17)| |Z|1454| |NPC|11017|

N 40 (spell:3945) |QID|3639| |ENG| |N|Create 40 (spell:3945)<br/><b>40 (item:2838)| |L|4377 40|
N 2 (spell:3973) |QID|3639| |ENG| |N|Create 2 (spell:3973)<br/><b>2 (item:2842)| |L|4404 10|
C Show Your Work |QID|3639.1| |ENG| |N|Create 20 (spell:3967)<br/><b>60 (item:3575)<br/><b>30 (item:4377)<br/><b>20 (item:4404)| |L|4394 20|
N 10 (spell:12585) |QID|3639 |ENG| |N|Create 10 (spell:12585)<br/><b>20 (item:7912)| |L|10505 10|
C Show Your Work |QID|3639.2| |ENG| |N|Create 20 (spell:12586)<br/><b>10 (item:10505)<br/<b>10 (item:4306)| |L|10507 20|
N 5 (spell:3953) |QID|3639| |ENG| |N|Create 5 (spell:3953)<br/><b>10 (item:2841)<br/><b>5 (item:2319)<br/><b>5 (item:2592)| |L|4382 5|
N 5 (spell:3942) |QID|3639| |ENG| |N|Create 5 (spell:3942)<br/><b>10 (item:2841)<br/><b>5 (item:2592)| |L|4375 5|
C Show Your Work |QID|3639.3| |ENG| |N|Create 5 (spell:4384)<br/><b>5 (item:4382)<br/><b>5 (item:4375)<br/><b>10 (item:4377)<br/><b>10 (item:2592)| |L|4364 5|

T Show Your Work |QID|3639| |N|(npc:3494) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|3494|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Goblin Engineering questline for the Engineering profession.]]})
    end
                
    function Guide:Unload()
    end
end