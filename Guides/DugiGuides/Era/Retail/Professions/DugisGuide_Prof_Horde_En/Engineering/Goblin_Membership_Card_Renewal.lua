local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_Horde_En_Engineering_Goblin_Membership_Card_Renewal")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Quests|r", "|cffffd200Engineering|r"}, "Goblin Membership Card Renewal (Daily)", nil, "Horde", nil, "P", nil, function()
return [[

N Note |QID|3639| |N|You MUST have the Goblin Engineering specialization to be able to complete this quest.<br/><b>Use the (guide:"Goblin Engineering") guide to accomplish this.|
N Note |N|This will keep your Goblin Engineer Membership Card active for another 14 days of played time.<br/><b>This quest requires 2<g> to complete.<br/>Tick this step.|
    
A Membership Card Renewal |QID|3644| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126| |D|
T Membership Card Renewal |QID|3645| |N|(npc:8126) in (map:1446) (52.48,27.33)| |Z|1446| |NPC|8126| |D|
    
N (item:11422) |N|Collect (item:11422)<br/><b>You will receive one of these in your mailbox 24 hours after renewing your membership card.<br/><b>You can destroy and renew your membership card repeatedly, if you want more of them to open.<br/><b>You don't need to wait for the card to expire on its own.| |L|11422| |D|
N (item:11422) |N|Use (item:11422)<br/><b>These will contain some Engineer crafting supplies.<br/><b>The rare schematic for the "Lil' Smoky" pet also has a chance to be inside.| |U|11422| |D|
    
N Guide Complete

]]
end, {description = [[This guide will walk you through renewing your Goblin Engineer Membership Card, as well as using the Goblin Engineer's Renewal Gifts to Collect rare schematics.]]})
    end
                
    function Guide:Unload()
    end
end