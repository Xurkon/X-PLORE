local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Horde_En_15_21_Wailing_Caverns")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "Shadowfang Keep (18-22)", "Blackfathom Deeps (20-24)", "Horde", nil, "I", nil, function()
return [[

N Level 18 Required |N|You must be at least level 18 to pick up the following quests| |QID|1013| |PL|18|
R Undercity |QID|1013| |N|Run to the Undercity (62, 70)| |Z|1420|
h Undercity |QID|1013| |N|(npc:6741) in {Undercity} (67.7, 37.9)| |Z|1458| |NPC|6741|
A The Book of Ur |QID|1013| |N|(npc:2934) in {Undercity} (54.6, 54.2)| |Z|1458| |NPC|2934|

R The Sepulcher |N|Travel to Sepulcher (45.6, 42.6)| |Z|1421|  |QID|1014|
A Arugal Must Die |QID|1014| |N|(npc:1938) in {The Sepulcher} (44.2, 39.9)| |Z|1421| |NPC|1938|
A Deathstalkers in Shadowfang  |QID|1098| |N|(npc:1952) in {The Sepulcher} (43.4, 40.9)|  |Z|1421||NPC|1952|
T Mura Runetotem |QID|3301| |N|(npc:8385) in {The Sepulcher} (42.95, 41.98)| |Z|1421| |O| |NPC|8385|

R Shadowfang Keep |N|Enter Shadowfang Keep with a party of 5, level 20 is recommended| |I|

T Deathstalkers in Shadowfang  |QID|1098| |N|Release a Deathstalker near the start to unlock the door to continue with the instance<br/><br/>(npc:4444) can be seen lying on the otherside of the grate just as you enter the instance. You will have to work your way down to him to finish the quest.|  |Z|1421| |DMAP|Shadowfang_Keep_H| |NPC|4444|
C The Book of Ur  |QID|1013| |N|(item:6283) is in the room with (npc:4274). Its on the left as you enter the room on the bookshelf,  once someone gets this book it disappears for a few seconds. It will respawn.| |Z|1458| |DMAP|Shadowfang_Keep_H| |NPC|4274|
C Arugal Must Die  |QID|1014| |N|Kill (npc:4275) and collect (item:5442), he is the final boss.| |Z|1421| |DMAP|Shadowfang_Keep_H| |NPC|4275|

R The Sepulcher |N|Travel to Sepulcher (45.6, 42.6)| |Z|1421|  |QID|1014|
T Arugal Must Die |N|(npc:1938) in {The Sepulcher} (44.2, 39.9)| |Z|1421| |NPC|1938|

R Undercity |TID|1013| |N|Travel to the Undercity (62, 70)| |Z|1420|
T The Book of Ur |QID|1013| |N|(npc:2934) in {Undercity} (54.6, 54.2)| |Z|1458| |NPC|2934|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end