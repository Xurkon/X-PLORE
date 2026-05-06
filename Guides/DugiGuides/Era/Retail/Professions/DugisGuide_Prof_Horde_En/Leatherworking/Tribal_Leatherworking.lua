local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Leatherworking_Tribal_Leatherworking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Leatherworking|r"}, "Tribal Leatherworking", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT LEATHERWORKING SPECIALIZATION:<br/><b>You can only have one Leatherworking specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.<br/><b>We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Reach Level 235 |LE| |N|Reach Level 235 Leatherworking<br/><b>You must be at least this level with your Leatherworking profession before you can creature some of the patterns needed for this questline.<br/><b>Use the (guide:"Leatherworking (1-300)") guide to accomplish this.| |P|165 235|

N 214 (item:4304) |QID|2858| |N|Collect 214 (item:4304)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|4304 214|
N 112 (item:8167) |QID|2858| |N|Collect 112 (item:8167)<br/><b>You can also purchase them from the Auction House.| |L|8167 112|
N 11 (item:8153) |QID|2858| |N|Collect 11 (item:8153)<br/><b>If you have the Herbalism profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8153 11|
N 2 (item:8172) |N|Collect 2 (item:8172)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8172 2|

Learn (spell:10482) |N|Speak to (npc:11098) inside the building and learn (spell:10482) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10487) |N|Speak to (npc:11098) inside the building and learn (spell:10487) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10507) |N|Speak to (npc:11098) inside the building and learn (spell:10507) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10499) |N|Speak to (npc:11098) inside the building and learn (spell:10499) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10518) |N|Speak to (npc:11098) inside the building and learn (spell:10518) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10511) |N|Speak to (npc:11098) inside the building and learn (spell:10511) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10552) |N|Speak to (npc:11098) inside the building and learn (spell:10552) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10558) |N|Speak to (npc:11098) inside the building and learn (spell:10558) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|
Learn (spell:10548) |N|Speak to (npc:11098) inside the building and learn (spell:10548) in (map:1444) (74.36,43.12)| |Z|1444| |NPC|11098|

B (item:8385) |N|Speak to (npc:7854) inside the building and buy (item:8385) (74.43,42.91)<br/><b>This is a limited supply item.<br/><b>If he doesn't have it for sale, check the Auction House.| |Z|1444| |NPC|7854| |L|8385|
Learn (spell:10509) |N|Use (item:8385) to learn (spell:10509) (74.43,42.91)| |Z|1444| |U|8385|

A Wild Leather Armor |QID|2854| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
C Wild Leather Armor |QID|2854.1| |N|Collect 10 (item:4304)| |L|4304 10|
T Wild Leather Armor |QID|2854| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
A Wild Leather Shoulders |QID|2855| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
A Wild Leather Vest |QID|2856| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
A Wild Leather Helmet |QID|2857| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
A Wild Leather Boots |QID|2858| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
A Wild Leather Leggings |QID|2859| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|

B 22 (item:4291) |QID|2859| |N|Speak to (npc:7854) inside the building and buy 22 (item:4291) (74.43,42.91)| |Z|1444| |NPC|7854| |L|4291 22|
B 12 (item:8343) |QID|2859| |N|Speak to (npc:7854) inside the building and buy 12 (item:8343) (74.43,42.91)| |Z|1444| |NPC|7854| |L|8343 12|

C Wild Leather Shoulders |LE| |QID|2855.1| |N|Create 6 (spell:10487)<br/><b>30 (item:4304)<br/><b>6 (item:4291)| |L|8173 6|
T Wild Leather Shoulders |QID|2855| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|

N Learn (spell:10529) |N|Use (item:8403) to learn (spell:10529)| |U|8403|

C Wild Leather Vest |LE| |QID|2856.1| |N|Create 2 (spell:10511)<br/><b>12 (item:4304)<br/><b>24 (item:8167)<br/><b>2 (item:8343)| |L|8189 2|
C Wild Leather Vest |LE| |QID|2856.2| |N|Create 2 (spell:10509)<br/><b>12 (item:4304)<br/><b>16 (item:8157)<br/><b>2 (item:8343)| |L|8187 2|
T Wild Leather Vest |QID|2856| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|

N Learn (spell:10544) |N|Use (item:8404) to learn (spell:10544)| |U|8404|

C Wild Leather Helemt |LE| |QID|2857.1| |N|Create 2 (spell:10499)<br/><b>14 (item:4304)<br/><b>4 (item:4291)| |L|8175 2|
C Wild Leather Helmet |LE| |QID|2857.2| |N|Create 2 (spell:10507)<br/><b>10 (item:4304)<br/><b>4 (item:4291)| |L|8176 2|
T Wild Leather Helmet |QID|2857| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|

N Learn (spell:10546) |N|Use (item:8405) to learn (spell:10546)| |U|8405|

C Wild Leather Boots |LE| |QID|2858.1| |N|Create 2 (spell:10548)<br/><b>28 (item:4304)<br/><b>8 (item:4291)| |L|8193 2|
C Wild Leather Boots |LE| |QID|2858.2| |N|Create 2 (spell:10558)<br/><b>32 (item:4304)<br/><b>4 (item:8343)| |L|8197 2|
T Wild Leather Boots |QID|2858| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|

N Learn (spell:10566) |N|Use (item:8406) to learn (spell:10566)| |U|8406|

C Wild Leather Leggings |LE| |QID|2859.1| |N|Create 2 (spell:10552)<br/><b>28 (item:4304)<br/><b>48 (item:8167)<br/><b>2 (item:8343)| |L|8191 2|
C Wild Leather Leggings |LE| |QID|2859.2| |N|Create 2 (spell:10518)<br/><b>16 (item:4304)<br/><b>24 (item:8167)<br/><b>2 (item:8343)| |L|8198 2|
T Wild Leather Leggings |QID|2859| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|

N Learn (spell:10572) |N|Use (item:8407) to learn (spell:10572)| |U|8407|

A Master of the Wild Leather |QID|2860| |N|(npc:7854) in (map:1444) (74.43,42.91)| |Z|1444| |NPC|7854|
T Master of the Wild Leather |QID|2860| |N|(npc:3007) in (map:1456) (41.51,42.57)| |Z|1456| |NPC|3007|

N Learn (spell:10574) |N|Use (item:8408) to learn (spell:10574)| |U|8408|

N (spell:10544) |LE| |QID|5143| |N|Create 1 (spell:10544)<br/><b>12 (item:4304)<br/><b>20 (item:8153)<br/><b>1 (item:8172)| |L|8211|
N (spell:10546) |LE| |QID|5143| |N|Create 1 (spell:10546)<br/><b>10 (item:4304)<br/><b>2 (item:8153)<br/><b>1 (item:8172)| |L|8214|

A Tribal Leatherworking |QID|5143| |N|(npc:7871) in (map:1434) (36.55,34.09)| |Z|1434| |NPC|7871|
C Tribal Leatherworking |QID|5143.1| |N|Collect (item:8211)<br/><b>You should have this earlier| |L|8211|
C Tribal Leatherworking |QID|5143.2| |N|Collect (item:8214)<br/><b>You should have this earlier| |L|8214|
T Tribal Leatherworking |QID|5143| |N|(npc:7871) in (map:1434) (36.55,34.09)| |Z|1434| |NPC|7871|

N Learn Patterns |N|Speak to (npc:7871) inside the hut and learn patterns<br/><b>Tick this step.|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Tribal Leatherworking questline for the Leatherworking profession.]]})
    end
    
    function Guide:Unload()
    end
end