local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Dragonflight_Forbidden_Reach_Reverse_Gold")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Forbidden Reach Reverse: Gold", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

N Manual Tick Required |N|Dugi Guides is currently unable to automatically detect the quest that you have already done and you will need to tick the completed step manually|
N Prerequisite |N|You will need to complete (qid:73076) first.<br/><b>Use our (guide:"Return to the Reach (70+ Storyline)")| |QID|73076|

N Stormsunder Crater Circuit |N|Speak to (npc:200183) and choose option 'I'd like to try the Reversed course.' (76.01, 65.71)<br/><b>Complete the circuit as fast as you can.| |Z|2151| |NPC|200183|
N Morqut Ascent |N|Speak to (npc:200212) and choose option 'I'd like to try the Reversed course.' (31.36, 65.65)<br/><b>Complete the circuit as fast as you can.| |Z|2151| |NPC|200212|
N Aerie Chasm Cruise |N|Speak to (npc:200236) and choose option 'I'd like to try the Reversed course.' (63.10, 51.86)<br/><b>Complete the circuit as fast as you can.| |Z|2151| |NPC|200236|
N Southern Reach Route |N|Speak to (npc:200247) and choose option 'I'd like to try the Reversed course.' (63.61, 84.03)<br/><b>Complete the circuit as fast as you can.| |Z|2151| |NPC|200247|
N Caldera Coaster |N|Speak to (npc:200316) and choose option 'I'd like to try the Reversed course.' (41.30, 14.55)<br/><b>Below the platform.<br/><b>Complete the circuit as fast as you can.| |Z|2151| |NPC|200316|
N Forbidden Reach Rush |N|Speak to (npc:200417) and choose option 'I'd like to try the Reversed course.' (49.41, 60.13)<br/><b>Complete the circuit as fast as you can.| |Z|2151| |NPC|200417|

N Guide Complete
]]

end, {image = "forbiddenreachgold.tga", description = [[This guide will walk you through completing the (aid:17290) achievement]]})
    end

    function Guide:Unload()
    end
end