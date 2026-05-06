local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_Hallows_End_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Hallows End|r", "Hallows End Quests", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_HallowsEnd]])|", function() 
return [[

N Level 10 Required |N|You must be at least level 10 to be able to accept these quests| |PL|10| 

A Hallow's End Treats for Jesper! |QID|8311| |N|(npc:15310) in {Stormwind City} (47.40,37.30) (47.63,35.32)| |Z|1453| |NPC|15310|
A Flexing for Nougat |QID|8356| |N|(npc:6740)  in {Stormwind City} (52.61,65.71)| |Z|1453| |OID|8311, 8356| |NPC|6740|
N (npc:6740) |QID|8356.1| |N|Target (npc:6740) and type /flex into your chat to perform the Flex emote. (52.61,65.71)| |Z|1453| |OID|8311, 8356| |NPC|6740|
T Flexing for Nougat |QID|8356| |N|(npc:6740) (52.61,65.71)| |Z|1453| |OID|8311, 8356| |NPC|6740|
N (item:20492) |QID|8311.1| |N|Collect (item:20492) (52.61,65.71)| |Z|1453|
A Chicken Clucking for a Mint |QID|8353| |N|Speak to (npc:5111) in Ironforge (20.57,53.22) (18.16,51.44)| |Z|1455| |OID|8311, 8353| |NPC|5111|
N (npc:5111) |QID|8353.1| |N|Target (npc:5111) and type /chicken into your chat to perform the Chicken emote. (18.16,51.44)| |Z|1455| |OID|8311, 8353| |NPC|5111|
T Chicken Clucking for a Mint |QID|8353| |N|(npc:5111) in Ironforge (18.16,51.44)| |Z|1455| |OID|8311, 8353| |NPC|5111|
N (item:20490) |QID|8311.3| |N|Collect (item:20490) from (npc:5111) (18.16,51.44)| |Z|1455| |OID|8311, 8353| |NPC|5111|
A Incoming Gumdrop |QID|8355| |N|(npc:6826) in Ironforge (36.38,3.62)| |Z|1455| |OID|8311, 8355| |NPC|6826|
N (npc:6826) |QID|8355.1| |N|Target (npc:6826) and type /train into your chat to perform the Train emote (36.38,3.62)| |Z|1455| |OID|8311, 8355| |NPC|6826|
T Incoming Gumdrop |QID|8355| |N|(npc:6826) in Ironforge (36.38,3.62)| |Z|1455| |OID|8311, 8355| |NPC|6826|
N (item:20494) |QID|8311.3| |N|Collect (item:20494) from (npc:6826) (36.38,3.62)| |Z|1455|  |OID|8311, 8353| |NPC|6826|
A Dancing for Marzipan |QID|8357| |N|(npc:6735) in Darnassus (67.42,15.65)| |Z|1457| |OID|8311, 8357| |NPC|6735|
N (npc:6735) |QID|8357.1| |N|Target (npc:6735) type /dance into your chat (67.42,15.65)| |Z|1457| |OID|8311, 8357| |NPC|6735|
T Dancing for Marzipan |QID|8357| |N|(npc:6735) in Darnassus (67.42,15.65)| |Z|1457| |OID|8311, 8357| |NPC|6735|
N (item:20496) |QID|8311.4| |N|Collect (item:20496) from (npc:6735) in Darnassus (67.42,15.65)| |Z|1457| |OID|8311, 8357| 
T Hallow's End Treats for Jesper! |QID|8311| |N|(npc:15310) in {Stormwind City} (47.40,37.30)(47.63,35.32)| |Z|1453| |NPC|15310|

N Level 25 Required |N|You must be at least level 25 to be able to accept these quests| |PL|25| 

A The Power of Pine |QID|8373| |N|(npc:15199) in {Hillsbrad Foothills} (50.00,57.34)| |Z|1424| |NPC|15199|
C The Power of Pine |QID|8373.1| |N|use (item:20604) next to a stink bomb placed by a Horde player to clean up a Stink Bomb in Southshore  (48.61,57.82)| |Z|1424|
T The Power of Pine |QID|8373| |N|(npc:15199) in {Hillsbrad Foothills} (50.00,57.34)| |Z|1424| |NPC|15199|


N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
