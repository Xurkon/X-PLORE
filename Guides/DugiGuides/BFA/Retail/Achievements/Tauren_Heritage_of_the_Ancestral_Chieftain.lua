local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Tauren_Heritage_of_the_Ancestral_Chieftain")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Heritage Armor Quests|r"}, "Tauren - Heritage of the Ancestral Chieftain", nil, "Horde", nil, "A", nil, function()
return [[

N Level 50 Required |N|You need to be level 50| |PL|50| |R|Tauren|
N Earn Exalted status with (fac:81) |N|Earn Exalted reputation status with (fac:81)<br/>Complete any Outlands, Northrend, Cataclysm, Pandaria or Draenor dungeons on normal or heroic difficulty with the (item:45584) on until you reach Exalted| |REPR|81, 42000| |R|Tauren|

A When Sprirts Whisper |QID|54759| |N|(npc:149088) in {Orgimmar Embassy} (39.34, 79.08)| |Z|85| |NPC|149088| |R|Tauren| - Spiritwalker Isahi
T When Spirits Whisper |QID|54759| |N|(npc:36648) in {Thunder Bluff} (59.92, 51.64)| |Z|88| |NPC|36648| |R|Tauren| - Baine Bloodhoof
A The Spiritwalkers |QID|54760| |N|(npc:36648) in {Thunder Bluff} (59.92, 51.64)| |Z|88| |NPC|36648| |R|Tauren|
T The Spiritwalkers |QID|54760| |N|(npc:149084) in {Fargaze Mesa} (12.31, 31.16)| |Z|462| |NPC|149084| |R|Tauren| - Spiritwalker Ussoh
A Spirit Guide |QID|54761| |N|(npc:149084) in {Fargaze Mesa} (12.31, 31.16)| |Z|462| |NPC|149084| |R|Tauren|
C Spirit Guide |QID|54761.1| |N|Light Spiritwalker's Incense in {Fargaze Mesa} (12.56, 31.15)| |Z|462| |R|Tauren|
T Spirit Guide |QID|54761| |N|(npc:149084) in {Fargaze Mesa} (12.32, 31.14)| |Z|462| |NPC|149084| |R|Tauren|
A A Small Retreat |QID|54762| |N|(npc:149054) in {Fargaze Mesa} (12.32, 31.14)| |Z|462| |NPC|149084| |R|Tauren|
T A Small Retreat |QID|54762| |N|(npc:149529) in {Sun Rock Retreat} (49.19, 61.00)| |Z|65| |NPC|149529| |R|Tauren| - Spiritwalker Ussoh
A Crossing Over |QID|54763| |N|(npc:149529) in {Sun Rock Retreat} (49.19, 61.00)| |Z|65| |NPC|149529| |R|Tauren|
C Crossing Over |QID|54763.1| |N|Use (item:166899) to enter the spirit realm in {Sun Rock Retreat} (49.29, 61.08)| |Z|65| |U|166899| |R|Tauren|
C Crossing Over |QID|54763.2| |N|Find and then follow (npc:149829), kill (npc:149452)'s in {Sun Rock Retreat} (49.26, 62.97) (48.19, 63.06) (48.04, 64.36) (48.58, 65.14)| |Z|65| |NPC|149829, 149452| |R|Tauren| - 149829=Ancient Gazelle 149452=Necerofiend
T Crossing Over |QID|54763| |N|(npc:149529) in {Sun Rock Retreat} (49.19, 61.00)| |Z|65| |NPC|149529| |R|Tauren|
A Storm in Bloodhoof |QID|54764| |N|(npc:149529) in {Sun Rock Retreat} (49.19, 61.00)| |Z|65| |NPC|149529| |R|Tauren|
C Storm in Bloodhoof |QID|54764.1| |N|Travel to {Bloodhoof Village} (47.40, 58.64)| |Z|7| |R|Tauren|
C Storm in Bloodhoof |QID|54764.2| |N|Kill (npc:149452), (npc:149698) and click on Spirit Portals, free (npc:149614) to fill the bar in {Bloofhoof Village} (47.76, 58.19)| |Z|7| |NPC|149452, 149698, 149614| |R|Tauren| - 149452=Necrofiend 149698=Malicious Spirit 149614=Bloodhoof Villager
T Strom in Bloodhoof |QID|54764| |N|(npc:149528) in {Thunder Bluff} (58.02, 51.64)| |Z|88| |NPC|149528| |R|Tauren| - Baine Bloodhoof
A Answer the Call |QID|54766| |N|(npc:149528) in {Thunder Bluff} (58.02, 51.64)| |Z|88| |NPC|149528| |R|Tauren|
C Malevolent Spirit |QID|54766.1| |N|Speak to (npc:149547) to start the fight. Stand near (npc:150689)'s to get a stackable buff (spell:291508) in {Thunder Bluff} (58.81, 50.29)| |Z|88| |NPC|149547, 150689| |R|Tauren| - 149547=Malevolent Spirit 150689=Ancetral Spirit
T Answer the Call |QID|54766| |N|(npc:36648) in {Thunder Bluff} (60.05, 51.69)| |Z|88| |NPC|36648| |R|Tauren|
A Thank Your Guide |QID|54765| |N|(npc:36648) in {Thunder Bluff} (60.05, 51.69)| |Z|88| |NPC|36648| |R|Tauren|
C Thank Your Guide |QID|54765| |N|Deliver the offering to your spirit guide on the cliffs southwest of Thunder Bluff in {Mulgore} (33.94, 38.64)| |Z|7| |R|Tauren|

T Thank Your Guide |QID|54765| |N|Ceremonial Tauren Garbin {Mulgore} (33.96, 38.67)| |Z|7| |R|Tauren|

N Guide Complete |N|Congratulations! You Unlocked the (spell:290470)| |R|Tauren|
N Guide Complete |N|To get (spell:290470) you will need to be a Tauren| |R|Orc, Undead, Troll, BloodElf, Goblin, Pandaren, HighmountainTauren, MagharOrc, Nightborne, ZandalariTroll, Vulpera|

]]
end, {image = "mulgore.tga", description = [[This guide will show you how to unlock (spell:290470)<br/>Released in Patch 8.2.0 (30920)]]})	end

	function Guide:Unload()
	end
end