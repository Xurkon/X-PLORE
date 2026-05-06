local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_48_49_Swamp_of_Sorrows")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 40-50|r", "1435(48-49)#1435(48-49)#1435(48-49)", "1445(49-49)#1445(49-49)#1445(49-49)", "Horde", nil, "L", nil, function()
return [[

R Stonard |QID|2784| |N|Travel to {Stonard} (45.13, 56.64)| |Z|1435|
h Stonard |QID|2784| |N|Speak to (npc:6930) and set hearth to {Stonard} (45.13, 56.64)| |Z|1435| |NPC|6930|
A Fall From Grace |QID|2784| |N|(npc:7572) in {Stonard} (36.66, 60.01) (34.2, 66.0)| |NPC|7572| 
C Fall From Grace |QID|2784| |N|Speak to (npc:7572) to complete the quest (34.32, 66.09)| |Z|1435| |NPC|7572|
T Fall From Grace |QID|2784| |N|(npc:7572) in {Stonard} (34.2, 66.0)| |NPC|7572|
A The Disgraced One |QID|2621| |N|(npc:7572) (34.2, 66.0)| |NPC|7572|
T Cortello's Riddle (1) |QID|624| |N|A Soggy Scroll - under the bridge (22.9, 48.2)| |O| |OBJ|164|
A Cortello's Riddle (2) |QID|625| |N|A Soggy Scroll (22.9, 48.2)| |PRE|624| |OBJ|164|

R Stonard |QID|2622| |N|Travel to {Stonard} (47.85, 54.97)| |Z|1435|
T The Disgraced One |QID|2621| |N|(npc:7623) in {Stonard} (47.85, 54.97)| |Z|1435| |NPC|7623|
A The Missing Orders |QID|2622| |N|(npc:7623) in {Stonard} (47.85, 54.97)| |Z|1435| |NPC|7623|
T The Missing Orders |QID|2622| |N|(npc:7643) in {Stonard} (44.96, 57.31)| |Z|1435| |NPC|7643|
A The Swamp Talker |QID|2623| |N|(npc:7643) in {Stonard} (44.96, 57.31)| |Z|1435| |NPC|7643|

R Misty Reed Strand |QID|1428| |N|Travel to {Misty Reed Strand} (83.75, 80.44)| |Z|1435| 
A Continued Threat |QID|1428| |N|(npc:5593) in {Misty Reed Strand} (83.75, 80.44)| |Z|1435| |NPC|5593|

R Stagalbog Cave |QID|2623| |N|Travel to {Stagalbog Cave} (66.52, 76.36)| |Z|1435|
C The Swamp Talker |QID|2623| |N|Kill (npc:950) at the back of the Murloc cave and loot the (item:8463) (66, 75)| |Z|1435| |NPC|950|
C Continued Threat |QID|1428| |N|Kill the required Marsh murlocs in {Stagalbog Cave} (66.52, 76.36)| |Z|1435| |W| |NPC|750, 751, 752|
K (npc:9916) |QID|4450.4| |N|Kill (npc:9916) and collect (item:11723) in {Misty Reed Strand} (94.81, 52.06)| |Z|1435| |O| |NPC|9916|

T The Swamp Talker |QID|2623| |N|(npc:7572) in {Swamp of Sorrows} (36.66, 60.01) (34.2, 66.0)| |NPC|7572|
A A Tale of Sorrow |QID|2801| |N|(npc:8022) in {Swamp of Sorrows} (34.24, 66.11)| |Z|1435| |NPC|8022|
C A Tale of Sorrow |QID|2801| |N|Speak to (npc:8022) until the quest is complete (34.24, 66.11)| |Z|1435| |NPC|8022|
T A Tale of Sorrow |QID|2801| |N|(npc:8022) in {Swamp of Sorrows} (34.24, 66.11)| |Z|1435| |NPC|8022|

R Booty Bay |OID|580| |N|Travel to {The Salty Sailor Tavern} in {Booty Bay} (27.13, 77.44)| |Z|1434| 
A Whiskey Slim's Lost Grog |QID|580| |N|(npc:2491) in {The Salty Sailor Tavern} (27.13, 77.44)| |Z|1434| |NPC|2491|
N (item:11727) |QID|4450| |N|Store (item:11727) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|11727| |O| |NPC|2625| --Booty bay
N (item:11725) |QID|4450| |N|Store (item:11725) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|11725| |O| |NPC|2625| --Booty bay
N (item:11723) |QID|4450| |N|Store (item:11723) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|11723| |O| |NPC|2625| --Booty bay
N (item:10515) |N|Store (item:10515) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|10515| |O| |NPC|2625| --Booty bay
N (item:10575) |QID|4022| |N|Store (item:10575) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|10575| |O| |NPC|2625| --Booty bay
N (item:22528) |QID|9131| |N|Store (item:22528) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|22528| |O| |NPC|2625| --Booty bay
N (item:22527) |QID|9128| |N|Store (item:22527) in the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|22527| |O| |NPC|2625| --Booty bay
N (item:9594) |QID|3123| |N|Withdraw (item:9594) from the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|9594| |OO| |NPC|2625| --Booty bay
N (item:9618) |QID|3123| |N|Withdraw (item:9618) from the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|9618| |OO| |NPC|2625| --Booty bay
N (item:4589) |QID|7842| |N|Withdraw (item:4589) from the bank<br/><br/>Tick this step (26.6, 76.4)| |Z|1434| |L|4589| |OO| |NPC|2625| --Booty bay


N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "swampofsorrows.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
