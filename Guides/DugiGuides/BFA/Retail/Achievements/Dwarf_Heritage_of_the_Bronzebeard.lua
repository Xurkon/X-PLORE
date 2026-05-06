local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Dwarf_Heritage_of_the_Bronzebeard")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Heritage Armor Quests|r"}, "Dwarf - Heritage of the Bronzebeard", nil, "Alliance", nil, "A", nil, function()
return [[

N Level 50 Required |N|You need to be level 50| |PL|50| |R|Dwarf, DarkIronDwarf|
N Earn Exalted status with (fac:47) |N|Earn Exalted reputation status with (fac:47)<br/>Complete any Outlands, Northrend, Cataclysm, Pandaria or Draenor dungeons on normal or heroic difficulty with the (fac:47) tabard on until you reach Exalted| |REPR|47, 42000| |R|Dwarf, DarkIronDwarf|

R Stormwind City |QID|53838| |N|Travel to {Stormwind City} (49.59,86.53)| |Z|84| |R|Dwarf, DarkIronDwarf|
A Keep Yer Feet On The Ground |QID|53838| |N|(npc:146988) in {Stormwind Embassy} (54.46,18.13)| |Z|84| |NPC|146988| |R|Dwarf, DarkIronDwarf|

R Gol'Bolar Quarry |QID|53838| |N|Travel to {Gol'Bolar Quarry} (75.87,54.29)| |Z|27| |R|Dwarf, DarkIronDwarf|
C Enter Cave |QID|53838| |N|Enter Cave (77.91,55.05)| |Z|27| |REACH| |R|Dwarf, DarkIronDwarf|
C Keep Yer Feet On The Ground |QID|53838.1| |N|Find the missing excavators in the {Quarry Mine} (39.92,73.54) (35.94,56.58) (43.98,46.71) (36.15,47.63) (51.63,21.24) (46.82,17.39)| |Z|31| |R|Dwarf, DarkIronDwarf|
K (npc:146994) |QID|53838.2| |N|Kill (npc:146994) (43.34,19.32)| |Z|31| |NPC|146994| |R|Dwarf, DarkIronDwarf|
T Keep Yer Feet On The Ground |QID|53838| |N|Ancient Tablet (40.08,22.17)| |Z|31| |R|Dwarf, DarkIronDwarf|
A Something Valuable, Perhaps? |QID|53835| |N|Ancient Tablet (40.08,22.17)| |Z|31| |R|Dwarf, DarkIronDwarf|

R Iron Forge |QID|53835| |N|Travel to {Iron Forge} (55.88,47.87)| |Z|87| |REACH| |R|Dwarf, DarkIronDwarf|
T Something Valuable, Perhaps? |QID|53835| |N|(npc:145462) in {The Library} (77.27,9.75)| |Z|87| |NPC|145462| |R|Dwarf, DarkIronDwarf|
A Ancient Armor, Ancient Mystery |QID|53836| |N|(npc:145462) in {The Library} (77.27,9.75)| |Z|87| |NPC|145462| |R|Dwarf, DarkIronDwarf|

R Old Ironforge |QID|53836| |N|Travel to {Old Ironforge} (44.99,48.97) (43.69,51.93)| |Z|87| |REACH|43.69,51.93| |R|Dwarf, DarkIronDwarf|
R Old Ironforge |QID|53836| |N|Travel to {Old Ironforge} (76.20,88.77) (82.10,53.13) (61.86,48.32)| |Z|1361| |REACH|61.86,48.32| |R|Dwarf, DarkIronDwarf|
T Ancient Armor, Ancient Mystery |QID|53836| |N|(npc:145464) in {Old Ironforge} (57.66,47.90)| |Z|1361| |NPC|145464| |R|Dwarf, DarkIronDwarf|
A Watch Yer Back |QID|53837| |N|(npc:145464) in {Old Ironforge} (57.66,47.90)| |Z|1361| |NPC|145464| |R|Dwarf, DarkIronDwarf|
C Watch Yer Back |QID|53837.1| |N|Kill 8 (npc:145469) in {Old Ironforge} (39.60,55.15)| |Z|1361| |NPC|145469| |R|Dwarf, DarkIronDawrf|
K (npc:145698) |QID|53837.2| |N|Kill (npc:145698) in {Old Ironforge} (20.00,51.46)| |Z|1361| |NPC|145698| |R|Dwarf, DarkIronDwarf|
T Watch Yer Back |QID|53837| |N|(npc:145707) in {Old Ironforge} (19.88,51.88)| |Z|1361| |NPC|145707| |PPOS| |R|Dwarf, DarkIronDwarf|
A Aegrim's Study |QID|53839| |N|(npc:145707) in {Old Ironforge} (19.88,51.88)| |Z|1361| |NPC|145707| |PPOS| |R|Dwarf, DarkIronDwarf|
C Enter Aegrim's Study |QID|53839| |N|Click on the Door to Algrim's Study and enter the room (18.77,52.46)| |Z|1361| |REACH| |R|Dwarf, DarkIronDwarf|
T Aegrim's Study |QID|53839| |N|(npc:309839) in {Aegrim's Study} (19.57,52.02)| |Z|87| |NPC|309839| |R|Dwarf, DarkIronDwarf|
A Shards of the Past |QID|53841| |N|Armor Stand in {Aegrim's Study} (19.57,52.02)| |Z|87| |NPC|| |R|Dwarf, DarkIronDwarf|
C Shards of the Past |QID|53841| |N|Collect 6 (item:164946) and kill (npc:146117) that attack you in {Aegrim's Study} (21.84,51.09)| |Z|87| |NPC|146177| |R|Dwarf, DarkIronDwarf|

R The Library |QID|53840| |N|Exit the {Old Ironforge} by clicking the Door to Old Ironforge and then travel to {The Library} (73.82,13.30)| |Z|87| |R|Dwarf, DarkIronDwarf|
T Shards of the Past |QID|53841| |N|(npc:145462) in {The Library} (77.19,9.83)| |Z|87| |NPC|145462| |R|Dwarf, DarkIronDwarf|
A Interest Yah In A Pint? |QID|53840| |N|(npc:145462) in {The Library} (77.19,9.83)| |Z|87| |NPC|145462| |R|Dwarf, DarkIronDwarf|

R Thelsamar |QID|53840| |N|Travel to {Thelsamar} (33.94,50.79)| |Z|48| |R|Dwarf, DarkIronDwarf|
T Interest Yah In A Pint? |QID|53840| |N|(npc:5164) in {Stoutlager Inn} (35.07,48.76)| |Z|48| |NPC|5164| |R|Dwarf, DarkIronDwarf|
A Recruiting the Furnace Master |QID|53844| |N|(npc:145462) in {Stoutlager Inn} (35.07,48.76)| |Z|48| |NPC|145462| |R|Dwarf, DarkIronDwarf|

R Ulduar |QID|53844| |N|Travel to {Ulduar} (44.51,28.12)| |Z|120| |R|Dwarf, DarkIronDwarf|
R Enter Ulduar Raid |QID|53844.1| |N|Enter {Ulduar} Raid (41.56,17.76)| |Z|120| |REACH| |R|Dwarf, DarkIronDwarf|
K (npc:145905) |QID|53844.2| |N|Kill 6 (npc:145905) in {The Colossal Forge}| |NPC|145905| |R|Dwarf, DarkIronDwarf|
K (npc:145909) |QID|53844.3| |N|Kill (npc:145909) and then follow (npc:145462), click on Brann's Flying Machine in {The Colossal Forge} to return to {Loch Modan}| |NPC|145909| |R|Dwarf, DarkIronDwarf|
T Recruiting the Furnace Master |QID|53844| |N|(npc:145462) in {Stoutlager Inn} (35.06,48.69)| |Z|48| |NPC|145462| |R|Dwarf, DarkIronDwarf|
A Earthen Blessing |QID|53842| |N|(npc:145462) in {Stoutlager Inn} (35.06,48.69)| |Z|48| |NPC|145462| |R|Dwarf, DarkIronDwarf|

R Iron Forge |QID|53842| |N|Travel to {Iron Forge} (55.88,47.87)| |Z|87| |REACH| |R|Dwarf, DarkIronDwarf|
R Old Ironforge |QID|53842| |N|Travel to {Old Ironforge} (44.99,48.97) (43.69,51.93)| |Z|87| |REACH|43.69,51.93| |R|Dwarf, DarkIronDwarf|
R Old Ironforge |QID|53842| |N|Travel to {Old Ironforge} (76.20,88.77) (82.10,53.13) (61.86,48.32)| |Z|1361| |REACH|61.86,48.32| |R|Dwarf, DarkIronDwarf|
C Earthen Blessing |QID|53842| |N|Collect (item:164690) (36.04,53.96)| |Z|1361| |R|Dwarf, DarkIronDwarf|
T Earthen Blessing |QID|53842| |N|(npc:145866) in {The Great Forge} (48.90,45.61)| |Z|87| |NPC|145866| |R|Dwarf, DarkIronDwarf|
A Forging the Armor |QID|53845| |N|(npc:5164) in {The Great Forge} (48.90,45.61)| |Z|87| |NPC|5164| |R|Dwarf, DarkIronDwarf|
C Help Bouldercrag's Ritual |QID|53845.1| |N|Use (spell:285650) stay inside of the circle on the ground and click the extra button (48.95,45.18)<br/>It appears somewhere on the screen| |Z|87| |R|Dwarf, DarkIronDwarf|
C Present Ignis the Armor Shards |QID|53845.2| |N|(spell:284908) from the ground to the new circle on the ground near the forge. (49.34,44.80)<br/>Place it here (51.58,44.02)| |Z|87| |R|Dwarf, DarkIronDwarf|
C Bring the Molten Metal to the Great Anvil |QID|53845.3| |N|(spell:284955) to the anvil. (50.06,44.06)| |Z|87| |R|Dwarf, DarkIronDwarf|
C Forge the Bulwark of the Mountain Kings |QID|53845.4| |N|Use (spell:285001) stay inside of the circle on the ground and click the extra button (50.06,44.06)<br/>It appears somewhere on the screen| |Z|87| |R|Dwarf, DarkIronDwarf|
C (item:165704) |QID|53845.5| |N|Pick up (item:165704) from the anvil (50.06,44.06)| |Z|87| |R|Dwarf, DarkIronDwarf|
T Forging the Armor |QID|53845| |N|(npc:5164) in {The Great Forge} (46.45,49.50)| |Z|87| |NPC|5164| |R|Dwarf, DarkIronDwarf|
A Legacy of the Bronzebeard |QID|53846| |N|(npc:145462) in {The Great Forge} (46.07,49.35)| |Z|87| |NPC|145462| |R|Dwarf, DarkIronDwarf|
T Legacy of the Bronzebeard |QID|53846| |N|(npc:42928) in {The High Seat} (39.43,55.73)| |Z|87| |NPC|42928| |R|Dwarf, DarkIronDwarf|

N Guide Complete |N|Congratulations! You Unlocked the (spell:286946)| |R|Dwarf, DarkIronDwarf|
N Guide Complete |N|This guide is for 'Dwarf' only| |R|Human, NightElf, Gnome, Draenei, Worgan, Pandaren, VoidElf, LightforgedDraenei|

]]
end, {image = "dunmorogh.tga", description = [[This guide will show you how to unlock (spell:286946)<br/>Released in Patch 8.1.0 (28724)]]})	end

	function Guide:Unload()
	end
end
