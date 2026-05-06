local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_72_74_Azjol-Nerub")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Northrend 70-80|r", "157(72-74)", nil, "Horde", nil, "I", nil, function()
return [[

R Azjol-Nerub |N|Queue for {Azjol-Nerub} with your dungeon finder or find the instance in {Dragonblight} (25.99, 50.84)| |QID|29808| |I| |F|159| |Z|115| |WR|
A Death to the Traitor King |QID|29807| |N|(npc:55564), {Azjol-Nerub}, {The Gilded Gate} (14.77, 84.37)| |NPC|55564| |Z|159|
A Don't Forget the Eggs! |QID|29808| |N|(npc:55564), {Azjol-Nerub}, {The Gilded Gate} (14.77, 84.37)| |NPC|55564| |Z|159|
A The Gatewatcher's Talisman |QID|29811| |N|(npc:55564), {Azjol-Nerub}, {The Gilded Gate} (14.77, 84.37)| |NPC|55564| |Z|159|

C Don't Forget the Eggs! |N|Enter {Azjol-Nerub} and destroy 6 Nerubian Scourge Eggs (26.5, 36.3) (33.8, 47.5) (39.1, 54.7)| |QID|29808| |Z|159| |OBJ|7803|
C The Gatewatcher's Talisman |QID|29811| |N|Collect (item:74616) from (npc:28684) (first boss)(48.60, 44.74)| |Z|159| |NPC|28684|
R Hadronox's Lair floor |N|Travel to (npc:28921)'s Lair (52.8, 44.2) (88.4, 44.6) (86.5, 53.7) (65.8, 22.3) you have to wait until the Giant Spider finishes killing of the little spiders before you can kill it| |QID|29807| |Z|159| |F|158| |NPC|28921|
R The Brood Pit |N|Drop down to the Brood Pit (38.53, 26.78) (50.1, 16.5) (60.2, 31.2) (52.3, 33.7) (47.00, 58.69)| |QID|29807| |Z|158| |F|157|
C Death to the Traitor King |N|Kill (npc:29120) the final boss in {Azjol-Nerub} (61.7, 48.5). And get (item:43411)| |QID|29807| |Z|157| |NPC|29120|

T Death to the Traitor King |QID|29807| |N|(npc:55564) (62.36, 48.71)| |NPC|55564| |Z|157|
T Don't Forget the Eggs! |QID|29808| |N|(npc:55564) (62.36, 48.71)| |NPC|55564| |Z|157|
T The Gatewatcher's Talisman |QID|29811| |N|(npc:55564) (62.36, 48.71)| |NPC|55564| |Z|157|

N Guide Complete

]]
end)	end
	
	function Guide:Unload()
	end
end
