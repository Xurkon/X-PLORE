local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_En_WinterVeil_Quests_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Winter Veil|r ", "Winter Veil Quest Chain", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_WinterVeil]])|", function() 
return [[

N Level 10 Required |N|You will need to be at least level 10 to pick up the following quests| |PL|10|

R Ironforge |QID|7062| |N|Travel to {Ironforge} (31.86,62.46)| |Z|1455|
A  The Reason for the Season |QID|7062| |N|(npc:1365) in {Ironforge} (31.86,62.46)| |Z|1455| |NPC|1365|
T  The Reason for the Season |QID|7062| |N|(npc:2916) in {Ironforge} (77.54,11.82)| |Z|1455| |NPC|2916|
A  The Feast of Winter Veil |QID|7063| |N|(npc:2916) in {Ironforge} (77.54,11.82)| |Z|1455| |NPC|2916|
T  The Feast of Winter Veil |QID|7063| |N|(npc:2784) in {Ironforge} (44.60,49.49)  (39.09,56.20)| |Z|1455| |NPC|2784|
A  Greatfather Winter is Here! |QID|7022| |N|(npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |NPC|13433|
T  Greatfather Winter is Here! |QID|7022| |N|(npc:13444) in {Ironforge} (33.20,65.41)| |Z|1455| |NPC|13444|
A  Treats for Greatfather Winter |QID|7025| |N|(npc:13444) in {Ironforge} (33.20,65.41)| |Z|1455| |NPC|13444|

N Learn Apprentice Cooking |QID|7025| |N|Speak to (npc:5159) and train Apprentice Cooking, tick this step (60.08,36.43)| |Z|1455| |NPC|5159|
B (item:17200) |QID|7025| |N|Buy (item:17200) from (npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |L|17200| |NPC|13433|
N 5 (item:6889) |QID|7025| |N|Collect (item:6889) from the Auction house or farm them yourself from (npc:154) anywhere in {Westfall}| |NPC|154|
B  5  (item:17194) |QID|7025| |N|Buy 5 (item:17194) from (npc:13420) (33.70,67.23)| |Z|1455| |NPC|13420|
N (item:17197) |CO| |QID|7025.1| |N|Use (item:17200) and craft 5 (item:17197) (21.27,54.86)| |Z|1455|
B (item:1179) |QID|7025.2| |N|Buy (npc:5112) from (npc:5611) (18.64,51.76)| |Z|1455| |NPC|5112|
T Treats for Great-father Winter |QID|7025| |N|(npc:13444) in {Ironforge} (33.20,65.41)| |Z|1455| |NPC|13444|

N Level 30 Required |N|You will need to be at least level 30 to pick up the following quests| |PL|30|

A Stolen Winter Veil Treats |QID|7042| |N|(npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |NPC|13433|

R Alterac Mountains |QID|7043| |N|Travel to {Alterac Mountains} (35.44,72.46)| |Z|1416|
T Stolen Winter Veil Treats |QID|7042| |N|(npc:13636) in {Alterac Mountains} (35.44,72.46)| |Z|1416| |NPC|13636|
A You're a Mean One... |QID|7043| |N|(npc:13636) in {Alterac Mountains} (35.44,72.46)| |Z|1416| |NPC|13636|
K (npc:13602) |QID|7043.1| |N|Kill (npc:13602)  and collect (item:17662)<br/><b>Just wait around nearby in this area until he spawns, when he spawns, you will see a red yelled message in your chat  (40.80,67.77)| |Z|1416| |W| |NPC|13602|

R Ironforge |QID|7045| |N|Travel to {Ironforge} (33.70,67.23)| |Z|1455| 
T You're a Mean One... |QID|7043| |N|(npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |NPC|13433|
A A Smokywood Pastures Thank You! |QID|7045| |N|(npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |NPC|13433|
T A Smokywood Pastures Thank You! |QID|7045| |N|(npc:13444) in {Ironforge} (33.20,65.41)| |Z|1455| |NPC|13444|

N Level 40 Required |N|You will need to be at least level 40 to pick up the following quests| |PL|40|

A Metzen the Reindeer |QID|8762| |N|(npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |NPC|13433|
N (item:21211) |QID|8762.2| |N|Use (item:21315) to collect (item:21211)| |U|21315| |L|21211|
N (npc:15664) |QID|8762.1| |N|Find (npc:15664) in {Tanaris} (68.61,41.45) (69.81,42.48) (73.18,45.56) (73.35,48.07)| |Z|1446| |NPC|15664|
T Metzen the Reindeer |QID|8762| |N|(npc:13433) in {Ironforge} (33.70,67.23)| |Z|1455| |NPC|13433|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
