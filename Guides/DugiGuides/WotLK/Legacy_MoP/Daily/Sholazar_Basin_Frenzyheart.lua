local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Horde_En_Sholazar_Basin_Frenzyheart")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "119(77+ Frenzyheart Tribe Dailies)", nil, "Horde", nil, "D", nil, function()
return [[

R Frenzyheart Hill |N|Fly to Frenzyheart Hill (56, 70) in Sholazar Basin|

N Accept 3 Quests at Frenzyheart Hill |N|Accept 3 Quests BEFORE Ticking this step (55, 69)|
A A Hero's Headgear |O| |N|Rejek (55.7, 69.5)| |QID|12758| |D| |NPC|29043|
A Chicken Party! |O| |N|Elder Harkek (55.5, 69.6)| |QID|12702| |D| |NPC|28138|
A Kartak's Rampage |O| |N|Vekgar (55.6, 68.8)| |QID|12703| |D| |NPC|29146|
A Rejek: First Blood |O| |N|Rejek (55.7, 69.5)| |QID|12734| |D| |NPC|29043|
A Secret Strength of the Frenzyheart |O| |N|Vekgar (55.6, 68.8)| |QID|12760| |D| |NPC|29146|
A Strength of the Tempest |O| |N|Rejek (55.7, 69.5)| |QID|12741| |D| |NPC|29043|
A The Heartblood's Strength |O| |N|Rejek (55.7, 69.5)| |QID|12732| |D| |NPC|29043|
A Tools of War |O| |N|Vekgar (55.6, 68.8)| |QID|12759| |D| |NPC|29146|

C A Hero's Headgear |O| |N|Kill the Venture Cos Excavators and Ruffians around (35, 44) for the explosives. Then kill a Stormwatcher (25, 34) use (item:39651) on the body and get the item| |U|39651| |QID|12758| |D| |NPC|28123, 28124, 28877|
C Chicken Party! |O| |U|38689| |N|Use the (item:38689) to quickly trap the chickens, but do not chase them or they will run, once trapped, loot|  |QID|12702| |D| |NPC|28161|
C Kartak's Rampage |O| |N|Kill Sparktouched Oracles and Warriors around (30, 75) to obtain the Oracle Blood. Then use it at Kartak's Hold at the Altar (23, 83) to summon Kartak, who will help you kill 50 oracles| |U|39265| |QID|12703| |D| |NPC|28111, 28116|
C Rejek: First Blood |O| |N|Use (item:39577) on the corpses of Sapphire Hive Wasp: (55, 75), Hardknuckle Charger: (60, 70) and 3 Mistwhisper members (Warriors or Oracles): (45, 35)| |U|39577| |QID|12734| |D| |NPC|28086, 28096, 28110|
C Secret Strength of the Frenzyheart |O| |N|Go to Kartak's hold (24 , 80) and use the (item:39739) and it should give you the Buff. Kill 30 Sparktouched Oracles or Warriors| |U|39739| |QID|12760| |D| |NPC|29157, 28112|
C Strength of the Tempest |O| |N|Kill Storm Revenants for Essence of the Storm and Aqueous Spirits for Essence of the Monsoon (25, 35) then go to the Shrine at (22.4, 33.8)| |QID|12741| |D| |NPC|28858, 28862|
C The Heartblood's Strength |O| |N|Kill Goretalon Matriarch, located at (59.7, 23.9) to collect (item:39573) then use (item:39574) with water from the Suntouched Pillar at (33, 50) then use (item:39576) to combine the blood and water together| |QID|12732| |D| |NPC|29044|
C Tools of War |O| |N|Collect Zepik's Trap Stash located at (23.9, 83.1) then use the item you get, to kill 50 Sparktouched Gorlocs (30, 70)| |QID|12759| |D| |OBJ|5744| |NPC|28112|

T A Hero's Headgear |O| |N|Rejek (55.7, 69.5)| |QID|12758| |D| |NPC|29043|
T Chicken Party! |O| |N|Elder Harkek (55.5, 69.6)| |QID|12702| |D| |NPC|28138|
T Kartak's Rampage |O| |N|Vekgar (55.6, 68.8)| |QID|12703| |D| |NPC|29146|
T Rejek: First Blood |O| |N|Rejek (55.7, 69.5)| |QID|12734| |D| |NPC|29043|
T Secret Strength of the Frenzyheart |O| |N|Shaman Jakjek (23.5, 83.2)| |QID|12760| |D| |NPC|28106|
T Strength of the Tempest |O| |N|Rejek (55.7, 69.5)| |QID|12741| |D| |NPC|29043|
T The Heartblood's Strength |O| |N|Rejek (55.7, 69.5)| |QID|12732| |D| |NPC|29043|
T Tools of War |O| |N|Vekgar (55.6, 68.8)| |QID|12759| |D| |NPC|29146|

N Guide Complete |N|Tick to continue to the next guide| 
]]
end)
	end
	
	function Guide:Unload()
	end
end
