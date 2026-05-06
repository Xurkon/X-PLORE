local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Horde_En_Noblegarden_Achievements_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Noblegarden|r ", "Noblegarden, Achievements", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Noblegarden]])|", function() 
return [[

N (item:45072) |N|Collect (item:45072) around {Razor Hill} (52.54, 42.13)<br/>Tick this step| |Z|1| |AID|2798|

--Chocoholic
N Collect 100 (item:44791) |N|Use (item:45072) and collect 100 (item:44791)| |L|44791 100| |U|45072| |AID|2418|
N Eat 100 (item:44791) |N|Eat 100 (item:44791)| |U|44791| |AID|2418| |AC|1|

--Sunday's Finest
N Discover a (item:6833) |N|Discover a (item:6833) by opening (item:45072).<br/><br/>Buying from a Vendor or Auction House will not count towards the (aid:248) achievement.| |U|45072| |L|6833| |AID|248| |AC|1|
N Discover a (item:151804) |N|Discover a (item:151804) by opening (item:45072).<br/><br/>Buying from a Vendor or Auction House will not count towards the (aid:248) achievement.| |U|45072| |L|151804| |AID|248| |AC|2|

--Dressed for the Occasion
N Discover a (item:19028) |N|Discover a (item:19028) by opening (item:45072)'s.<br/><br/>Buying from a Vendor or Auction House will not count towards the (aid:248) achievement.| |U|45072| |L|19028| |AID|249| |AC|1|

--Spring Fling --Bloodhoof Village // Mulgore
R Bloodhoof Village |N|Travel to {Bloodhoof Village} (47.40, 58.64)| |Z|7| |AID|2419|
B (item:44794) |N|Speak to (npc:32837) and buy (item:44794) for 100 (item:44791) in {Bloodhoof Village} (49.0, 59.8)| |Z|7| |NPC|32837| |L|44791| |AID|2419|
U (item:44794) |N|Use (item:44794) to add the pet to your Pet Journal| |U|44794| |AID|2419|
N Summon (npc:32791) |N|Summon your (npc:32791) Companion<br/><br/>Type in chat window /summonpet Spring Rabbit to summon your (npc:32791).| |AID|2419| |NPC|32791|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Bloodhoof Village} (47.2, 59.3)| |Z|7| |NPC|32791| |AID|2419| |AC|1|

--Spring Fling --Razor Hill // Durotar
R Razor Hill |N|Travel to {Razor Hill} (52.89, 42.20)| |Z|1| |AID|2419|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Razor Hill} (52.54, 42.13)| |Z|1| |NPC|32791| |AID|2419| |AC|4|

--Spring Fling --Brill // Tirisfal Glades
R Brill |N|Travel to {Brill} (61.0, 52.7)| |Z|18| |AID|2419|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Brill} (61.0, 52.7)| |Z|18| |NPC|32791| |AID|2419| |AC|2|

--Spring Fling --Falconwing Square // Shadowmoon City
R Silvermoon City |N|Travel to {Silvermoon City} (47.5, 46.5)| |Z|110| |AID|2419|
N Find a Player with a (npc:32791) |N|Find your (npc:32791) another one to love in {Silvermoon City} (47.5, 46.5)| |Z|110| |NPC|32791| |AID|2419| |AC|3|

--Desert Rose
R Desolace |N|Travel to {Desolace} (57.0, 53.5)| |Z|66| |AID|2436|
N Plant a Flower in Desolace |N|Use (item:44800) in {Desolace} (57.0, 53.5)| |Z|66| |U|44800| |AID|2436| |AC|2|

R Silithus |N|Travel to {Silithus} (53.0, 34.7)| |Z|81| |AID|2436|
N Plant a Flower in {Silithus} |N|Use (item:44800) in {Silithus} (53.0, 34.7)| |Z|81| |U|44800| |AID|2436| |AC|3|

R Tanaris |N|Travel to {Tanaris} (52.1, 27.5)| |Z|71| |AID|2436|
N Plant a Flower in Tanaris |N|Use (item:44800) in {Tanaris} (52.1, 27.5)| |Z|71| |U|44800| |AID|2436| |AC|4|

R Thousand Needles |N|Travel to {Thousand Needles} (79.05, 71.85)| |Z|64| |AID|2436|
N Plant a Flower in Thousand Needles |N|Use (item:44800) in {Thousand Needles} (79.05, 71.85)| |Z|64| |U|44800| |AID|2436| |AC|5|

R Badlands |N|Travel to {Badlands} (64.25, 35.49)| |Z|15| |AID|2436|
N Plant a Flower in Badlands |N|Use (item:44800) in {Badlands} (64.25, 35.49)| |Z|15| |U|44800| |AID|2436| |AC|1|

--Hard Boiled
R Marshal's Stand |N|Travel to {Marshal's Stand} (56.07, 64.11)| |Z|78| |AID|2416|
h Marshal's Stand |N|Speak to (npc:38488) and set your hearthstone to {Marshal's Stand} (55.28, 62.00)<br/>This will make it quicker to travel while you have (spell:61734) effects.| |Z|78| |NPC|38488| |AID|2416|
R Razor Hill |N|Travel to {Razor Hill} (52.89, 42.20)| |Z|1| |AID|2416|
N (item:45072) |N|Collect (item:45072) around {Razor Hill} until you turn into a rabbit (52.54, 42.13)| |Z|1| |AID|2416| |BUFF|237000|
R Marshal's Stand |N|Travel to {Marshal's Stand} (56.07, 64.11)| |Z|78| |AID|2416|
N Lay an Egg |N|Lay a Noblegarden Egg in the {Golakka Hot Springs} as a rabbit during the Noblegarden celebration. (35.8, 50.7)<br/>Avoid enemies, as being hit will casue you to lose your disguise.| |Z|78| |AID|2416| |AC|1|

--Blushing Bride
R Orgrimmar |N|Travel to {Orgrimmar} (49.27, 59.36)| |Z|85| |AID|2576|
N Wear (item:151804)| |N|Wear (item:151804)<br/>Tick this step| |U|151804| |AID|2576|
N Wear (item:6833)| |N|Wear (item:6833)<br/>Tick this step| |U|6833| |AID|2576|
N Kiss Someone Wearing An (item:19028) |N|Use the kiss emote on a player wearing an Elegant Dress while you are wearing a White Tuxedo and Black Tuxedo Pants<br/>The Elegant Dress looks like a long pink dress when worn. (51.11, 78.96)| |Z|85| |AID|2576| |AC|1|

--Noble Garden
R Silvermoon City |N|Travel to {Silvermoon City} (60.3, 28.0)| |Z|110| |AID|2420|
B (item:44818) |N|Speak to (npc:32837) and buy a (item:44818) in {Silvermoon City} (47.6, 47.2)| |Z|110| |NPC|32837| |L|44818| |AID|2420| 
N Hide a Brightly Colored Egg |N|Place your (item:44818) anywhere in {Silvermoon City}| |U|44818| |AID|2420| |AC|1|

--Shake Your Bunny-Maker
R Razor Hill |N|Travel to {Razor Hill} (52.89, 42.20)| |Z|1| |AID|2422|
B (item:45073) |N|Speak to (npc:32837) and buy a (item:45073) in {Razor Hill} (51.8, 41.8)| |Z|1| |NPC|32837| |L|45073| |AID|2422|
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