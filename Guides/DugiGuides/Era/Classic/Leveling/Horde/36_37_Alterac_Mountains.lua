local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_36_37_Alterac_Mountains")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 30-40|r", "1416(36-37)#1416(36-37)#1416(36-37)", "1417(37-38)#1417(37-38)#1417(37-38)", "Horde", nil, "L", nil, function()
return [[

R Tarren Mill |QID|544| |N|Travel to {Tarren Mill} (61.59, 20.71)| |Z|1424| 
A Prison Break In |QID|544| |N|(npc:2410) in {Tarren Mill} (61.59, 20.71)| |Z|1424| |NPC|2410|
A Stone Tokens |QID|556| |N|(npc:2437) in {Tarren Mill} (61.59, 20.71)| |Z|1424| |NPC|2437|
--A The Crown of Will |QID|518| |N|Melisara (62.6, 20.6)| |Z|1424|

R Growless Cave |QID|553| |N|Travel to {Growless Cave} (37.54, 67.91)| |O|
N Charge Flame of Uzel |QID|553.3| |N|Click Item Flame of Uzel in {Growless Cave} (37.54, 66.38)| |O|
C Frostmaw |QID|1136| |N|Kill (npc:4504) and collect (item:5811) in {Growless Cave} (37.59, 65.84)| |O| |W| |NPC|4504|

R Dalaran |QID|556| |N|Travel to {in {Dalaran} (20.33, 84.79)|
C Stone Tokens |QID|556| |N|Kill Dalaran humanoid enemies and collect 10 (item:3714) in {Dalaran} (21, 83)| |NPC|2271, 2272, 2358, 2628|
K (npc:2411) |QID|544.2| |N|Kill (npc:2411) and collect (item:3689) in {Lordamere Internment Camp} (19.69, 82.48)| |NPC|2411|
K (npc:2412) |QID|544.3| |N|Kill (npc:2412) and collect (item:3690) in {Lordamere Internment Camp} (20.22, 86.26)| |NPC|2412|
K (npc:2413) |QID|544.1| |N|Kill (npc:2413) and collect (item:3691) in {Lordamere Internment Camp} (20.20, 86.24)| |NPC|2413|
K (npc:2414) |QID|544.4| |N|Kill (npc:2414) and collect (item:3688) in {Lordamere Internment Camp} (18.19, 83.59)| |NPC|2414|
--C The Crown of Will |QID|518| |N|Kill 14 (npc:2254) at the Ruins of Alterac (40, 50)| |NPC|2254|

T Helcular's Revenge (2) |QID|553| |N|(npc:1767) in {Southshore} (52.74, 53.26)| |Z|1424| |O| |NPC|1767|

R Tarren Mill |TID|544| |N|Travel to {Tarren Mill} (61.59, 20.71)| |Z|1424| 
T Prison Break In |QID|544| |N|(npc:2410) in {Tarren Mill} (61.59, 20.71)| |Z|1424| |NPC|2410| 
A Dalaran Patrols |QID|545| |N|(npc:2410) in {Tarren Mill} (61.59, 20.85)| |Z|1424| |NPC|2410|
T Stone Tokens |QID|556| |N|(npc:2437) in {Tarren Mill} (61.59, 20.71)| |Z|1424| |NPC|2437|
A Bracers of Binding |QID|557| |N|(npc:2437) in {Tarren Mill} (61.54, 20.93)| |Z|1424| |NPC|2437|
--T The Crown of Will |Z|1424| |QID|518| |N|Melisara (62.6, 20.6), skip part 2|
--T To Steal From Thieves |Z|1458| |QID|1164| |N|Genavie Callow (64.2, 49.4)|

C Bracers of Binding |QID|557| |N|Kill (npc:2359) and collect 4 (item:3715) in {Dalaran} (11.98, 79.25)| |W| |NPC|2359|
C Dalaran Patrols |QID|545| |N|Kill 6 (npc:2358) and 12 (npc:2359) in {Dalaran} (19.94, 74.00)| |W| |NPC|2358, 2359|

R Tarren Mill |TID|557| |N|Travel to {Tarren Mill}<br/><br/>You can die on purpose and ressurect at {Tarren Mill} (61.58, 20.80)| |Z|1424|
T Dalaran Patrols |QID|545| |N|(npc:2410) in {Tarren Mill} (61.58, 20.80)| |Z|1424| |NPC|2410|
T Bracers of Binding |QID|557| |N|(npc:2437) in {Tarren Mill} (61.51, 20.86)| |Z|1424| |NPC|2437|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "hillsbrad.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
