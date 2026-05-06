local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_Ready_Midnight")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "The Cult Within", nil, nil, nil, "L", nil, function()
return [[

A The Cult Within |QID|90764| |N|Auto accept in {Dornogal} or {Orgrimmar} (46.00,34.50)| |Z|2339| |FAC|Horde|
A The Cult Within |QID|90759| |N|Auto accept in {Dornogal} or {Stormwind City} (46.00,34.50)| |Z|2339| |FAC|Alliance|

T The Cult Within |QID|90759| |N|(npc:246156) in {Stormwind City} (71.86,59.99)| |Z|84| |FAC|Alliance| |NPC|246156|
A Avoiding Blame |QID|90760| |N|(npc:246156) in {Stormwind City} (71.86,59.99)| |Z|84| |FAC|Alliance| |NPC|246156|
N (npc:246154) |QID|90760.1| |N|Speak to 6 (npc:246154) {Stormwind City} (73.94,62.12)| |Z|84| |FAC|Alliance| |NPC|246154|
T Avoiding Blame |QID|90760| |N|(npc:246156) in {Stormwind City} (71.86,59.99)| |Z|84| |FAC|Alliance| |NPC|246156|
A The Twilight Highlands |QID|90762| |N|(npc:246156) in {Stormwind City} (71.86,59.99)| |Z|84| |FAC|Alliance| |NPC|246156|
R Twilight Highlands |QID|90762.1| |N|Take Umbric's Portal to the Twilight Highlands in {Stormwind City} (71.98,60.14)| |Z|84| |FAC|Alliance|

T The Cult Within |QID|90764| |N|(npc:246158) in {Orgrimmar} (42.14,60.44)| |Z|85| |FAC|Horde| |NPC|246158|
A Avoiding Blame |QID|90761| |N|(npc:246158) in {Orgrimmar} (42.14,60.44)| |Z|85| |FAC|Horde| |NPC|246158|
N (npc:246158) |QID|90761.1| |N|(npc:246158) in {Orgrimmarl} (46.05,55.65)| |Z|86| |FAC|Horde| |NPC|246158|
T Avoiding Blame |QID|90761| |N|(npc:246158) in {Orgrimmar} (42.15,60.44)| |Z|85| |FAC|Horde| |NPC|246158|
A The Twilight Highlands |QID|90763| |N|(npc:246158) in {Orgrimmar} (42.15,60.44)| |Z|85| |FAC|Horde| |NPC|246158|
R Twilight Highlands |QID|90763.1| |N|Take Rommath's Portal to the Twilight Highlands {Orgrimmar} (42.20,60.71)| |Z|85| |FAC|Horde|

T The Twilight Highlands |QID|90762| |N|(npc:237504) in {Twilight Highlands} (49.89,80.74)| |Z|241| |O| |NPC|237504|
T The Twilight Highlands |QID|90763| |N|(npc:237504) in {Twilight Highlands} (49.89,80.74)| |Z|241| |O| |NPC|237504|
A Midnight Dress |QID|90765| |N|(npc:237504) in {Twilight Highlands} (49.89,80.74)| |Z|241| |NPC|237504|

K (npc:246282) |QID|90765.2| |N|Kill (npc:246282) and collect (item:246400)  {Twilight Highlands} (46.74,72.81)| |Z|241| |NPC|246282|
N (item:246398)  |QID|90765.3| |N|Click Overtaken Voidcaster collect (item:246398) {Twilight Highlands} (47.19,72.88)| |Z|241|
N (item:246399) |QID|90765.4| |N|click Cultist Dagger and collect (item:246399), inside the building {Twilight Highlands} (46.55,71.97)| |Z|241|

T Midnight Dress |QID|90765| |N|(npc:246021) in {Twilight Highlands} (46.41,72.03)| |Z|241| |NPC|246021|
A Xal'atath's Proven Faithful |QID|90766| |N|(npc:246021) in {Twilight Highlands} (46.41,72.03)| |Z|241| |NPC|246021|
C Xal'atath's Proven Faithful |QID|90766.1| |N|Talk to NPCs to defeat them in combat and click various objects around this area {Twilight Highlands} (46.79,68.31)| |Z|241| |NPC|135793, 135794|
T Xal'atath's Proven Faithful |QID|90766| |N|(npc:246022) in {Twilight Highlands} (52.19,70.78)| |Z|241| |NPC|246022|
A More Doom |QID|90767| |N|(npc:246022) in {Twilight Highlands} (52.19,70.78)| |Z|241| |NPC|246022|

N Find the Basement |QID|90767.1| |N|Find the Basement downstairs inside the building. {Twilight Highlands} (52.85,69.51)| |Z|241|
N 2 (item:250465) |QID|90767.2| |N|Click Inert Shadow Crystal and collect 2 (item:250465) {Twilight Highlands} (52.85,69.51)| |Z|241|
N Place the Shadow Crystal |QID|90767.3| |N|click Shadow Crystal downstairs inside the building {Twilight Highlands} (52.96,69.59)  (52.81,69.78)| |Z|241|

T More Doom |QID|90767| |N|(npc:246025) in {Twilight Highlands} (52.42,70.46)| |Z|241| |NPC|246025|
A Cult It Out |QID|90768| |N|(npc:246025) in {Twilight Highlands} (52.42,70.46)| |Z|241| |NPC|246025|
K (npc:246023) |QID|90768.2| |N|Kill (npc:246023) in {Twilight Highlands} (52.93,74.30)| |Z|241| |NPC|246023|
K (npc:46183) |QID|90768.1| |N|Kill 12 (npc:46183) in {Twilight Highlands} (52.83,72.11) (49.85,70.54)| |Z|241| |NPC|46183|
T Cult It Out |QID|90768| |N|(npc:237504) in {Twilight Highlands} (49.89,80.73)| |Z|241| |NPC|237504|

N Guide Complete

]]
end, {image = "karesh.tga", description = [[This guide will walk you through to complete The Cult Within Midnight Pre-Patch quest and unlock title (spell:1243738)]]})
    end

    function Guide:Unload()
    end
end