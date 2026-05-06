local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_WinterVeil_Quests_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Winter Veil|r ", "Winter Veil Quest Chain", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_WinterVeil]])|", function() 
return [[

N Level 10 Required |N|You will need to be at least level 10 to pick up the following quests| |PL|10|

A  The Reason for the Season |QID|6964| |N|(npc:9550) in {Orgrimmar} (50.85,65.26)| |Z|1454| |NPC|9550|
T  The Reason for the Season |QID|6964| |N|(npc:13417) in {Orgrimmar}  (38.66,35.92)| |Z|1454| |NPC|13417|
A  The Feast of Winter Veil |QID|7061| |N|(npc:13417) in {Orgrimmar}  (38.66,35.92)| |Z|1454| |NPC|13417|

R Thunder Bluff |TID|7061| |N|Travel to {Thunder Bluff} (60.30,51.68)| |Z|1456|
T  The Feast of Winter Veil |QID|7061| |N|(npc:3057) in  {Thunder Bluff} (60.30,51.68)| |Z|1456| |NPC|3057|

R Orgrimmar |QID|6961| |N|Travel to {Orgrimmar} (53.33,66.49)| |Z|1454|
A  Great-father Winter is Here! |QID|6961| |N|(npc:13418) in {Orgrimmar} (53.33,66.49)| |Z|1454| |NPC|13418|
T  Great-father Winter is Here! |QID|6961| |N|(npc:13445) in {Orgrimmar} (52.49,69.18)| |Z|1454| |NPC|13445|
A  Treats for Great-father Winter |QID|6962| |N|(npc:13445) in {Orgrimmar} (52.49,69.18)| |Z|1454| |NPC|13445|
N Learn Apprentice Cooking |QID|6962| |N|Speak to (npc:3399) and train Apprentice Cooking, tick this step (57.40,53.96)| |Z|1454| |NPC|3399|
B (item:17200) |QID|6962| |N|Buy (item:17200) from (npc:13420) in {Orgrimmar} (53.21,65.89)| |Z|1454| |L|17200| |NPC|13420|
N 5 (item:6889) |QID|6962| |N|Collect (item:6889) from the Auction house or farm them yourself from (npc:2971) anywhere in {Mulgore}| |NPC|2971|
B  5  (item:17194)  |QID|6962| |N|Buy 5  (item:17194)  from (npc:13420) (53.21,65.89)| |Z|1454| |NPC|13420|
N (item:17197) |CO| |QID|6962.1| |N|Use (item:17200) and craft 5 (item:17197) (54.76,68.23)| |Z|1454|
B (item:1179) |QID|6962.2| |N|Buy (npc:5611) from (npc:5611)  (54.64,67.68)| |Z|1454| |NPC|5611|
T  Treats for Great-father Winter |QID|6962| |N|(npc:13445) in {Orgrimmar} (52.49,69.18)| |Z|1454| |NPC|13445|

N Level 30 Required |N|You will need to be at least level 30 to pick up the following quests| |PL|30|
A  Stolen Winter Veil Treats |QID|6963| |N| (npc:13418) in {Orgrimmar} (53.33,66.49)| |Z|1454| |NPC|13418|

R Alterac Mountains |QID|6983| |N|Travel to {Alterac Mountains} (49.56,69.08)| |Z|1416|
T  Stolen Winter Veil Treats |QID|6963| |N|(npc:13636) in {Alterac Mountains} (35.44,72.46)| |Z|1416| |NPC|13636|
A  You're a Mean One... |QID|6983| |N|(npc:13636) in {Alterac Mountains} (35.44,72.46)| |Z|1416| |NPC|13636|
K (npc:13602) |QID|6983.1| |N|Kill (npc:13602)  and collect (item:17662)<br/><b>Just wait around nearby in this area until he spawns, when he spawns, you will see a red yelled message in your chat  (40.80,67.77)| |Z|1416| |W| |NPC|13602|

R Orgrimmar |QID|6984| |N|Travel to {Orgrimmar} (53.33,66.49)| |Z|1454|
T  You're a Mean One... |QID|6983| |N|(npc:13418) in {Orgrimmar} (53.33,66.49)| |Z|1454| |NPC|13418|
A  A Smokywood Pastures Thank You! |QID|6984| |N|(npc:13418) in {Orgrimmar} (53.33,66.49)| |Z|1454| |NPC|13418|
T  A Smokywood Pastures Thank You! |QID|6984| |N|(npc:13445) in {Orgrimmar} (52.49,69.18)| |Z|1454| |NPC|13445|

N Level 40 Required |N|You will need to be at least level 40 to pick up the following quests| |PL|40|

A  Metzen the Reindeer |QID|8746| |N|(npc:13418) in {Orgrimmar} (53.33,66.49)| |Z|1454| |NPC|13418|
N (item:21211) |QID|8746.2| |N|Use (item:21315) to collect (item:21211)| |U|21315| |L|21211|
N (npc:15664) |QID|8746.1| |N|Find (npc:15664) in {Tanaris} (68.61,41.45) (69.81,42.48)  (73.18,45.56) (73.35,48.07)| |Z|1446| |NPC|15664|
T  Metzen the Reindeer |QID|8746| |N|(npc:13418) in {Orgrimmar} (53.33,66.49)| |Z|1454| |NPC|13418|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
