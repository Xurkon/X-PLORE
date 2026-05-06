local Guide = DugisGuideViewer:RegisterModule("DugisGuide_SpecQL_Alliance_En_Engineer_Gnome_Membership_Card_Renewal")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Specialization Questlines|r", "|cffffd200Engineering|r"}, "Gnome Membership Card Renewal", nil, "Alliance", nil, "P", nil, function()
return [[

N Note |QID|3641| |N|You MUST have the Gnome Engineering specialization to be able to complete this quest.<br/><b>Use the (guide:"Gnome Engineering") guide to accomplish this.|
N Note |N|This will keep your Gnome Engineer Membership Card active for another 14 days of played time.<br/><b>This quest requires 2<g> to complete.<br/>Tick this step.|

A Membership Card Renewal |QID|3647| |N|(npc:7944) in (map:1455) (69.56,50.33)| |Z|1455| |NPC|7944| |D|
T Membership Card Renewal |QID|3647| |N|(npc:7944) in (map:1455) (69.56,50.33)| |Z|1455| |NPC|7944| |D|

N (item:11423) |N|Collect (item:11423)<br/><b>You will receive one of these in your mailbox 24 hours after renewing your membership card.<br/><b>You can destroy and renew your membership card repeatedly, if you want more of them to open.<br/><b>You don't need to wait for the card to expire on its own.| |L|11423| |D|
N (item:11423) |N|Use (item:11423)<br/><b>These will contain some Engineer crafting supplies.<br/><b>The rare schematic for the "Lil' Smoky" pet also has a chance to be inside.| |U|11423| |D|

N Guide Complete

]]
end, {description = [[This guide will walk you through renewing your Gnome Engineer Membership Card, as well as using the Gnome Engineer's Renewal Gifts to Collect rare schematics.]]})
    end
       
    function Guide:Unload()
    end
end