local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Blacksmithing_Weaponsmith")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "Weaponsmith", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT BLACKSMITHING SPECIALIZATION:<br/><b>You can only have one Blacksmithing specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.<br/><b>We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.<br/><b>If you change specializations, you will still be able to use the items you create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Level 230 |N|Reach Level 230 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can create some of the item needed in this questline.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 230|

A The Way of the Weaponsmith |QID|5302| |N|(npc:11178) in (map:1454)<br/><br/>You may need to speak to (npc:11176) first standing next to the quest giver (79.42,23.73)| |Z|1454| |NPC|11178, 11176|

N Learn (spell:3337) |N|Speak to (npc:2836) inside the building and learn (spell:3337) (28.99,75.55)| |Z|1434| |NPC|2836|
N Learn (spell:9920) |N|Speak to (npc:2836) inside the building and learn (spell:9920) (28.99,75.55)| |Z|1434| |NPC|2836|
N Learn (spell:9993) |N|Speak to (npc:2836) inside the building and learn (spell:9993) (28.99,75.55)| |Z|1434| |NPC|2836|
N Learn (spell:10001) |N|Speak to (npc:2836) inside the building and learn (spell:10001) (28.99,75.55)| |Z|1434| |NPC|2836|

B (item:12163) |N|Speak to (npc:2482) inside the building and buy (item:12163) (44.28,93.09)| |Z|1434| |NPC|2482| |L|12163|
N Learn (spell:3496) |N|Use (item:12163) to learn (spell:3496) (44.28,93.09)| |Z|1434| |U|12163|
B (item:12164) |N|Speak to (npc:1146) inside the building and buy (item:12164) (32.36,27.95)<br/><b>This is a limited supply item.<br/><b>If she doesn't have it for sale, check the Auction House.<br/><b>Also check (35.75,10.66, 1434, "Jaquilina Dramet") in (map:1434)| |Z|1434| |NPC|1146, 2483| |L|12164|
N Learn (spell:3498) |Use (item:12164) to learn (spell:3498) (32.36,27.95)| |Z|1434| |U|12164|

N 32 (item:3859) |QID|5302| |N|Collect 32 (item:3859)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3859 32|
N 56 (item:3860) |QID|5302| |N|Collect 56 (item:3860)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3860 56|
N 56 (item:3575) |QID|5302| |N|Collect 56 (item:3575)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3575 56|
N 16 (item:3577) |QID|5302| |N|Collect 16 (item:3577)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|3577 16|
N 48 (item:2838) |QID|5302| |N|Collect 48 (item:2838)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|2838 48|
N 16 (item:7912) |QID|5302| |N|Collect 16 (item:7912)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|7912 16|
N 4 (item:3864) |QID|5302| |N|Collect 4 (item:3864)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction house| |L|3864 4|
N 2 (item:7971) |QID|5302| |N|Collect 2 (item:7971)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|7971 2|
N 8 (item:1210) |QID|5302| |N|Collect 8 (item:1210)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|1210 8|
N 12 (item:1705) |QID|5302| |N|Collect 12 (item:1705)<br/><b>You can gather these with Mining profession, otherwise purchase from the Auction House| |L|1705 12|
N 28 (item:4234) |QID|5302| |N|Collect 28 (item:4234)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House| |L|4234 28|
N 4 (item:4304) |QID|5302| |N|Collect 4 (item:4304)<br/><b>You can gather these with Skinning profession, otherwise purchase from the Auction House| |L|4304 4|

B 16 (item:3466) |QID|5302| |N|Speak to (npc:3356) inside the building and buy 16 (item:3466) (82.60,23.96)| |Z|1454| |NPC|3356| |L|3466 16|

N 4 (spell:9920) |BL| |QID|5302| |N|Create 4 (spell:9920)<br/><b>16 (item:7912)| |L|7912 16|
N 16 (spell:3337) |BL| |QID|5302| |N|Create 16 (spell:3337)<br/><b>48 (item:2838)| |L|3486 16|
N 4 (spell:3496) |BL| |QID|5302.1| |N|Create 4 (spell:3496)<br/><b>32 (item:3859)<br/><b>8 (item:3466)<br/><b>8 (item:3486)<br/><b>12 (item:1705)<br/><b>12 (item:4234)| |L|3853 4|
N 4 (spell:3498) |BL| |QID|5302.2| |N|Create 4 (spell:3498)<br/><b>56 (item:3575)<br/><b>8 (item:3466)<br/><b>8 (item:3486)<br/><b>16 (item:3577)<br/><b>8 (item:4234)| |L|3855 4|
N 2 (spell:9993) |BL| |QID|5302.3| |N|Create 2 (spell:9993)<br/><b>24 (item:3860)<br/><b>4 (item:3864)<br/><b>2 (item:7966)<br/><b>8 (item:4234)| |L|7941 2|
N 2 (spell:10001) |BL| |QID|5302.4| |N|Create 2 (spell:10001)<br/><b>32 (item:3860)<br/><b>2 (item:7971)<br/><b>8 (item:1210)<br/><b>2 (item:7966)<br/><b>4 (item:4304)| |L|7945 2|

T The Way of the Weaponsmith |QID|5302| |N|(npc:11178) in (map:1454) (79.42,23.73)<br/><b>You will learn (spell:9787) automatically.| |Z|1454| |NPC|11178|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Weaponsmith questline for the Blacksmithing profession.]]})
    end
    
    function Guide:Unload()
    end
end