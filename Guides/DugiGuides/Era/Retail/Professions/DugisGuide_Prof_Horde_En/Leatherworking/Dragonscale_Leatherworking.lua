local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Leatherworking_Dragonscale_Leatherworking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Leatherworking|r"}, "Dragonscale Leatherworking", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT LEATHERWORKING SPECIALIZATION:<br/><b>You can only have one Leatherworking specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.<br/><b>We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Reach Level 225 |LE| |N|Reach Level 225 Leatherworking<br/><b>You must be at least this level with your Leatherworking profession before you can begin this questline.<br/><b>Use the (guide:"Leatherworking (1-300)") guide to accomplish this.| |P|165 225|

K (npc:5618) |N|Kill (npc:5618) and collect (item:8395) (60.30,24.02)<br/><b>You can also purchase this from the Auction House, if you don't want to grind for it.<br/><b>You can find more around: (63.62,31.49, 1446, "Wastewander Bandit")| |Z|1446| |NPC|5618| |L|8395|
N Learn (spell:10525) |N|Use (item:8395) to learn (sepll:10525) (60.30,24.02)| |Z|1446| |U|8395|

K (npc:5616) |N|Kill (npc:5616) and collect (item:8398) (60.30,24.02)<br/><b>You can also purchase this from the Auction House, if you don't want to grind for it.<br/><b>You can find more around: (63.62,31.49, 1446, "Wastewander Thief")| |Z|1446| |NPC|5616| |L|8398|
N Learn (spell:10542) |N|Use (item:8398) to learn (spell:10542) (60.30,24.02)| |Z|1446| |U|8398|

N 36 (item:4304) |QID|5145| |N|Collect 36 (item:4304)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|4304 36|
N 40 (item:8154) |QID|5145| |N|Collect 40 (item:8154)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8154 40|
N 10 (item:8165) |QID|5145| |N|Collect 10 (item:8165)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.<br/><b>These are skinned from Dragonkin enemies and bosses inside the Temple of Atal'Hakkar (Sunken Temple) dungeon.| |L|8165 10|

B 12 (item:4291) |QID|5145| |N|Speak to (npc:1148) and buy 12 (item:4291) in (map:1434) (32.70,29.23)| |Z|1434| |NPC|1148| |L|4291 12|

N 2 (spell:10542) |LE| |QID|5145| |N|Create 2 (spell:10542)<br/><b>12 (item:4304)<br/><b>16 (item:8154)<br/><b>4 (item:4291)| |L|8204 2|
N 2 (spell:10525) |LE| |QID|5145| |N|Create 2 (spell:10525)<br/><b>24 (item:4304)<br/><b>24 (item:8154)<br/><b>8 (item:4291)| |L|8203 2|

A Dragonscale Leatherworking |QID|5145| |N|(npc:7867) in (map:1418) (62.70,57.40)| |Z|1418| |NPC|7867|
C Dragonscale Leatherworking |QID|5145.1| |N|Collect 2 (item:8203)<br/><b>You should have these from earlier in the guide.| |L|8203 2|
C Dragonscale Leatherworking |QID|5145.2| |N|Collect 2 (item:8204)<br/><b>You should have these from earlier in the guide.| |L|8203 2|
C Dragonscale Leatherworking |QID|5145.3| |N|Collect 10 (item:8165)<br/><b>You should have these from earlier in the guide.| |L|8165 10|
T Dragonsclae Leatherworking |QID|5145| |N|(npc:7867) in (map:1418) (62.70,57.40)<br/><b>Youwill learn (spell:10656) automatically.| |Z|1418| |NPC|7867|

N Learn Patterns |N|Speak to (npc:7867) in (map:1418) (62.70,57.40)<br/><b>Tick this step.| |Z|1418|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Dragonscale Leatherworking questline for the Leatherworking profession.]]})
    end
    
    function Guide:Unload()
    end
end