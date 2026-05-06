local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Engineering_Gnomish_Engineering")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Engineering|r"}, "Gnomish Engineering", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT GNOMISH ENGINEERING:<br/><b>You cannot specialize in both Gnomish and Goblin Engineering.<br/><b>Additionally, you cannot change your specialization without unlearning the Engineering profession, and leveling it up again.<br/><b>We recommend looking into the differences between Gnomish and Goblin Engineering before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>You can create some of the most desirable Bind On Pickup trinkets for a specialization, unlearn Engineering to level it up again to learn the other specialization.<br/><b>If you change specializations, you will still be able to use the items you create, unless they specifically require Gnomish Engineering to use it.<br/>Tick this step.|

N Reach Level 30 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|30|

N Level 200 |N|Reach Level 200 Engineering<br/><b>You must be at least level 200 with your Engineering profession before you can begin this questline.<br/><b>Use the (guide:"Engineering (1-300)") guide to accomplish this.| |P|202 200|

N Choose Your Current Location |N|Choose your current location.<br/><b>(choice:1:Rachet)<br/><b>(choice:2:Undercity)|
A Gnome Engineering |QID|3637| |N|(npc:3494) in (map:1413) (62.67,36.31)| |Z|1413| |NPC|3637| |CHOICE|1|
T Gnome Engineering |QID|3637| |N|(npc:7406) in (map:1434) (28.36,76.35)| |Z|1434| |NPC|7406| |CHOICE|1|
A Gnome Engineering |QID|3635| |N|(npc:4586) in (map:1458) (75.6,73.2)| |Z|1458| |NPC|4586| |CHOICE|2|
T Gnome Engineering |QID|3635| |N|(npc:7406) in (map:1434) (28.36,76.35)| |Z|1434| |NPC|7406| |CHOICE|2|
A The Pledge of Secrecy |QID|3642| |N|(npc:7406) in (map:1434) (28.36,76.35)| |Z|1434| |NPC|7406|
C The Pledge of Secrecy |QID|3642| |N|Use (item:10794) (28,36,76.35)| |Z|1434| |U|10794| |L|11282|
T The Pledge of Secrecy |QID|3642| |N|(npc:7406) in (map:1434) (28.36,76.35)| |Z|1434| |NPC|7406|
A Show Your Work |QID|3643| |N|(npc:7406) in (map:1434) (28.36,76.35)| |Z|1434| |NPC|7406|

B (item:13310) |QID|3643| |N|Speak to (npc:2685) inside the building and buy (item:13319) (28.50,75.12)<br/><b>This is a limited supply item.<br/><b>If he doesn't have it for sale, check the Auction House.| |Z|1434| |NPC|2635| |L|13319|
N Learn (spell:3979) |QID|3643| |N|Use (item:13319) to learn (spell:3979) (28.50,75.12)| |Z|1434| |U|13319|

N Learn (spell:3953) |QID|3643| |N|Speak to (npc:11017) inside the building and learn (spell:3953) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:12584) |QID|3643| |N|Speak to (npc:11017) inside the building and learn (spell:12584) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3958) |QID|3643| |N|Speak to (npc:11017) inside the building and learn (spell:3958) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3961) |QID|3643| |N|Speak to (npc:11017) inside the building and learn (spell:3961) (76.17,25.17)| |Z|1454| |NPC|11017|
N Learn (spell:3965) |QID|3643| |N|Speak to (npc:11017) inside the building and learn (spell:3965) (76.17,25.17)| |Z|1454| |NPC|11017|

B 1 (item:2880) |QID|3643| |N|Speak to (npc:3413) inside the building and buy 1 (item:2880) (75.48,25.36)| |Z|1454| |NPC|3413| |L|2880|
N 18 (item:3860) |QID|3643| |N|Collect 18 (item:3860)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|3860 18|
N 6 (item:2841) |QID|3643| |N|Collect 6 (item:2841)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|2841 6|
N 1 (item:1529) |QID|3643| |N|Collect 1 (item:1529)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|1529|
N 1 (item:3864) |QID|3643| |N|Collect 1 (item:3864)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|3864|
N 6 (item:3575) |QID|3643| |N|Collect 6 (item:3575)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|3575 6|
N 2 (item:3577) |QID|3643| |N|Collect 2 (item:3577)<br/><b>If you have the Mining profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|3577|
N 2 (item:2319) |QID|3643| |N|Collect 2 (item:2319)<br/><b>If you have the Skinning profession, you can gather this.<br/><b>You can also purchase them from the Auction House.| |L|2319 2|
N 8 (item:4234) |QID|3643| |N|Collect 8 (item:4234)<br/><b>If you have the Skinning profession, you can gather this.<br/><b>You can also purchase them from the Auction House.| |L|4234 8|
N 2 (item:2592) |QID|3643| |N|Collect 2 (item:2592)<br/><b>You can also purchase them from the Auction House.| |L|2592 2|

C Show Your Work |ENG| |QID|3643.1| |N|Create 6 (spell:12589)<br/><b>18 (item:3860) (28.95,75.48)| |Z|1434| |L|12559 6|
N 1 (spell:3938) |ENG| |QID|3643| |N|Create 1 (spell:3938)<br/><b>1 (item:2841)<br/><b>1 (item:2880) (28.95,75.48)| |Z|1434| |L|4371|
C Show Your Work |ENG| |QID|3643.2| |N|Create 1 (spell:3979)<br/><b>1 (item:4371)<br/><b>1 (item:1529)<br/><b>1 (item:3864) (28.95,75.48)| |Z|1434| |L|4407|
N 2 (spell:3958) |ENG| |QID|3643| |N|Create 2 (spell:3958)<br/><b>4 (item:3575) (28.95,75.48)| |Z|1434| |L|4387 2|
N 2 (spell:3953) |ENG| |QID|3643| |N|Create 2 (spell:3953)<br/><b>4 (item:2841)<br/><b>2 (item:2319)<br/><b>2 (item:2592) (28.95,75.48)| |Z|1434| |L|4382 2|
N 2 (spell:12584) |ENG| |QID|3643| |N|Create 2 (spell:12584)<br/><b>2 (item:3577) (28.95,75.48)| |Z|1434| |L|10558 2|
N 2 (spell:3961) |ENG| |QID|3643| |N|Create 2 (spell:3961)<br/><b>2 (item:3575)<br/><b>2 (item:10558) (38.95,75.48)| |Z|1434| |L|4389 2|
C Show Your Work |ENG| |QID|3643.3| |N|Create 2 (spell:3965)<br/><b>2 (item:4387)<br/><b>2 (item:4382)<br/><b>2 (item:4389)<br/><b>2 (item:4234) (28.95,75.48)| |Z|1434| |L|4392 2|

T Show Your Work |QID|3643| |N|(npc:7406) in (map:1434) (28.36,76.35)| |Z|1434| |NPC|7406|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Gnomish Engineering questline for the Engineering profession.]]})
    end
        
    function Guide:Unload()
    end
end