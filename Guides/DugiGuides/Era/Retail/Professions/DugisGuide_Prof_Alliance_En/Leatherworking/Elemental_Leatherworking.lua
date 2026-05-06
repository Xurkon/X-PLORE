local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Leatherworking_Elemental_Leatherworking")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Leatherworking|r"}, "Elemental Leatherworking", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT LEATHERWORKING SPECIALIZATION:<br/><b>You can only have one Leatherworking specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Leatherworking profession, and leveling it up again.<br/><b>We recommend looking into the different options for Dragonscale, Elemental, and Tribal Leatherworking before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/>Tick this step.|

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Reach Level 225 |LE| |N|Reach level 225 Leatherworking<br/><b>You must be at least this level with your Leatherworking profession before you can begin this questline.<br/><b>Use the (guide:"Leatherworking (1-300)") guide to accomplish this.| |P|165 225|

N 2 (item:7077) |QID|5144| |N|Collect 2 (item:7077)<br/><b>You can also purchase them from the Auction House.| |L|7077 2|
N 2 (item:7079) |QID|5144| |N|Collect 2 (item:7079)<br/><b>You can also purchase them from the Auction House.| |L|7079 2|
N 2 (item:7075) |QID|5144| |N|Collect 2 (item:7075)<br/><b>You can also purchase them from the Auction House.| |L|7075 2|
N 2 (item:7081) |QID|5144| |N|Collect 2 (item:7081)<br/><b>You can also purchase them from the Auction House.| |L|7081 2|

A Elemental Leatherworking |QID|5144| |N|(npc:7868) in (map:1427) (63.56,75.97)| |Z|1427| |NPC|7868|
C Elemental Leatherworking |QID|5144.1| |N|Collect 2 (item:7077)<br/><b>You should have these from earlier in the guide.| |L|7077 2|
C Elemental Leatherworking |QID|5144.2| |N|Collect 2 (item:7079)<br/><b>You should have these from earlier in the guide.| |L|7079 2|
C Elemental Leatherworking |QID|5144.3| |N|Collect 2 (item:7075)<br/><b>You should have these from earlier in the guide.| |L|7075 2|
C Elemental Leatherworking |QID|5144.4| |N|Collect 2 (item:7081)<br/><b>You should have these from earlier in the guide.| |L|7085 2|
T Elemental Leatherworking |QID|5144| |N|(npc:7868) in (map:1427) (63.56,75.97)| |Z|1427| |NPC|7868|

N Learn Patterns |N|Speak to (npc:7868) and learn patterns in (map:1427) (63.56,75.97)<br/>Tick this step.|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Elemental Leatherworking questline for the Leatherworking profession.]]})
    end
       
    function Guide:Unload()
    end
end