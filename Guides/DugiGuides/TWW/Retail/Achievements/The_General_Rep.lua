local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_The_General")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Reputation|r"}, "The General Reputation", nil, nil, nil, "A", nil, function()
return [[

N Reach Accomplice Reputation |N|Reach Accomplice Reputation with (fac:2605) first<br/><b>Choose (fac:2605) for your weekly pact in Azj-Kahet<br/><b>Complete world quests and activities throughout the week in Azj-Kahet while aligned with The General| |REP|2605, 4|
A Absent Errand |QID|82338| |N|(npc:224345) in {Azj-Kahet} (55.00,41.26)| |Z|2255| |NPC|224345|
N (npc:224277) |QID|82338.1| |N|speak to (npc:224277) in {Nerub'ar} (42.85,32.03)| |Z|2213| |NPC|224277|
N Listen from Behind a Box |QID|82338.2| |N|click Ordinary Box  in {Nerub'ar} (41.69,33.13)| |Z|2213|
T Absent Errand |QID|82338| |N|(npc:223760) in {Nerub'ar} (40.91,33.55)| |Z|2213| |NPC|223760|
A An Honorless Kill |QID|82339| |N|(npc:223760) in {Nerub'ar} (40.91,33.55)| |Z|2213| |NPC|223760|
K (npc:224308) |QID|82339.2| |N|Kill (npc:224308) and collect (item:225635) in {Nerub'ar} (44.69,40.96)| |Z|2213| |NPC|224308|
N Discover the Cause of Death |QID|82339.1| |N|Click (npc:224308) and discover the Cause of Death in {Nerub'ar} (44.69,40.96)| |Z|2213| |NPC|224308|
T An Honorless Kill |QID|82339| |N|(npc:224345) in {Azj-Kahet} (55.00,41.26)| |Z|2255| |NPC|224345|
N Reach Abettor Reputation |N|Reach Abettor Reputation with (fac:2605) first<br/><b>Choose (fac:2605) for your weekly pact in Azj-Kahet<br/><b>Complete world quests and activities throughout the week in Azj-Kahet while aligned with The General| |REP|2605, 7|
A Demand Satisfaction |QID|82121| |N|(npc:224345)  in {Azj-Kahet} (55.00,41.20)| |Z|2255| |NPC|224345|
N Place the General's Banner |QID|82121.1| |N|Plant Anub'azal's Standard inside the Siegehold in {Azj-Kahet} (46.14,24.82)| |Z|2255|
T Demand Satisfaction |QID|82121| |N|(npc:222788) in {Azj-Kahet} (45.89,24.93)| |Z|2255| |NPC|222788|
A Duel of the Fates |QID|82122| |N|(npc:222788) in {Azj-Kahet} (45.89,24.93)| |Z|2255| |NPC|222788|
N Signal the Start of the Duel |QID|82122.1| |N|Use the "Commence Duel" button on your screen in {Azj-Kahet} (45.89,24.93)| |Z|2255|
K (npc:222895) |QID|82122.2| |N|Kill (npc:222895) in {Azj-Kahet}<br/><b>Kill the enemies that spawn in waves and Vexidal will eventually come out (46.11,24.41)| |Z|2255| |NPC|222895|
T Duel of the Fates |QID|82122| |N|(npc:224547) in {Azj-Kahet} (46.02,24.49)| |Z|2255| |NPC|224547|
A The General's Conviction |QID|82123| |N|(npc:224547) in {Azj-Kahet} (46.02,24.49)| |Z|2255| |NPC|224547|
T The General's Conviction |QID|82123| |N|(npc:207471) in {Azj-Kahet} (55.73,43.84)| |Z|2255| |NPC|207471|

N Guide Complete

]]
end, {image = "undermine.tga", description = [[This guide will walk you through to complete The General Reputation]]})
    end

    function Guide:Unload()
    end
end