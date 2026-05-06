local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Human_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Feats of Strength"}, "Orc Heritage Armor", nil, "Horde", nil, "A", "|SG|UnitLevel([[player]])>=50|", function()
return [[

N Level 50 Required |N|You need to be at least Level 50 to use this guide.| |PL|50| |R|Orc|
N Earn Exalted status with (fac:76) |N|Earn Exalted with (fa:76)<br/>Buy and equip (item:45581) and enter Vanilla, Outlands, Northrend or Cataclysm dungeons on normal and heroic difficulty with the (item:45574) tabard on until you reach Exalted<br/><b>Mobs respawn in heroic dungeons, you will lose 20+ rep per boss because they are the ones on a lockout| |REPR|76, 42000| |R|Orc|

R Orgrimmar |TID|72402| |N|Travel to {Orgrimmar} (57.10, 89.81)| |Z|85| |R|Orc|
A A People in Need of Healing |QID|72462| |N|(npc:3144) in {Grommash Hold} (49.11, 72.18)| |Z|85| |NPC|3144| |R|Orc|

R Alterac Valley |QID|72462.1| |N|Use the Portal to Alterac Valley in {Valley of Strength} (51.15, 78.90)| |Z|85| |F|2162| |R|Orc|
C Follow Eitrigg to the Hall of the Frostwolf |QID|72462| |SID|56805| |N|Follow (npc:199053) in {Hall of the Frostwolf} (47.40, 87.23)| |Z|2162| |NPC|199053| |R|Orc|
C Talk to Drek'Thar |QID|72462| |SID|57996| |N|Speak to (npc:199136) in {Hall of the Frostwolf} (47.16, 86.92)| |Z|2162| |NPC|199136| |R|Orc|
C Discuss the Kosh'harg with Drek'thar |QID|72462| |SID|56806| |N|Speak to (npc:199136) in {Hall of the Frostwolf} (47.26, 87.21)| |Z|2162| |NPC|199136| |R|Orc|
C Totems Placed |QID|72462| |SID|57997| |N|Click the totems around you in {Hall of the Frostwolf} (47.51, 87.23)| |Z|2162| |R|Orc|
C Talk to Drek'thar to Begin |QID|72462| |SID|57998| |N|Speak to (npc:199136) in {Hall of the Frostwolf} (47.15, 86.93)| |Z|2162| |NPC|199136| |R|Orc|
C Duros Defeated |QID|72462| |SID|57827| |N|Defeat (npc:199138) in {Hall of the Frostwolf} (47.42, 87.00)| |Z|2162| |NPC|199138| |R|Orc|
C Drakan Defeated |QID|72462| |SID|56808| |N|Defeat (npc:199139) in {Hall of the Frostwolf} (47.42, 87.00)| |Z|2162| |NPC|199139| |R|Orc|
C Defeat the Elemental Projection |QID|72462| |SID|57999| |N|Defeat (npc:201615) in {Hall of the Frostwolf} (47.32, 86.84)| |Z|2162| |NPC|201615| |R|Orc|
C Talk to Thrall |QID|72462| |QID|72462| |SID|56807| |N|Speak to (npc:199140) in {Hall of the Frostwolf} (47.38, 86.83)| |Z|2162| |NPC|199140| |R|Orc|
N A People in Need of Healing |QID|72462.2| |N|Click on the (spell:395792) that appears on the screen in {Hall of the Frostwolf} (47.32, 86.84)| |Z|2162| |R|Orc|

T A People in Need of Healing |QID|72462| |N|(npc:200244) in {The Broken Tusk} (54.45, 78.43)| |Z|85| |NPC|200244| |R|Orc|
A The Kosh'harg |QID|72464| |N|(npc:200244) in {The Broken Tusk} (54.45, 78.43)| |Z|85| |NPC|200244| |R|Orc|

R Razor Hill |QID|72464.1| |V| |N|Mount on (npc:200266) in {Valley of Strength} (51.99, 78.97)| |Z|1| |REACH|52.42,41.11,1| |NPC|200266| |R|Orc|
N (npc:199148) |QID|72464.2| |N|Talk to (npc:199148) to begin the Om'gora in {Razor Hill} (52.23, 42.91)| |Z|1| |NPC|199148| |R|Orc|

T The Kosh'harg |QID|72464| |N|(npc:199148) in {Razor Hill} (52.24, 42.94)| |Z|1| |NPC|199148| |R|Orc|
A The Blessing of the Land |QID|72465| |N|(npc:199148) in {Razor Hill} (52.24, 42.94)| |Z|1| |NPC|199148| |R|Orc|
A The Blessing of the Clan |QID|72467| |N|(npc:199148) in {Razor Hill} (52.24, 42.94)| |Z|1| |NPC|199148| |R|Orc|
A The Blessing of the Ancestors |QID|72476| |N|(npc:199148) in {Razor Hill} (52.24, 42.94)| |Z|1| |NPC|199148| |R|Orc|
T The Blessing of the Ancestors |QID|72476| |N|(npc:199383) in {Razor Hill} (50.79, 42.77)| |Z|1| |NPC|199383| |R|Orc|
A An Important Heirloom |QID|74374| |N|(npc:199383) in {Razor Hill} (50.79, 42.77)| |Z|1| |NPC|199383| |R|Orc|

N An Important Heirloom |QID|74374.1| |N|Click on the Old Cookbook in {Razor Hill} (51.64, 41.28)| |Z|1| |R|Orc|

T An Important Heirloom |QID|74374| |N|(npc:199383) in {Razor Hill} (50.78, 42.76)| |Z|1| |NPC|199383| |R|Orc|
A Orcish Groceries |QID|72477| |N|(npc:199383) in {Razor Hill} (50.78, 42.76)| |Z|1| |NPC|199383| |R|Orc|

N Read "Spoons and Forks" |QID|72477.1| |N|Click on the Spoons and Forks book on the table in {Razor Hill} (50.78, 42.76)| |Z|1| |R|Orc|
N Crate of Crabs |QID|72477.2| |N|Click on the Crate of Crabs and then click on 2 (npc:199223) in {Razor Hill} (51.31, 43.99)| |Z|1| |NPC|199223| |R|Orc|
B (item:202031) |QID|72477.3| |N|Speak to (npc:199237) and buy 2 (item:202031) Farahlon Fenugreek, in {Razor Hill} (50.87, 41.54)| |Z|1| |NPC|199237| |R|Orc|
B (item:202707) |QID|72477.4| |N|Speak to (npc:199235) and buy 2 (item:202707) in {Razor Hill} (51.12, 44.10)| |Z|1| |NPC|199235| |R|Orc|
B (item:202028) |QID|72477.5| |N|Speak to (npc:199221) and buy 3 (item:202028) in {Razor Hill} (51.53, 43.80)| |Z|1| |NPC|199221| |R|Orc|
B (item:202029) |QID|72477.6| |N|Speak to (npc:199235) and buy 3 (item:202029) in {Razor Hill} (51.12, 44.10)| |Z|1| |NPC|199235| |R|Orc|
B (item:204793) |QID|72477.7| |N|Speak to (npc:199235) and buy 3 (item:204793) in {Razor Hill} (51.12, 44.10)| |Z|1| |NPC|199235| |R|Orc|
B (item:202030) |QID|72477.8| |N|Speak to (npc:199237) and buy 3 (item:202030) in {Razor Hill} (50.87, 41.54)| |Z|1| |NPC|199237| |R|Orc|
B (item:202706) |QID|72477.9| |N|Speak to (npc:199237) and buy 3 (item:202706) in {Razor Hill} (50.87, 41.54)| |Z|1| |NPC|199237| |R|Orc|
B (item:202027) |QID|72477.10| |N|Speak to (npc:199262) and buy 3 (item:202027) in {Razor Hill} (50.75, 43.23)| |Z|1| |NPC|199262| |R|Orc|
N (item:202025) |QID|72477.11| |N|Speak to (npc:199206) to collect (item:202025) in {Razor Hill} (51.23, 42.46)| |Z|1| |NPC|199206| |R|Orc|

T Orcish Groceries |QID|72477| |N|(npc:201361) in {Razor Hill} (50.89, 42.68)| |Z|1| |NPC|201361| |R|Orc|
A A Worthy Offering |QID|74415| |N|(npc:201361) in {Razor Hill} (50.89, 42.68)| |Z|1| |NPC|201361| |R|Orc|

N (spell:399038) |CO| |N|Use (spell:264632) and change filter to Classic and then cook 3 (item:202710) (50.89, 42.68)| |Z|1| |QID|74415.1| |R|Orc|
N (spell:399035) |CO| |N|Use (spell:264632) and change filter to Classic and then cook 3 (item:202709) (50.89, 42.68)| |Z|1| |QID|74415.2| |R|Orc|
N (spell:399034) |CO| |N|Use (spell:264632) and change filter to Classic and then cook 2 (item:202708) (50.89, 42.68)| |Z|1| |QID|74415.3| |R|Orc|
N (spell:399040) |CO| |N|Use (spell:264632) and change filter to Classic and then cook 1 (item:202032) (50.89, 42.68)| |Z|1| |QID|74415.4| |R|Orc|
N Feast for the Ancestors Placed |QID|74415.5| |N|Click on the Feast for the Ancestors, in {Razor Hill Outskirts} (53.12, 45.69)| |Z|1| |R|Orc|

T A Worthy Offering |QID|74415| |N|(npc:199148) in {Razor Hill} (52.23, 42.95)| |Z|1| |NPC|199148| |R|Orc|

N Choose a Clan |QID|72467.1| |N|Choose a clan in {Razor Hill Barracks} (53.97, 42.44)<br/><b>Speak to (npc:199173) for the Frostwolf Clan<br/><b>Speak to (npc:200617) for the Blackrock Clan<br/><b>Speak to (npc:200616) for the Bleeding Hollow Clan<br/><b>Speak to (npc:199154) for the Warsong Clan<br/><b>Speak to (npc:199156) for the Dragonmaw Clan<br/><b>Speak to (npc:199151) for the Shattered Hand Clan| |Z|1| |NPC|199173, 200617, 200616, 199154, 199156, 199151| |R|Orc|

T The Blessing of the Clan |QID|72467| |N|(npc:199148) in {Razor Hill} (52.24, 42.93)| |Z|1| |NPC|199148| |R|Orc|
A The Long Knives |QID|74581| |N|Your clan representative in {Razor Hill} (52.27, 42.96)| |Z|1| |NPC|199173, 200617, 200616, 199154, 199156, 199151| |R|Orc|

R Valley of Trials |TID|74581| |N|Travel to {Valley of Trials} (69.19, 66.09)| |Z|461| |R|Orc|
T The Long Knives |QID|74581| |N|(npc:10176) in {Valley of Trials} (45.24, 68.16)| |Z|461| |NPC|10176| |R|Orc|
A Tracking a Killer |QID|72474| |N|(npc:10176) in {Valley of Trials} (45.24, 68.16)| |Z|461| |NPC|10176| |R|Orc|

N Clues Found |QID|72474.1| |N|<b>Speak to (npc:200734) (54.18,62.28,461, "Karranisha")<br/><b>Walk up to (npc:199178) (45.84,63.69,461, "Dead Peon")<br/><b>Speak to (npc:199179) (52.20,68.34,461, "Terrified Peon")<br/><b>Walk up to (npc:199183) (49.88,60.34,461, "Injured Adventurer")<br/><b>Click on Beast Tracks (54.18,62.28,461, "Beast Tracks")| |Z|461| |NPC|200734, 199178, 199179, 199183, 200752| |R|Orc|

A Galgar's Cactus Apple Surprise... |QID|72463| |N|(npc:200760) in {Valley of Trials} (49.88, 60.34)| |Z|461| |NPC|200760| |R|Orc|

N (item:202402) |QID|72463.1| |N|Click on Bag of Cactus Apples in {Valley of Trials} (49.88, 60.34)| |Z|461| |R|Orc|

T Galgar's Cactus Apple Surprise... |QID|72463| |N|(npc:9796) in {Valley of Trials} (43.05, 62.70)| |Z|461| |NPC|9796| |R|Orc|
T Tracking a Killer |QID|72474| |N|(npc:10176) in {Valley of Trials} (45.11, 68.56)| |Z|461| |NPC|10176| |R|Orc|
A Cornering Gor'krosh |QID|72475| |N|(npc:10176) in {Valley of Trials} (45.11, 68.56)| |Z|461| |NPC|10176| |R|Orc|

N Trail Followed |QID|72475.1| |N|Follow the trail in (map:1) (58.79, 63.68)| |Z|1| |R|Orc|
N (npc:199186) |QID|72475.2| |N|Click on the Raptor Nest and then slay (npc:199186) in (map:1) (59.12, 63.41)| |Z|1| |NPC|199186| |R|Orc|
N (item:202024) |QID|72475.4| |N|Collect (item:202024) from (npc:199186) in (map:1) (59.14, 63.43)| |Z|1| |R|Orc|
N Blood of Gor'krosh |QID|72475.3| |N|Click on Raptor Blood in (map:1) (59.14, 63.43)| |Z|1| |R|Orc|

R Razor Hill |TID|72475| |N|Travel to {Razor Hill} (52.24, 42.95)| |Z|1| |R|Orc|
T Cornering Gor'krosh |QID|72475| |N|(npc:199148) in {Razor Hill} (52.24, 42.95)| |Z|1| |NPC|199148| |R|Orc|

N Find (npc:199165) |QID|72465.1| |N|Click on Ancient Skeleton in {Thunder Ridge} (40.83, 26.90)| |Z|1| |NPC|199165| |R|Orc|

T The Blessing of the Land |QID|72465| |N|(npc:199165) in {Thunder Ridge} (40.59, 26.85)| |Z|1| |NPC|199165| |R|Orc|
A The Spirit of Thunder Ridge |QID|72466| |N|(npc:199165) in {Thunder Ridge} (40.59, 26.85)| |Z|1| |NPC|199165| |R|Orc|

N (item:201966) |QID|72466.1| |N|Click on Ancient Seed on the bottom of the water to collect 8 (item:201966) in {Thunder Ridge} (40.63, 26.34)| |Z|1| |R|Orc|
N The Spirit of Thunder Ridge |QID|72466.2| |N|Return to the Ancient Skeleton in {Thunder Ridge} (40.56, 26.89)| |Z|1| |R|Orc|
N Seeds Planted |QID|72466.3| |N|Click on the Ancient Seleton in {Thunder Ridge} (40.56, 26.85)| |Z|1| |R|Orc|

R Razor Hill |TID|72466| |N|Travel to {Razor Hill} (52.24, 42.95)| |Z|1| |R|Orc|
T The Spirit of Thunder Ridge |QID|72466| |N|(npc:199148) in {Razor Hill} (52.24, 42.92)| |Z|1| |NPC|199148| |R|Orc|
A Honor and Glory |QID|72478| |N|(npc:199148) in {Razor Hill} (52.24, 42.92)| |Z|1| |NPC|199148| |R|Orc|

N Enjoy the Feast! |QID|72478.1| |N|Click on Food and Drinks and attack rowdy enemies until bar filled to (100%) in {Razor Hill} (52.62, 43.02)| |Z|1| |NPC|199250, 199252| |R|Orc|
N Brawl with Boss Magor and the Peons |QID|72478.2| |N|Speak to (npc:201505) fight him and then kill a Peon and then pick up Booterang, when (npc:201505) spins click (spell:399753) on the screen close to him in {Razor Hill} (52.11, 42.10)| |Z|1| |NPC|201505| |R|Orc|

T Honor and Glory |QID|72478| |N|(npc:200437) in {Razor Hill} (52.24, 43.37)| |Z|1| |NPC|200437| |R|Orc|
A Aka'magosh |QID|72479| |N|(npc:200437) in {Razor Hill} (52.24, 43.37)| |Z|1| |NPC|200437| |R|Orc|
T Aka'magosh |QID|72479| |N|(npc:200617) in {Razor Hill} (52.26, 42.97)| |Z|1| |NPC|200617| |R|Orc|

N Guide Complete |N|Congratulations! You Unlocked the (spell:399316)| |R|Orc|
N Guide Complete |N|This guide is for 'Orc' only| |R|Undead, Tauren, Troll, BloodElf, Goblin, Pandaren, Nightborne, HighmountainTauren, Maghar, ZandalariTroll, Vulpera, Dracthyr|
]]
end, {Description = [[This guide will walk you through to earn (spell:399316]]})
    end

    function Guide:Unload()
    end
end