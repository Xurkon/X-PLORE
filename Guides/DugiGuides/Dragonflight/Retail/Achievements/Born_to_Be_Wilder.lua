 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Born_to_Be_Wilder")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "Born to Be Wilder", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=58|", function()
return [[

N Level 58 Required |N|You need to be at least Level 58 to use this guide.| |PL|58|
N Big Time Adventurer |N|You need to complete the Big Time Adventurer chapter to proceed.<br/>Use our (guide:"2112(66-68)#2112(66-68)#2112(66-68)") guide.| |OID|70040,66221|

A Oh Where, Oh Where Can He Be? |QID|70647| |N|(npc:185563) in {Little Scales Daycare} (10.42,58.08)| |Z|2112| |NPC|185563|
C Oh Where, Oh Where Can He Be? |QID|70647| |N|Rescue (npc:195911) and bring him back to (npc:185563) in {The Petitioner's Concourse} (34.81,63.76)| |Z|2025| |NPC|195911|
T Oh Where, Oh Where Can He Be? |QID|70647| |N|(npc:185563) in {Little Scales Daycare} (10.59,58.21)| |Z|2112| |NPC|185563|
A An Expert Opinion |QID|70697| |N|(npc:185563) in {Little Scales Daycare} (10.59,58.21)| |Z|2112| |NPC|185563|
T An Expert Opinion |QID|70697| |N|(npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
A What Lubbins Needs |QID|70722| |N|(npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
C What Lubbins Needs |QID|70722| |N|Speak to (npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
T What Lubbins Needs |QID|70722| |N|(npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
A A Practice Bout |QID|70732| |N|(npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
C A Practice Bout |QID|70732| |N|Defeat (npc:196206) in {Iskaara} (14.25,47.60)| |Z|2024| |NPC|196206|
T A Practice Bout |QID|70732| |N|(npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
A This Calls for a Specialist |QID|70849| |N|(npc:196069) in {Iskaara} (13.88,49.87)| |Z|2024| |NPC|196069|
T This Calls for a Specialist |QID|70849| |N|(npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
A Borne to Be Wilder |QID|70851| |N|(npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
C Borne to Be Wilder |QID|70851| |N|Speak to (npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
T Borne to Be Wilder |QID|70851| |N|(npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
A A Friend for Lubbins |QID|70853| |N|(npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
C A Friend for Lubbins |QID|70853| |N|Injure the opposing battle pet until you can use Capture ability in {Wild Preserve} (38.71,79.64)| |Z|2022|
T A Friend for Lubbins |QID|70853| |N|(npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
A So How Did It Go? |QID|70854| |N|(npc:196264) in {Wild Preserve} (38.91,83.30)| |Z|2022| |NPC|196264|
T So How Did It Go? |QID|70854| |N|(npc:185563) in {Little Scales Daycare} (10.42,58.08)| |Z|2112| |NPC|185563|

N Guide Complete
]]
end)
    end

    function Guide:Unload()
    end
end