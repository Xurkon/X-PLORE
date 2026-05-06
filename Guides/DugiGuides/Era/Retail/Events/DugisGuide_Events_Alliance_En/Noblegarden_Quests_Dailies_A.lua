local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Noblegarden_Quests_Dailies_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Noblegarden|r ", "Noblegarden, Quests and Dailies", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_Noblegarden]])|", function() 
return [[

R Goldshire |QID|13484| |N|Travel to {Goldshire} (41.76, 64.62)| |Z|37|
T Spring Collectors |QID|13484| |N|(npc:32799) in {Goldshire} (42.93, 65.36)| |Z|37| |O| |NPC|32799|
A The Great Egg Hunt |QID|13480| |N|(npc:32799) in {Goldshire} (42.93, 65.36)| |Z|37| |NPC|32799| |D|
A A Tisket, A Tisket, A Noblegarden Basket |QID|13502| |N|(npc:32836) in {Goldshire} (42.95, 65.28)| |Z|37| |NPC|32836| |D|
A What the Duck? |QID|79322| |N|(npc:211646) in {Goldshire} (42.11, 65.08)| |Z|37| |NPC|211646|
C What the Duck? |QID|79322| |N|Scare off 10 (npc:212243) using the (item:210558) in {Goldshire} (39.85, 63.78)| |Z|37| |U|210558| |NPC|212243|
C The Great Egg Hunt |QID|13480| |N|Use (item:45072) and collect 20 (item:44806) (42.32, 65.46)| |Z|37| |U|45072| |L|44806 20| |D|
C A Tisket, A Tisket, A Noblegarden Basket |QID|13502| |N|Use (item:45072) and collect 10 (item:44791) (42.32, 65.46)| |Z|37| |U|45072| |L|44791 10| |D|
T A Tisket, A Tisket, A Noblegarden Basket |QID|13502| |N|(npc:32836) in {Goldshire} (42.95, 65.28)| |Z|37| |NPC|32836| |D|
T The Great Egg Hunt |QID|13480| |N|(npc:32799) in {Goldshire} (42.93, 65.36)| |Z|37| |NPC|32799| |D|
T What the Duck? |QID|79322| |N|(npc:211646) in {Goldshire} (42.08, 65.02)| |Z|37| |NPC|211646|
A A Fowl Concoction |QID|79323| |N|(npc:211646) in {Goldshire} (42.08, 65.02)| |Z|37| |NPC|211646|
N (npc:216129) |QID|79323.1| |N|Speak with (npc:216129) in {Wizard's Sanctum} (48.69, 87.06)| |Z|84| |NPC|216129|
T A Fowl Concoction |QID|79323| |N|(npc:211646) in {Goldshire} (42.01, 64.97)| |Z|37| |NPC|211646|
A Duck Tales |QID|79330| |N|(npc:216129) in {Goldshire} (42.01, 64.97)| |Z|37| |NPC|216129|
N (item:212608) |QID|79330.1| |N|Use (item:212608) in {Goldshire} (42.01, 64.86)| |Z|37| |U|212608|
N (npc:212243) |QID|79330.2|  |N|Get information from 5 ducks (41.11, 63.32)| |Z|37| |NPC|212243|
T Duck Tales |QID|79330| |N|(npc:211646) in {Goldshire} (42.05, 65.01)| |Z|37| |NPC|211646|
A Just a Waddle Away |QID|79331| |N|(npc:211646) in {Goldshire} (42.05, 65.01)| |Z|37| |NPC|211646|
N (npc:213665) |QID|79331.2| |N|Use (item:212608) and find (npc:213665) (33.38, 70.71)| |Z|37| |U|212608| |NPC|213665|
A Feathered Fiend |QID|73192| |N|Start from (item:210594) from (npc:213665) (30.78, 90.49)| |Z|37| |U|210594| |O| |NPC|213665|
N (item:212643) |QID|79331.3| |N|Collect (item:212643) in {The Stonefield Farm} (30.42, 91.34)| |Z|37|
C Just a Waddle Away |QID|79331| |N|Discover the duck's hiding spot. in {The Stonefield Farm} (30.42, 91.34)| |Z|37|
T Just a Waddle Away |QID|79331| |N|(npc:211646) in {Goldshire} (42.07, 65.00)| |Z|37| |NPC|211646|
T Feathered Fiend |QID|73192| |N|(npc:211646) in {Goldshire} (42.07, 65.00)| |Z|37|| |O| |NPC|211646|
A Quacking Down |QID|78274| |N|(npc:211646) in {Goldshire} (42.07, 65.00)| |Z|37| |D| |NPC|211646|
C Quacking Down |QID|78274| |N|Scare off 10 (npc:212243) using the (item:210558) in {Goldshire} (39.85, 63.78)| |Z|37| |U|210558| |D| |NPC|212243|
T Quacking Down |QID|78274| |N|(npc:211646) in {Goldshire} (42.05, 65.07)| |Z|37| |D|  |NPC|211646|

N Noblegarden Quest Chain Complete!

]]
end)
    end

    function Guide:Unload()
    end
end