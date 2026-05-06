local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Horde_En_Noblegarden_Quests_Dailies_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Noblegarden|r ", "Noblegarden, Quests and Dailies", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Noblegarden]])|", function() 
return [[

--R Orgrimmar |QID|13483| |N|Travel to {Orgrimmar} (57.22, 89.76) |Z|85|
--A Spring Gatherers |QID|13483| |N|(npc:19175) in {Valley of Strength} (51.75, 74.97)| |Z|85| |NPC|19175|

R Razor Hill |QID|13483| |N|Travel to {Razor Hill} (53.07, 43.61)| |Z|1|
T Spring Gatherers |QID|13483| |N|(npc:19175) in {Razor Hill} (51.86, 42.08)| |Z|1| |O| |NPC|19175|
A The Great Egg Hunt |QID|13479| |N|(npc:19175) in {Razor Hill} (51.86, 42.08)| |Z|1| |NPC|19175| |D|
A A Tisket, A Tisket, A Noblegarden Basket |QID|13503| |N|(npc:32837) in {Razor Hill} (51.92, 41.88)| |Z|1| |NPC|32837| |D|
N As you go... |AYG|13479| |N|Collect 20 (item:45072) around {Razor Hill} (52.54, 42.13)| |Z|1| |L|45072 20| |D|
C The Great Egg Hunt |QID|13479| |N|Use (item:45072) and collect 20 (item:44806) (52.54, 42.13)| |Z|1| |U|45072| |L|44806 20| |D|
C A Tisket, A Tisket, A Noblegarden Basket |QID|13503| |N|Use (item:45072) and collect 10 (item:44791) (52.54, 42.13)| |Z|1| |U|45072| |L|44791 10| |D|
T A Tisket, A Tisket, A Noblegarden Basket |QID|13503| |N|(npc:32837) in {Razor Hill} (51.92, 41.88)| |Z|1| |NPC|32837| |D|
T The Great Egg Hunt |QID|13479| |N|(npc:19175) in {Razor Hill} (51.86, 42.08)| |Z|1| |NPC|19175| |D|

T A Spring Awakening |QID|79136| |N|(npc:217125) in {Razor Hill} (52.58, 41.16)| |Z|1| |NPC|217125|
A What the Duck? |QID|79575| |N|(npc:217125) in {Razor Hill} (52.58, 41.16)| |Z|1| |NPC|217125|
C What the Duck? |QID|79575| |N|Use (item:216487) to scare off 10 ducks in {Razor Hill} (51.26, 40.70)| |Z|1| |U|216487|
T What the Duck? |QID|79575| |N|(npc:217125) in {Razor Hill} (52.59, 41.21)| |Z|1| |NPC|217125|
A A Fowl Concoction |QID|79576| |N|(npc:217125) in {Razor Hill} (52.59, 41.21)| |Z|1| |NPC|217125|
C A Fowl Concoction |QID|79576| |N|Speak with (npc:217147) in {Pathfinder's Den} (56.85, 90.94)| |Z|85| |NPC|217147|
T A Fowl Concoction |QID|79576| |N|(npc:217125) in {Razor Hill} (52.57, 41.19)| |Z|1| |NPC|217125|
A Duck Tales |QID|79577| |N|(npc:217147) in {Razor Hill} (52.54, 41.08)| |Z|1| |NPC|217147|
N (item:216488) |QID|79577.1| |N|Use (item:216488) in {Razor Hill} (52.54, 41.08)| |Z|1| |U|216488|
C Duck Tales |QID|79577| |N|Use (item:216488) and speak to 5 (npc:217725) to get information in {Razor Hill} (52.12, 41.27)| |Z|1| |NPC|217725|
T Duck Tales |QID|79577| |N|(npc:217125) in {Razor Hill} (52.57, 41.20)| |Z|1| |NPC|217125|
A Just a Waddle Away |QID|79578| |N|(npc:217125) in {Razor Hill} (52.57, 41.20)| |Z|1| |NPC|217125|
N (npc:218619) |QID|79578.2| |N|Use (item:216488) and find (npc:218619) in {Southfury Watershed} (48.57, 44.07)| |Z|1| |U|216488| |NPC|218619|
N (item:216489) |QID|79578.3| |N|Collect (item:216489) from the ground in {Southfury Watershed} (44.46, 35.25)| |Z|1|
T Just a Waddle Away |QID|79578| |N|(npc:217125) in {Razor Hill} (52.58, 41.17)| |Z|1| |NPC|217125|
A Quacking Down |QID|79135| |N|(npc:217125) in {Razor Hill} (52.58, 41.17)| |Z|1| |O| |NPC|217125|
C Quacking Down |QID|79135| |N|Scare off 10 ducks using (item:216487) in {Razor Hill} (51.99, 40.17)| |Z|1| |O| |U|216487| |NPC|217725|
T Quacking Down |QID|79135| |N|(npc:217125) in {Razor Hill} (52.57, 41.16)| |Z|1| |O| |NPC|217125|

N Noblegarden Quest Chain Complete!

]]
end)
    end

    function Guide:Unload()
    end
end