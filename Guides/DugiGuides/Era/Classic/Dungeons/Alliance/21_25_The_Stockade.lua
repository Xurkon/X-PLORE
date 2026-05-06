local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_21_25_Stockade")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "The Stockade (21-25)", "Razorfen Kraul (23-28)", "Alliance", nil, "I", nil, function()
return [[

N Level 22 Required |QID|389| |N|The minimum level to begin these quest is level 22, tick to continue| |PL|22|

R Stormwind City |QID|387| |N|Travel to Stormwind City (57.6, 47.8)| |Z|1453| |QID|389|
T The Unsent Letter |QID|373| |N|(npc:1646) in {Stormwind City} (57.6, 47.8)<br/><br/>This quest is a chain starting from The Deadmines guide| |Z|1453| |O| |NPC|1646|
A Bazil Thredd |QID|389| |N|(npc:1646) in {Stormwind City} (57.6, 47.8)| |Z|1453| |PRE|373| |NPC|1646|
T Bazil Thredd |QID|389| |N|(npc:1719) in {Stormwind City} (51.6, 69.5)| |Z|1453|  |PRE|373| |NPC|1719|
A The Stockade Riots |QID|391| |N|(npc:1719) in {Stormwind City} (51.6, 69.5)| |Z|1453| |PRE|373| |NPC|1719|
A Quell The Uprising |QID|387| |N|(npc:1719) in {Stormwind City} (51.6, 69.5)| |Z|1453| |NPC|1719|
A The Color of Blood |QID|388| |N|(npc:1721) in {Stormwind City} (76.3, 63.5), Wandering NPC| |Z|1453| |NPC|1721|

R Lakeshire |QID|386| |N|Travel to {Lakeshire} in {Redridge Mountains} (26.6, 46.1)| |Z|1453|
A What Comes Around... |QID|386| |N|(npc:859) in {Lakeshire} (26.6, 46.1)| |Z|1453| |NPC|859|

R Darkshire |QID|377||N|Travel to {Darkshire} (72.0, 47.8)| |Z|1431|
A Crime and Punishment |QID|377| |N|(npc:270) in {Darkshire} (72.0, 47.8)| |Z|1431| |NPC|270|

R The Stockade |QID|386| |N|Zone into for The Stockade dungeon| |I|
C What Comes Around... |QID|386| |N|Kill (npc:1696) in one of the rooms in the centre of the instance and collect (item:3630)| |DMAP|The_Stockade_A| |NPC|1696|
C Crime and Punishment |QID|377| |N|Kill (npc:1663) in the left side chamber of the instance and collect (item:3628)| |DMAP|The_Stockade_A| |NPC|1663|
C The Stockade Riots |QID|391| |N|Kill (npc:1716), the final boss in the right side chamber of the instance and collect (item:2926)| |DMAP|The_Stockade_A| |PRE|373| |NPC|1716|
C Quell The Uprising |QID|387| |N|Kill the required enemies inside the instance| |DMAP|The_Stockade_A| |NPC|1706, 1711, 1715|
C The Color of Blood |QID|388| |N|Collect 10 (item:2909) from the mobs inside the instance| |DMAP|The_Stockade_A| |NPC|1707, 1706, 1708, 1715|

R Stormwind City |QID|392| |N|Travel back to Stormwind City (76.3, 63.5)| |Z|1453| |I|
T The Color of Blood |QID|388| |N|(npc:1721) in {Stormwind City} (76.3, 63.5), Wandering NPC| |Z|1453| |NPC|1721|
T The Stockade Riots |QID|391| |N|(npc:1719) in {Stormwind City} (51.6, 69.5)| |Z|1453| |PRE|373| |NPC|1719|
T Quell The Uprising |QID|387| |N|(npc:1719) in {Stormwind City} (51.6, 69.5)| |Z|1453| |NPC|1719|

A The Curious Visitor |QID|392| |N|(npc:1719) in {Stormwind City} (51.6, 69.5)| |Z|1453| |PRE|373| |NPC|1719|
T The Curious Visitor |QID|392| |N|(npc:1646) in {Stormwind City} (57.6, 47.8)| |Z|1453| |PRE|373| |NPC|1646|
A Shadow of the Past |QID|393| |N|(npc:1646) in {Stormwind City} (57.6, 47.8)| |Z|1453| |PRE|373| |NPC|1646|
T Shadow of the Past |QID|393| |N|(npc:332) in {Stormwind City} (78.4, 70.7)| |Z|1453| |PRE|373| |NPC|332|
A Look to an Old Friend |QID|350||N|(npc:332) in {Stormwind City} (78.4, 70.7)| |Z|1453| |PRE|373| |NPC|332|
T Look to an Old Friend |QID|350| |N|(npc:482) in {Stormwind City} (66.1, 74.2)| |Z|1453| |PRE|373| |NPC|482|
A Infiltrating the Castle |QID|2745| |N|(npc:482) in {Stormwind City} (66.1, 74.2)| |Z|1453| |PRE|373| |NPC|482|
T Infiltrating the Castle |QID|2745| |N|(npc:7766) in {Stormwind City} (73.2, 35.8)||Z|1453| |PRE|373| |NPC|7766|
A Items of Some Consequence |QID|2746| |N|(npc:7766) in {Stormwind City} (73.2, 35.8)| |Z|1453| |PRE|373| |NPC|7766|
C Items of Some Consequence |QID|2746| |N|Collect 2 (item:8683) from Clara Charles' house at (34.1, 57.2) and gather 3 (item:4306)| |Z|1429| |W| |PRE|373|
T Items of Some Consequence |QID|2746| |N|(npc:7766) in {Stormwind City} (73.2, 35.8)| |Z|1453|  |PRE|373| |NPC|7766|

N Level 27 Required |N|The minimum level to continue this guide is level 27 due to difficulty, tick to continue| |QID|434| |PL|27|

A The Attack! |QID|434| |N|(npc:7766) in {Stormwind City} (73.2, 35.8)| |Z|1453| |NPC|7766|
C The Attack! |QID|434| |N|Find and kill (npc:1754) and (npc:1755), wait for the conversation to end then kill them both (72.5, 35.0) | |Z|1453| |NPC|1754, 1755|
T The Attack! |QID|434| |N|(npc:482) in {Stormwind City} (66.1, 74.2))| |Z|1453| |NPC|482|
A The Head of the Beast |QID|394| |N|(npc:482) in {Stormwind City} (66.1, 74.2)| |Z|1453| |NPC|482|
T The Head of the Beast |QID|394| |N|(npc:332) in {Stormwind City} (78.4, 70.7)| |Z|1453| |NPC|332|
A Brotherhood's End |QID|395| |N|(npc:332) in {Stormwind City} (78.4, 70.7)| |Z|1453| |NPC|332|
T Brotherhood's End |QID|395| |N|(npc:1646) in {Stormwind City} (57.6, 47.8)| |Z|1453| |NPC|1646|
A An Audience with the King |QID|396| |N|(npc:1646) in {Stormwind City} (57.6, 47.8)| |Z|1453| |NPC|1646|
T An Audience with the King |QID|396| |N|(npc:1749) in {Stormwind City} (79.9, 38.5)| |Z|1453| |NPC|1749|

R Lakeshire |TID|386| |N|Travel to {Lakeshire} in {Redridge Mountains} (26.6, 46.1)| |Z|1453|
T What Comes Around... |QID|386| |N|(npc:859) in {Lakeshire} (26.6, 46.1)| |Z|1453| |NPC|859|

R Darkshire |TID|377| |N|Travel to {Darkshire} (72.0, 47.8)| |Z|1431|
T Crime and Punishment |QID|377| |N|(npc:270) in {Darkshire} (72.0, 47.8)| |Z|1431| |NPC|270|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end