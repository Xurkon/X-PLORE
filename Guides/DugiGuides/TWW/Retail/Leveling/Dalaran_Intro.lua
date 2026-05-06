local Guide = DugisGuideViewer:RegisterModule("DugisGuide_WarWithin_Dalaran_Intro")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Dalaran Intro", "Radiant Echoes Event", nil, nil, "L", nil, function()
return [[

N Level 70 Required |N|You will need to be level 70 to use this guide| |PL|70|
N (aid:40382) Required |N|You will need to complete (aid:40382) to use this guide| |AID|40382|
N Prerequisite |N|You will need to complete (guide:"Warbanding Together (Intro)")| |QID|83496|

A The War Within |QID|78713| |N|Auto quest in {Orgrimmar} (51.36,79.02)| |Z|85| |FAC|Horde| |Z|85| |FAC|Horde|
U (item:227669) |QID|78713.1| |N|Use provided (item:227669) to teleport to {Silithus} (51.36,79.02)| |Z|85| |U|227669| |FAC|Horde|
C The War Within |QID|78713.2| |N|Meet (npc:213620) in (41.94, 45.04)| |Z|81| |NPC|213620| |FAC|Horde|
T The War Within |QID|78713| |N|(npc:213620) in {Silithus} (41.94, 45.04)| |Z|81| |FAC|Horde|

A The War Within |QID|81930| |N|Auto quest in {Stormwind City} (63.25,72.21)| |Z|84| |FAC|Alliance|
U (item:227669) |QID|81930.1| |N|Use (item:227669) to teleport to {Silithus} (63.25,72.21)| |Z|84| |U|227669| |FAC|Alliance|
C The War Within |QID|81930.2| |N|Meet (npc:213625) in {Silithus} (41.91, 45.09)| |Z|81| |NPC|213625| |FAC|Alliance|
T The War Within |QID|81930| |N|(npc:213625) in {Silithus} (41.91, 45.09)| |Z|84| |FAC|Alliance|

A A Poor Reception |QID|78714| |N|(npc:213620) in {Silithus} (41.94, 45.04)| |Z|81| |NPC|213620|
C A Poor Reception |QID|78714| |N|Enter the {Heart Chamber} (43.18, 44.51)| |Z|81| |REACH|50.05,30.73,2321|
T A Poor Reception |QID|78714| |N|(npc:213624) in {Chamber of Heart} (50.10, 64.92)| |Z|2321| |NPC|213624|
A Azeroth's Voice |QID|78715| |N|(npc:213624) in {Chamber of Heart} (50.10, 64.92)| |Z|2321| |NPC|213624|
C Azeroth's Voice |QID|78715.1| |N|Click on three Chamber Consoles in {Chamber of Heart} (56.05, 64.66) (50.05, 73.40) (44.38, 64.78)| |Z|2321|
C Azeroth's Voice |QID|78715.2| |N|Speak to (npc:213624) in {Chamber of Heart} (50.02, 64.85)| |Z|2321| |NPC|213624|
T Azeroth's Voice |QID|78715| |N|(npc:213625) in {Chamber of Heart} (49.55, 58.63)| |Z|2321| |NPC|213625|
A Painful Lessons |QID|78716| |N|(npc:213625) in {Chamber of Heart} (49.55, 58.63)| |Z|2321| |NPC|213625|
C Painful Lessons |QID|78716.1| |N|Click on Portal to Dalaran in {Chamber of Heart} (53.37, 57.95)| |Z|2321| |REACH|46.79,54.49,629|
T Painful Lessons |QID|78716| |N|(npc:213627) in {The Portrait Room} (42.93, 59.76)| |Z|629| |NPC|213627|
A The Bronzebeard Family |QID|80500| |N|(npc:214651) in {The Portrait Room} (41.07, 54.77)| |Z|629| |NPC|214651|
C The Bronzebeard Family |QID|80500.1| |N|Speak to (npc:214669) in {Dalaran Visitor Center} (50.89, 55.62)| |Z|627| |NPC|214669|
T The Bronzebeard Family |QID|80500| |N|(npc:214651) in {The Portrait Room} (40.69, 54.26)| |Z|629| |NPC|214651|

N Guide Complete |N|Continue to (guide:"Radiant Echoes Event") guide|
]]
end, {description = [[This guide will walk you through to complete the Dalaran Intro questline]]})
    end

    function Guide:Unload()
    end
end