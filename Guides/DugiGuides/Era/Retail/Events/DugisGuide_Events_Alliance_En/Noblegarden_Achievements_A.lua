local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Noblegarden_Achievements_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Noblegarden|r ", "Noblegarden, Achievements", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Noblegarden]])|", function() 
return [[

N (item:45072) |N|Collect (item:45072) around {Goldshire} (42.32, 65.46)<br/>Tick this step| |Z|37| |AID|2798|

--Chocoholic
N Collect 100 (item:44791) |N|Use (item:45072) and collect 100 (item:44791)| |L|44791 100| |U|45072| |AID|2418|
N Eat 100 (item:44791) |N|Eat 100 (item:44791)| |U|44791| |AID|2418| |AC|1|

--Sunday's Finest
N Discover a (item:6833) |N|Discover a (item:6833) by opening (item:45072)'s.<br/><br/>Buying from a Vendor or Auction House will not count towards the (aid:248) achievement.| |U|45072| |L|6833| |AID|248| |AC|1|
N Discover a (item:151804) |N|Discover a (item:151804) by opening (item:45072)'s.<br/><br/>Buying from a Vendor or Auction House will not count towards the (aid:248) achievement.| |U|45072| |L|151804| |AID|248| |AC|2|

--Dressed for the Occasion
N Discover a (item:19028) |N|Discover a (item:19028) by opening (item:45072)'s.<br/><br/>Buying from a Vendor or Auction House will not count towards the (aid:248) achievement.| |U|45072| |L|19028| |AID|249| |AC|1|

--Spring Fling --Dolanaar // Teldrassil
R Dolanaar |N|Travel to {Dolanaar} (55.45, 50.42)| |Z|57| |AID|2419|
B (item:44794) |N|Speak to (npc:32836) and buy (item:44794) for 100 (item:44791) in {Dolanaar} (55.7, 51.3)| |Z|57| |L|44791| |AID|2419|
U (item:44794) |N|Use (item:44794) to add the pet to your Pet Journal| |U|44794| |AID|2419|
N Summon (npc:32791) |N|Summon your (npc:32791) Companion<br/><br/>Type in chat window /summonpet Spring Rabbit to summon your (npc:32791).| |AID|2419| |NPC|32791|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Dolanaar} (55.5, 51.0)| |Z|57| |NPC|32791| |AID|2419| |AC|2|

--Spring Fling --Azure Watch // Azuremyst Isle
R Azure Watch |N|Travel to {Azure Watch} (49.63, 49.23)| |Z|97| |AID|2419|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Azure Watch} (49.1, 52.0)| |Z|97| |NPC|32791| |AID|2419| |AC|1|

--Spring Fling --Kharanos // Dun Morogh
R Kharanos |N|Travel to {Kharanos} (54.44, 52.66)| |Z|87| |AID|2419|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Kharanos} (53.5, 51.2)| |Z|97| |NPC|32791| |AID|2419| |AC|4|

--Spring Fling --Goldshire // Elwynn Forest
R Goldshire |N|Travel to {Goldshire} (41.79, 64.56)| |Z|37| |AID|2419|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Goldshire} (42.41, 65.21)| |Z|37| |NPC|32791| |AID|2419| |AC|3|

--Desert Rose
R Desolace |N|Travel to {Desolace} (64.71, 10.44)| |Z|66| |AID|2436|
N Plant a Flower in Desolace |N|Use (item:44800) in {Desolace} (64.71, 10.44)| |Z|66| |U|44800| |AID|2436| |AC|2|

R Tanaris |N|Travel to {Tanaris} (51.38, 29.43)| |Z|71| |AID|2436|
N Plant a Flower in Tanaris |N|Use (item:44800) in {Tanaris} (51.38, 29.43)| |Z|66| |U|44800| |AID|2436| |AC|4|

R Thousand Needles |N|Travel to {Thousand Needles} (79.12, 71.90)| |Z|64| |AID|2436|
N Plant a Flower in Thousand Needles |N|Use (item:44800) in {Thousand Needles} (79.12, 71.90)| |Z|64| |U|44800| |AID|2436| |AC|5|

R Silithus |N|Travel to {Silithus} (54.49, 32.85)| |Z|81| |AID|2436|
N Plant a Flower in {Silithus} |N|Use (item:44800) in {Silithus} (54.49, 32.85)| |Z|81| |U|44800| |AID|2436| |AC|3|

R Badlands |N|Travel to {Badlands} (23.0, 60.0)| |Z|15| |AID|2436|
N Plant a Flower in Badlands |N|Use (item:44800) in {Badlands} (23.0, 60.0)| |Z|15| |U|44800| |AID|2436| |AC|1|

--Hard Boiled
R Marshal's Stand |N|Travel to {Marshal's Stand} (56.07, 64.11)| |Z|78| |AID|2416|
h Marshal's Stand |N|Speak to (npc:38488) and set your hearthstone to {Marshal's Stand} (55.28, 62.00)<br/>This will make it quicker to travel while you have (spell:61734) effects.| |Z|78| |NPC|38488| |AID|2416|
R Goldshire |N|Travel to {Goldshire} (41.81, 64.32)| |Z|37| |AID|2416|
N (item:45072) |N|Collect (item:45072) around {Goldshire} until you turn into a rabbit (42.32, 65.46)| |Z|37| |AID|2416| |BUFF|237000|
R Marshal's Stand |N|Travel to {Marshal's Stand} (56.07, 64.11)| |Z|78| |AID|2416|
N Lay an Egg |N|Lay a Noblegarden Egg in the {Golakka Hot Springs} as a rabbit during the Noblegarden celebration. (35.8, 50.7)<br/>Avoid enemies, as being hit will casue you to lose your disguise.| |Z|78| |AID|2416| |AC|1|

--Blushing Bride
R Goldshire |N|Travel to {Goldshire} (41.81, 64.32)| |Z|37| |AID|2576|
N Wear (item:151804)| |N|Wear (item:151804)<br/>Tick this step| |U|151804| |AID|2576|
N Wear (item:6833)| |N|Wear (item:6833)<br/>Tick this step| |U|6833| |AID|2576|
N Kiss Someone Wearing An (item:19028) |N|Use the kiss emote on a player wearing an Elegant Dress while you are wearing a White Tuxedo and Black Tuxedo Pants<br/>The Elegant Dress looks like a long pink dress when worn. (42.32, 65.46)| |Z|37| |AID|2576| |AC|1|

--Noble Garden
R Goldshire |N|Travel to {Goldshire} (41.81, 64.32)| |Z|37| |AID|2421|
B (item:44818) |N|Speak to (npc:32836) and buy (item:44818) in {Goldshire} (43.0, 65.2)| |Z|37| |NPC|32836| |L|44818| |AID|2421|
R Stormwind City |N|Travel to {Stormwind City} (62.86, 70.97)| |Z|84|
N Hide a Brightly Colored Egg |N|Place your (item:44818) anywhere in {Stormwind City}| |U|44818| |AID|2421| |AC|1|

--Shake Your Bunny-Maker
R Goldshire |N|Travel to {Goldshire} (41.81, 64.32)| |Z|37| |AID|2422|
B (item:45073) |N|Speak to (npc:32836) and buy (item:45073) in {Goldshire} (43.0, 65.2)| |Z|37| |NPC|32836| |L|45073| |AID|2422|
U (item:45073) |N|Place bunny ears on a level 18+ Blood Elf<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|1|
U (item:45073) |N|Place bunny ears on a level 18+ Tauren<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|9|
U (item:45073) |N|Place bunny ears on a level 18+ Draenei<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|2|
U (item:45073) |N|Place bunny ears on a level 18+ Human<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|6|
U (item:45073) |N|Place bunny ears on a level 18+ Troll<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|10|
U (item:45073) |N|Place bunny ears on a level 18+ Dwarf<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|3|
U (item:45073) |N|Place bunny ears on a level 18+ Night Elf<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|7|
U (item:45073) |N|Place bunny ears on a level 18+ Gnome<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|4|
U (item:45073) |N|Place bunny ears on a level 18+ Orc<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|8|
U (item:45073) |N|Place bunny ears on a level 18+ Goblin<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|5|
U (item:45073) |N|Place bunny ears on a level 18+ Undead<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|11|
U (item:45073) |N|Place bunny ears on a level 18+ Worgen<br/>Search around Dalaran, Durotar and Goldshire| |U|45073| |AID|2422| |AC|12|

N Noblegarden Achievements Complete!

]]
end)
    end

    function Guide:Unload()
    end
end