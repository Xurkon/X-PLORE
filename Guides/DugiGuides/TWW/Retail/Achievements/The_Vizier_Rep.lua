local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_The_Vizier")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Reputation|r"}, "The Vizier Reputation", nil, nil, nil, "A", nil, function()
return [[

N Reach Accomplice Reputation |N|Reach Accomplice Reputation with (fac:2607) first<br/><b>Choose (fac:2607) for your weekly pact in Azj-Kahet<br/><b>Complete world quests and activities throughout the week in Azj-Kahet while aligned with The General| |REP|2607, 4|
A Socialized Medicine |QID|83177| |N|(npc:208782) in {Nerub'ar} (52.87,46.02)<br/><b>Inside the building on the upper platform| |Z|2213| |NPC|208782|
N (npc:225723) |QID|83177.1| |N|Dose 6  (npc:225723) in {Nerub'ar} (52.09,47.13)| |Z|2213| |NPC|225723|
T Socialized Medicine |QID|83177| |N|(npc:208782)(npc:208782) in {Nerub'ar} (52.87,46.02)| |Z|2213| |NPC|208782| |NPC|208782|
A Rules and Consequences |QID|83178| |N|(npc:208782) in {Nerub'ar} (52.87,46.02)| |Z|2213| |NPC|208782|
K (npc:225861) |QID|83178.1| |N|Kill (npc:225861) in {Nerub'ar} (52.87,46.02)<br/><b>It will spawn and attack you| |Z|2213| |NPC|225861|
T Rules and Consequences |QID|83178| |N|(npc:208782) in {Nerub'ar} (52.87,46.02)| |Z|2213| |NPC|208782|
N Reach Abettor Reputation |N|Reach Abettor Reputation with (fac:2607) first<br/><b>Choose (fac:2607) for your weekly pact in Azj-Kahet<br/><b>Complete world quests and activities throughout the week in Azj-Kahet while aligned with The General| |REP|2607, 7|
A Knives in the Dark |QID|82954| |N|(npc:208782) in {Nerub'ar} (52.87,46.02)| |Z|2213| |NPC|208782|
A A Cordial Invitation |QID|82953| |N|(npc:208782) in {Nerub'ar} (52.87,46.02)| |Z|2213| |NPC|208782|
K (npc:225213) |QID|82954.4| |N|Kill (npc:225213) in {Nerub'ar} (62.93,22.40)<br/><b>On top of the tower, it will spawn and attack you| |Z|2213| |NPC|225213|
N (npc:225195) |QID|82953.3| |N|Speak to (npc:225195)  in {Nerub'ar} (54.34,16.99)| |Z|2213| |NPC|225195|
K (npc:225209) |QID|82954.1| |N|Kill (npc:225209) in {Nerub'ar}<br/><b>On top of the tower (45.46,13.37)| |Z|2213| |NPC|225209|
N (npc:225246) |QID|82953.1| |N|Speak to (npc:225246) in {Nerub'ar} (19.27,24.43)| |Z|2213|
K (npc:225212) |QID|82954.3| |N|Kill (npc:225212) in {Nerub'ar}<br/><b>On top of the tower (25.44,51.62)| |Z|2213| |NPC|225212|
K (npc:225211) |QID|82954.2| |N|Kill (npc:225211) in {Nerub'ar}<br/><b>On top of the tower (77.76,35.45)| |Z|2213| |NPC|225211|
N (npc:225192) |QID|82953.2| |N|speak to (npc:225192) in {Nerub'ar} (79.58,64.56)| |Z|2213| |NPC|225192|
T Knives in the Dark |QID|82954| |N|(npc:208782) in {Nerub'ar} (54.85,33.36)<br/><b>Inside the building on the upper platform| |Z|2213| |NPC|208782|
T A Cordial Invitation |QID|82953| |N|(npc:208782) in {Nerub'ar} (54.85,33.36)<br/><b>Inside the building on the upper platform| |Z|2213| |NPC|208782|
A The Vizier's Resolve |QID|82955| |N|(npc:225024)  in {Nerub'ar} (54.85,33.37)| |Z|2213| |NPC|225024|
N (npc:225334) |QID|82955.1| |N|Speak to (npc:225334)  in {Nerub'ar} (70.45,39.97)| |Z|2213| |NPC|225334|
N Witness the Vizier's Resolve |QID|82955.2| |N|Watch the dialogue in {Nerub'ar} (70.45,39.97)| |Z|2213|
T The Vizier's Resolve |QID|82955| |N|(npc:225332) in {Nerub'ar} (71.44,42.14)| |Z|2213| |NPC|225332|
N Reach Mastermind Reputation |N|Reach Mastermind Reputation with (fac:2607) first<br/><b>Choose (fac:2607) for your weekly pact in Azj-Kahet<br/><b>Complete world quests and activities throughout the week in Azj-Kahet while aligned with The General| |REP|2607, 9|

N Guide Complete

]]
end, {description = [[This guide will walk you through to complete The Vizier]]})
    end

    function Guide:Unload()
    end
end