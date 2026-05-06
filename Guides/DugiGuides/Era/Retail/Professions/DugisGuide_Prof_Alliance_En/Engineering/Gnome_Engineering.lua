local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Engineering_Gnome_Engineering")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Engineering|r"}, "Gnome Engineering", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT GNOME ENGINEERING:<br/><b>You cannot specialize in both Gnome and Goblin Engineering.<br/><b>Additionally, you cannot change your specialization without unlearning the Engineering profession, and leveling it up again.<br/><b>We recommend looking into the differences between Gnome and Goblin Engineering before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>You can create some of the most desirable Bind On Pickup trinkets for a specialization, unlearn Engineering to level it up again to learn the other specialization.<br/><b>If you change specializations, you will still be able to use the items you create, unless they specifically require Gnome Engineering to use it.<br/>Tick this step.|

N Reach Level 30 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|30|

N Reach Level 200 |ENG| |N|Reach level 200 Engineering<br/><b>You must be at least level 200 with your Engineering profession before you can begin this questline.<br/><b>Use the (guide:"Engineering (1-300)") guide to accomplish this.| |P|202 200|

A Gnome Engineering |QID|3632| |N|(npc:5174) in (map:1455) (68.46,43.56)| |Z|1455| |NPC|5174|
T Gnome Engineering |QID|3632| |N|(npc:7944) in (map:1446) (69.56,50.31)| |Z|1455| |NPC|7944|
A The Pledge of Secrecy |QID|3640| |N|(npc:7944) in (map:1446) (69.56,50.31)| |Z|1455| |NPC|7944|
C The Pledge of Secrecy |QID|3640.1| |N|Use (item:10793) (69.56,50.31)| |Z|1455| |U|10793|
T The Pledge of Secrecy |QID|3640| |N|(npc:7944) in (map:1446) (69.56,50.31)| |Z|1455| |NPC|7944|
A Show Your Work |QID|3641| |N|(npc:7944) in (map:1446) (69.56,50.31)| |Z|1455| |NPC|7944|

N Learn (spell:3953) |QID|3641| |N|Speak to (npc:5174) inside the building and learn (spell:3953) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:12584) |QID|3641| |N|Speak to (npc:5174) inside the building and learn (spell:12584) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3958) |QID|3641| |N|Speak to (npc:5174) inside the building and learn (spell:3958) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3961) |QID|3641| |N|Speak to (npc:5174) inside the building and learn (spell:3961) (68.47,43.56)| |Z|1455| |NPC|5174|
N Learn (spell:3965) |QID|3641| |N|Speak to (npc:5174) inside the building and learn (spell:3965) (68.47,43.56)| |Z|1455| |NPC|5174|

B (item:2880) |QID|3641 ||N|Speak to (npc:5175) inside the building and buy (item:2880) (67.85,42.51)| |Z|1455| |NPC|5175| |L|2880|
B (item:13310) |QID|3641| |N|Speak to (npc:2685) inside the building and buy (item:13310) (28.50,75.12)| |Z|1434| |NPC|2685| |L|13310|

N Learn (spell:3979) |QID|3641| |N|Use (item:13310) to learn (spell:3979) (28.50,75.12)| |Z|1434| |U|13310|

N 18 (item:3860) |QID|3641| |N|Collect 18 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3860 18|
N 6 (item:2841) |QID|3641| |N|Collect 6 (item:2841)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|2841 6|
N 1 (item:1529) |QID|3641| |N|Collect 1 (item:1529)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|1529|
N 1 (item:3864) |QID|3641| |N|Collect 1 (item:1529)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3864|
N 6 (item:3575) |QID|3641| |N|Collect 6 (item:3575)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3575 6|
N 1 (item:3577) |QID|3641| |N|Collect 1 (item:3577)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House.| |L|3577|
N 2 (item:2319) |QID|3641| |N|Collect 2 (item:2319)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House.| |L|2319 2|
N 8 (item:4234) |QID|3641| |N|Collect 8 (item:4234)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House.| |L|4234 8|
N 2 (item:2592) |QID|3641| |N|Collect 2 (item:2592), you can gather these with Skinning profession, otherwise purchase from the Auction House.| |L|2592 2|

C Show Your Work |ENG| |QID|3641.1| |N|Create 6 (spell:12589)<br/><b>18 (item:3860) (49.83,44.12)| |Z|1455| |L|10559 6|
N 1 (spell:3938) |ENG| |QID|3641| |B|Create 1 (spell:3938)<br/><b>2 (item:2841)<br/><b>1 (item:2880) (49.83,44.12)| |Z|1455| |L|4371|
C Show Your Work |ENG| |QID|3641.2| |N|Create 1 (spell:3979)<br/><b>1 (item:4371)<br/><b>1 (item:1529)<br/><b>1 (item:3864) (49.83,44.12)| |Z|1455| |L|4407|
N 2 (spell:3958) |ENG| |QID|3641| |N|Create 2 (spell:3958)<br/><b>4 (item:3575) (49.83,44.12)| |Z|1455| |L|4387 2|
N 2 (spell:3953) |ENG| |QID|3641| |N|Create 2 (spell:3953)<br/><b>4 (item:2841)<br/><b>2 (item:2319)<br/><b>2 (item:2592) (49.83,44.12)| |Z|1455| |L|4382 2|
N 2 (spell:12584) |ENG| |QID|3641| |N|Create 2 (spell:12584)<br/><b>2 (item:3577) (44.83,44.12)<br/><b>This schematic will give you 3 of these.| |Z|1455| |L|10558 2|
N 2 (spell:3961) |ENG| |QID|3641| |N|Create 2 (spell:3961)<br/><b>2 (item:3575)<br/><b>2 (item:10558) (44.83,44.12)| |Z|1455| |L|4389 2|
C Show Your Work |ENG| |QID|3641.3| |N|Create 2 (spell:3965)(<br/><b>)2 (item:4387)<br/><b>2 (item:4382)<br/><b>2 (item:4389)(br/><b>)8 (item:4234) (44.83,44.12)| |Z|1455| |L|4392 2|

T Show Your Work |QID|3641| |N|(npc:7944) in (map:1446) (69.56,50.31)| |Z|1455| |NPC|7944|

N Learn Schematics |N|Speak to (npc:7944) and learn schematics (69.56,50.31)<br/>Tick this step.| |Z|1455| |NPC|7944|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Gnomish Engineering questline for the Engineering profession.]]})
    end
       
    function Guide:Unload()
    end
end