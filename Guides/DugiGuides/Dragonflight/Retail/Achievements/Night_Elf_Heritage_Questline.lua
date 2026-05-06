local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Night_Elf_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Feats of Strength"}, "Night Elf Heritage Armor", nil, "Alliance", nil, "A", "|SG|UnitLevel([[player]])>=50|", function()
return [[

N Level 50+ Required |N|Level 50 or higher is required to use this guide| |PL|50|

R Stormwind City |QID|75890| |N|Travel to {Stormwind City} (46.33, 90.25)| |Z|84|
A The Clarion Call |QID|75890| |N|Scroll on the table in {Stormwind Embassy} (52.39, 14.16)| |Z|84|
T The Clarion Call |QID|75890| |N|(npc:207353) in {The Wollerton Stead} (52.40, 4.65)| |Z|84| |NPC|207353|
A Ancient Curses |QID|75891| |N|(npc:207353) in {The Wollerton Stead} (52.40, 4.65)| |Z|84| |NPC|207353| |PRE|75890|

R Wildheart Point |N|Travel to {Wildheart Point} (44.27, 61.93)| |Z|77|
N Meet (npc:202702) |QID|75891.1| |N|Meet (npc:202702) in {Jaedenar} (37.49, 60.35)| |Z|77|

T Ancient Curses |QID|75891| |N|(npc:202702) in {Jaedenar} (37.49, 60.35)| |Z|77| |NPC|202702|
A A Grim Portent |QID|76194| |N|(npc:202702) in {Jaedenar} (37.50, 60.33)| |Z|77| |NPC|202702| |PRE|75891|

N (npc:202701) |QID|76194.1| |N|Speak with (npc:202701) in {Jaedenar} (37.50, 60.33)| |Z|77| |NPC|202701|

T A Grim Portent |QID|76194| |N|(npc:202702) in {Jaedenar} (37.50, 60.33)| |Z|77| |NPC|202702|
A Mercy or Misery |QID|76196| |N|(npc:202701) in {Jaedenar} (37.50, 60.33)| |Z|77| |NPC|202701| |PRE|76194|
A Countering Corruption |QID|76195| |N|(npc:202700) in {Jaedenar} (37.50, 60.33)| |Z|77| |NPC|202700| |PRE|76194|

N Mercy or Misery |QID|76196.1| |N|Slay 15 enemies in {Jaedenar} (36.00, 60.22)| |Z|77| |NPC|205905, 205906, 205907, 205910, 205918|
N Countering Corruption |QID|76195.1| |U|207004| |N|Use (item:207004) on 6 Feltouched Satyr corpses in {Jaedenar} (36.15, 59.66)| |Z|77| |NPC|205905, 205906, 205907, 205910, 205918|

T Countering Corruption |QID|76195| |N|(npc:202702) in {Shadow Hold} (36.14, 57.92)| |Z|77| |NPC|202702|
T Mercy or Misery |QID|76196| |N|(npc:202702) in {Shadow Hold} (36.14, 57.92)| |Z|77| |NPC|202702|
A Stepping into the Shadows |QID|76203| |N|(npc:202702) in {Shadow Hold} (36.14, 57.92)| |Z|77| |NPC|202702| |PRE|76196|

N (npc:205945) |QID|76203.1| |N|Speak with (npc:205945) in {Shadow Hold} (36.14, 57.93)| |Z|77| |NPC|205945|
N Stepping into the Shadows |QID|76203.2| |N|Follow (npc:205945) and extinguish 6 Felflame Braziers in {Shadow Hold} (38.62, 54.20)| |Z|77| |NPC|205945|
N Stepping into the Shadows |QID|76203.3| |N|Follow (npc:205945) and discover what lurks in the depths of {Shadow Hold} (38.27, 53.79)| |Z|77| |NPC|205945|

T Stepping into the Shadows |QID|76203| |N|(npc:202702) in {Shadow Hold} (38.08, 53.67)| |Z|77| |NPC|202702|
A A Glimpse of Terror |QID|76197| |N|(npc:202702) in {Shadow Hold} (38.08, 53.67)| |Z|77| |NPC|202702| |PRE|76203|

N (npc:205940) |QID|76197.1| |N|Slay (npc:205940) in {Shadow Hold} (37.88, 52.94)| |Z|77| |NPC|205940|

T A Glimpse of Terror |QID|76197| |N|(npc:202702) in {Shadow Hold} (36.75, 51.61)| |Z|77| |NPC|202702|
A Balancing the Scales |QID|76205| |N|(npc:202702) in {Shadow Hold} (36.75, 51.61)| |Z|77| |NPC|202702| |PRE|76197|
A Heart of the Issue |QID|76206| |N|(npc:202700) in {Shadow Hold} (36.75, 51.61)| |Z|77| |NPC|202700| |PRE|76197|

N Heart of the Issue |QID|76206.1| |N|Close 4 Portals in {Shadow Hold} (39.38, 46.87)| |Z|77|
N Balancing the Scales |QID|76205.1| |N|Enemies slain in {Shadow Hold} until bar reaches (100%) (40.43, 47.58)| |Z|77| |NPC|205934, 205935, 205936, 205937, 205938|

T Balancing the Scales |QID|76205| |N|(npc:202702) in {Shadow Hold} (37.96, 46.26)| |Z|77| |NPC|202702|
T Heart of the Issue |QID|76206| |N|(npc:202701) in {Shadow Hold} (37.96, 46.26)| |Z|77| |NPC|202701|
A Wardens' Wrath |QID|76207| |N|(npc:202701) in {Shadow Hold} (37.96, 46.26)| |Z|77| |NPC|202701|

N (npc:208120) |QID|76207.1| |N|Speak to (npc:208120) in {Shadow Hold} (38.56, 46.82)| |Z|77| |NPC|208120|
N (npc:202700) |QID|76207.2| |N|Defend (npc:202700) in {Shadow Hold} (38.37, 47.59)| |Z|77| |NPC|202700|

T Wardens' Wrath |QID|76207| |N|(npc:202700) in {Jaedenar} (35.95, 58.85)| |Z|77| |NPC|202700|
A A Mark For A Protector |QID|76212| |N|(npc:208151) in {Jaedenar} (35.93, 58.91)| |Z|77| |NPC|208151|

N A Mark For A Protector |QID|76212.1| |N|Click (spell:421556) ExtraActionAbility in {Jaedenar} (35.83, 58.77)| |Z|77|
N A Mark For A Protector |QID|76212.2| |N|Witness the facial marking ceremony in {Jaedenar} (35.81, 58.77)| |Z|77|
N Stormwind City |QID|76212| |N|Click on Portal to Stormwind (35.96, 58.86)| |Z|77| |REACH|46.34,90.23,84|

T A Mark For A Protector |QID|76212| |N|(npc:209141) in {The Wollerton Stead} (52.48, 4.55)| |Z|84| |NPC|209141|
A Honor of the Goddess |QID|76213| |N|(npc:209140) in {The Wollerton Stead} (52.73, 3.94)| |Z|84| |NPC|209140|
T Honor of the Goddess |QID|76213| |N|(npc:209140) in {The Wollerton Stead} (52.73, 3.94)| |Z|84| |NPC|209140|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end