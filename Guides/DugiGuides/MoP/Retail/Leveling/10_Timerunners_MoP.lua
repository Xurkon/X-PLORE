local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Timerunners_MoP")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria|r", "Timerunners MoP (10+)", "376(15-35)#376(15-35)#376(15-35)", nil, nil, "L", nil, function()
return [[

A It's About Time |QID|79432| |N|(npc:216591) in {The Timeless Shore} (24.56, 52.20)| |Z|554| |NPC|216591| |OID|79440|
K (npc:217564) |QID|79432.2| |N|Kill (npc:217564) in {The Timeless Shore} (25.63, 46.52)| |Z|554| |NPC|217564| |OID|79440|
N (item:213631) |QID|79432.3| |N|Collect (item:213631) from (npc:217564) in {The Timeless Shore} (25.61, 46.54)| |Z|554| |NPC|217564| |OID|79440|
T It's About Time |QID|79432| |N|(npc:216591) in {The Timeless Shore} (24.54, 52.13)| |Z|554| |NPC|216591| |OID|79440|
A Seeking Expert Advice |QID|79433| |N|(npc:216591) in {The Timeless Shore} (24.54, 52.13)| |Z|554| |NPC|216591| |OID|79440|
T Seeking Expert Advice |QID|79433| |N|(npc:216594) in {The Timeless Shore} (25.69, 51.64)| |Z|554| |NPC|216594| |OID|79440|
A Weave It To Me |QID|79434| |N|(npc:216594) in {The Timeless Shore} (25.69, 51.64)| |Z|554| |NPC|216594| |OID|79440|
A Knot My Problem |QID|79437| |N|(npc:216594) in {The Timeless Shore} (25.69, 51.64)| |Z|554| |NPC|216594| |OID|79440|
C Knot My Problem |QID|79437| |N|Use the (item:215110) to close 3 Time Rifts in each waypoint {The Timeless Shore} (22.96, 55.37) (22.41, 50.48) (20.84, 44.93)| |Z|554| |OID|79440|
C Weave It To Me |QID|79434| |N|Collect 3 (item:213571) from (npc:217557) in {The Timeless Shore} (22.05, 51.04)| |Z|554| |NPC|217557| |OID|79440|
T Weave It To Me |QID|79434| |N|in {The Timeless Shore} (25.66, 51.54)| |Z|554| |OID|79440|
T Knot My Problem |QID|79437| |N|(npc:216594) in {The Timeless Shore} (25.66, 51.54)| |Z|554| |NPC|216594| |OID|79440|
A What's Hours Is Yours |QID|79435| |N|(npc:216594) in {The Timeless Shore} (25.66, 51.54)| |Z|554| |NPC|216594| |OID|79440|
B (item:215438) |QID|79435.1| |N|Buy (item:215438) from (npc:217051) in {The Timeless Shore} (25.45, 53.80)| |Z|554| |NPC|217051| |OID|79440|
N (npc:217668) |QID|79435.2| |N|Speak to Ask (npc:217668) to forge your artifact, in {The Timeless Shore} (25.00, 52.83)| |Z|554| |NPC|217668| |OID|79440|
C What's Hours Is Yours |QID|79435| |N|Purchase a Chronobadge from Horos, then speak with Momentus., in {The Timeless Shore} (25.00, 52.83)| |Z|554| |NPC|217668| |OID|79440|
T What's Hours Is Yours |QID|79435| |N|(npc:216594) in {The Timeless Shore} (25.68, 51.61)| |Z|554| |NPC|216594| |OID|79440|
A Cloak and Needle |QID|80380| |N|(npc:216594) in {The Timeless Shore} (25.68, 51.61)| |Z|554| |NPC|216594| |OID|79440|
N (item:215442) |QID|80380.1| |N|Equipped (item:215442) in {The Timeless Shore} (25.68, 51.61)| |Z|554| |U|215442| |OID|79440|
N (item:210982) |QID|80380.2| |N|Collect (item:210982) from (npc:217557) in {The Timeless Shore} (23.19, 50.01)| |Z|554| |NPC|217557| |OID|79440|
T Cloak and Needle |QID|80380| |N|(npc:216594) in {The Timeless Shore} (25.68, 51.55)| |Z|554| |NPC|216594| |OID|79440|
A Goodbyes Are Hard When You Live Forever |QID|79438| |N|(npc:216594) in {The Timeless Shore} (25.68, 51.55)| |Z|554| |NPC|216594| |OID|79440|
K (npc:220821) |QID|79438.1| |N|Defeat (npc:220821) in {The Timeless Shore} (25.54, 58.63)| |Z|554| |NPC|220821| |OID|79440|
T Goodbyes Are Hard When You Live Forever |QID|79438| |N|(npc:218129) in {The Timeless Shore} (26.48, 54.18)| |Z|554| |NPC|218129|
A Recalling the War |QID|79440| |N|(npc:218129) in {The Timeless Shore} (26.48, 54.18)| |Z|554| |NPC|218129|
N (npc:218129)  |QID|79440.1| |N|Speak to (npc:218129)  about recent events, in {The Timeless Shore} (26.07, 54.22)| |Z|554| |NPC|218129|
T Recalling the War |QID|79440| |N|(npc:216591) in {The Skyfire} (42.00, 92.75)| |Z|371| |NPC|216591| |FAC|Alliance|
T Recalling the War |QID|79440| |N|(npc:216591) in {Hellscream's Fist} (30.85, 10.77)| |Z|371| |NPC|216591| |FAC|Horde|

N Guide Complete  |N|Switch to (guide:"371(15-35)#371(15-35)#371(15-35)") guide to continue| 

]]
end)
    end

    function Guide:Unload()
    end
end