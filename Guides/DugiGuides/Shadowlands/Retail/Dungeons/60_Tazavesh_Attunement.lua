local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Shadowlands_60_Tazavesh_Attunement")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "Tazavesh Dungeon Attunement Questline (60)", nil, nil, nil, "I", nil, function()
return [[

A  The Al'ley Cat of Oribos |QID|63976| |N|(npc:156688) in {Oribos} (67.47,50.32)| |Z|1670| |NPC|156688|

T  The Al'ley Cat of Oribos |QID|63976| |N|(npc:178908) in {Oribos} (56.67,31.83)| |Z|1672| |NPC|178908|
A  Insider Trading |QID|63977| |N|(npc:178908) in {Oribos} (56.67,31.83)| |Z|1672| |NPC|178908|
A  Things Best Kept Dark |QID|63979| |N|(npc:178908) in {Oribos} (56.67,31.83)| |Z|1672| |NPC|178908|

N (npc:156768) |QID|63977.4| |N|Speak to (npc:156768) in {Oribos} (64.39,68.34)| |Z|1670| |NPC|156768|
N (npc:164100) |QID|63977.1| |N|Speak to (npc:164100) in {Oribos} (47.73,72.63)| |Z|1670| |NPC|164100|
N (npc:168011) |QID|63977.2| |N|Speak to (npc:168011) in {Oribos} (34.46,57.46)| |Z|1670| |NPC|168011|
N (npc:167738) |QID|63977.3| |N|Speak to (npc:167738) in {Oribos} (40.33,32.64)| |Z|1670| |NPC|167738|
K (npc:178997) |QID|63979.1| |N|Kill (npc:178997) and collect (item:186182)<br/><b>It will attack after clicking the documents<br/><b>Don't stand in yellow patches on the ground (52.15,25.06) (38.48,25.30)| |Z|1670| |NPC|178997|

T  Insider Trading |QID|63977| |N|(npc:178908) in {Oribos} (73.47,50.21) (56.67,31.83)| |Z|1672| |NPC|178908|
T  Things Best Kept Dark |QID|63979| |N|(npc:178908) in {Oribos} (56.67,31.83)| |Z|1672| |NPC|178908|
A  Seeking Smugglers |QID|63980| |N|(npc:178908) in {Oribos} (56.67,31.83)| |Z|1672| |NPC|178908|

R Revendreth |OID|63982| |N|Travel to {Revendreth} (51.34,82.71)| |Z|1525|
T  Seeking Smugglers |QID|63980| |N|(npc:160090) in {Revendreth} (51.34,82.71)| |Z|1525| |NPC|160090|
A  Above My Station |QID|63982| |N|(npc:160090) in {Revendreth} (51.34,82.71)| |Z|1525| |NPC|160090|

R Transfer Station Ta |QID|63982.1| |N|Take the Portal to Transfer Station Ta (50.99,81.88)| |Z|1525|
T  Above My Station |QID|63982| |N|(npc:158890) in {Bastion} (32.52,32.35)| |Z|1533| |NPC|158890|
A  Dead Drop |QID|63983| |N|(npc:158890) in {Bastion} (32.52,32.35)| |Z|1533| |NPC|158890|

N Find the Export Party |QID|63983.1| |N|Enter the building and Find the Export Party (36.94,31.61) (37.11,30.93)| |Z|1533|
K (npc:178937) |QID|63983.2| |N|Kill (npc:178937) inside the building (37.37,29.96)| |Z|1533| |NPC|178937|
N (npc:178938) |N|Mount (npc:178938) (37.36,30.01) |QID|63983| |Z|1533| |V| |NPC|178938|
N Return the Prototype Aquilon |QID|63983.3| |N|Pay attention to the instructions in your chat box and use the button that matches the instructions given| 

T  Dead Drop |QID|63983| |N|(npc:158890) in {Bastion} (32.52,32.35)| |Z|1533| |NPC|158890|
A  Coins for the Ferryman |QID|63984| |N|(npc:158890) in {Bastion} (32.52,32.35)| |Z|1533| |NPC|158890|

R Oribos |QID|63985| |N|Travel to {Oribos} (29.86,66.60)| |Z|1670| 
T  Coins for the Ferryman |QID|63984| |N|(npc:178792) in {Oribos} (29.86,66.60)| |Z|1670| |NPC|178792|
A  The Veiled Market |QID|63985| |N|(npc:178792) in {Oribos} (29.86,66.60)| |Z|1670| |NPC|178792|
N Jump in the Barge |invehicle |N|Speak to (npc:178792) and select "Take me to Tazavesh" (29.86,66.60) |QID|63985| |Z|1670| |V| |NPC|178792| 
N (npc:179144) |QID|63985.2| |N|Speak to (npc:179144) in {The Gilded Landing} (84.11,47.29)| |Z|2016| |NPC|179144|
T  The Veiled Market |QID|63985| |N|(npc:178908) in {The Gilded Landing} (86.68,48.46)| |Z|2016| |NPC|178908|
A  Tazavesh: Raiders of the Lost Artifact |QID|63986| |N|(npc:178908) in {The Gilded Landing} (86.68,48.46)| |Z|2016| |NPC|178908|
K (npc:180863) |QID|63986.1| |N|Kill (npc:180863) in {Tazavesh, the Veiled Market} (33.60,53.03)| |Z|1993| |NPC|180863|
T  Tazavesh: Raiders of the Lost Artifact |QID|63986| |N|(npc:178908) in {The Gilded Landing} (84.11,47.29)| |Z|2016| |NPC|178908|

N Guide Complete

]]
end)	end

    function Guide:Unload()
    end
end
