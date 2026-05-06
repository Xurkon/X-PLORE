local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_The_Weaver")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Reputation|r"}, "The Weaver Reputation", nil, nil, nil, "A", nil, function()
return [[

N Reach Abettor Reputation |N|Reach Abettor Reputation with (fac:2601) first<br/><b>Choose (fac:2601) for your weekly pact in Azj-Kahet<br/><b>Complete world quests and activities throughout the week in Azj-Kahet while aligned with The General| |REP|2601, 7|
A Tinker, Tailor, Soldier, Spider |QID|79532| |N|(npc:207471) in {Azj-Kahet} (55.74,43.84)| |Z|2255| |NPC|207471|
N Gather the Information |QID|79532.1| |N|Speak to (npc:217467), (npc:225569) and (npc:225580)  to gather the Information in {Nerub'ar} (48.19,12.42) (50.68,14.82) (58.29,32.75)| |Z|2213| |NPC|217467, 225569, 225580|
K (npc:225580) |QID|79532.1| |N|Kill (npc:225580)  in {Nerub'ar} (64.06,22.19)| |Z|2213| |NPC|225580|
T Tinker, Tailor, Soldier, Spider |QID|79532| |N|(npc:227428) in {Nerub'ar} (63.32,11.74)<br/><b>Hanging underneath the platform| |Z|2213| |NPC|227428|
A Wine and Die |QID|79627| |N|(npc:227428) in {Nerub'ar} (63.32,11.74)<br/><b>Hanging underneath the platform| |Z|2213| |NPC|227428|
N (item:213538) |QID|79627.1| |QID|79627.1| |N|Click Cache of Expensive Libations and collect (item:213538) in {Nerub'ar}<br/><b>You can skip this  and pay 1,000 gold talking to the NPC on the next if desired. (78.00,53.00)| |Z|2213|
N (npc:222139) |QID|79627.2| |N|Speak to (npc:222139)  in {Nerub'ar} (62.10,20.70)| |Z|2213| |NPC|222139|
T Wine and Die |QID|79627| |N|(npc:216298)  in {Nerub'ar} (62.93,22.86)| |Z|2213| |NPC|216298|
A The Weaver's Legacy |QID|79633| |N|(npc:216298) in {Nerub'ar} (62.93,22.86)| |Z|2213| |NPC|216298|
N (npc:216298) |QID|79633.1| |N|Escort (npc:216298) in {Nerub'ar} (62.05,13.78)| |Z|2213| |NPC|216298|
T The Weaver's Legacy |QID|79633| |N|(npc:207471)  in {Azj-Kahet} (55.75,43.86)| |Z|2255| |NPC|207471|

N Guide Complete

]]
end, {description = [[This guide will walk you through to complete The Weaver Reputation]]})
    end

    function Guide:Unload()
    end
end