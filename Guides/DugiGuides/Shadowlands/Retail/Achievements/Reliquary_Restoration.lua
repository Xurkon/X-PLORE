local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Reliquary_Restoration")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Korthia|r", "|cffffd200Exploration|r"}, "Reliquary Restoration", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |N|Level 60 is required for this guide.| |PL|60|
N Required |TID|64506| |N|The Archivists Codex storyline is required to be completed, to accomplish this, complete (guide:"The Archivists' Codex") guide.|

- //Set 1
N (item:187206) |QID|63899| |N|Inside the cave, all the way at the back, on the top level. (27.2, 56.8)| |Z|1961| |AID|15066| |AC|3| |L|187206|
A Book of Binding: The Mad Witch |QID|63899| |N|Auto Accept| |E| |AID|15066| |AC|3|
T Book of Binding: The Mad Witch |QID|63899| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|3| |NPC|178257|
N (item:187201) |QID|63912| |N|Found in {Seeker's Quorum} (45.46, 56.27)| |Z|1961| |AID|15066| |AC|8| |L|187201|
A Celestial Shadowlands Chart |QID|63912| |N|Auto Accept| |E| |AID|15066| |AC|8|
T Celestial Shadowlands Chart |QID|63912| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|8| |NPC|178257|
N (item:187055) |QID|63892| |N|Loot Invasive Mushroom Treasure found around {Korthia}| |AID|15066| |AC|2| |L|187055|
A Diviner's Rune Chits |QID|63892| |N|Auto Accept| |E| |AID|15066| |AC|2|
N (item:185962) |QID|63892.1| |N|Collect 20 (item:185962)<br/>Find (item:187055) inside Korthia Treasures.<br/>Use (item:187055) which has a chance finding (item:185962)| |AID|15066| |AC|2| |L|185962 20|
T Diviner's Rune Chits |QID|63892| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|2| |NPC|178257|
A Singing Steel Ingot |QID|63911| |N|Auto Accept| |E| |AID|15066| |AC|7|
N Mawsworn Invaders |QID|63911.1| |N|Kill Mawsworn mobs in {Seeker's Quorum} (59.60, 58.14)| |Z|1961| |POI| |AID|15066| |AC|7|
T Singing Steel Ingot |QID|63911| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|7| |NPC|178257|
N (item:185914) |QID|63860| |N|Inside the cave (42.21, 41.00)| |Z|1961| |AID|15066| |AC|1| |L|185914|
A Tailsman of the Eternal Scholar |QID|63860| |N|Auto Accept| |E| |AID|15066| |AC|1|
T Tailsman of the Eternal Scholar |QID|63860| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|1| |NPC|178257|

- //Set 2
N Reputation Required |N|Reach Tier 2 reputation with (fac:2472)<br/><b>Complete Daily quests in {Korthia}<br/><b>Turn-in Relics to (npc:178257)| |Z|1961| |REPR|2472, 3000|
B (item:187614) |QID|63924| |N|Speak to (npc:178257) and buy (item:187614) for 25 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|20| |L|187614|
N (item:187150) |QID|63924| |N|Inside the cave at the back in {Seeker's Quorum} (43.53, 57.38)| |Z|1961| |AID|15066| |AC|20| |L|187150|
A Gorak Claw Fetish |QID|63924| |N|Auto Accept| |E| |AID|15066| |AC|20|
T Gorak Claw Fetish |QID|63924| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|20| |NPC|178257|
B (item:186984) |QID|63909| |N|Speak to (npc:178257) and buy (item:186984) for 25 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|5| |L|186984|
N (item:187047) |QID|63909| |N|In cave behind the portal in {Hope's Ascent} (42.31, 40.93)| |Z|1961| |AID|15066| |AC|5| |L|187047|
A Guise of the Changeling |QID|63909| |N|Auto Accept| |E| |AID|15066| |AC|5|
T Guise of the Changeling |QID|63909| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|5| |NPC|178257|
B (item:187613) |QID|63921| |N|Speak to (npc:178257) and buy (item:187613) for 25 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|17| |L|187613|
N (item:187119) |QID|63921| |N|{Vault of Secrets} (43.79, 76.87)| |Z|1961| |AID|15066| |AC|17| |L|187119|
A Ring of Self-Reflection |QID|63921| |N|Auto Accept| |E| |AID|15066| |AC|17|
T Ring of Self-Reflection |QID|63921| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|17| |NPC|178257|
B (item:187612) |QID|63910| |N|Speak to (npc:178257) and buy (item:187612) for 25 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|6| |L|187612|
N (item:187052) |QID|63910| |N|{Estuary of Awakening} (33.01, 41.91)| |Z|1961| |AID|15066| |AC|6| |L|187052|
A The Netherstar |QID|63910| |N|Auto Accept| |E| |AID|15066| |AC|6|
T The Netherstar |QID|63910| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|6| |NPC|178257|

- //Set 3
N Note |N|(item:186718) can drop from rares even if you don't have Tier 3 reputation with (fac:2472).<br/><b>Other players can also repair Ancient Teleporter<br/><b>Tick this step|
N Reputation Required |N|Reach Tier 3 reputation with (fac:2472)<br/><b>Complete Daily quests in {Korthia}<br/><b>Turn-in Relics to (npc:178257)| |REPR|2472, 7500|
B (item:186718) |QID|63917| |N|Speak to (npc:178257) and buy 4 (item:186718) for 50 (cur:1931) each; totaling 200 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |L|186718 4|
N (item:187103) |QID|63917| |N|Click on Ancient Teleporter (39.51, 52.43)<br/><b>Click on Repaired Portal<br/><b>Kill (npc:179802); this is a group event, look for a group or create one.| |Z|1961| |AID|15066| |AC|13| |NPC|179802| |L|187103|
N (item:187204) |QID|63915| |N|Click on Drum of the Death Loa in {Chamber of Knowledge} (52.33, 34.09)| |Z|1961| |AID|15066| |AC|11| |L|187204|
A Everliving Statuette |QID|63917| |N|Auto Accept| |E| |AID|15066| |AC|13|
A Drum of the Death Loa |QID|63915| |N|Auto Accept| |E| |AID|15066| |AC|11|
T Everliving Statuette |QID|63917| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|13| |NPC|178257|
T Drum of the Death Loa |QID|63915| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|11| |NPC|178257|
N (item:187104) |QID|63918| |N|Click on Ancient Teleporter (45.10, 35.77)<br/><b>Click on Repaired Portal<br/><b>Kill (npc:179859); this is a group event, look for a group or create one.| |Z|1961| |AID|15066| |AC|14| |NPC|179859| |L|187104|
N (item:187205) |QID|63916| |N|Click on Sack of Strange Soil in {Chamber of Wisdom} (55.29, 28.45)| |Z|1961| |AID|15066| |AC|12| |L|187205|
A Obelisk of Dark Tidings |QID|63918| |N|Auto Accept| |E| |AID|15066| |AC|14|
A Sack of Strange Soil |QID|63916| |N|Auto Accept| |E| |AID|15066| |AC|12|
T Obelisk of Dark Tidings |QID|63918| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|14| |NPC|178257|
T Sack of Strange Soil |QID|63916| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|12| |NPC|178257|

- //Set 4
N Note |N|(item:186731) can drop from rares even if you don't have Tier 3 reputation with (fac:2472).<br/><b>Other players can also repair Rift Portal<br/><b>Tick this step|
N Reputation Required |N|Reach Tier 4 reputation with (fac:2472)<br/><b>Complete Daily quests in {Korthia}<br/><b>Turn-in Relics to (npc:178257)| |REPR|2472, 14000|
B (item:186731) |QID|63919| |N|Speak to (npc:178257) and buy 4 (item:186731) for 100 (cur:1931) each; totaling 400 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |L|186731 4|
N (item:187210) |QID|63910| |N|Enter the cave in {Hope's Ascent} (42.25, 40.87)<br/><b>Click on Rift Portal (41.10, 42.24)<br/>While in {The Rift} try to avoid mobs, the buff lasts 15 mins, it should be plenty of time to get all 4 quests needed. If buff timed out, re-enter the rift portal.| |BUFF|136194| |AID|15066| |AC|15|
A Cipher of Understanding |QID|63914| |N|(npc:179922) in {The Rift} (28.90, 54.17)| |Z|1961| |E| |AID|15066| |AC|10| |NPC|179922|
A Enigmatic Decrypting Device |QID|63920| |N|(npc:179968) in {The Rift} (51.93, 52.72)| |Z|1961| |E| |AID|15066| |AC|16| |NPC|179968|
A Unstable Explosive Orb |QID|63913| |N|(npc:179902) in {The Rift} (51.36, 20.18)| |Z|1961| |E| |AID|15066| |AC|9| |NPC|179902|
A Book of Binding The Tormented Sorcerer |QID|63910| |N|(npc:179956) in {The Rift} (60.78, 34.88)| |Z|1961| |AID|15066| |AC|15| |NPC|179956|
N Enter Cave |QID|63910| |N|Exit {The Rift} and enter the cave to {Caverns of Contemplation} (60.16, 32.61)| |Z|1961| |REACH|60.16,32.61| |AID|15066| |AC|15|
N (item:187117) |QID|63910.1| |N|Collect 10 (item:187117) (found on the floor) in {Caverns of Contemplation} (60.04, 30.32)| |Z|2006| |AID|15066| |AC|15| |L|187117 10|
T Cipher of Understanding |QID|63914| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|10| |NPC|178257|
T Enigmatic Decrypting Device |QID|63920| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|16| |NPC|178257|
T Unstable Explosive Orb |QID|63913| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|9| |NPC|178257|
T Book of Binding The Tormented Sorcerer |QID|63910| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|15| |NPC|178257|

- //Set 5
N Reputation Required |N|Reach Tier 5 reputation with (fac:2472)<br/><b>Complete Daily quests in {Korthia}<br/><b>Turn-in Relics to (npc:178257)| |REPR|2472, 25000|
A The Final Relics |QID|64532| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
N Missing Relics |QID|64532.1| |N|Find 3 Missing Relics, they are around the area on chests, tables, ground and shelves, they are highlighted in yellow if you have Outline Mode set to 'Good' or 'High' (62.70, 22.51)| |Z|1961|
B (item:186716) |QID|64532.2| |N|Speak to (npc:178257) and buy (item:186716) for 1,000 (cur:1931) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |L|186716|
N (item:186716) |QID|64532.2| |N|Use (item:186716) (62.70, 22.51)| |Z|1961| |U|186716|
T The Final Relics |QID|64532| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |NPC|178257|
A Shadow Slicing Shortsword |QID|63922| |N|Click on the Phasing Korthian Shrine and follow the path that gets revealed then click on the Shadow Slicing Shortsword (39.34, 42.61) (36.45, 46.19)| |Z|1961| |AID|15066| |AC|18|
A Bulwark of Divine Intent |QID|63908| |N|Click on the Phasing Korthian Shrine and follow the path that gets revealed then click on the Glowing Shield (18.53, 38.13) (17.94, 35.59)| |Z|1961| |AID|15066| |AC|4|
A Lang Family Wood-Carving |QID|63923| |N|Click on the Phasing Korthian Shrine and follow the path that gets revealed then click on the Pandaren Wood Carving (24.36, 56.59) (25.56, 60.41)| |Z|1961| |AID|15066| |AC|19|
T Shadow Slicing Shortsword |QID|63922| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|18| |NPC|178257|
T Bulwark of Devine Intent |QID|63908| |N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|4| |NPC|178257|
T Lang Family Wood-Carving |QID|63923 ||N|(npc:178257) in {Reliquary of Remembrance} (62.70, 22.51)| |Z|1961| |AID|15066| |AC|19| |NPC|178257|
N Guide Complete |N|You earned the (aid:15066) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:15066) achievement]]})
 end

 function Guide:Unload()
 end
end
