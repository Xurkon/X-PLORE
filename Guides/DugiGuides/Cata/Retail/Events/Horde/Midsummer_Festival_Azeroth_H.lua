local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Horde_En_Midsummer_Festival_Azeroth_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Midsummer Festival|r ", "Midsummer Festival Azeroth (40+)", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Midsummer]])|", function() 
return [[

N Manual Tick Required |N|Dugi Guides is currently unable to automatically detect the quest that you have already done and you will need to tick the completed quest manually|

R Durotar |N|Travel to {Durotar} (52, 47)| |Z|1|
A Honor the Flame (Durotar) |QID|11846| |N|{Razor Hill} (52, 47)| |E| |Z|1|
A Honor the Flame (Northern Barrens) |QID|11859| |N|{The Crossroads} (49, 54)| |E| |Z|10|
A Honor the Flame (Mulgore) |QID|11852| |N|{Bloodhoof Village} (51, 59)| |E| |Z|7|
A Honor the Flame (Southern Barrens) |QID|28927| |N|{Desolation Hold} (40, 67)| |E| |Z|199|
A Desecrate this Fire! (Southern Barrens) |QID|28913| |N|{Fort Triumph} (48, 72)| |E| |Z|199|
A Honor the Flame (Dustwallow Marsh) |QID|11847| |N|{Brackenwall Village} (33, 30)| |E| |Z|70|
A Desecrate this Fire! (Dustwallow Marsh) |QID|11744| |N|{Theramore Isle} (62, 40)| |E| |Z|70|
A Honor the Flame (Tanaris) |QID|11838| |N|Gadgetzan (49, 28)| |E| |Z|71|
A Desecrate this Fire! (Tanaris) |QID|11762| |N|Gadgetzan (52, 30)| |E| |Z|71|
N Skip Uldum |N|Uldum is optional and only players over level 35 that have previously completed the zone can do it| |PL|35|
A Desecrate this Fire! (Uldum) |QID|28947| |N|Ramkahen (53.4, 31.9)| |E| |Z|249|
A Honor the Flame (Uldum) |QID|28949| |N|Ramkahen (53.1, 34.5)| |E| |Z|249|
A Honor the Flame (Un'Goro Crater) |QID|28933| |N|{Marshal's Stand} (56.3, 66.3)| |E| |Z|78|
A Desecrate this Fire! (Un'Goro Crater) |QID|28921| |N|{Marshal's Stand} (59.9, 62.8)| |E| |Z|78|
R Silithus |N|Fly to {Silithus} (48, 22)| |Z|81|
N (npc:88206) |N|Speak to (npc:88206) to get (spell:176111) buff (78.98, 21.99)| |Z|81| |NPC|88206| |BUFF|609811|
A Honor the Flame (Silithus) |QID|11836| |N|{Cenarion Hold} (50, 41)| |E| |Z|81|
A Desecrate this Fire! (Silithus) |QID|11760| |N|{Cenarion Hold} (60, 33)| |E| |Z|81|
A Honor the Flame (Feralas) |QID|11849| |N|{Camp Mojache} (72, 47)| |E| |Z|69|
A Desecrate this Fire! (Feralas) |QID|11746| |N|{Feralas} (46, 43)| |E| |Z|69|
A Honor the Flame (Desolace) |QID|11845| |N|{Shadowprey Village} (26, 76)| |E| |Z|66|
A Desecrate this Fire! (Desolace) |QID|11741| |N|{Nijel's Point} (65, 16)| |E| |Z|66|
A Honor the Flame (Stonetalon Mountains) |QID|11856| |N|{Sun Rock Retreat} (52, 62)| |E| |Z|65|
A Desecrate this Fire! (Stonetalon Mountains) |QID|28915| |N|{Mirkfallon Lake} (49, 51)| |E| |Z|65|
A Honor the Flame (Ashenvale) |QID|11841| |N|{Silverwind Refuge} (51, 66)| |E| |Z|63|
A Desecrate this Fire! (Ashenvale) |QID|11734| |N|{Forest Song} (86, 41)| |E| |Z|63|
A Honor the Flame (Mount Hyjal) |QID|29030| |N|Nordrassil (62.81, 22.69)| |Z|198| |E|
A Honor the Flame (Azshara) |QID|28923| |N|{Bilgewater Harbor} (60.5, 53.4)| |Z|76| |E|
A Honor the Flame (Winterspring) |QID|11839| |N|Everlook (58, 47)| |E| |Z|83|
A Desecrate this Fire! (Winterspring) |QID|11763| |N|Everlook (61, 47)| |E| |Z|83|
R Lor'danel |N|Fly to {Lor'danel}, Darkshore} (48, 22)| |Z|62|
N (npc:88206) |N|Speak to (npc:88206) to get (spell:176111) buff (48.85, 24.43)| |Z|62| |NPC|88206| |BUFF|609811|
A Desecrate this Fire! (Darkshore) |QID|11740| |N|Lor'Danel (48, 22)| |E| |Z|62|

R Rut'theran Village |N|Travel to {Rut'theran Village} (57.35, 92.20)| |Z|57|
A Desecrate this Fire! (Teldrassil) |QID|11753| |N|Dolanaar (54, 52)| |E| |Z|57|
N (item:23184) |N|Steal (item:23184), just fly in with your mount (64.45, 47.40)| |L|23184| |Z|89| |T|
A Stealing Darnassus's Flame |N|Use (item:23184)| |U|23184| |QID|9332| |E| |QID|

R Exodar |N|Travel to Exodar (41, 24)| |Z|103| |QID|11933|
N (item:35569) |N|Steal (item:35569), just fly in with your mount (41, 24)| |L|35569| |Z|103| |T|
A Stealing the Exodar's Flame |N|Use (item:35569)| |U|35569| |QID|11933| |E| |QID|
A Desecrate this Fire! (Azuremyst Isle) |QID|11735| |N|{Azure Watch} (44, 52)| |Z|97| |QID|11735| |E|
A Desecrate this Fire! (Bloodmyst Isle) |QID|11738| |N|{Blood Watch} (55, 68)| |Z|106| |QID|11738| |E|

R Booty Bay |N|Travel to {Booty Bay} (50, 70)| |Z|210|
A Honor the Flame (The Cape of Stranglethorn) |QID|11837| |N|{Booty Bay} (50, 70)| |E| |Z|210|
A Desecrate this Fire! (The Cape of Stranglethorn) |QID|11761| |N|{Booty Bay} (52, 68)| |E| |Z|210|
A Desecrate this Fire! (Northern Stranglethorn) |QID|28910| |N|{Fort Livingstone} (52, 63)| |E| |QID|11584| |Z|50|
A Honor the Flame (Northern Stranglethorn) |QID|28924| |N|Grom'Gol Base Camp (41, 51)| |E| |Z|50|
A Desecrate this Fire! (Westfall) |QID|11581| |N|Moonbrook (45, 62)| |E| |Z|52|
A Desecrate this Fire! (Duskwood) |QID|11743| |N|Darkshire (73, 54)| |E| |Z|47|
R Blasted Lands |N|Travel to {Blasted Lands} (48.2, 7.2)| |Z|17|
N Speak to (npc:88206) |N|Speak to (npc:88206) to see {Blasted Lands} before the invasion (48.2, 7.2)| |Z|17| |NPC|88206| |BUFF|609811|
A Honor the Flame (Blasted Lands) |QID|28930| |N|{Dreadmaul Hold} (46, 14)| |E| |Z|17|
A Desecrate this Fire! (Blasted Lands) |QID|11737| |N|{Nethergarde Keep} (55, 15)| |E| |Z|17|
A Honor the Flame (Swamp of Sorrows) |QID|11857| |N|Bogpaddle (76.5, 13.7)| |E| |Z|51|
A Desecrate this Fire! (Swamp ofSorrows) |QID|28916| |N|Bogpaddle (70.1, 15.1)| |E| |Z|51|
A Desecrate this Fire! (Redridge Mountains) |QID|11751| |N|Lakeshire (24, 54)| |E| |Z|49|
A Desecrate this Fire! (Elwynn Forest) |QID|11745| |N|Goldshire (43, 63)| |E| |Z|37|

R Stormwind City |N|Travel to {Stormwind City} (50, 72)| |Z|84|
N (item:23182) |N|Steal (item:23182) fly in with your mount (49, 72)| |L|23183| |Z|84| |T|
A Stealing Stormwind's Flame |N|Use (item:23182)| |U|23183| |QID|9330|

A Desecrate this Fire! (Burning Steppes) |QID|11739| |N|{Morgan's Vigil} (69, 60)| |E| |Z|36|
A Honor the Flame (Burning Steppes) |QID|11844| |N|{Flame Crest} (51, 29)| |E| |Z|36|
A Desecrate this Fire! (Badlands) |QID|28912| |N|{Dragon's Mouth} (19, 55)| |E| |Z|15|
A Honor the Flame (Badlands) |QID|11842| |N|{New Kargath} (24, 37)| |E| |Z|15|
A Desecrate this Fire! (Loch Modan) |QID|11749| |N|Thelsamar (32, 40)| |E| |QID|28924| |Z|48|
A Desecrate this Fire! (Dun Morogh) |QID|11742| |N|Kharanos (54, 45)| |E| |QID|11848| |Z|27|

R City of Ironforge |N|Travel to {City of Ironforge} (64, 25)| |Z|87|
N (item:23183) |N|Steal (item:23183) fly in with your mount (64, 25)| |L|23183| |Z|87| |T|
A Stealing Ironforge's Flame |N|Use (item:23183)| |U|23183| |QID|9331|

A Desecrate this Fire! (Wetlands) |QID|11757| |N|{Menethil Harbor} (13, 47)| |E| |Z|56|
A Desecrate this Fire! (Twilight Highlands) |QID|28943| |N|Thundermar (47.23, 28.36)| |Z|241| |E|
A Honor the Flame (Twilight Highlands) |QID|28946| |N|Bloodgulch (53.13, 46.17)| |Z|241|
A Honor the Flame (The Hinterlands) |QID|11860| |N|{Revantusk Village} (76, 74)| |E| |Z|26|
A Honor the Flame (Arathi Highlands) |QID|11840| |N|Hammerfall (69, 42)| |E| |QID|11840| |Z|14|
A Desecrate this Fire! (Arathi Highlands) |QID|11732| |N|{Refuge Pointe} (44, 46)| |E| |Z|14|
A Desecrate this Fire! (The Hinterlands) |QID|11755| |N|{Aerie Peak} (14, 50)| |E| |Z|26|
A Honor the Flame (Hillsbrad Foothills) |QID|11853| |N|{Tarren Mill} (54, 50)| |E| |Z|25|
A Desecrate this Fire! (Western Plaguelands) |QID|11756| |N|{Chillwind Point} (43, 82)| |E| |Z|22|
A Honor the Flame (Western Plaguelands) |QID|28931| |N|{The Bulwark} (29.2, 57.4)| |E| |Z|22|

R Tirisfal Glade |N|Travel to (69.4, 62.8)| |Z|18|
N (npc:88206) |N|Speak to (npc:88206) to get (spell:176111) buff (69.4, 62.8)| |Z|18| |NPC|88206| |BUFF|609811|
A Honor the Flame (Tirisfal Glades) |QID|11862| |N|Brill (57, 52)| |E| |Z|18|
A Honor the Flame (Silverpine Forest) |QID|11584| |N|The Selpucher (49, 38)| |E| |Z|21|

R Silvermoon City |N|Travel to {Silvermoon City} (46, 50)| |Z|94|
A Honor the Flame (Eversong Woods) |QID|11848| |N|{North Sanctum} (46, 50)| |Z|94| |QID|11848| |E|
A Honor the Flame (Ghostlands) |QID|11850| |N|Tranquilien (46, 26)| |Z|95| |QID|11850| |E|

N Pre-Quest Required |N|You need to unlock Vashj'ir portal by completing the quest (qid:25924) from the (guide:"203(30-35)#203(30-35)#203(30-35)") guide| |QID|25924|
R Vash'jir |N|Travel to Vash'jir (49.37, 41.9) | |Z|205|
A Honor the Flame |QID|29031| |N|{Silver Tide Hollow} (49.37, 41.98)| |Z|205| |E|

N Pre-Quest Required |N|You need to unlock Deepholm portal by completing the quest (qid:27203) from the (guide:"207(30-35)#207(30-35)#207(30-35)") guide| |QID|27203|
R Deepholm |N|Travel to {Deepholm} (49.38, 51.29)| |Z|207|
A Honor the Flame |QID|29036| |N|{Temple of Earth} (49.38, 51.29)| |Z|207| |E|

N Guide Complete

]]
end)
	end
	
	function Guide:Unload()
	end
end
