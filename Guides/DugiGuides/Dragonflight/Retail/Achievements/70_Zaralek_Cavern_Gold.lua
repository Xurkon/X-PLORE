local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Zaralek_Cavern_Gold")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Zaralek Cavern: Gold", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Manual Tick Required |N|Dugi Guides is currently unable to automatically detect the quest that you have already done and you will need to tick the completed step manually|
N Prerequisite |N|You will need to complete (qid:72973) first.<br/><b>Use our (guide:"Embers of Neltharion (70+ Storyline)")| |QID|72973|

N Crystal Circuit |N|Speak to (npc:202524) to start the trial (38.75, 60.62)<br/><b>Complete the circuit as fast as you can.| |Z|2133| |NPC|202524|
N Caldera Cruise |N|Speak to (npc:202676) to start the trial (39.05, 49.99)<br/><b>Complete the circuit as fast as you can.| |Z|2133| |NPC|202676|
N Brimstone Scramble |N|Speak to (npc:202749) to start the trial (54.50, 23.71)<br/><b>Complete the circuit as fast as you can.| |Z|2133| |NPC|202749|
N Shimmering Slalom |N|Speak to (npc:202772) to start the trial (58.72, 45.03)<br/><b>Complete the circuit as fast as you can.| |Z|2133| |NPC|202772|
N Loamm Roamm |N|Speak to (npc:202795) to start the trial (58.15, 57.59)<br/><b>Below the platform.<br/><b>Complete the circuit as fast as you can.| |Z|2133| |NPC|202795|
N Sulfur Sprint |N|Speak to (npc:202973) to start the trial (51.26, 46.67)<br/><b>Complete the circuit as fast as you can.| |Z|2133| |NPC|202973|

N Guide Complete
]]

end, {image = "zaralekcaverngold.tga", description = [[This guide will walk you through completing the (aid:17485) achievement]]})
    end

    function Guide:Unload()
    end
end