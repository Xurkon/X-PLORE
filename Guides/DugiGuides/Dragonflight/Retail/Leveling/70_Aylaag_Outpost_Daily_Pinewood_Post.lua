local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Aylaag_Outpost_Daily_Pinewood_Post")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Aylaag Outpost Daily (Pinewood)", nil, nil, nil, "D", nil, function()
return [[

N Pinewood Post |N|Requires Wait for the Aylaag Centaur to Set Up Camp at Pinewood Post tick this step<br/><b>Click here to load the (guide:"Aylaag Outpost Daily Quests (Eaglewatch Outpost)") guide<br/><b>Click here to load the (guide:"Aylaag Outpost Daily Quests (Rusza'thar Reach)") guide|
A More Hunting Trophies |QID|72868| |N|(npc:195454)<br/><b>Turn in hunting trophies from grand hunts for rep (64, 41)| |O| |D| |E| |L|200093 20| |Z|2023| |NPC|195454|
A More Hunting Trophies |QID|70929| |N|(npc:195454)<br/><b>Turn in hunting trophies from grand hunts for rep (64, 41)| |O| |D| |E| |L|200093 5| |Z|2023| |NPC|195454|
A More Hunting Trophies |QID|70928| |N|(npc:195454)<br/><b>Turn in hunting trophies from grand hunts for rep (64, 41)| |O| |D| |E| |L|200093| |Z|2023| |NPC|195454|
N Reach Renown Level 4 |N|Reach Renown Level 4 with (fac:2503)<br/><b>Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown| |FR|2503, 4|

N Accept Daily Quests |N|(npc:185853), accept all available daily quests, tick this step (70.70,63.05)| |MD| |W| |NPC|185853, 185881, 185870|
A Darkened Clouds |QID|67222| |N|(npc:185853) in {Ohn'ahran Plains} (70.70,63.05)| |O| |D| |Z|2023| |NPC|185853|
A Scaling Ever Higher |QID|70352| |N|(npc:185881) in {Ohn'ahran Plains} (70.70,63.05)| |O| |D| |Z|2023| |NPC|185881|
A Blood of Dragons |QID|70279| |N|(npc:185870) in {Ohn'ahran Plains} (70.70,63.05)| |O| |D| |Z|2023| |NPC|185870|
A If There's Wool There's a Way |QID|70990| |N|(npc:185870) in {Ohn'ahran Plains} (70.70,63.05)| |O| |D| |Z|2023| |NPC|185870|
A Of Wind and Water |QID|67034| |N|(npc:185867) in {Ohn'ahran Plains} (70.70,63.05)| |O| |D| |Z|2023| |NPC|185867|

C If There's Wool There's a Way |QID|70990.1| |N|use (item:200153) and collect 8 (item:200149)<br/><b>Use it on Wild Cliffhoofs around this area (68.25,66.83)| |O| |D| |Z|2023|
C Darkened Clouds |QID|67222.2| |N|Destroy 6 Storm Scepters (59.62,65.71)| |O| |D| |Z|2023|
C Darkened Clouds |QID|67222.1| |N|Kill Nokud and Primalist enemies around this area (59.62,65.71)| |O| |D| |Z|2023| |NPC|187817, 187842, 187916, 195742|
C Blood of Dragons |QID|70279.1| |N|Kill (npc:193725) inside the cave<br/><b>This enemy is elite and may require a group (62.08,77.22) (61.67,79.35)| |O| |D| |Z|2023| |NPC|193725|
K (npc:191778) |QID|70352.2| |N|Kill 5 (npc:191778) <br/><b>Use it on Territorial Proto Drakes flying around in the air<br/><b>You can find more around (83.22, 68.95, 2023, "(npc:191778)") (77.93, 76.42, 2023, "(npc:191778)") (81.88,76.16)| |O| |D| |Z|2023|
N 5 (item:194452) |QID|67034.2| |N|click Windtossed Feather on the ground and collect 5 (item:194452) (78.67,78.24)| |O| |D| |Z|2023|
C Of Wind and Water |QID|67034.1| |N|Kill (npc:191682) or (npc:191712) and collec 8 (item:194509) (78.67,78.24)| |O| |D| |Z|2023|
C Scaling Ever Higher |QID|70352.1| |N|Kill Hornswog enemies around this area<br/><br/>You can find more around (79.25,75.98, 2023, "Hornswog enemies") (81.66,71.78)| |O| |D| |Z|2023|
T Of Wind and Water |QID|67034| |N|(npc:185867) in {Ohn'ahran Plains} (70.94,62.62)| |O| |D| |Z|2023| |NPC|185867|
T Darkened Clouds |QID|67222| |N|(npc:185853) in {Ohn'ahran Plains} (70.98,62.58)| |O| |D| |Z|2023| |NPC|185853|
T Scaling Ever Higher |QID|70352| |N|(npc:185881) in {Ohn'ahran Plains} (70.56,62.85)| |O| |D| |Z|2023| |NPC|185881|
T Blood of Dragons |QID|70279| |N|(npc:185870) in {Ohn'ahran Plains} (70.65,63.58)| |O| |D| |Z|2023| |NPC|185870|
T If There's Wool There's a Way |QID|70990| |N|(npc:185870) in {Ohn'ahran Plains} (70.65,63.58)| |O| |D| |Z|2023| |NPC|185870|

N Guide Complete 

]]
end, {image = "ohnahranplains.tga", description = [[This guide will walk you through completing the various daily quests at the Pinewood Post Aylaag Outpost location]]})	end

	function Guide:Unload()
	end
end
