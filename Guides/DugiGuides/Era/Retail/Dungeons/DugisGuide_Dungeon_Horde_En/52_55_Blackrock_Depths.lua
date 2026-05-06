local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_52_55_Blackrock_Depths")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Blackrock Depths (52-55)", "Scholomance / Stratholme (55-58)", "Horde", nil, "I", nil, function()
return [[

N Level 52 Required |N|You will need to be at least level 52 to pick up the following quests| |QID|3981| |PL|52|

R Kargath|QID|4081| |N|Travel to Kargath (4, 46)| |Z|1418| |QID|3981|
A KILL ON SIGHT: Dark Iron Dwarves |QID|4081| |N|WANTED sign (3.8, 47.5)| |Z|1418|
A Disharmony of Flame |QID|3906| |N|(npc:9084) in {Kargath}(3.5, 48.2)|  |Z|1418| |NPC|9084|

R Blackrock Mountain |QID|4023| |N|Travel to Blackrock Mountain (34.88, 84.8)| |Z|1427|
C Disharmony of Flame  |QID|3906| |N|Kill (npc:9026), you can either jump down to the lava or follow the Chain to the middle structure and down to the mines  (26.44, 79.4)| |Z|1427| |NPC|9026|

R Slither Rock |QID|4022| |N|Travel to {Slither Rock} (93.66, 32.10)| |Z|1428| |OID|4023|
A A Taste of Flame (1) |QID|4022| |N|(npc:9459) in {Slither Rock} (93.66, 32.10) (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
C A Taste of Flame (1) |QID|4022| |N|Speak to (npc:9459) with (item:10575) in {Slither Rock} (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
T A Taste of Flame (1) |QID|4022| |N|(npc:9459) in {Slither Rock} (95.05, 31.57)| |Z|1428| |OID|4023| |NPC|9459|
A A Taste of Flame (2) |QID|4024| |N|(npc:9459) in {Slither Rock} (95.05, 31.57)| |Z|1428| |NPC|9459|

R Kargath |QID|3907| |N|Travel to {Kargath} (3.5, 48.2)| |Z|1418|
T Disharmony of Flame |QID|3906| |N|(npc:9084) in {Kargath} (3.5, 48.2)| |Z|1418| |NPC|9084|
A Disharmony of Fire |QID|3907| |N|(npc:9084) in {Kargath} (3.5, 48.2)| |Z|1418| |NPC|9084|
A Commander Gor'shak |QID|3981| |N|(npc:9081) in {Kargath (5.9, 47.7)| |Z|1418| |NPC|9081|

R Blackrock Depths |N|Zone into Blackrock Depths dungeon| |QID|3982| |I|
K (npc:9018) |QID|3982| |N|Kill (npc:9018), from the entrance she is on the right side North East and collect (item:11140)| |L|11140| |DMAP|Blackrock_Depths_H| |NPC|9018|

T Commander Gor'shak |QID|3981| |N|Free (npc:9020), After you enter BRD, walk forward into the main room, then look to your right. You'll see three pathways. The outer two loop around to each other in a big ring. (npc:9020) is in a cell on the left side, you'll need the (item:11140)| |DMAP|Blackrock_Depths_H| |NPC|9020|
A What Is Going On? (1) |QID|3982| |N|(npc:9020)| |DMAP|Blackrock_Depths_H|
C What Is Going On? (1) |QID|3982| |N|Escort and defend (npc:9020)| |DMAP|Blackrock_Depths_H|
T What Is Going On? (1) |QID|3982| |N|(npc:9020)| |DMAP|Blackrock_Depths_H|
A What Is Going On? (2) |QID|4001| |N|(npc:9020)| |DMAP|Blackrock_Depths_H|
C What Is Going On? (2) |QID|4001| |N|Speak to (npc:9021) in the cell across and to the left of (npc:9020)'s Cell| |DMAP|Blackrock_Depths_H| |NPC|9021|
C KILL ON SIGHT: Dark Iron Dwarves |QID|4081| |N|Kill the required Anvilrage enemies, you should be able to complete this quickly in the prison area| |DMAP|Blackrock_Depths_H| |NPC|8891, 8892, 8890|

--N Lockpicking or Shadowforge Key ? |N|Can anyone in your group open the locked doors with lockpicking or shadowforge key? If no one can, leave the party and join a new group that have the key or lockpicking. You won't get deserter debuff as long as High Interrogator Gerstahn is dead| |QID|4082|

R Kargath |QID|3907| |N|Travel to {Kargath} (3.5, 48.2)| |Z|1418|
T KILL ON SIGHT: Dark Iron Dwarves |QID|4081| |N|(npc:9077) in {Kargath} (5.8, 47.5)| |Z|1418| |NPC|9077|
A KILL ON SIGHT: High Ranking Dark Iron Officials |QID|4082| |N|Wanted Sign (4, 47)| |Z|1418|

R Blackrock Depths |N|Zone into Blackrock Depths dungeon| |QID|3982| |I|
C A Taste of Flame (2) |QID|4024| |N|If someone in your party can unlock the doors, Kill (npc:9016) and loot (item:11230) by using the (item:11231)| |L|11230| |U|11231| |DMAP|Blackrock_Depths_H| |NPC|9016|
K (npc:9017) |QID|3907| |N|Follow the large hallway from (npc:9016) straight to (npc:9017) and collect (item:11126)| |DMAP|Blackrock_Depths_H| |NPC|9017|
C KILL ON SIGHT: High Ranking Dark Iron Officials |N|All the enemies required are on the way to  (npc:9016) you should automatically complete this| |QID|4082| |Z|1418| |DMAP|Blackrock_Depths_H| |NPC|8894, 8893, 8895|

R Kargath |N|Teleport back to Kargath (3.5, 48.2)| |Z|1418| |I|
T Disharmony of Fire |N|(npc:9084) in {Kargath} (3.5, 48.2)| |QID|3907| |Z|1418|
T KILL ON SIGHT: High Ranking Dark Iron Officials |N|(npc:9077) in {Kargath} (4, 47)| |QID|4082| |Z|1418|

R Burning Steppes |TID|4024| |N|Travel to {Burning Steppes} (95.0, 31.6)| |Z|1428|
T A Taste of Flame (2) |QID|4024| |N|(npc:9459) in {Burning Steppes} (95.0, 31.6)| |Z|1428| |NPC|9459|

R Orgrimmar |QID|4001| |N|Travel to {Orgrimmar} (31.6, 37.8)| |Z|1454|
T What Is Going On? (2) |QID|4001| |N|(npc:4949) in {Orgrimmar} (31.6, 37.8)| |Z|1454| |NPC|4949|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end