local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_The_Archivists_Codex")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Korthia|r"}, "The Archivists' Codex", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |N|Level 60 is required for this guide.| |PL|60|
N Reach Renown Level 44 |N|You will need to be RENOWN 44 to continue this guide.<br/><b>Use our covenant campaign & covenant campaign daily guides to achieve this.| |N|RENOWN|44|
A Researching Korthian Relics |QID|63731| |N|Loot korthia treasures.<br/>Alternatively, you can join in killing rares in {Korthia}; they have a higher drop rate.| |Z|1961|
T Researching Korthian Relics |QID|63731| |N|(178694) in {The Path of Understanding} (59.17, 58.09)| |Z|1961| |NPC|178694|
A Interrupt the Interrogations |QID|63732| |N|(npc:178694) in {The Path of Understanding} (59.17, 58.09)| |Z|1961| |NPC|178694| |PRE|63731|
N (item:186101) |QID|63732.1| |N|Kill (npc:178727) and loot (item:186101) in {The Path of Understanding} (60.74, 52.72)| |Z|1961| |NPC|178727| |L|186101|
N (npc:177550) |QID|63732.2| |N|Rescue (npc:177550) in a cage in {The Path of Understanding} (60.90, 52.58)| |Z|1961| |NPC|178694|
T Interrupt the Interrogations |QID|63732| |N|(npc:178694) in {The Path of Understanding} (59.17, 58.09)| |Z|1961| |NPC|178694|
A Carving Out a Path |QID|63733| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694| |PRE|63732|
A The Sundered Staff |QID|63734| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694| |PRE|63732|
N Defeat 15 Mawsworn Invaders |QID|63733.1| |N|Slay 15 Mawsworn in {Seeker's Quorum} (54.39, 53.63)| |Z|1961| |POI| |NPC|177187, 177189, 177201, 177204|
N (item:185759) |QID|63734.2| |N|Kill (npc:177803) and then loot (item:185759) (49.70, 59.26)| |Z|1961| |NPC|177803| |L|185759|
N (item:185735) |QID|63734.1| |N|Kill (npc:177804) and then loot (item:185735) (44.96, 58.31)| |Z|1961| |NPC|177804| |L|185735|
N (item:185760) |QID|63734.3| |N|Kill (npc:177805) and then loot (item:185760) (45.33, 50.29)| |Z|1961| |NPC|177805| |L|185760|
T Carving Out a Path |QID|63733| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694|
T The Sundered Staff |QID|63734| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694|
A An Infusion of Anima |QID|63736| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694| |PRE|63733|
A Consulting the Experts |QID|63740| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694| |PRE|63734|
N An Infusion of Anima |QID|63736| |N|Kill Devourer's and then use (item:186157) in {Estuary of Awakening} (38.05, 54.59)| |Z|1961| |POI| |NPC|177198, 177245, 177295, 178880| |U|186157|
N Archivist Roh-Gema Visited |QID|63740.1| |N|Click on the Memorial to Archivist Roh-Gema in {Windswept Aerie} (35.99, 51.17)| |Z|1961| |POI|
N Archivist Roh-Mah Visited |QID|63740.4| |N|Click on the Memorial to Archivist Roh-Mah in {Windswept Aerie} (31.71, 57.22)| |Z|1961| |POI|
N Archivist Roh-Kiel Visited |QID|63740.3| |N|Click on the Memorial to Archivist Roh-Kiel in {Windswept Aerie} (27.83, 48.29)| |Z|1961| |POI|
N Archivist Roh-Luda Visited |QID|63740.2| |N|Click on the Memorial to Archivist Roh-Luda in {Windswept Aerie} (33.10, 43.30)| |Z|1961| |POI|
T An Infusion of Anima |QID|63736| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694|
T Consulting the Experts |QID|63740| |N|(npc:178713) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694|
A Hope Ascending |QID|63739| |N|(npc:177928) in {The Path of Understanding} (59.06, 58.13)| |Z|1961| |NPC|178694| |PRE|63736|
T Hope Ascending |QID|63739| |N|(npc:178991) in {Hope's Ascent} (38.00, 45.20) (35.89, 36.42) (35.85, 32.23)| |Z|1961| |NPC|178991|
A Finding One's True Purpose |QID|63737| |N|(npc:178991) in {Hope's Ascent} (35.89, 36.42)| |Z|1961| |NPC|178991| |PRE|63739|
N Begin the Ritual |QID|63737.1| |N|Use the (spell:353188) button on the screen to start the ritual (35.90, 32.20)| |Z|1961|
T Finding One's True Purpose |QID|63737| |N|(npc:178992) in {Hope's Ascent} (36.04, 32.33)| |Z|1961| |NPC|178992|
A Establishing the Archive |QID|63738| |N|(npc:178992) in {Hope's Ascent} (36.04, 32.33)| |Z|1961| |NPC|178992| |PRE|63737|
T Establishing the Archive |QID|63738| |N|(npc:178313) in {Reliquary of Remembrance} (61.56, 21.81)| |Z|1961| |NPC|178313|

A Beginning the Collection |QID|63861| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257| |PRE|63738|
A Collecting Research |QID|64290| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257| |PRE|63738|
N (item:185916) |QID|63861.1| |N|Enter the cave and drop down and follow path, click on Damaged Binding and collect (item:185916) (41.15, 67.08) (15.50, 46.77) (31.64, 39.59)<br/><b>Cave Entrance (60.18, 32.31, 1961, "Cave Entrance")| |Z|2006| |L|185916|
N (npc:178257) |QID|64290.1| |N|Speak to (npc:178257) and choose option 'I found more relics we can use for our cataloged research' in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
T Beginning the Collection |QID|63861| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
T Collecting Research |QID|64290| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
A What Must Be Found |QID|64506| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257| |PRE|63861|
A Empowering Equipment |QID|64438| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257| |PRE|64290|
N What Must Be Found |QID|64506.1| |N|Find 5 Missing Relics, they are around the area on chests, tables and shelves, they are highlighted in yellow if you have Outline Mode set to 'Good' or 'High' (62.70, 22.51)| |Z|1961|
N (npc:179929) |QID|64438.1| |N|Speak to (npc:178929) to upgrade one piece of equipment from Korthia. (62.70, 22.51)| |Z|1961| |POI| |NPC|178929|
T What Must Be Found |QID|64506| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
T Empowering Equipment |QID|64438| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|

N Reputation Required |QID|64511| |N|Reach Tier 2 reputation with (fac:2472)<br/><b>Complete Daily quests in Korthia (62.70, 22.51)| |Z|1961| |REPR|2472, 3000|
A Missing Relics |QID|64511| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257| |PRE|64506|
N Missing Relics |QID|64511.1| |N|Find 4 Missing Relics, they are around the area on chests, tables and shelves, they are highlighted in yellow if you have Outline Mode set to 'Good' or 'High' (62.70, 22.51)| |Z|1961|
N Missing Relics |QID|64511.2| |N|Speak to (npc:178257) and buy (item:186984) in {Reliquary of Remembrance} (62.70, 22.51)<br/><b>You can automate this by using the Target button while interacting with (npc:178257)| |Z|1961| |NPC|178257| |L|186984| |SCRIPT|BuyMerchantItem(3, 1)|
T Missing Relics |QID|64511| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|

N Reputation Required |QID|64519| |N|Reach Tier 3 reputation with (fac:2472)<br/><b>Complete Daily quests in Korthia (62.70, 22.51)| |Z|1961| |REPR|2472, 10500|
A Lost Vaults |QID|64519| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257| |PRE|64511|
N Loat Vaults |QID|64519.1| |N|Find 4 Missing Relics, they are around the area on chests, tables and shelves, they are highlighted in yellow if you have Outline Mode set to 'Good' or 'High' (62.70, 22.51)| |Z|1961|
T Lost Vaults |QID|64519| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
N Guide Complete |N|You earned the (aid:15066) achievement|

]]
end, {description = [[This guide covers unlocking The Archivists' Codex for patch 9.1]]})
  end

  function Guide:Unload()
  end
end
