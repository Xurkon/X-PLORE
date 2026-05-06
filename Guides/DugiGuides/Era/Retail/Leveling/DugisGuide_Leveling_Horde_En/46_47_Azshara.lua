local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_46_47_Azshara")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1447(46-47)#1447(46-47)#1447(46-47)", "1425(47-47)#1425(47-47)#1425(47-47)", "Horde", nil, "L", nil, function()
return [[

R Talrendis Point |QID|5535| |N|Travel to {Talrendis Point} in {Azshara} (11.37, 78.14)| |Z|1447| 
A Spiritual Unrest |QID|5535| |N|(npc:11548) in {Talrendis Point} (11.37, 78.14)| |Z|1447| |NPC|11548|
A A Land Filled with Hatred |QID|5536| |N|(npc:11548) in {Talrendis Point} (11.37, 78.14)| |Z|1447| |NPC|11548|
C Spiritual Unrest |QID|5535| |N|Kill 6 (npc:6116) and 6 (npc:6117) at the Shadowsong Shrine (17, 66)| |W| |NPC|6116, 6117|
C A Land Filled with Hatred |QID|5536| |N|Kill 6 (npc:6125), 2 (npc:6126) and 2 (npc:6127) found a bit more north in {Haldarr Encampment} (20, 65)| |W| |NPC|6125, 6126, 6127|

R Talrendis Point |TID|5535| |N|Travel to {Talrendis Point} (11.37, 78.14)| |Z|1447| 
T Spiritual Unrest |QID|5535| |N|(npc:11548) in {Talrendis Point} (11.37, 78.14)| |Z|1447| |NPC|11548|
T A Land Filled with Hatred |QID|5536| |N|(npc:11548) in {Talrendis Point} (11.37, 78.14)| |Z|1447| |NPC|11548|

R Valormok |QID|3568| |N|North of the road, on the mountain's edge (21,52)|
T Betrayed (1) |QID|3504| |N|(npc:8576) in {Valormok} (22.28, 51.48)| |Z|1447| |NPC|8576|
f Valormok |OID|232| |N|Speak to (npc:8610) grab flight path for {Valormok} (21.97, 49.65)| |Z|1447| |NPC|8610|
A Stealing Knowledge |QID|3517| |N|(npc:8587) in {Valormok} (22.54, 51.38)| |Z|1447| |NPC|8587|

R Undercity |QID|3568| |N|Travel to Undercity (51.86, 80.41)| |Z|1458|
T A Donation of Wool |QID|7813| |N|(npc:14729) in {Magic Quarter} (71.83, 29.15)| |Z|1458| |L|2592 60| |O| |NPC|14729|
T A Donation of Mageweave |QID|7817| |N|(npc:14729) in {Magic Quarter} (71.83, 29.15)| |Z|1458| |L|4338 60| |O| |NPC|14729|
T A Donation of Silk |QID|7814| |N|(npc:14729) in {Magic Quarter} (71.83, 29.15)| |Z|1458| |L|4306 60| |O| |NPC|14729|
A Seeping Corruption |QID|3568| |N|(npc:8390) in {The Apothecarium} (51.86, 80.41) (49.90, 69.72)| |Z|1458| |NPC|8390|
A Errand for Apothecary Zinge |QID|232| |N|(npc:5204) in {The Apothecarium} (50.14, 68.24)| |Z|1458| |NPC|5204|
T Errand for Apothecary Zinge |QID|232| |N|(npc:7683) in {The Apothecarium} (58.59, 54.70)| |Z|1458| |NPC|7683|
A Errand for Apothecary Zinge |QID|238| |N|(npc:7683) in {The Apothecarium} (58.59, 54.70)| |Z|1458| |NPC|7683|
T Errand for Apothecary Zinge |QID|238| |N|(npc:5204) in {The Apothecarium} (51.86, 80.41) (50.12, 68.31)| |Z|1458| |NPC|5204|
A Into the Field |QID|243| |N|(npc:5204) in {The Apothecarium} (50.12, 68.31)| |Z|1458| |NPC|5204|
N (item:8564) |QID|2741| |N|Store (item:8564) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|8564| |O| |NPC|4549, 2458| -- Undercity
N (item:8523) |QID|243| |N|Store (item:8523) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|8523| |O| |NPC|4549, 2458| -- Undercity
N (item:10695) |QID|3568| |N|Store (item:10695) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|10695| |O| |NPC|4549, 2458| -- Undercity
N (item:6193) |QID|1429| |N|Withdraw (item:6193) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|6193| |OO| |NPC|4549, 2458| -- Undercity
N (item:15002) |QID|2932| |N|Withdraw (item:15002) at the bank<br/><br/>Tick this step (66.0, 45.2)| |Z|1458| |L|15002| |OO| |NPC|4549, 2458| -- Undercity
 
N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "azshara.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
