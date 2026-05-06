local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Emerald_Dream")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Emerald Dream (70+ Storyline)", nil, nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You will need to be at least level 70 to use this guide| |PL|70|

-- //The Coalition of Flames//
A A Sentinel's Summon |QID|76982| |N|Auto Accept in {Valdrakken} (50.17, 53.00)| |Z|2112|
T A Sentinel's Summon |QID|76982| |N|(npc:205067) in {Valdrakken} (50.17, 53.00)| |Z|2112| |NPC|205067|
A Fire Season |QID|75918| |N|(npc:205067) in {Valdrakken} (50.17, 53.00)| |Z|2112| |NPC|205067|
T Fire Season |QID|75918| |N|(npc:205068) in {Lunedane} (18.64, 79.80)| |Z|2023| |NPC|205068|
A Dousing the Wards |QID|75919| |N|(npc:205068) in {Lunedane} (18.64, 79.80)| |Z|2023| |NPC|205068|
A Eyes of Fire |QID|75920| |N|(npc:205892) in {Lunedane} (18.64, 79.80)| |Z|2023| |NPC|205892|

N Fyrakk's Forces Slain |QID|75920.1| |N|Slay 8 (npc:205138), (npc:205140) in {Lunedane} (20.108, 81.87)| |Z|2023| |NPC|205138, 205140|

A Story of a Memorable Victory |QID|72291| |N|Auto Accept|

N Warding Firestones Destroyed |QID|75919.1| |N|Destroy 4 (npc:207369) in {Lunedane} (20.18, 81.87)| |Z|2023| |NPC|207369|

T Dousing the Wards |QID|75919| |N|(npc:205892) in {Lunedane} (19.88, 81.68)| |Z|2023| |PPOS| |NPC|205892|
T Eyes of Fire |QID|75920| |N|(npc:205892) in {Lunedane} (19.88, 81.68)| |Z|2023| |PPOS| |NPC|205892|
A Through the Flames |QID|75921| |N|(npc:205892) in {Lunedane} (19.88, 81.68)| |Z|2023| |PPOS| |NPC|205892|

N Approach the flower |QID|75921.1| |N|Walk up to the flower in {Lunedane} (20.34, 81.00)| |Z|2023|
N (npc:205132) |QID|75921.2| |N|Speak to (npc:205132) in {Lunedane} (20.40, 80.93)| |Z|2023| |NPC|205132|
N (item:206598) |QID|75921.3| |N|Collect 4 (item:206598) in {Lunedane} (20.91, 80.03)| |Z|2023| |L|206598 4|
N Reach the Hiding Spot |QID|75921.4| |N|Walk up to the bushes in {Lunedane} (21.83, 77.38)| |Z|2023|

T Through the Flames |QID|75921| |N|(npc:205134) in {Lunedane} (21.87, 77.32)| |Z|2023| |NPC|205134|
A Inflammatory Information |QID|75922| |N|(npc:205134) in {Lunedane} (21.87, 77.32)| |Z|2023| |NPC|205134|

N Eavesdrop with Shandris |QID|75922.1| |N|Click on the bushes in {Lunedane} (21.83, 77.34)| |Z|2023| |NPC|205134|
N (npc:205136) Defeated |QID|75922.2| |N|Defeat (npc:205136) in {Lunedane} (21.97, 75.92)| |Z|2023| |NPC|205136|

T Inflammatory Information |QID|75922| |N|(npc:205142) in {Lunedane} (21.69, 77.09)| |Z|2023| |NPC|205142|
A Raise the Alarm |QID|75923| |N|(npc:205142) in {Lunedane} (21.69, 77.09)| |Z|2023| |NPC|205142|

U (item:206353) |QID|75923.1| |U|206353| |N|Use (item:206353) to return to Valdrakken in {Lunedane} (21.69, 77.09)| |Z|2023|
N (npc:206047) |QID|75923.2| |N|Speak to (npc:206047) atop of {The Seat of the Aspects} (56.17, 40.17)| |Z|2112| |NPC|206047|
N Use the Drakonid Grapple |QID|75923.3| |N|Click on the Drakonid Grapple in {The Seat of the Aspects} (53.00, 46.25)| |Z|2112| |REACH|51.05,45.49,2112|
N Follow Guards to the Lower Ledge |QID|75923.4| |N|Follow guards to the lower ledge in {The Seat of the Aspects} (53.13, 45.82)| |Z|2112|
N (npc:206041) |QID|75923.5| |N|Speak to (npc:206041) atop of {The Seat of the Aspects} (54.63, 47.27)| |Z|2112| |NPC|206041|

T Raise the Alarm |QID|75923| |N|(npc:206041) in {The Seat of the Aspects} (53.97, 46.68)| |Z|2112| |NPC|206041|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end