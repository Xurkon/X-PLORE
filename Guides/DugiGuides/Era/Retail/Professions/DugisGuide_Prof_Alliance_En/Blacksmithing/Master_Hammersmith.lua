local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Blacksmithing_Master_Hammersmith")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "Master Hammersmith", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |N|NOTE ABOUT BLACKSMITHING SPECIALIZATION:<br/><b>You can only have one Blacksmithing specialization.<br/><b>Additionally, you cannot change your specialization without unlearning the Blacksmithing profession, and leveling it up again.<br/><b>We recommend looking into the different options for Armorsmith and Weaponsmith Blacksmithing before you choose which to pursue, depending on your personal play style and the specific items you want to create.<br/><b>Most of the items you can create with the specializations are BoE, so you could also buy them from the AH or other players, but some of them are BoP and you would need to craft them to use them.<br/><b>If you change specializations, you will still be able to use the items you create.<br/>Tick this step.|

N Reach Level 50 |N|You must be at least this level before you can progress.<br/><b>You must be at least this level before you can begin this questline.<br/><b>Use the Leveling guides to accomplish this.| |PL|50|

N Reach Level 250 |BL| |N|Reach level 250 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can begin this questline.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 250|

N Learn (spell:9787) |TID|5284| |N|Learn (spell:9787)<br/><b>You must become a Weaponsmith before you can begin this questline.<br/><b>Use the (guide:"Weaponsmith") guide to accomplish this.

A Sweet Serenity |QID|5305| |N|(npc:11191) in (map:1452) (61.33,37.13)| |Z|1452| |NPC|11191|
C Sweet Serenity |QID|5305.1| |N|Kill (npc:11120) and collect (item:13351)<br/><b>He is a boss inside the Main Gate section of the Stratholme dungeon.<br/><b>Use the (guide:"Scholomance / Stratholme (55-58)") dungeon guide to accomplish this.| |NPC|11120| |L|13351|
T Sweet Serenity |QID|5305| |N|(npc:11191) in (map:1452) (61.33,37.13)| |Z|1452| |NPC|11191|

N Learn (spell:17040) |N|Speak to (npc:11191) inside the building (61.33,37.13)<br/><b>Tell him  "Please teach me how to become a hammersmith, Lilith."| |NPC|11191|

N Reach Level 280 |BL| |N|Reach level 280 Blacksmithing<br/><b>You must be at least this level with your Blacksmithing profession before you can learn the plans in the next step.<br/><b>Use the (guide:"Blacksmithing (1-300)") guide to accomplish this.| |P|164 280|

N Learn (spell:16973) |N|Use (item:12824) to learn (spell:16973)<br/><b>Tisck this step.| |U|12824|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the Master Hammersmith questline to continue Weaponsmith specialization for the Blacksmithing profession.]]})
    end
       
    function Guide:Unload()
    end
end