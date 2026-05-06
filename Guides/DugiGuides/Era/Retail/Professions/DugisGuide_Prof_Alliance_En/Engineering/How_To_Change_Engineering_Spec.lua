local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Engineering_How_To_Change_Engineering_Spec")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Engineering|r"}, "How To Change Engineering Specialization", nil, "Alliance", nil, "P", nil, function()
return [[

N NOTE: |N|You MUST fully complete the questline for either (guide:"Gnomish Engineering") or (guide:"Goblin Engineering") before you can switch specializations.<br/><b>You must have obtained either the Gnome Engineer Membership Card or Goblin Engineer Membership Card, or it won't let you switch.| |OID|3641, 3639|

N Unlearn Engineering |N|Press "K" to open your Skills tab.<br/><b>You must completely unlearn the Engineering profession to be able to switch your specialization.<br/>Tick this step.|

N Reach Level 30 |N|You must be at least this level before you can progress.<br/><b>You must be at least level 30 to be able to start the questlines to choose an Engineering specialization.<br/><b>Use the Leveling guides to accomplish this.| |PL|30|

Reach Level 200 |ENG| |N|Reach level 200 Engineering<br/><b>You must be at least level 200 Engineering to be able to start the questlines to choose an Engineering specialization.<br/><b>Use the (guide:"Engineering (1-300)") guide to accomplish this.| |P|202 200|

N Click Book |N|Click Book "Soothsaying for Dummies" (65.41,18.56)<br/><b>inside the building on the table<br/><b>Choose the dialogue option that matches what you want to do.<br/>Tick this step.| |Z|1446|

N Guide Complete

]]
end, {description = [[This guide will walk you through changing your Engineering profession specialization.]]})
    end
       
    function Guide:Unload()
    end
end