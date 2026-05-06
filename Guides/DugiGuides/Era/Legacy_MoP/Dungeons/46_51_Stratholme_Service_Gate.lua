local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_46_51_Stratholme_Service_Gate")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "317(46-51 Service Entrance)", "704(47-52 Detention Block)", "Horde", nil, "I", nil, function()
return [[

R Stratholme Service Entrance |N|Queue/Zone into {Stratholme Service Entrance} (44, 18)| |I| |QID|27352| |Z|23| |F|318| |WR|
A Liquid Gold |N|(npc:45328) (67.57, 82.22)| |QID|27352| |NPC|45328| |Z|318|
A Lord Aurius Rivendare |N|(npc:45329) (44.73, 20.34)| |QID|27227| |NPC|45329| |Z|318|
A Weapons for War |N|(npc:45331) (49.85, 18.46)| |QID|27230| |NPC|45331| |Z|318|
A Man Against Abomination |N|(npc:45206) (43.83, 13.94)| |QID|27228| |NPC|45206| |Z|318|
A Argent Reinforcements |N|(npc:45330) (42.64, 12.94)| |QID|27359| |NPC|45330| |Z|318|

N As you go... |AYG|27227| |N|Collect 4 (item:60975) from (npc:10464) and (npc:10463) found throughout the instance<br/><br/>Find a vial of (item:13180) can be found inside a {Stratholme} Supply Crate for (qid:27352)| |QID|27359| |NPC|10463, 10464| |OBJ|6448| |Z|318|
C Weapons for War |N|Find the plans on the ground near the ziggurat with Baronness Anastari, click on them and the (npc:11121) will spawn. Kill him (61.7, 58.2) (71.0, 49.0)| |QID|27230| |OBJ|525| |NPC|11121| |Z|318|
C Man Against Abomination |N|To unlock the gate you must kill the boss and NPC inside each Ziggurat then you can enter the {Slaughter Square} and (npc:10439) will appear after you kill all the abominations (77.9, 47.9) (69.6, 16.8) (53.3, 49.1) (55.6, 19.4) (44.0, 20.4)| |QID|27228| |NPC|10439| |Z|318|
C Lord Aurius Rivendare |N|Kill (npc:45412) (38.1, 20.6), the final boss| |QID|27227| |NPC|45412| |Z|318|
R Stratholme |QID|27227| |N|Travel to {Stratholme}|
C Argent Reinforcements |N|Collect 4 (item:60975) from (npc:10464) and (npc:10463), found throughout the instance| |QID|27359| |NPC|10463, 10464| |Z|318|
C Liquid Gold |N|Find a vial of (item:13180). Drops from (npc:10398) or can be found inside a {Stratholme} Supply Crate, located at these points (40.3, 27.9), (49.7, 23.7), (38.3, 14.1)| |QID|27352| |NPC|10398| |OBJ|6448| |Z|318|

T Liquid Gold |N|(npc:45328) (49.73, 22.27)| |QID|27352| |NPC|45328| |Z|318|
T Lord Aurius Rivendare |N|(npc:45329) (44.73, 20.34) |QID|27227| |NPC|45329| |Z|318|
T Weapons for War |N|(npc:45331) (49.85, 18.46)| |QID|27230| |NPC|45331| |Z|318|
T Man Against Abomination |N|(npc:45206) (43.83, 13.94)| |QID|27228| |NPC|45206| |Z|318|
T Argent Reinforcements |N|(npc:45330) (42.64, 12.94)| |QID|27359| |NPC|45330| |Z|318|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
