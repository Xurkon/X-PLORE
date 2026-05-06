local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Leatherworking_Tribal_Leatherworking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Leatherworking|r"}, "Tribal Leatherworking", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT LEATHERWORKING SPECIALIZATION:<br/><b>You can only have one Leatherworking specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.<br/><b>We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

Reach Level 235 |LE| |N|Reach level 235 Leatherworking<br/><b>You must be at least this level with your Leatherworking profession before you can creature some of the patterns needed for this questline.<br/><b>Use the (guide:"Leatherworking (1-300)") guide to accomplish this.| |P|165 235|

N Learn (spell:10482) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10482) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10487) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10487) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10507) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10507) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10499) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10499) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10518) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10518) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10511) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10511) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10552) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10552) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10558) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10558) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|
N Learn (spell:10548) |QID|2851| |N|Speak to (npc:11097) downstairs inside the building and learn (spell:10548) in (map:1425) (13.39,43.48)| |Z|1425| |NPC|11097|

N 214 (item:4304) |QID|2851| |N|Collect 214 (item:4304)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|4304 214|
N 112 (item:8167) |QID|2851| |N|Collect 112 (item:8167)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8167 112|
N 11 (item:8153) |QID|2851| |N|Collect 11 (item:8153)<br/><b>If you have the Herbalism profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8153 11|
N 2 (item:8172) |QID|2851| |N|Collect 2 (item:8172)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8172 2|

B (item:8385) |QID|2851| |N|Speak to (npc:7852) and buy (item:8385) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852| |L|8385|
N Learn (spell:10509) |QID|2851| |N|Use (item:8385) to learn (spell:10509) (30.63,42.71)| |L|1444| |U|8385|

A Wild Leather Armor |QID|2847| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
C Wild Leather Armor |QID|2847.1| |N|Collect 10 (item:4304)<br/><b>You should have these from earlier in the guide.| |L|4304 10|
T Wild Leather Armor |QID|2847| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
A Wild Leather Shoulders |QID|2848| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
A Wild Leather Vest |QID|2849| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
A Wild Leather Helmet |QID|2850| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
A Wild Leather Boots |QID|2851| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
A Wild Leather Leggings |QID|2852| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|

B 22 (item:4291) |QID|2852| |N|Speak to (npc:7852) and buy 22 (item:4291) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852| |L|4291 22|
B 12 (item:8343) |QID|2852| |N|Speak to (npc:7852) and buy 12 (item:8343) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852| |L|8343 12|

C Wild Leather Shoulders |LE| |QID|2848.1| |N|Create 6 (spell:10487)<br/><b>30 (item:4304)<br/><b>6 (item:4291)| |L|8173 6|
T Wild Leather Shoulders |QID|2848| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|

N Learn (spell:10529) |QID|2849| |N|Use (item:8403) to learn (spell:10529)| |U|8403|

C Wild Leather Vest |LE| |QID|2849.1| |N|Create 2 (spell:10511)<br/><b>12 (item:4304)<br/><b>24 (item:8167)<br/><b>2 (item:8343)| |L|8189 2|
C Wild Leather Vest |LE| |QID|2849.2| |N|Create 2 (spell:10509)<br/><b>12 (item:4304)<br/><b>16 (item:8167)<br/><b>2 (item:8343)| |L|8187 2|
T Wild Leather Vest |QID|2849| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|

N Learn (spell:10544) |QID|2850| |N|Use (item:8404) to learn (spell:10544)<br/>Tick this step.|

C Wild Leather Helmet |LE| |QID|2850.1| |N|Create 2 (spell:10499)<br/><b>14 (item:4304)<br/><b>4 (item:4291)| |L|8175 2|
C Wild Leather Helmet |LE| |QID|2850.2| |N|Create 2 (spell:10507)<br/><b>10 (item:4304)<br/><b>4 (item:4291)| |L|8176 2|
T Wild Leather Helmet |QID|2850| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|

N Learn (spell:10546) |QID|2851| |N|Use (item:8405) to learn (spell:10546)<br/>Tick this step.|

C Wild Leather Boots |LE| |QID|2851.1| |N|Create 2 (spell:10548)<br/><b>28 (item:4304)<br/><b>8 (item:4391)| |L|8193 2|
C Wild Leather Boots |LE| |QID|2851.2| |N|Create 2 (spell:10558)<br/><b>32 (item:4304)<br/><b>4 (item:8343)| |L|8197 2|
T Wild Leather Boots |QID|2851| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|

N Learn (spell:10566) |QID|2852| |N|Use (item:8406) to learn (spell:10566)<br/>Tick this step.|

C Wild Leather Leggings |LE| |QID|2852.1| |N|Create 2 (spell:10552)<br/><b>28 (item:4304)<br/><b>48 (item:8167)<br/><b>2 (item:8343)| |L|8191 2|
C Wild Leather Leggings |LE| |QID|2852.2| |N|Create 2 (spell:10518)<br/><b>16 (item:4304)<br/><b>24 (item:8167)<br/><b>2 (item:8343)| |L|8198 2|
T Wild Leather Leggings |QID|2852| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|

N Learn (spell:10572) |QID|2853| |N|Use (item:8407) to learn (spell:10572)<br/>Tick this step.|

A Master of the Wild Leather |QID|2853| |N|(npc:7852) in (map:1444) (30.63,42.71)| |Z|1444| |NPC|7852|
T Master of the Wild Leather |QID|2853| |N|(npc:4212) in (map:1444) (64.43,21.54)| |Z|1444| |NPC|4212|

N Learn (spell:10574) |QID|5143| |N|Use (item:8408 to learn (spell:10574)<br/>Tick this step.|

N 1 (spell:10544) |LE| |QID|5143| |N|Create 1 (spell:10544)<br/><b>12 (item:4304)<br/>2 (item:8153)1 (item:8172)| |L|8211|
N 1 (spell:10546) |LE| |QID|5143| |N|Create 1 (spell:10546)<br/><b>10 (item:4304)<br/><b>2 (item:8153)<br/><b>1 (item:8172)| |L|8214|

A Tribal Leatherworking |QID|5143| |N|(npc:7870) in (map:1444) (89.42,46.55)| |Z|1444| |NPC|7870|
C Tribal Leatherworking |QID|5143.1| |N|Collect 1 (item:8211)<br/><b>You should have these from earlier in the guide.| |L|8211|
C Tribal Leatherworking |QID|5143.2| |N|Collect 1 (item:8214)<br/><b>You should have these from earlier in the guide.| |L|8214|
T Tribal Leatherworking |QID|5143| |N|(npc:7870) in (map:1444) (89.42,46.55)| |Z|1444| |NPC|7870|

N Learn Patterns |N|Speak to (npc:7870) and learn patterns in (map:1444)<br/>Tick this step.|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Tribal Leatherworking questline for the Leatherworking profession.]]})
    end
       
    function Guide:Unload()
    end
end