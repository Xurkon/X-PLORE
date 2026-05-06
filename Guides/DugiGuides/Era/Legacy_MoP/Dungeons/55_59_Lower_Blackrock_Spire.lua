local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Horde_En_55_59_Lower_Blackrock_Spire")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "250(55-59 Lower)", nil, "Horde", nil, "I", nil, function()
return [[

R Lower Blackrock Spire |N|Queue/Zone into {Blackrock Spire} in {Searing Gorge} (47.21, 68.92)(40.6, 95.7)| |I| |QID|27440| |Z|28| |F|252| |WR|
A Trolls, Ogres, and Orcs, Oh My! |QID|27440| |N|(npc:10299) (30.55, 39.53)| |NPC|10299| |Z|252|
A General Drakkisath, Hand of Nefarian |QID|27445| |N|(npc:10299) (30.55, 39.53)| |NPC|10299| |Z|252|
A The False Warchief |QID|27444| |N|(npc:10299) (30.67, 39.36)| |NPC|10299| |Z|252|

R Hordemar City |N|Travel to {Hordemar City} (level 3) (36.7, 40.3)(38.3, 48.1)(45.8, 43.6)| |Z|252| |F|252| |QID|27440|
N (item:12533) |N|Collect (item:12533) from the weapon rack for boss summon (63.8, 42.7)(66.5, 45)(67.54, 57.57)| |T| |L|12533| |Z|252| |OBJ|5891|
K (npc:9196) |QID|27440.2| |N|Kill (npc:9196) (66.1, 50.2)(57.5, 57.6)(35.48, 55.23)| |Z|252| |NPC|9196|
N (item:12534) |N|Collect (item:12534) from (npc:9196) body, you need to combine this with (item:12533) for optional boss summon later, only 1 person in the group can loot the head (35.48, 55.23)| |Z|252| |L|12534| |T| |NPC|10584|

R Skitterweb Tunnel |N|Travel to {Skitterweb Tunnels} (level 2) (57.6, 57.8)(62.8, 54.9)(62.3, 57.8)| |Z|252| |F|251| |QID|27440|
R Tazz'Alaor |N|Travel to {Tazz'Alaor} (level 1)(59.4, 58.6)(59.4, 64.2)| |Z|251| |F|250| |QID|27440|
K (npc:9237) |QID|27440.1| |N|Kill (npc:9237), {Tazz'Alaor} (52.85, 53.48)| |Z|250| |NPC|9237|

R Skitterweb Tunnel |N|Travel to {Skitterweb Tunnels} (level 2) (66.1, 49.5)(49, 51.8)(48.9, 64.6)(54.1, 69.5)(65.8, 73)| |Z|250| |F|251| |QID|27440|
R Hordemar City |N|Travel to {Hordemar City} (level 3) (49.8, 74.9)| |Z|251| |F|252| |QID|27440|
R Hall of Blackhand |N|Travel to {Hall of Blackhand} (level 4) (45.8, 62.5)| |Z|252| |F|252| |QID|27440|
U (item:12534) |U|12534| |N|Use (item:12534) with (item:12533) on the bone pile to summon Urok Doomhowl (45.95, 54.07)| |Z|252|
R Dragonspire Hall |N|Travel to {Dragonspire Hall} (level 5) (42.7, 79)| |Z|252| |F|254| |QID|27440|
R The Rookery |N|Travel to {The Rookery} (level 6) (40.1, 79.6)(39.7, 73.9)(37.6, 60.3)(40.9, 60.5)| |Z|254| |F|255| |QID|27440|

K (npc:9568) |QID|27440.3| |N|Kill (npc:9568), {Chamber of Battle} (56.33, 56.01)| |NPC|9568| |Z|255|
R Hall of Blackhand |N|Travel to {Hordemar City} (level 3) (52.3, 57.5)| |Z|255| |F|252|
R Hordemar City |N|Travel to {Hordemar City} (level 3) (47.9, 57.6)| |Z|252| |F|252|
R Hall of Blackhand |N|Travel to {Hordemar City} (level 3) (57.5, 57.8)(66.3, 50)(66.3, 44.4)(44.8, 44.4)| |Z|252| |F|252|
T Trolls, Ogres, and Orcs, Oh My! |QID|27440| |N|(npc:10299) (30.55, 39.53)| |NPC|10299| |Z|252|

N Guide Complete 

]]
end)	end
	
	function Guide:Unload()
	end
end
