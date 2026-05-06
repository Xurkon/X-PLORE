local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_Hallows_End_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Hallows End|r", "Hallows End Quests", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_HallowsEnd]])|", function() 
return [[

N Level 10 Required |N|You must be at least level 10 to be able to accept these quests| |PL|10| 

A Hallow's End Treats for Spoops! |QID|8312| |N|(npc:15309) in Orgrimmar (71.07,23.87) (71.44,22.80)| |Z|1454| |NPC|15309|
A Flexing for Nougat |QID|8359| |N|(npc:6929) in Orgrimmar (54.03,68.94) (54.10,68.40)| |Z|1454| |OID|8312, 8359| |NPC|6929|
N (npc:6929) |QID|8359.1| |N|Target (npc:6929) and type /flex into your chat to perform the Flex emote (54.10,68.40)| |Z|1454| |OID|8312, 8359| |NPC|6929|
T Flexing for Nougat |QID|8359| |N|(npc:6929) in Orgrimmar (54.10,68.40)| |Z|1454| |OID|8312, 8359| |NPC|6929|
N (item:20493) |QID|8312.1| |N|Collect (item:20493) from (npc:6929) (54.10,68.40)| |Z|1454|
A Incoming Gumdrop |QID|8358| |N| (npc:11814) in {Durotar} (46.34,18.51)(52.58,45.00) (56.12,74.24)| |Z|1411| |OID|8312, 8358| |NPC|11814|
N (npc:11814) |QID|8358.1| |N|Target (npc:11814) and type /train into your chat to perform the Train emote (56.12,74.24)| |Z|1411| |OID|8312, 8358| |NPC|11814|
T Incoming Gumdrop |QID|8358| |N|(npc:11814) in {Durotar} (56.12,74.24)| |Z|1411| |OID|8312, 8358| |NPC|11814|
N (item:20495) |QID|8312.2| |N|Collect (item:20495) from(npc:11814) in {Durotar} (56.12,74.24)| |Z|1411| |OID|8312, 8358| |NPC|11814| 
A Dancing for Marzipan |QID|8360| |N|(npc:6746) in {Thunder Bluff} (44.95,62.12) (45.81,64.71)| |Z|1456| |OID|8312, 8360| |NPC|6746|
N (npc:6746) |QID|8360.1| |N|Target (npc:6746) and type /dance into your chat to perform the Dance emote. (45.81,64.71)| |Z|1456| |OID|8312, 8360| |NPC|6746|
T Dancing for Marzipan |QID|8360| |N|(npc:6746) in {Thunder Bluff} (45.81,64.71)| |Z|1456| |OID|8312, 8360| |NPC|6746|
N (item:20497) |QID|8312.4| |N|Collect (item:20497) from (npc:6746) in {Thunder Bluff} (45.81,64.71)| |Z|1456| |OID|8312, 8360| |NPC|6746| 
A Chicken Clucking for a Mint |QID|8354| |N|(npc:6741) in {Undercity} (67.73,37.88)| |Z|1458| |OID|8312, 8354| |NPC|6741|
N (npc:6741) |QID|8354.1| |N|Target (npc:6741) and type /chicken into your chat to perform the Chicken emote. (67.73,37.88)| |Z|1458| |OID|8312, 8354| |NPC|6741|
T Chicken Clucking for a Mint |QID|8354| |N|(npc:6741) in {Undercity} (67.73,37.88)| |Z|1458| |OID|8312, 8354| |NPC|6741|
N (item:20491) |QID|8312.3| |N|Collect (item:20491) from (npc:6741) in {Undercity} (67.73,37.88)| |Z|1458| |OID|8312, 8354| |NPC|6741|
T Hallow's End Treats for Spoops! |QID|8312| |N|(npc:15309) in {Orgrimmar}  (71.07,23.87) (71.44,22.80)| |Z|1454| |NPC|15309|

N Level 25 Required |N|You must be at least level 25 to be able to accept these quests| |PL|25| 
A Stinking Up Southshore |QID|1657| |N|(npc:15197) in {Tirisfal Glades} (55.57,69.90)| |Z|1420| |NPC|15197|
C Stinking Up Southshore |QID|1657.1| |N|use (item:20387) to throw into {Southshore} (48.42,57.86)| |Z|1424| |U|20387|
T Stinking Up Southshore |QID|1657| |N|(npc:15197) in {Tirisfal Glades} (55.57,69.90)| |Z|1420| |NPC|15197|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
