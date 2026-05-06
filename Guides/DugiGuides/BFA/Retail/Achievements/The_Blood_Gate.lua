local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_The_Blood_Gate")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "The Blood Gate", nil, "Horde", nil, "A", nil, function()
return [[

N (aid:11861) |N|Complete (guide:"862(10-50)#862(10-50)#862(10-50)")| |AC|1|
N (aid:11868) |N|Complete (guide:"863(10-50)#863(10-50)#863(10-50)")| |AC|2|
N (aid:12478) |N|Complete (guide:"864(10-50)#864(10-50)#864(10-50)")| |AC|3|

A The Blood Gate |QID|47199| |N|(npc:141555) in {The Great Seal} (41.00, 72.08)| |Z|1164| |NPC|141555|

R Blood Gate |TID|47199| |N|Travel {Blood Gate} (60.39, 22.03)| |Z|862| 
T The Blood Gate |QID|47199| |N|(npc:121599) in {Blood Gate} (60.39, 22.03)| |Z|862| |NPC|121599|
A Ticks |QID|47200| |N|(npc:121599) in {Blood Gate} (60.39, 22.03)| |Z|862| |NPC|121599|
A They Want Us Alive |QID|47198| |N|(npc:121599) in {Blood Gate} (60.39, 22.03)| |Z|862| |NPC|121599|
C Ticks |QID|47200| |N|Kill 6 (npc:121896) in {Blood Gate} (59.55, 19.91)| |Z|862| |NPC|121896|
C They Want Us Alive |QID|47198| |N|Cure 8 (npc:121596) in {Blood Gate} (59.64, 18.00)| |Z|862| |NPC|121596|
T Ticks |QID|47200| |N|(npc:121599) in {Blood Gate} (60.40, 22.06)| |Z|862| |NPC|121599|
T They Want Us Alive |QID|47198| |N|(npc:121599) in {Blood Gate} (60.40, 22.06)| |Z|862| |NPC|121599|
A Rokhan |QID|47201| |N|(npc:121599) in {Blood Gate} (60.40, 22.06)| |Z|862| |NPC|121599|
C Rokhan |QID|47201| |N|Ride the (npc:128309) into the fray and then find Rokhan (60.99, 20.59)| |Z|862| |NPC|128309| |V|
T Rokhan |QID|47201| |N|(npc:121601) in {Blood Gate} (56.94, 19.11)| |Z|862| |NPC|121601|
A Warmother |QID|47205| |N|(npc:121601) in {Blood Gate} (56.94, 19.11)| |Z|862| |NPC|121601|
A The New Frontline |QID|47204| |N|(npc:121601) in {Blood Gate} (56.94, 19.11)| |Z|862| |NPC|121601|
C Warmother |QID|47205| |N|Kill (npc:121585) in {Blood Gate} (58.00, 17.94)| |Z|862| |NPC|121585|
C The New Frontline |QID|47204| |N|Kill 15 Blood Troll forces in {Blood Gate} (57.18, 18.81)| |Z|862| |NPC|121566, 121577, 121584, 122078|
T Warmother |QID|47205| |N|(npc:121601) in {Blood Gate} (56.95, 19.13)| |Z|862| |NPC|121601|
T The New Frontline |QID|47204| |N|(npc:121601) in {Blood Gate} (56.95, 19.13)| |Z|862| |NPC|121601|
A Bulwark of Torcali |QID|47229| |N|(npc:121601) in {Blood Gate} (56.95, 19.13)| |Z|862| |NPC|121601|
N (npc:121846) |QID|47229.1| |N|Ride (npc:121846) in {Blood Gate} (56.89, 19.77)| |Z|862| |NPC|121846|
C Bulwark of Torcali |QID|47229.2| |N|Blood Troll forces destroyed in {Blood Gate} (58.05, 20.28)| |Z|862|
T Bulwark of Torcali |QID|47229| |N|(npc:135708) in {Blood Gate} (60.09, 22.55)| |Z|862| |NPC|135708|
A Prepare for a Siege |QID|47258| |N|(npc:135890) in {Blood Gate} (60.05, 22.23)| |Z|862| |NPC|135890|

R The Great Seal |TID|47258| |N|Travel to {The Great Seal} (41.28, 71.42)| |Z|1164|
T Prepare for a Siege |QID|47258| |N|(npc:141555) in {The Great Seal} (41.28, 71.42)| |Z|1164| |NPC|141555|

N Guide Complete |N|You earned the (aid:12480) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:12480) achievement]]}) end

	function Guide:Unload()
	end
end
