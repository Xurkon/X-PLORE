local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Blacksmithing_How_To_Change_Blacksmithing_Spec")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Blacksmithing|r"}, "How To Change Blacksmithing Speialization", nil, "Horde", nil, "P", nil, function()
return [[

N NOTE: |N|You MUST fully complete the questline for either (guide:"Armorsmith") or (guide:"Weaponsmith") before you can switch specializations| |OID|5301, 5302|

N Unlearn Blacksmithing |N|Press "K" to open your Skills tab.<br/><b>You must completely unlearn the Blacksmithing profession to be able to switch your specialization.<br/>Tick this step.| 

N Reach Level 40 |N|You must be at least this level before you can progress.<br/><b>Use the Leveling guides to accomplish this.| |PL|40|

N Level 200 |N|Reach level 200 Blacksmithing<br/><b>You must be at least level 200 Blacksmithing to be able to start the questlines to choose an Blacksmithing specialization.| |P|164 200|

N Click Book |N|Click Book "Soothsaying for Dummies" (65.41,18.56)<br/><b>inside the building on the table<br/><b>Choose the dialogue option that matches what you want to do.<br/>Tick this step.| |Z|1446|

N Guide Complete

]]
end, {description = [[This guide will walk you through changing your Blacksmithing profession specialization.]]})
    end
        
    function Guide:Unload()
    end
end