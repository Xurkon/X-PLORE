local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Blacksmithing_Master_Axesmith")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "Master Axesmith", nil, "Horde", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT BLACKSMITHING SPECIALIZATION:<br/><b>You can only have one Blacksmithing specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.<br/><b>We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.<br/><b>If you change specializations, you will still be able to use the items you create.<br/>Tick this step.|

N Reach Level 50 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|50|

N Level 250 |N|Reach Level 250 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can begin this questline.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 250|

N Learn (spell:9787) |TID|5302| |N|Learn (spell:9787)<br/><b>You must become a Weaponsmith before you can begin this questline.<br/><b>Use the (guide:"Weaponsmith") guide to accomplish this.|
        
A Snakestone of the Shadow Huntress |QID|5306| |N|(npc:11192) in (map:1452) (61.30,37.07)| |Z|1452| |NPC|11192|
K (npc:9236) |QID|5306.1| |N|Kill (npc:9236)<br/><b>She is a boss inside the Lower Blackrock Spire dungeon.<br/><b>Use the "Lower Blackrock Spire" dungeon guide to accomplish this.| |I| |NPC|9236| |L|13352|
T Snakestone of the Shadow Huntress |QID|5306| |N|(npc:11192) in (map:1452) (61.30,37.07)| |Z|1452| |NPC|11192|

N Learn (spell:17041) |N|Speak to (npc:11192) inside the building Tell him "Please teach me how to become an axesmith, Kilram." (61.30,37.07)| |Z|1452| |NPC|11192|

N Level 275 |N|Reach Level 275 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can learn the plans in the next.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 275|

N Learn (spell:16970) |N|Use (item:12821) to learn (spell:16970)| |U|12821|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Master Axesmith questline to continue Weaponsmith specialization for the Blacksmithing profession.]]})
    end
        
    function Guide:Unload()
    end
end