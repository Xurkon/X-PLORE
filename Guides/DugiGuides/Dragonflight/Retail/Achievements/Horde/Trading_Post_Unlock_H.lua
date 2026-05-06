local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Trading_Post_Unlock_H)")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "Trading Post Unlock (60-70)", nil, "Horde", nil, "A", "|SG|UnitLevel([[player]])>=60|", function()
return [[

N Level 60+ Required |N|You will need to be at least Level 60 or higher to use this guide| |PL|60|

A Tour the Trading Post |QID|66959| |N|(npc:185472) in {Orgrimmar} (48.91, 76.12)| |Z|85| |NPC|185472|

N Collect the (cur:2032) from the Collector's Cache |QID|66959.1| |N|Click the Collector's Cache to receive (cur:2032) in {Orgrimmar} (48.47, 75.66)| |Z|85|
N Speak to (npc:199164) |QID|66959.2| |N|Speak to (npc:199164) in {Orgrimmar} (48.22, 75.01)| |Z|85| |NPC|199164|
N Speak to (npc:199115) |QID|66959.3| |N|Speak to (npc:199115) in {Orgrimmar} (47.43, 76.45)| |Z|85| |NPC|199115|
N Review the Trading Post Post |QID|66959.4| |N|Click the notice on the right hand wooden pillar in {Orgrimmar} (48.91, 76.31)| |Z|85|
N Look at (npc:185473)'s Inventory |QID|66959.5| |N|Speak to (npc:185473) and tell him 'I'd like to see what you have to offer this month.' in {Orgrimmar} (48.76, 75.96)<br/<b>You will need to exit the interface after doing this to continue| |Z|85| |NPC|185473|

T Tour the Trading Post |QID|66959| |N|(npc:185472) in {Orgrimmar} (48.91, 76.12)| |Z|85| |NPC|185472|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end