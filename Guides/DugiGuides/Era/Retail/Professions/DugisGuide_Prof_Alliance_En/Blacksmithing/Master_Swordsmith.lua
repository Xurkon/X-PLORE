local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Blacksmithing_Master_Swordsmith")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "Master Swordsmith", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT BLACKSMITHING SPECIALIZATION:<br/><b>You can only have one Blacksmithing specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.<br/><b>We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.<br/><b>If you change specializations, you will still be able to use the items you create.<br/>Tick this step.|

N Reach Level 50 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|50|

N Reach Level 250 |BL| |N|Reach Level 250 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can begin this questline.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 250|

N Learn (spell:9787) |TID|5284| |N|Learn (spell:9787)<br/><b>You must become a Weaponsmith before you can begin this questline.<br/><b>Use the (guide:"Weaponsmith") guide to accomplish this.|

A Corruption |QID|5307| |N|(npc:11193) in (map:1452) (61.33,37.19)| |Z|1452| |NPC|11193|
C Corruption |QID|5307.1| |N|Kill (npc:11121) and collect (item:13350)<br/><b>He is a boss inside the Service Gate section of the Stratholme dungeon.| |NPC|11121| |L|13350|
T Corruption |QID|5307| |N|(npc:11193) in (map:1452) (61.33,37.19)| |Z|1452| |NPC|11193|

N Learn (spell:17039) |N|Speak to (npc:11193) inside the building (61.33,37.19)<br/><b>Tell him  "Please teach me how to become a swordsmith, Seril."| |NPC|11193|

N Reach Level 280 |BL| |N|<br/><b>You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 280|

N Learn (spell:16978) |N|Use (item:12825) to learn (spell:16978)<br/><b>Tick this step.| |U|12825|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Master Swordsmith questline to continue Weaponsmith specialization for the Blacksmithing profession.]]})
    end
       
    function Guide:Unload()
    end
end