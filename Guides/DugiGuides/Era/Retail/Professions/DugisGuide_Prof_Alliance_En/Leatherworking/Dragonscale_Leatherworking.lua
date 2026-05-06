local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Leatherworking_Dragonscale_Leatherworking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Leatherworking|r"}, "Dragonscale Leatherworking", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT LEATHERWORKING SPECIALIZATION:<br/><b>You can only have one Leatherworking specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.<br/><b>We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level with your Leatherworking profession before you can begin this questline.<br/><b>Use the (guide:"Leatherworking (1-300)") guide to accomplish this.| |PL|40|

N Reach Level 225 |LE| |N|Reach level 225 Leatherworking<br/><b>You must be at least this level with your Leatherworking profession before you can begin this questline.<br/><b>Use the (guide:"Leatherworking (1-300)") guide to accomplish this.| |P|165 225|

K (npc:5618) |QID|5141| |N|Kill (npc:5618) and collect (item:10525) in (map:1446) (60.30,24.02)<br/><b>You can find more (63.62,31.49, 1455, "Wastewander Bandit")| |Z|1446| |NPC|5618| |L|10525|
K (npc:5616) |QID|5141| |N|Kill (npc:5616) and collect (item:10542) in (map:1446) (60.30,24.02)<br/><b>You can find more (63.62.31.49, 1455, "Wastewander Theif")| |Z|1446| |NPC|5616| |L|10542|

N 36 (item:4304) |QID|5141| |N|Collect 36 (item:4304)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|4304 36|
N 40 (item:8154) |QID|5141| |N|Collect 40 (item:8154)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.| |L|8154 40|
N 10 (item:8165) |QID|5141| |N|Collect 10 (item:8165)<br/><b>If you have the Skinning profession, you can gather these.<br/><b>You can also purchase them from the Auction House.<br/><b>These are skinned from Dragonkin enemies and bosses inside the (guide:"Sunken Temple (48-52)") dungeon.| |L|8165 10|

B 12 (item:4291) |QID|5141| |N|Speak to (npc:4189) and buy 12 (item:4291) in (map:1439) (38.15,40.35)| |Z|1439| |NPC|4189| |L|4291 12|
N 2 (spell:10542) |LE| |QID|5141| |N|Create 2 (spell:10542)<br/><b>12 (item:4304)<br/><b>16 (item:8154)<br/><b>4 (item:4291)| |L|8204 2|
N 2 (spell:10525) |LE| |QID|5141| |N|Create 2 (spell:10525)<br/><b>24 (item:4304)<br/><b>24 (item:8154)<br/><b>8 (item:4291)| |L|8203 2|

A Dragonscale Leatherworking |QID|5141| |N|(npc:7866) in (map:1447) (37.59,65.42)| |Z|1447| |NPC|7866|
C Dragonscale Leatherworking |QID|5141.1| |N|Collect 2 (item:8203)<br/><b>You should have these from earlier in the guide.| |L|8203 2|
C Dragonscale Leatherworking |QID|5141.2| |N|Collect 2 (item:8204)<br/><b>You should have these from earlier in the guide.| |L|8204 2|
C Dragonscale Leatherworking |QID|5141.3| |N|Collect 10 (item:8165)<br/><b>You should have these from earlier in the guide.| |L|8165 10|
T Dragonscale Leatherworking |QID|5141| |N|(npc:7866) in (map:1447) (37.59,65.42)<br/><b>You will learn (spell:10656) automatically.| |Z|1447| |NPC|7866|

N Learn Patterns |N|Speak to (npc:7866) and learn patterns (37.59,65.42)<br/><b>Tick this step.| |NPC|7866|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Dragonscale Leatherworking questline for the Leatherworking profession.]]})
    end
       
    function Guide:Unload()
    end
end