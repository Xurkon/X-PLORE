local Guide = DugisGuideViewer:RegisterModule("DugisGuide_WarWithin_En_70_Warbanding_Together_Intro")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Warbanding Together (Intro)", "Radiant Echoes Event", nil, nil, "E", nil, function()
return [[

A Warbands: Warbanding Together |QID|83492| |N|Auto Accept|
T Warbands: Warbanding Together |QID|83492| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|
A Warbands: Rift Reader |QID|83493| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|
A Warbands: Space Ghosts by the Coast |QID|83494| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|
C Warbands: Rift Reader |QID|83493.1| |N|Click on 6 (npc:226674) around waypoint (51.43, 34.11)| |Z|71| |NPC|226674|
C Warbands: Space Ghosts by the Coast |QID|83494.1| |N|Kill Partially Transported enemies and collect 8 (item:225783) (51.43, 34.11)| |Z|71| |NPC|226668,226669,226667,226666|
T Warbands: Rift Reader |QID|83493| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|
T Warbands: Space Ghosts by the Coast |QID|83494| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|
A Warbands: Twinsposition |QID|83495| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|
C Warbands: Twinsposition |QID|83495.1| |N|Activate the Transpositional Signal Recombobulatron and then kill (npc:226694) (48.30, 31.69)| |Z|71| |NPC|226694|
T Warbands: Twinsposition |QID|83495| |N|(npc:226658) in {Gadgetzan} (48.45, 31.65)| |Z|71| |NPC|226658|
A Warbands: Spacetime is Money |QID|83496| |N|(npc:226658) in {Gadgetzan} (48.45, 31.65)| |Z|71| |NPC|226658|
C Warbands: Spacetime is Money |QID|83496.1| |N|Click on De-Recombobulatron Matrix inside the building, in the middle of the room (52.26, 29.68)| |Z|71|
T Warbands: Spacetime is Money |QID|83496| |N|(npc:226658) in {Gadgetzan} (52.51, 26.86)| |Z|71| |NPC|226658|

N Guide Complete |N|Continue to (guide:"Radiant Echoes Event") guide|
]]
end, {description = [[This guide will walk you through completing Warbanding Together intro questline]]})
    end

    function Guide:Unload()
    end
end