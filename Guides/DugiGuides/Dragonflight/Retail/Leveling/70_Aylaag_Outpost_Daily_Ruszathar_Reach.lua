local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Aylaag_Outpost_Daily_Ruszathar_Reach")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Aylaag Outpost Daily (Rusza'thar)", nil, nil, nil, "D", nil, function()
return [[

N Rusza'thar Reach |N|Requires Wait for the Aylaag Centaur to Set Up Rusza'thar Reach Post tick this step<br/><b>Click here to load the (guide:"Aylaag Outpost Daily Quests (Eaglewatch Outpost)") guide<br/><b>Click here to load the (guide:"Aylaag Outpost Daily Quests (Pinewood Post)") guide|
A More Hunting Trophies |QID|72868| |N|(npc:195454)<br/><b>Turn in hunting trophies from grand hunts for rep (64, 41)| |O| |D| |E| |L|200093 20| |Z|2023| |NPC|195454|
A More Hunting Trophies |QID|70929| |N|(npc:195454)<br/><b>Turn in hunting trophies from grand hunts for rep (64, 41)| |O| |D| |E| |L|200093 5| |Z|2023| |NPC|195454|
A More Hunting Trophies |QID|70928| |N|(npc:195454)<br/><b>Turn in hunting trophies from grand hunts for rep (64, 41)| |O| |D| |E| |L|200093| |Z|2023| |NPC|195454|
N Reach Renown Level 4 |N|Reach Renown Level 4 with (fac:2503)<br/><b>Complete daily quests, weekly quests, and zone quests in The Azure Span to gain renown| |FR|2503, 6|

N Accept Daily Quests |N|(npc:185853), accept all available daily quests, tick this step (71.39,31.04)| |MD| |W| |NPC|185853, 185870, 185867|
A The Best Defense... |QID|65796| |N|(npc:185853) in {Ohn'ahran Plains} (71.39,31.04)| |O| |D| |Z|2023| |NPC|185853|
A Where Rivers Sleep |QID|65789| |N|(npc:185867) in {Ohn'ahran Plains} (71.35,31.02)| |O| |D| |Z|2023| |NPC|185867|
A The Otter Side |QID|65784| |N|(npc:185870) in {Ohn'ahran Plains} (71.20,31.55)| |O| |D| |Z|2023| |NPC|185870|
A Counting Argali |QID|66698| |N|(npc:185870) in {Ohn'ahran Plains} (71.20,31.55)| |O| |D| |Z|2023| |NPC|185870|

N (npc:190260) |QID|66698.1| |N|Speak to (npc:190260) (73.85,31.28)| |O| |D| |Z|2023| |NPC|190260|
N Return Wandering Argali to the Herd |QID|66698.2| |N|Return 2 Wandering Argali to the Herd<br/><b>You can find the herd at (74.51, 30.99, 2023, "Wandering Argali") and (75.90, 34.06, 2023, "Wandering Argali") (76.74,31.14)| |O| |D| |Z|2023|
N (npc:187977) |QID|65784.1| |N|Bring 3 (npc:187977) to the Huntmaster <br/><b>Use the "Hold Tight" ability when the otter begins to run around. (75.59,25.39)| |O| |D| |Z|2023| |NPC|187977|
N 8 (item:191839) |QID|65789.1| |N|click Fragrant Bloom and collect 8 (item:191839) (82.44,27.13)| |O| |D| |Z|2023|
C Where Rivers Sleep |QID|65789.2| |N|Kill enemies around this area and collect 6 (item:191840) (81.87,30.58)| |O| |D| |Z|2023|

K (npc:185907) |QID|65796.1| |N|Kill (npc:185907)<br/><b>This enemy is elite and may require a group (76.85,39.83)| |O| |D| |Z|2023| |NPC|185907|
T The Best Defense... |QID|65796| |N|(npc:185853) in {Ohn'ahran Plains} (71.39,31.04)| |O| |D| |Z|2023| |NPC|185853|
T Where Rivers Sleep |QID|65789| |N|(npc:185867) in {Ohn'ahran Plains} (71.35,31.02)| |O| |D| |Z|2023| |NPC|185867|
T The Otter Side |QID|65784| |N|(npc:185870) in {Ohn'ahran Plains} (71.20,31.55) | |O| |D| |Z|2023| |NPC|185870|
T Counting Argali |QID|66698| |N|(npc:185870) in {Ohn'ahran Plains} (71.20,31.55) | |O| |D| |Z|2023| |NPC|185870|

N Guide Complete 

]]
end, {image = "ohnahranplains.tga", description = [[This guide will walk you through completing the various daily quests at the Rusza'thar Reach Aylaag Outpost location]]})	end

	function Guide:Unload()
	end
end
