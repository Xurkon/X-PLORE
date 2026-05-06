local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Adventurer_of_Zuldazar")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Exploration|r"}, "Adventurer of Zuldazar", nil, nil, nil, "A", nil, function()
return [[

K (npc:129961) |N|Kill (npc:129961) in {Rastakhan's Might} (80.88, 21.31)| |Z|862| |NPC|129961| |AID|12944| |AC|1| --Atal'zul Gotaka
K (npc:136428) |N|Kill (npc:136428) in {Xibala} (43.23, 76.37)| |Z|862| |NPC|136428| |AID|12944| |AC|3| --Dark Chronicler
K (npc:131476) |N|Kill (npc:131476) in {Gorilla Gorge} (47.97, 54.25)| |Z|862| |NPC|131476| |AID|12944| |AC|5| --Zayoos
K (npc:129343) |N|Kill (npc:129343) inside cave in {Warport Rastari} (49.78, 57.33)| |Z|862| |NPC|129343| |AID|12944| |AC|7| --Avatar of Xolotal
K (npc:127939) |N|Kill (npc:127939) in {Warport Rastari} (46.69, 65.34)| |Z|862| |NPC|127939| |AID|12944| |AC|9| --Torraske the Eternal
K (npc:120899) |N|Kill (npc:120899) in {Tal'aman} (59.64, 56.56)| |Z|862| |NPC|120899| |AID|12944| |AC|11| --Kul'krazahn
K (npc:122004) |N|Kill (npc:122004) inside cave in {Borrow of Crimsonclaw} (70.33, 33.02)| |Z|862| |NPC|122004| |AID|12944| |AC|13| --Umbra'jin
K (npc:134738) |N|Kill (npc:134738) on the right side in {Atal'Dazar} (42.11, 36.14)| |Z|862| |NPC|134738| |AID|12944| |AC|15| --Hakbi the Risen
K (npc:133842) |N|Kill (npc:133842) inside cave near the road in {Sandscar Breach} (44.25, 25.21)| |Z|862| |NPC|133824| |AID|12944| |AC|17| --Warcrawler Karkithiss
K (npc:133190) |N|Kill (npc:133190) in the water near the waterfall in {West of Atal'gral} (74.33, 38.96)| |Z|862| |NPC|133190| |AID|12944| |AC|19| --Daggerjaw
K (npc:132244) |N|Kill (npc:132244) in {Scaletrader Post} (75.62, 36.25)| |Z|862| |NPC|133244| |AID|12944| |AC|21| --Kiboku
K (npc:131687) |N|Kill (npc:131687) in {Zeb'ahari} (77.10, 10.81)| |Z|862| |NPC|131687| |AID|12944| |AC|23| --Tambano
K (npc:129954) |N|Kill (npc:129954) near the waterfall in {Tal'gurub} (64.28, 32.67)| |Z|862| |NPC|129954| |AID|12944| |AC|2| --Gahz'ralka
K (npc:136413) |N|Enter cave, speak to Tehd Shoemaker to start event and kill (npc:136413) in {Kingsmouth River} (53.80, 44.84)| |Z|862| |NPC|136413| |AID|12944| |AC|4| --Syrawon the Dominus
K (npc:131233) |N|Kill (npc:131233) in {Tusk Isle} (58.80, 74.21)| |Z|862| |NPC|131233| |AID|12944| |AC|6| --Lei-zhi
K (npc:128699) |N|Kill (npc:128699) in {Blood Gate} (59.68, 18.22)| |Z|862| |NPC|128699| |AID|12944| |AC|8| --Bloodbulge
K (npc:126637) |N|Kill (npc:126637) inside cave in {Kandak's Lair} (68.71, 48.41)| |Z|862| |NPC|126637| |AID|12944| |AC|10| --Kandak
K (npc:124185) |N|Kill (npc:124185) in {Temple of Rezen} (74.12, 28.49)| |Z|862| |NPC|124185| |AID|12944| |AC|12| --Golrakahn
K (npc:134760) |N|Kill (npc:134760) in {Rootway Collapse} (65.36, 10.20)| |Z|862| |NPC|134760| |AID|12944| |AC|14| --Darkspeaker Jo'la
K (npc:134048) |N|Enter cave, speak to Strange Egg to start event and kill 2 waves of Enthralled Saurid's and kill (npc:134048) in {The Slough} (62.16, 46.20)| |Z|862| |NPC|134048| |AID|12944| |AC|16| --Vukuba
K (npc:134782) |N|Click Chum Bucket to start event and kill 2 waves of Enticed Axebeak's and kill (npc:134782) in {Backwater Beach} (60.72, 66.11)| |Z|862| |NPC|134782| |AID|12944| |AC|18| --Murderbeak
K (npc:133155) |N|Kill (npc:133155) in {Atal'Gral} (80.02, 35.98)| |Z|862| |NPC|133155| |AID|12944| |AC|20| --G'Naat
K (npc:131718) |N|Kill (npc:131718) in {Skyrender Eyrie} (66.63, 32.40)| |Z|862| |NPC|131718| |AID|12944| |AC|22| --Brablewing

N Guide Complete |N|You earned the (aid:12944) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:12944) achievement]]})
	end
	
	function Guide:Unload()
	end
end