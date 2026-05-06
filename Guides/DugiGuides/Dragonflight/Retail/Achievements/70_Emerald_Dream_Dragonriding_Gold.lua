local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_Emerald_Dream_Dragonriding_Gold")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "2200(Dragonriding: Gold)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Level 70 Required |N|You need to be at least Level 70 to use this guide.| |PL|70|

N Ysera Invitational |AID|19111| |N|Speak to (npc:210023) and choose option 'I'd like to try the course.' (59.10, 28.80)| |NPC|210023| |AC|1|
N Smoldering Spirit |AID|19111| |N|Speak to (npc:210310) and choose option 'I'd like to try the course.' (37.20, 44.10)| |NPC|210310| |AC|2|
N Viridescent Venture |AID|19111| |N|Speak to (npc:210412) and choose option 'I'd like to try the course.' (35.14, 55.20)| |NPC|210412| |AC|3|
N Shortline Switchback |AID|19111| |N|Speak to (npc:210497) and choose option 'I'd like to try the course.' (69.60, 52.52)| |NPC|210497| |AC|4|
N Canopy Concours |AID|19111| |N|Speak to (npc:210784) and choose option 'I'd like to try the course.' (62.80, 88.10)| |NPC|210784| |AC|5|
N Emerald Amble |AID|19111| |N|Speak to (npc:210861) and choose option 'I'd like to try the course.' (32.30, 48.20)| |NPC|210861| |AC|6|

N Guide Complete
]]
end, {image = "emeralddreamgold", description = [[This guide will walk you through completing the (aid:19111) achievement]]})
    end

    function Guide:Unload()
    end
end