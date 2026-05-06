 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Tazavesh_The_Veiled_Market")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r", "|cffffd200Quests|r"}, "Tazavesh The Veiled Market Questline (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |PL|60| |N|You need to be level 60 to accept this quest|
A The Al'ley Cat of Oribos |QID|63976| |N|(npc:156688) in {The Idyllia} (67.09, 50.35)| |Z|1670| |NPC|156688| |E|
T The Al'ley Cat of Oribos |QID|63976| |N|(npc:178908) in {The Idyllia} (67.99, 45.52) (69.93, 40.99) (56.61, 31.16)| |Z|1672| |NPC|178908|
A Insider Trading |QID|63977| |N|(npc:178908) in {The Idyllia} (56.61, 31.16)| |Z|1672| |NPC|178908| |PRE|63976|
A Things Best Kept Dark |QID|63979| |N|(npc:178908) in {The Idyllia} (56.61, 31.16)| |Z|1672| |NPC|178908| |PRE|63976|
N (npc:156768) |QID|63977.4| |N|Speak to (npc:156768) and choose option 'What can you tell me about Cartel So?' in {Hall of Curiosities} (64.20, 68.15)| |Z|1670| |NPC|156768|
N (npc:164100) |QID|63977.1| |N|Speak to (npc:164100) and chosse option 'What can you tell me about Cartel So?' in {The Enclave} (47.85, 73.03)| |Z|1670| |NPC|164100|
N (npc:168011) |QID|63977.2| |N|Speak to (npc:168011) and choose option 'What can you tell me about Cartel So?' in {The Enclave} (34.75, 57.43)| |Z|1670| |NPC|168011|
N (npc:167738) |QID|63977.3| |N|speak to (npc:167738) and choose option 'What can you tell me about Cartel So?' in {Hall of Shapes} (40.52, 32.97)| |Z|1670| |NPC|167738|
N Things Best Kept Dark |QID|63979.1| |N|Click on the Shipping Documents and then kill (npc:178997) in (map:1970) (36.62, 24.72)| |Z|1670| |NPC|178997| |L|186182|
T Insider Trading |QID|63977| |N|(npc:178908) in {The Idyllia} (51.39, 15.03) (52.08, 34.81) (67.97, 45.30) (56.96, 30.92)| |Z|1672| |NPC|178908|
T Things Best Kept Dark |QID|63979| |N|(npc:178908) in {The Idyllia} (56.96, 30.92)| |Z|1672| |NPC|178908|
A Seeking Smugglers |QID|63980| |N|(npc:178908) in {The Idyllia} (56.96, 30.92)| |Z|1672| |NPC|178908| |PRE|63979|
R Wanecrypt Hill |TID|63980| |N|Travel to {Wanecrypt} (47.90, 69.53)| |Z|1525|
T Seeking Smugglers |QID|63980| |N|(npc:160090) in {The Night Market} (51.37, 82.74)| |Z|1525| |NPC|160090|
A Above My Station |QID|63982| |N|(npc:160090) in {The Night Market} (51.37, 82.74)| |Z|1525| |NPC|160090| |PRE|63980|
N Above My Station |QID|63982.1| |N|Walk through the portal to Transfer Station Ta in {The Night Market} (50.98, 81.91)| |Z|1525|
T Above My Station |QID|63982| |N|(npc:158890) in {Transfer Station Ta} (32.52, 32.39)| |Z|1533| |NPC|158890|
A Dead Drop |QID|63983| |N|(npc:158890) in {Transfer Station Ta} (32.52, 32.39)| |Z|1533| |NPC|158890| |PRE|63982|
N Dead Drop |QID|63983.1| |N|Find Export party in {Ta Repository} (37.01, 31.38)| |Z|1533|
N Dead Drop |QID|63983.2| |N|Subdue (npc:178939) and then mount in {Ta Repository} (37.36, 30.18)| |Z|1533| |V| |NPC|178937|
N Dead Drop |QID|63983.3| |N|Return (npc:178942) in {Transfer Station Ta} (32.60, 32.49)<br/><b>A sharp hit on the head! - Use (spell:353092) (Action Button 3)<br/><b>Start pressing buttons! - Use (spell:353088) (Action Button 1)<br/><b>Use the lever, Maw Walker! - Use (spell:353090) (Action Button 2)| |Z|1533| |NPC|178942|
T Dead Drop |QID|63983| |N|(npc:158890) in {Transfer Station Ta} (32.52, 32.41)| |Z|1533| |NPC|158890|
A Coins for the Ferryman |QID|63984| |N|(npc:158890) in {Transfer Station Ta} (32.52, 32.41)| |Z|1533| |NPC|158890| |PRE|63983|
R Oribos |TID|63984| |N|Travel to {Oribos} (60.19, 67.55)| |Z|1671|
T Coins for the Ferryman |QID|63984| |N|(npc:178792) in (map:1670) (41.85, 50.37) (28.83, 50.75) (29.99, 66.39)| |Z|1670| |NPC|178792|
A The Veiled Market |QID|63985| |N|(npc:178792) in (map:1670) (29.99, 66.39)| |Z|1670| |NPC|178792| |PRE|63984|
N |QID|63985.1| |N|Speak to (npc:178792) and choose option 'Take me to Tazavesh.' in (map:1670) (29.99, 66.39)| |Z|1670| |NPC|178792|
N |QID|63985.2| |N|Speak to (npc:179144) and choose option 'I Seek entrance into Tazavesh.' in {The Gilded Landing} (84.44, 47.27)| |Z|2016|
T The Veiled Market |QID|63985| |N|(npc:178908) in {The Gilded Landing} (86.68, 47.89)| |Z|2016| |NPC|178908|
A Tazavesh: Raiders of the Lost Artifact |QID|63986| |N|(npc:178908) in {The Gilded Landing} (86.68, 47.89)| |Z|2016| |NPC|178908| |PRE|63985|
N (npc:177269) |SID||| |N|Kill (npc:177269) on Mythic or higher in {The Opulent Nexus} (9.44, 55.35)| |Z|1989| |NPC|177269| |I| |QID|63986|
T Tazavesh: Raiders of the Lost Artifact |QID|63986| |N|(npc:178908) in {The Gilded Landing} (86.68, 47.89)| |Z|2016| |NPC|178908|
N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (aid:14309) achievement]]})
    end

    function Guide:Unload()
    end
end