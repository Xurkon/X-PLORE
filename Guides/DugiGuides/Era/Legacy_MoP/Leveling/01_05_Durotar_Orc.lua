local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Trial_Horde_En_01_05_Durotar_Orc")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Starting Zones|r", "1(1-5 Orc)", "1(5-10 Orc & Troll)", "Horde", nil, "L", nil, function()
return [[

A Your Place In The World |QID|25152| |N|(npc:10176) (43.29, 68.76) in {Valley of Trials}| |NPC|10176|
T Your Place In The World |QID|25152| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|
A Cutting Teeth |QID|25126| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|
C Cutting Teeth |QID|25126| |N|Kill 6 (npc:3098) (44.93, 65.23) in {Valley of Trials}| |NPC|3098|
T Cutting Teeth |QID|25126| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|
A Invaders in Our Home |QID|25172| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|
A Galgar's Cactus Apple Surprise |QID|25136| |N|(npc:9796) (42.74, 67.24) in {Valley of Trials}| |NPC|9796|

C Invaders in Our Home |QID|25172| |N|Kill 7 (npc:39317) (43.81, 72.08) in {Valley of Trials}| |NPC|39317|
T Invaders in Our Home |QID|25172| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|

A Lazy Peons |QID|37446| |N|(npc:11378) (43.52, 67.43) in {Valley of Trials}| |NPC|11378|
A Sting of the Scorpid |QID|25127| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|
N As you go... |AYG|25127| |N|Collect 6 (item:11583) from the Cactus Plants in {Valley of Trials}| |QID|25136| |OBJ|3451| |U|16114|
A Sarkoth |QID|25129| |N|(npc:3287) (43.75, 66.59) (40.63, 62.60) in {Valley of Trials}| |NPC|3287|
C Sarkoth |QID|25129| |N|Kill (npc:3281) and collect (item:16114) (40.48, 67.27) in {Valley of Trials}| |NPC|3281| |U|16114| |OBJ|3451|
T Sarkoth |QID|25129| |N|(npc:3287) (40.59, 62.58) in {Valley of Trials}| |NPC|3287|
A Back to the Den |QID|25130| |N|(npc:3287) (40.59, 62.58) in {Valley of Trials}| |NPC|3287|
C Sting of the Scorpid |QID|25127| |N|Collect 8 (item:4862) from (npc:3124) (41.29, 62.81) in {Valley of Trials}| |NPC|3124|
R Valley of Trials |QID|25127| |N|Travel to {Valley of Trials} (41.29, 62.81)|
N As you go... |AYG|25136| |N|Use (item:16114) on any sleeping peon, you'll find them under the trees.| |NPC|10556| |QID|37446| |U|16114|
C Galgar's Cactus Apple Surprise |QID|25136| |N|Collect 6 (item:11583), they grow near the cactus plants (41.39, 58.94)| |OBJ|3451| |NPC|10556| |U|16114|
T Sting of the Scorpid |QID|25127| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|
T Back to the Den |QID|25130| |N|(npc:3143) (43.22, 68.27) in {Valley of Trials}| |NPC|3143|

A Glyphic Parchment |QID|25138| |N|Gornek (43.24, 68.24) Valley of Trials| |C|Mage| |NPC|3143|
A Simple Parchment |QID|2383| |N|Gornek (43.24, 68.24) Valley of Trials| |C|Warrior| |NPC|3143|
A Etched Parchment |QID|3087| |N|Gornek (43.24, 68.24) Valley of Trials| |C|Hunter| |NPC|3143|
A Encrypted Parchment |QID|3088| |N|Gornek (43.24, 68.24) Valley of Trials| |C|Rogue| |NPC|3143|
A Tainted Parchment |QID|3090| |N|Gornek (43.24, 68.24) Valley of Trials| |C|Warlock| |NPC|3143|
A Rune-Inscribed Parchment |QID|3089| |N|Gornek (43.24, 68.24) Valley of Trials| |C|Shaman| |NPC|3143|
T Galgar's Cactus Apple Surprise |QID|25136| |N|(npc:9796) (42.73, 67.24) in {Valley of Trials}| |NPC|9796|

T Glyphic Parchment |QID|25138| |N|Acrypha (42.51, 69.03)| |C|Mage| |NPC|39206|
A Arcane Missiles |QID|25149| |N|Acrypha (42.51, 69.03) Valley of Trials| |C|Mage| |NPC|39206|
N Learn Arcane Missiles |QID|25149.2| |N|Learn the spell: Arcane Missiles from Acrypha (42.51, 69.03)| |C|Mage| |NPC|39206|
C Arcane Missiles |QID|25149| |N|Practice using Arcane Missiles 2 times on a Training Dummy (43.03, 69.30)| |C|Mage| |NPC|44820|
T Arcane Missiles |QID|25149| |N|Acrypha (42.51, 69.03) | |C|Mage| |NPC|39206|

T Simple Parchment |QID|2383| |N|Frang (42.88, 69.45) Valley of Trials| |C|Warrior| |NPC|3153|
A Charge |QID|25147| |N|Frang (42.88, 69.45) Valley of Trials| |C|Warrior| |NPC|3153|
N Learn Spell: Charge |QID|25147.2|  |N|Learn Spell: Charge (42.88, 69.45)| |C|Warrior| |NPC|3153|
C Charge |QID|25147| |N|Use Charge on a (npc:44820) (43.12, 69.42)| |C|Warrior| |NPC|44820|
T Charge |QID|25147| |N|Frang (42.88, 69.45) Valley of Trials| |C|Warrior| |NPC|3153|

T Etched Parchment |QID|3087| |N|Karranisha (42.84, 69.33) Valley of Trials| |C|Hunter| |NPC|39214|
A Steady Shot |QID|25139| |N|Karranisha (42.84, 69.33) Valley of Trials| |C|Hunter| |NPC|39214|
N Learn Spell: Steady Shot |QID|25139.2| |N|Learn Spell: Steady Shot (42.84, 69.33)| |C|Hunter| |NPC|39214|
C Steady Shot |QID|25139| |N|Cast Steady Shot on the (npc:44820) 3x (43.12, 69.30)| |C|Hunter| |NPC|44820|
T Steady Shot |QID|25139| |N|Karranisha (42.84, 69.33) Valley of Trials| |C|Hunter| |NPC|39214|

T Encrypted Parchment |QID|3088| |N|Rwag (42.37, 68.81) Valley of Trials| |C|Rogue| |NPC|3155|
A Eviscerate |QID|25141| |N|Rwag (42.37, 68.81) Valley of Trials| |C|Rogue| |NPC|3155|
N Learn Spell: Eviscerate |QID|25141.2|  |N|Learn Spell: Eviscerate (42.37, 68.81)| |C|Rogue| |NPC|3155|
C Eviscerate |QID|25141| |N|Use Eviscerate 3x on a (npc:44820) (43.17, 69.42)| |C|Rogue| |NPC|44820|
T Eviscerate |QID|25141| |N|Rwag (42.37, 68.81) Valley of Trials| |C|Rogue| |NPC|3155|

T Rune-Inscribed Parchment |QID|3089| |N|Shikrik (42.40, 69.00) Valley of Trials| |C|Shaman| |NPC|3157|
A Primal Strike |QID|25143| |N|Shikrik (42.40, 69.00) Valley of Trials| |C|Shaman| |NPC|3157|
N Learn Spell: Primal Strike |QID|25143.2| |N|Learn Spell: Primal Strike (42.40, 69.00)| |C|Shaman| |NPC|3157|
C Primal Strike |QID|25143.1| |N|Use Primal Strike ability 3x on a (npc:44820) (43.01, 69.38)| |C|Shaman| |NPC|44820|
T Primal Strike |QID|25143| |N|Shikrik (42.40, 69.00) Valley of Trials| |C|Shaman| |NPC|3157|

T Tainted Parchment |QID|3090| |N|Nartok (42.41, 68.06) Valley of Trials| |C|Warlock| |NPC|3156|
A Immolate |QID|25145| |N|Nartok (42.41, 68.06) Valley of Trials| |C|Warlock| |NPC|3156|
N Learn Spell: Immolate |QID|25145.2| |N|Learn Spell: Immolate (42.39, 68.06)| |C|Warlock| |NPC|3156|
C Immolate |QID|25145| |N|Cast Immolate 5x on a (npc:44820) (43.09, 67.55)| |C|Warlock| |NPC|44820|
T Immolate |QID|25145| |N|Nartok (42.41, 68.06) Valley of Trials| |C|Warlock| |NPC|3156|

A Hana'zua |QID|25128| |N|(npc:5887) in {Valley of Trials} (42.42, 69.12)| |NPC|5887|
A Vile Familiars |QID|25131| |N|(npc:3145) (43.44, 67.49) in {Valley of Trials}| |NPC|3145|
T Hana'zua |QID|25128| |N|(npc:3287) in {Valley of Trials} (40.66, 62.56)| |NPC|3287|
C Lazy Peons |QID|37446| |N|Use the (item:16114) to wake up 4 Peons when they're sleeping, you'll find them under the trees. (43.87, 57.80)| |U|16114| |NPC|10556|
C Vile Familiars |QID|25131| |N|Kill 8 (npc:3101) (45.09, 57.24) in {Valley of Trials}| |NPC|3101|
T Lazy Peons |QID|37446| |N|(npc:11378) (43.53, 67.40) in {Valley of Trials}| |NPC|11378|
T Vile Familiars |QID|25131| |N|(npc:3145) (43.46, 67.48) in {Valley of Trials}| |NPC|3145|
A Burning Blade Medallion |QID|25132| |N|(npc:3145) (43.46, 67.48) in {Valley of Trials}| |NPC|3145|
A Thazz'ril's Pick |QID|25135| |N|(npc:11378) (43.55, 67.42) in {Valley of Trials}| |NPC|11378|

R Burning Blade Coven  |QID|25135| |N|Travel to {Burning Blade Coven} (45.35, 56.27)|
C Thazz'ril's Pick |QID|25135| |N|Find (item:16332) inside the cave on top of the waterfall  (44.58, 54.77)| |OBJ|4992|
K Yarrog Baneshadow |QID|25132.2| |N||Kill (npc:3183) and Felstalkers inside the cave and collect the (item:4859) (43.25, 55.46) (42.44, 53.42)| |L|4859| |NPC|3183|
C Burning Blade Medallion |QID|25132| |N|Kill 7 (npc:3102) in {Burning Blade Coven} (42.85, 52.34)| |NPC|3102|

--C Thazz'ril's Pick |QID|25135| |N|Find (item:16332) inside the cave on top of the waterfall (40.76, 52.52)| |OBJ|4992| |Z|2|
--K (npc:3183) |QID|25132.2| |N|Kill (npc:3183) and Felstalkers inside the cave and collect the (item:4859) (13.35, 44.82)| |NPC|3183| |Z|2|
--C Burning Blade Medallion |QID|25132| |N|Kill 7 (npc:3102) in {Burning Blade Coven} (42.85, 52.34)| |NPC|3102| |Z|2|

H Valley of Trials |QID|25133| |N|Hearth or Travel to {Valley of Trials} (43.54, 67.40)| |QID|25133| |U|6948|
T Thazz'ril's Pick |QID|25135| |N|(npc:11378) (43.54, 67.40) in {Valley of Trials}| |NPC|11378|
T Burning Blade Medallion |QID|25132| |N|(npc:3145) (43.46, 67.48) in {Valley of Trials}| |NPC|3145|
A Report to Sen'jin Village |QID|25133| |N|(npc:3145) (43.46, 67.48) in {Valley of Trials}| |NPC|3145|

N Guide Complete |N|Tick to continue to continue to (guide:"1(5-10 Orc & Troll)")| 

]]
end, {image = "valleyoftrials.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
