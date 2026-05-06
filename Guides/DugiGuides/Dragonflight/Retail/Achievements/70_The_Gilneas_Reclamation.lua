local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_70_The_Gilneas_Reclamation")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Quests|r"}, "The Gilneas Reclamation (70+ Storyline)", nil, nil, nil, "A", "|SG|UnitLevel([[player]])>=70|", function()
return [[

R Valdrakken |QID|78597| |N|Travel to {Valdrakken} (56.94, 38.69)| |Z|2112| |FAC|Horde|
A Clandestine Movements |QID|78597| |N|(npc:212916) on the ground floor in {The Seat of the Aspects} (56.18, 39.54)<br/>If you do not see this quest giver, accept this quest using the Adventurer Guide.<br/><br/><b>Press SHIFT + J.<br/><b>Click on Suggested Content tab.<br/><b>Click on > until you see Gilneas Reclamation.<br/><b>Click on the Accept button.| |Z|2112| |NPC|212916| |FAC|Horde|
R Undercity |QID|78597.1| |N|Take the Ruins of Lordaeron portal (50.79, 55.49)| |Z|85| |REACH|59.89,67.47,2070| |FAC|Horde|
N Meet with Lilian and Calia |QID|78597.1| |N|Speak to (npc:210965) inside the building in {Pyrewood Town Hall} (43.60, 73.23)| |Z|21| |NPC|210965| |FAC|Horde|
T Clandestine Movements |QID|78597| |N|(npc:210964) inside the building in {Pyrewood Town Hall} (43.65, 73.26)| |Z|21| |NPC|210964| |FAC|Horde|
A To Gilneas |QID|78178| |N|(npc:210965) inside the buidling in {Pyrewood Town Hall} (43.59, 73.25)| |Z|21| |NPC|210965| |FAC|Horde|
N (npc:210905) |QID|78178.1| |N|Speak to (npc:210905) travel to {Keel Herbor} (41.69, 72.25)| |Z|21| |NPC|210905| |FAC|Horde|
R Arrive in Gilneas |QID|78178.1| |N|Arrive at {Keel Harbor} (40.89, 35.40)| |Z|21| |NPC|210905| |FAC|Horde|
N (npc:210905) |QID|78178.3| |N|Talk to (npc:210905) in {Keel Harbor} (41.54, 36.09)<br/><b>You can choose option '<color:0000ff>(Skip Conversation)</c> I don't have time for this.' - This will skip roleplay and mark quest complete.| |Z|217| |NPC|210905| |FAC|Horde|
T To Gilneas |QID|78178| |N|(npc:210905) in {Keel Harbor} (41.54, 36.09)| |Z|217| |NPC|210905| |FAC|Horde|

R Valdrakken |QID|78596| |N|Travel to {Valdrakken} (59.56, 41.46)| |Z|2112| |FAC|Alliance|
A Summons to Lord Gerymane |QID|78596| |N|(npc:212899) on the ground floor in {The Seat of the Aspects} (59.11, 42.58)<br/>If you do not see this quest giver, accept this quest using the Adventurer Guide.<br/><br/><b>Press SHIFT + J.<br/><b>Click on Suggested Content tab.<br/><b>Click on > until you see Gilneas Reclamation.<br/><b>Click on the Accept button.| |Z|2112| |NPC|212899| |FAC|Alliance|
N Meet with Genn Greymane |QID|78596.1| |N|Speak to (npc:214538) in {Stormwind Harbor} (35.72, 28.18)| |Z|84| |NPC|214538| |FAC|Alliance|
T Summons to Lord Greymane |QID|78596| |N|(npc:214538) in {Stormwind Harbor} (35.72, 28.18)| |Z|84| |NPC|214538| |FAC|Alliance|
A To Gilneas |QID|78177| |N|(npc:214538) in {Stormwind Harbor} (35.72, 28.18)| |Z|84| |NPC|214538| |FAC|Alliance|
N Let Genn Know You Are Ready |QID|78177.1| |N|Speak to (npc:214538) to travel to (35.66, 28.94)| |Z|84| |FAC|Alliance|
R Arrive in Gilneas |QID|78177.2| |N|Arrive at {Keel Harbor} (41.56, 36.13)| |Z|217| |FAC|Alliance|
N (npc:210905) |QID|78177.3| |N|Talk to (npc:210905) in {Keel Harbor} (41.54, 36.09)<br/><b>You can choose option '<color:0000ff>(Skip Conversation)</c> I don't have time for this.' - This will skip roleplay and mark quest complete.| |Z|217| |NPC|210905| |FAC|Alliance|
T To Gilneas |QID|78177| |N|(npc:210905) in {Keel Harbor} (41.54, 36.09)| |Z|217| |NPC|210905| |FAC|Alliance|

A A Crusade of Red |QID|78180| |N|(npc:210905) in {Keel Harbor} (41.54, 36.09)| |Z|217| |NPC|210905|
A Aderic's Retort |QID|78181| |N|(npc:210904) in {Keel Harbor} (41.61, 36.11)| |Z|217| |NPC|210904|

K (npc:211231) |QID|78181.1| |N|Slay (npc:211231) in {Aderic's Repose} (48.77, 52.86)| |Z|217| |NPC|211231|
K Members of the Scarlet Crusade |QID|78180.1| |N|Slay 10 Members of the Scarlet Crusade in {Aderic's Repose} (48.34, 51.94)| |Z|217| |NPC|210969, 210970, 210972, 210973|

T A Crusade of Red |QID|78180| |N|(npc:212187) in {Aderic's Repose} (49.62, 57.02)| |Z|217| |NPC|212187|
T Aderic's Retort |QID|78181| |N|(npc:212187) in {Aderic's Repose} (49.62, 57.02)| |Z|217| |NPC|212187|
A Knee-High |QID|78182| |N|(npc:212187) in {Aderic's Repose} (49.62, 57.02)| |Z|217| |NPC|212187|

N Clear the Tunnel of Vermin (100%) |QID|78182.1| |N|Use the (spell:424546) ability that appears somewhere on the screen, while walking down tunnel (54.07, 54.59)| |Z|217| |NPC|211275| |POI|

T Knee-High |QID|78182| |N|(npc:210905) in {Gilneas City} (57.09, 53.11)| |Z|217| |NPC|210905|
A Smokepowder and Mirrors |QID|78184| |N|(npc:210905) in {Gilneas City} (57.09, 53.11)| |Z|217| |NPC|210905|
A Scarlet Blood |QID|78183| |N|(npc:210964) in {Gilneas City} (57.10, 53.06)| |Z|217| |NPC|210964|

K 12 Scarlet Forces |QID|78183.1| |N|Slay 12 Scarlet forces in {Gilneas City} (58.63, 55.88)| |Z|217| |NPC|211882, 211884, 211919, 214577, 214580| |POI|
N 8 (item:211248) |QID|78184.1| |N|Click on Scarlet Munitions and collect 8 (item:211248) in {Gilneas City} (56.01, 54.05)| |Z|217| |POI|

T Smokepowder and Mirrors |QID|78184| |N|(npc:213995) in {Gilneas City}| |PPOS| |NPC|213995|
T Scarlet Blood |QID|78183| |N|(npc:213995) in {Gilneas City}| |PPOS| |NPC|213995|
A Hounds of War |QID|78185| |N|(npc:213995) in {Gilneas City}| |PPOS| |NPC|213995|

N Open the Gate to Gilneas |QID|78185.1| |N|Click on Gilneas Gate in {Gilneas City} (55.89, 58.64)| |Z|217|

T Hounds of War |QID|78185| |N|(npc:213995) in {Gilneas City} (55.89, 58.64)| |Z|217| |NPC|213995|
A Artillerist Arsonist |QID|78187| |N|(npc:213995) in {Gilneas City} (55.89, 58.64)| |Z|217| |NPC|213995|
A Crushing the Crusade |QID|78186| |N|(npc:210964) in {Gilneas City} (55.91, 58.17)| |Z|217| |NPC|210964|

K 12 Scarlet Elite |QID|78186.1| |N|Slay 12 Scarlet Elite's in {Gilneas City} (58.64, 44.27)| |Z|217| |NPC|211935, 211936, 211937|
N 6 Explosives Set |QID|78187.1| |N|Click on Bomb Location to set 6 explosives in {Gilneas City} (57.30, 45.74)| |Z|217|

T Artillerist Arsonist |QID|78187| |N|(npc:210905) in {Gilneas City} (59.45, 48.67)| |Z|217| |NPC|210905|
T Crushing the Crusade |QID|78186| |N|(npc:210905) in {Gilneas City} (59.45, 48.67)| |Z|217| |NPC|210905|
A Righteous Fire, Righteous Fury |QID|78188| |N|(npc:210905) in {Gilneas City} (59.45, 48.67)| |Z|217| |NPC|210905|

K (npc:211930) |QID|78188.1| |N|Slay (npc:211930) in {Light's Dawn Cathedral} (61.19, 51.14)| |Z|217| |NPC|211930| |POI|
K (npc:211933) |QID|78188.2| |N|Slay (npc:211933) in {Light's Dawn Cathedral} (61.46, 51.27)| |Z|217| |NPC|211933| |POI|

T Righteous Fire, Righteous Fury |QID|78188| |N|(npc:210905) in {Gilneas City} (58.76, 47.84)| |Z|217| |NPC|210905|
A Beginning a New Dawn |QID|78189| |N|(npc:210904) in {Gilneas City} (58.81, 47.84)| |Z|217| |NPC|210904|
T Beginning a New Dawn |QID|78189| |N|(npc:210905) in {Gilneas City} (58.79, 47.84)| |Z|217| |NPC|210905|

A The Wall Between Us |QID|79137| |N|(npc:210965) in {Gilneas City} (58.87, 48.47)| |Z|217| |NPC|210965| |FAC|Horde|
T The Wall Between Us |QID|79137| |N|(npc:210964) in {Pyrewood Town Hall} (43.63, 73.24)| |Z|21| |NPC|210964| |FAC|Horde|

A What We Left Behind |QID|78190| |N|(npc:210905) in {Gilneas City} (58.75, 47.85)| |Z|217| |NPC|210905| |FAC|Alliance|
T What We Left Behind |QID|78190| |N|(npc:210904) in {Aderic's Repose} (48.80, 52.85)| |Z|217| |NPC|210904| |FAC|Alliance|

N Guide Complete

]]
end, {image = "reclamationofgilneas.tga", description = [[This guide will walk you through completing (aid:19719) achievement]]})
    end

    function Guide:Unload()
    end
end