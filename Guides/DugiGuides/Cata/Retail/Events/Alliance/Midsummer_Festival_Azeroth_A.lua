local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Midsummer_Festival_Azeroth_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Midsummer Festival|r ", "Midsummer Festival Azeroth (40+)", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Midsummer]])|", function() 
return [[

N Manual Tick Required |N|Dugi Guides is currently unable to automatically detect the quest that you have already done and you will need to tick the completed quest manually|

R Elwynn Forest |N|Travel to {Elwynn Forest} (43, 63)| |Z|37|
A Honor the Flame (Elwynn Forest) |QID|11816| |N|{Goldshire} (43, 63)| |E| |Z|37|
A Honor the Flame (Westfall) |QID|11583| |N|{Moonbrook} (45, 62)| |E| |Z|52|
A Honor the Flame (Duskwood) |QID|11814| |N|{Darkshire} (73, 54)| |E| |Z|47|
A Desecrate this Fire! (Northern Stranglethorn) |QID|28911| |N|{Grom'Gol Base Camp} (41, 51)| |E| |Z|50|
A Honor the Flame (Northern Stranglethorn) |QID|28922| |N|{Fort Livingstone} (52, 63)| |E| |Z|50|
A Honor the Flame (The Cape of Stranglethorn) |QID|11832| |N|{Booty Bay} (52, 68)| |E| |Z|210|
A Desecrate this Fire! (The Cape of Stranglethorn) |QID|11801| |N|{Booty Bay} (50, 70)| |E| |Z|210|

R Blasted Lands |N|Travel to {Blasted Lands} (48.2, 7.2)| |Z|17|
N (npc:88206) |N|Speak to (npc:88206) to see {Blasted Lands} before the invasion (48.2, 7.2)| |Z|17| |NPC|88206| |BUFF|609811|
A Desecrate this Fire! (Blasted Lands) |QID|28917| |N|{Dreadmaul Hold} (46, 14)| |E| |Z|17|
A Honor the Flame (Blasted Lands) |QID|11808| |N|{Nethergarde Keep} (55, 15)| |E| |Z|17|
A Desecrate this Fire! (Swamp of Sorrows) |QID|11781| |N|{Bogpaddle} (76.5, 13.7)| |E| |Z|51|
A Honor the Flame (Swamp of Sorrows) |QID|28929| |N|{Bogpaddle} (70.1, 15.1)| |E| |Z|51|
A Honor the Flame (Redridge Mountains) |QID|11822| |N|{Lakeshire} (24, 54)| |E| |Z|49|
A Honor the Flame (Burning Steppes) |QID|11810| |N|{Morgan's Vigil} (69, 60)| |E| |Z|36|
A Desecrate this Fire! (Burning Steppes) |QID|11768| |N|{Flame Crest} (51, 29)| |E| |Z|36|
A Honor the Flame (Badlands) |QID|28925| |N|{Dragon's Mouth} (19, 55)| |E| |Z|15|
A Desecrate this Fire! (Badlands) |QID|11766| |N|{New Kargath} (24, 37)| |E| |Z|15|
A Honor the Flame (Loch Modan) |QID|11820| |N|{Thelsamar} (32, 40)| |E| |Z|48|
A Honor the Flame (Dun Morogh) |QID|11813| |N|{Kharanos} (53.7, 44.9)| |E| |Z|27|
A Honor the Flame (Wetlands) |QID|11828| |N|{Menethil Harbor} (13, 47)| |E| |Z|56|
A Honor the Flame (Twilight Highlands) |QID|28945| |N|{Thundermar} (47.23, 28.36)| |Z|241| |E|
A Desecrate this Fire! (Twilight Highlands) |QID|28944| |N|Bloodgulch} (53.13, 46.17)| |Z|241| |E|
A Desecrate this Fire! (The Hinterlands) |QID|11784| |N|{Revantusk Village} (76, 74)| |E| |Z|26|
A Desecrate this Fire! (Arathi Highlands) |QID|11764| |N|Hammerfall} (69, 42)| |E| |Z|14|
A Honor the Flame (Arathi Highlands) |QID|11804| |N|{Refuge Pointe} (44, 46)| |E| |Z|14|
A Honor the Flame (The Hinterlands) |QID|11826|  |N|{Aerie Peak} (14, 50)| |E| |Z|26|
A Desecrate this Fire! (Hillsbrad Foothills) |QID|11776| |N|{Tarren Mill} (54, 50)| |E| |Z|25|
A Desecrate this Fire! (Silverpine Forest) |QID|11580| |N|{The Selpucher} (49, 38)| |E| |Z|21|

R Tirisfal Glade |N|Travel to (69.4, 62.8)| |Z|18|
N (npc:88206) |N|Speak to (npc:88206) to get (spell:176111) buff (69.4, 62.8)| |Z|18| |NPC|88206| |BUFF|609811|
R Undercity |N|Travel to Undercity (55, 9.9)| |Z|90|
N (item:23181) |N|Steal (item:23181) fly in with your mount (68, 9)| |Z|90| |L|23181| |T|
A Stealing Undercity's Flame |N|Use (item:23181)| |U|23181| |QID|9326|
A Desecrate this Fire! (Tirisfal Glades) |QID|11786| |N|{Brill} need (spell:176111) (57, 52)| |E| |Z|18|
A Desecrate this Fire! (Western Plaguelands) |QID|28918| |N|{The Bulwark} (29.2, 57.4)| |E| |Z|22|
A Honor the Flame (Western Plaguelands) |QID|11827| |N|{Chillwind Point} (43, 82)| |E| |Z|22|
A Desecrate this Fire! (Ghostlands) |QID|11774| |N|{Tranquilien} (46, 26)| |Z|95| |QID|11850| |E|
A Desecrate this Fire! (Eversong Woods) |QID|11772| |N|{North Sanctum} (46, 50)| |Z|94| |QID|11848| |E|

R Silvermoon City |N|Travel to {Silvermoon City} (70, 43)| |Z|110|
N (item:35568) |N|Steal (item:35568) ride in with your mount (70, 43)| |Z|110| |L|35568| |T|
A Stealing Silvermoon's Flame |N|Use (item:35568)| |U|35568| |QID|11935|

R Lor'danel |N|Fly to {Lor'danel}, Darkshore} (48, 22)| |Z|62|
N (npc:88206) |N|Speak to (npc:88206) to get (spell:176111) buff (48.85, 24.43)| |Z|62| |NPC|88206| |BUFF|609811|
A Honor the Flame (Darkshore) |QID|11811| |N|{Lor'Danel} (48, 22)| |E| |Z|62|

R Teldrassil |N|Travel to Teldrassil (54, 52)| |QID|13518| |Z|57|
A Honor the Flame (Teldrassil) |QID|11824| |N|Dolanaar (54, 52)| |E| |Z|57|

R Exodar |N|Travel to Exodar, use the portal in Temple of Moon (44.19, 78.67)| |Z|89| |QID|11933|
A Honor the Flame (Azuremyst Isle) |N|{Azure Watch} (44, 52)| |Z|97| |QID|11735| |E|
A Honor the Flame (Bloodmyst Isle) |QID|11809| |N|{Blood Watch} (55, 68)| |Z|106| |QID|11738| |E|

R Winterspring |N|Travel to {Everlook} (58, 47)| |Z|83|
A Desecrate this Fire! (Winterspring) |QID|11803| |N|{Everlook} (58, 47)| |E| |Z|83|
A Honor the Flame (Winterspring) |QID|11834| |N|{Everlook} (61, 47)| |E| |Z|83|
A Desecrate this Fire! (Mount Hyjal) |QID|29030| |N|{Nordrassil} (62.81, 22.69)| |Z|198| |E|
T Desecrate this Fire! (Mount Hyjal) |QID|29030| |N|{Nordrassil} (62.78, 22.87)| |Z|198| |E|
A Desecrate this Fire! (Azshara) |QID|28919| |N|{Bilgewater Harbor} (60.5, 53.4)| |Z|76| |E|

R Orgrimmar |N|Travel to Orgrimmar (46, 38)| |Z|85|
N (item:23179) |N|Steal (item:23179) fly in with your mount (47, 38)| |L|23179| |Z|85| |T|
A Stealing Orgrimmar's Flame |N|Use (item:23179)| |U|23179| |QID|9324| |E|

A Desecrate this Fire! (Durotar) |QID|11770| |N|{Razor Hill} (52, 47)| |E| |Z|1|
A Desecrate this Fire! (Northern Barrens) |QID|11783| |N|{The Crossroads} (49, 54)| |E| |Z|10|
A Desecrate this Fire! (Mulgore) |QID|11777| |N|{Bloodhoof Village} (51, 59)| |E| |Z|7|

R Thunder Bluff |N|Travel to {Thunder Bluff} (21, 25)| |Z|88|
N (item:23180) |N|Steal (item:23180) fly in with your mount (21, 26)| |Z|88| |L|23180| |T|
A Stealing Thunder Bluff's Flame |N|Use (item:23180)| |U|23180| |QID|9325| |E|

A Desecrate this Fire! (Southern Barrens) |QID|28914| |N|{Desolation Hold} (40, 67)| |E| |Z|199|
A Honor the Flame (Southern Barrens) |QID|28926| |N|{Fort Triumph} (48, 72)| |E| |Z|199|
A Desecrate this Fire! (Dustwallow Marsh) |QID|11771| |N|{Brackenwall Village} (33, 30)| |E| |Z|70|
A Honor the Flame (Dustwallow Marsh) |QID|11815| |N|{Theramore Isle} (62, 40)| |E| |Z|70|
A Desecrate this Fire! (Tanaris) |QID|11802| |N|{Gadgetzan} (49, 28)| |E| |Z|71|
A Honor the Flame (Tanaris) |QID|11833| |N|{Gadgetzan} (52, 30)| |E| |Z|71|
N Skip Uldum |N|Uldum is optional and only players over level 30 that have previously completed the zone can do it| |PL|30|
A Honor the Flame (Uldum) |QID|28948| |N|{Ramkahen} (53.4, 31.9)| |E| |Z|249|
A Desecrate this Fire! (Uldum) |QID|28950| |N|{Ramkahen} (53.1, 34.5)| |E| |Z|249|
A Desecrate this Fire! (Un'Goro Crater) |QID|28920| |N|{Marshal's Stand} (56.3, 66.3)| |E| |Z|78|
A Honor the Flame (Un'Goro Crater)  |QID|28932|  |N|{Marshal's Stand} (59.9, 62.8)| |E| |Z|78|

R Silithus |N|Fly to {Silithus} (48, 22)| |Z|81|
N (npc:88206) |N|Speak to (npc:88206) to get (spell:176111) buff (78.98, 21.99)| |Z|81| |NPC|88206| |BUFF|609811|
A Desecrate this Fire! (Silithus) |QID|11800| |N|{Cenarion Hold} (50, 41)| |E| |Z|81|
A Honor the Flame (Silithus) |QID|11831| |N|{Cenarion Hold} (60, 33)| |E| |Z|81|
A Desecrate this Fire! (Feralas) |QID|11773| |N|{Camp Mojache} (72, 47)| |E| |Z|69|
A Honor the Flame (Feralas) |QID|11817| |N|{Feralas} (46, 43)| |E| |Z|69|
A Desecrate this Fire! (Desolace) |QID|11769| |N|{Shadowprey Village} (26, 76)| |E| |Z|66|
A Honor the Flame (Desolace) |QID|11809| |N|{Nijel's Point} (65, 16)| |E| |Z|66|
A Desecrate this Fire! (Stonetalon Mountains) |QID|11780| |N|{Sun Rock Retreat} (52, 62)| |E| |Z|65|
A Honor the Flame (Stonetalon Mountains) |QID|28928| |N|{Mirkfallon Lake} (49, 51)| |E| |Z|65|
A Desecrate this Fire! (Ashenvale) |QID|11765| |N|{Silverwind Refuge} (51, 66)| |E| |Z|63|
A Honor the Flame (Ashenvale)  |QID|11805| |N|{Forest Song} (86, 41)| |E| |Z|63|

N Pre-Quest Required |N|You need to unlock Vashj'ir portal by completing the quest (qid:14482) from the (guide:"203(30-35)#203(30-35)#203(30-35)") guide| |QID|14482|
R Silver Tide Hollow |N|Travel to {Silver Tide Hollow} (49.37, 41.98)| |Z|205|
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
