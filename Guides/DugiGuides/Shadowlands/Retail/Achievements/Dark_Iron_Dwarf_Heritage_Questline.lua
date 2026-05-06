local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Dark_Iron_Dwarf_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Feats of Strength|r"}, "Dark Iron Dwarf Heritage Questline - (Weapon & Mount)", nil, "Alliance", nil, "A", "nil", function()
return [[

N Boosted Character |N|You boosted your character, you can't continue.| |R|DarkIronDwarf| |PRE|35266|
N Level 50 |N|Level 50 is required.| |PL|50| |R|DarkIronDwarf| |OID|35266|
N Prerequisite |QID|51483| |N|You will need to complete (qid:51483) which will give (aid:13076) achievement.| |R|DarkIronDwarf| |OID|35266|

-- Arsenal: Lavaforge Armaments - Axe
R Shadowforge City |TID|63494| |N|Travel to {Shadowforge City} (61.43, 24.34)| |Z|1186| |OID|35266|
A The Anvil-Thane's Designs |QID|63494| |N|(npc:144154), in {Shadowforge City} (57.22, 31.76)| |Z|1186| |NPC|144154| |R|DarkIronDwarf| |OID|35266|
T The Anvil-Thane's Designs |QID|63494| |N|(npc:176828), in {The Grim Guzzler} (60.52, 25.55) (63.52, 21.78) (66.82, 26.58) (60.11, 31.07) (56.47, 27.16) (53.19, 32.15) (53.76, 33.69) (51.72, 33.14)| |Z|1186| |NPC|176828| |R|DarkIronDwarf| |OID|35266|
A Brawl or Brew |QID|63498| |N|(npc:176828), in {The Grim Guzzler} (51.72, 33.14)| |Z|1186| |NPC|176828| |R|DarkIronDwarf| |OID|35266| |PRE|63494|
N Brawl or Brew |QID|63498.1| |N|Choose Brawl or brew, in {The Grim Guzzler} (51.72, 33.14)<br/><b>If you chose Brawl, fight her.<br/><b>if you chose Brew, Click on Brew on the table and defeat her in a drinking contest.| |Z|1186| |NPC|176828| |R|DarkIronDwarf| |OID|35266|
N Brawl or Brew |QID|63498.2| |N|Defeated (npc:176828), in {The Grim Guzzler} (51.68, 33.13)| |Z|1186| |NPC|176828| |R|DarkIronDwarf| |OID|35266|
T Brawl or Brew |QID|63498| |N|(npc:176828), in {The Grim Guzzler} (51.68, 33.13)| |Z|1186| |NPC|176828| |R|DarkIronDwarf| |OID|35266|
A It's Called Borrowing |QID|63501| |N|Auto quest| |PPOS| |R|DarkIronDwarf| |OID|35266| |PRE|63498|
N (item:184916) |QID|63501.2| |N|Kill (npc:176995) and collect (item:184916), in {The Grim Guzzler} (52.94, 36.15) (50.64, 37.98) (47.75, 31.73) (48.70, 29.30)| |Z|1186| |NPC|176995| |L|184916| |R|DarkIronDwarf| |OID|35266|
N 5 (item:184915) |QID|63501.1| |N|Collect (item:184915), in {Hall of Crafting} (62.12, 19.23)| |Z|1186| |POI| |L|184915 5| |R|DarkIronDwarf| |OID|35266|
N (item:184917) |QID|63501.3| |N|Speak to (npc:144119) and choose option 'I need Thurgaden's Flamepoint Engraver', in {Shadowforge City} (47.77, 46.70)| |Z|1186| |NPC|144119| |L|184917| |R|DarkIronDwarf| |OID|35266|
T It's Called Borrowing |QID|63501| |N|(npc:144154), in {Shadowforge City} (57.14, 31.91)| |Z|1186| |NPC|144154| |R|DarkIronDwarf| |OID|35266|
A Weapons o' the Dark Iron |QID|63502| |N|(npc:144154), in {Shadowforge City} (57.14, 31.91)| |Z|1186| |NPC|144154| |R|DarkIronDwarf| |OID|35266| |PRE|63501|
N Weapons o' the Dark Iron |QID|63502.1| |N|Speak to (npc:144154), in {Shadowforge City} (57.14, 31.91)| |Z|1186| |NPC|144154| |R|DarkIronDwarf| |OID|35266|
N Weapons o' the Dark Iron |QID|63502.2| |N|Click on Darkforged Ingot, in {Shadowforge City} (56.85, 31.10)| |Z|1186| |R|DarkIronDwarf| |OID|35266|
N Weapons o' the Dark Iron |QID|63502.3| |N|Watch (npc:144154) forge the weapon, in {Shadowforge City} (56.85, 31.10)| |Z|1186| |R|DarkIronDwarf| |OID|35266|
T Weapons o' the Dark Iron |QID|63502| |N|(npc:144154), in {Shadowforge City} (57.05, 31.82)| |Z|1186| |NPC|144154| |R|DarkIronDwarf| |OID|35266|

-- Grimhowl's Face Axe - Mount
A Delivery for Kasea |QID|65563| |N|(npc:144154), in {Shadowforge City} (57.05, 31.82)| |Z|1186| |NPC|144154| |R|DarkIronDwarf| |OID|35266| |PRE|63502|
T Delivery for Kasea |QID|65563| |N|(npc:144119), in {Shadowforge City} (47.85, 46.48)| |Z|1186| |NPC|144119| |R|DarkIronDwarf| |OID|35266|
A Good Fiery Boy |QID|65564| |N|(npc:144119), in {Shadowforge City} (47.85, 46.48)| |Z|1186| |NPC|144119| |R|DarkIronDwarf| |OID|35266| |PRE|65564|
N Good Fiery Boy |QID|65564.2| |N|Click on the Blackrock Ball and click in a distance, wait for (npc:185305) to pick it up and drop it, and then do this again, in {Shadowforge City} (47.23, 47.66)| |NPC|185305 |Z|1186| |R|DarkIronDwarf| |OID|35266|
N Good Fiery Boy |QID|65564.1| |N|Click on (npc:185305), in {Shadowforge City} (47.19, 47.76)| |Z|1186| |NPC|185305| |R|DarkIronDwarf| |OID|35266|
N Good Fiery Boy |QID|65564| |N|Collect 4 (item:190606) from crates, in {Shadowforge City} (47.19, 47.76)| |Z|1186| |POI| |L|190606 4| |R|DarkIronDwarf| |OID|35266|
N Good Fiery Boy |QID|65564.3| |N|Use (item:190606) on (npc:185305), in {Shadowforge City} (47.04, 47.82)| |Z|1186| |NPC|185305| |R|DarkIronDwarf| |OID|35266|
N Good Fiery Boy |QID|65564.4| |N|Click on the (spell:367727) ability that appears somewhere on the screen, in {Shadowforge City} (47.04, 47.82)| |Z|1186| |R|DarkIronDwarf| |OID|35266|
T Good Fiery Boy |QID|65564| |N|(npc:144119), in {Shadowforge City} (47.61, 47.01)| |Z|1186| |NPC|144119| |R|DarkIronDwarf| |OID|35266|

N Guide Complete

]]
end, {description = [[This guide will walk you through completing the (qid:63502) questline]]})
   end

   function Guide:Unload()
   end
end
