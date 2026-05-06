local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Archivist_of_Korthia")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Korthia|r"}, "Archivist of Korthia Questline (60)", nil, nil, nil, "A", "nil", function()
return [[

A A Matter of Urgency |QID|63755| |N|(npc:177155) in {Korthia} (64.34, 22.90)| |Z|1961| |NPC|177155|
N (item:187177) |QID|63731| |N|Collect (item:187177)<br/><b>This item drops from rare spawns and treasures across Korthia<br/><b>Look for star icons and treasure chests on your world map and minimap| |L|187177| |O|
A Researching Korthian Relics |QID|63731| |N|Use (item:187177) to accept quest| |U|187177| |O|

T A Matter of Urgency |QID|63755| |N|(npc:177610) in {Korthia} (56.16, 39.41) (56.25, 38.74)| |Z|1961| |NPC|177610|
A The Last Place You Look |QID|63758| |N|(npc:177610) in {Korthia} (56.25, 38.74)| |Z|1961| |NPC|177610|
A Rescued from Torment |QID|63756| |N|(npc:177610) in {Korthia} (56.25, 38.74)| |Z|1961| |NPC|177610|

T Researching Korthian Relics |QID|63731| |N|(npc:178694) in {Korthia} (58.79, 51.27) (59.06, 58.15)| |Z|1961| |NPC|178694|
A Interrupt the Interrogations |QID|63732| |N|(npc:178694) in {Korthia} (59.06, 58.15)| |Z|1961| |NPC|178694|
K (npc:178727) |QID|63732| |N|Kill (npc:178727) and collect (item:186101)  (60.78, 52.73)| |Z|1961| |NPC|178727|
N Free the Archivist |QID|63732| |N|click Mawsworn Cage to free teherchivist (60.90, 52.59)| |Z|1961|
T Interrupt the Interrogations |QID|63732| |N|(npc:178694) in {Korthia} (59.06, 58.15)| |Z|1961| |NPC|178694|

A Carving Out a Path |QID|63733| |N|(npc:178713) in {Korthia} (59.12, 58.10)| |Z|1961| |NPC|178713|
A The Sundered Staff |QID|63734| |N|(npc:178713) in {Korthia} (59.12, 58.10)| |Z|1961| |NPC|178713|
K (npc:177803) |QID|63734.2| |N|Kill (npc:177803) and collect (item:185759) (49.71, 56.22)| |Z|1961| |NPC|177803|
K (npc:177805) |QID|63734.3| |N|Kill (npc:177805) and collect (item:185760) (45.31, 50.26)| |Z|1961| |NPC|177805|
K (npc:177804) |QID|63734.1| |N|Kill (npc:177804) and collect (item:185735) (45.02, 58.30)| |Z|1961| |NPC|177804|
N (npc:178152) |QID|63756| |N|Rescue 6 (npc:178152) (49.72, 52.92)| |Z|1961| |NPC|178152|
N (item:185915) |QID|63757| |N|Kill enemies around this area until you find collect (item:185915) (49.72, 52.92)| |Z|1961| |L|185915|
A Looting the Looters |QID|63757| |N|Use (item:185915) to accept quest (49.72, 52.92)| |Z|1961| |U|185915|
C Looting the Looters |QID|63757| |N|Kill enemies around this area and find 6 Korthian Artifacts (49.72, 52.92)| |Z|1961|
C Carving Out a Path |QID|63733| |N|Kill 15 Mawsworn enemies around this area (45.33, 53.39)| |Z|1961|
N Search the Chamber of Tranquility |QID|63758| |N|Click objects inside the cave <br/><b>They appear on your minimap as yellow dots (43.43, 57.60) (41.16, 58.39)| |Z|1961|
K (npc:178666) |QID|63758| |N|Kill (npc:178666) inside the cave (42.24, 59.45)| |Z|1961| |NPC|178666|
T Rescued from Torment |QID|63756| |N|(npc:177924), next to you (41.65, 59.86)| |Z|1961| |NPC|177924| |PPOS|
T Looting the Looters |QID|63757| |N|(npc:177924), next to you  (41.65, 59.86)| |Z|1961| |NPC|177924| |PPOS|
T The Last Place You Look |QID|63758| |N|(npc:177924), next to you  (41.65, 59.86)| |Z|1961| |NPC|177924| |PPOS|
A Redirect the Search |QID|63759| |N|(npc:177924), next to you  (41.65, 59.86)| |Z|1961| |NPC|177924| |PPOS|

T Carving Out a Path |QID|63733| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
T The Sundered Staff |QID|63734| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
A An Infusion of Anima |QID|63736| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
A Consulting the Experts |QID|63740| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
N Visit Archivist Roh-Gema |QID|63740.1| |N|click Memorial to Archivist Roh-Gema (35.94, 51.25)| |Z|1961|
N Visit Archivist Roh-Luda |QID|63740.2| |N|click Memorial to Archivist Roh-Luda (35.43, 45.98)  (33.12, 43.12)| |Z|1961|
N Visit Archivist Roh-Kiel |QID|63740.3| |N|click Memorial to Archivist Roh-Kiel (33.86, 48.30) (27.81, 48.33)| |Z|1961|
N Visit Archivist Roh-Mah |QID|63740.4| |N|click Memorial to Archivist Roh-Mah (31.39, 57.71)| |Z|1961|
N Charge the Lodestaff |QID|63736| |N|Kill Ravenous enemies, click Anima fissures around this area and use (item:186157) to charge it(39.42, 51.29)| |Z|1961| |U|186157|
T An Infusion of Anima |QID|63736| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
T Consulting the Experts |QID|63740| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
A Hope Ascending |QID|63739| |N|(npc:177928) in {Korthia} (39.42, 51.29)| |Z|1961| |NPC|177928|
T Hope Ascending |QID|63739| |N|(npc:178991) in {Korthia} (38.04, 45.41) (35.82, 32.18)| |Z|1961| |NPC|178991|
A Finding One's True Purpose |QID|63737| |N|(npc:178991) in {Korthia} (35.82, 32.18)| |Z|1961| |NPC|178991|
N Begin the Ritual |QID|63737| |N|Use the (spell:353188) ability (35.90, 32.17)| |Z|1961|
N Complete the Ritual |QID|63737| |N|Watch the dialogue and don't move while channeling (35.90, 32.17)| |Z|1961|
T Finding One's True Purpose |QID|63737| |N|(npc:178992) in {Korthia} (36.07, 32.32)| |Z|1961| |NPC|178992|
A Establishing the Archive |QID|63738| |N|(npc:178992) in {Korthia} (36.07, 32.32)| |Z|1961| |NPC|178992|

T Redirect the Search |QID|63759| |N|(npc:177610) in {Korthia} (56.84, 22.26)| |Z|1961| |NPC|177610|
A Echoes of Fate |QID|63760| |N|(npc:177610) in {Korthia} (56.84, 22.26)| |Z|1961| |NPC|177610|
A Revenge Delayed |QID|63761| |N|(npc:177850) in {Korthia} (55.54, 22.23)| |Z|1961| |NPC|177850|
N Investigate the Anima Shrine |QID|63760| |N|Click Unbroken Anima Container (56.53, 20.30)| |Z|1961|
N Investigate the Meditation Shrine |QID|63760| |N|Click Unburned Incense (53.76, 21.39)| |Z|1961|
N Investigate the Offering Shrine |QID|63760| |N|Click Small Offering (53.42, 14.72)| |Z|1961|
C Revenge Delayed |QID|63761| |N|Kill 10 Devourers in the Sanctuary of Guidance (54.90, 21.29)| |Z|1961|
T Revenge Delayed |QID|63761| |N|Field turn in| 

T Echoes of Fate |QID|63760| |N|(npc:177610) inside the cave (55.22, 17.18) (56.62, 17.51)| |Z|1961| |NPC|177610|
A Under the Illusion |QID|63762| |N|(npc:177610) inside the cave (56.62, 17.51)| |Z|1961| |NPC|177610|
N Dispel the Illusions |QID|63762| |N|Use (item:185847) inside the cave (56.49, 17.28)| |Z|1961|
K (npc:177243) |QID|63762| |N|Kill (npc:177243)  (56.19, 17.51)| |Z|1961| |NPC|177243|
T Under the Illusion |QID|63762| |N|Field turn in (56.19, 17.51)| |Z|1961|
A They Could Be Anyone |QID|63763| |N|Auto quest (56.19, 17.51)| |Z|1961|
T They Could Be Anyone |QID|63763| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|
T Establishing the Archive |QID|63738| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|
A Beginning the Collection |QID|63861| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|
A Picking Up the Pieces |QID|64289| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|
N (item:185916) |QID|63861| |N|Click Damaged Binding and collect (item:185916) in {Caverns of Contemplation} (41.40, 56.11) (31.77, 40.01)| |Z|2006|
N 50 (item:186685) |QID|64289| |N|Collect 50 (item:186685)<br/><b>They drop from enemies and treasures all over Korthia <br/><b>Rare spawns and elites drop them more frequently than regular mobs| |POI|
T Beginning the Collection |QID|63861| |N|(npc:178257) in {Korthia} (61.83, 21.84) (62.77, 22.60)| |Z|1961| |NPC|178257| 
T Picking Up the Pieces |QID|64289| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|
A Collecting Research |QID|64290| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|
A What Must Be Found |QID|64506| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|

N (npc:178257) |QID|64290| |N|Speak to (npc:178257) to receive the Cataloged Research from Archivist Roh-Suir(62.77, 22.60)| |Z|1961| |NPC|178257|
N Examine the Missing Relic |QID|64506| |N|Click on the items near each waypoints (62.43, 22.68) (62.65, 23.26) (62.71, 23.32) (63.13, 23.06) (62.60, 21.77)| |Z|1961| |count 1
T Collecting Research |QID|64290| |N|(npc:178257) inside the cave (62.77, 22.60)| |Z|1961| |NPC|178257|
T What Must Be Found |QID|64506| |N|(npc:178257) inside the cave (62.77, 22.60)| |Z|1961| |NPC|178257|
A Empowering Equipment |QID|64438| |N|(npc:178257) inside the cave (62.77, 22.60)| |Z|1961| |NPC|178257|
N 750 (cur:1931) |N|Earn 750 (cur:1931) <br/><b>Collect Korthian Relics from rare spawns, treasures, and daily quests in Korthia| |Z|1961| |QID|64438|
N Upgrade a Piece of Korthian Equipment |QID|64438| |N|Speak to (npc:179929) and Upgrade a Piece of Korthian Equipment (62.62, 21.89)| |Z|1961| 
T Empowering Equipment |QID|64438| |N|(npc:178257) in {Korthia} (62.77, 22.60)| |Z|1961| |NPC|178257|

N Guide Complete

]]
end, {description = [[This guide covers catching specific Battle Pets in Shadowlands for (aid:14867)]]})
    end
        
    function Guide:Unload()
    end
end