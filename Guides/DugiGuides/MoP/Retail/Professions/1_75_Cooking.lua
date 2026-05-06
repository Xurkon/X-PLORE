local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Cooking")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Cooking (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|Pandaren characters have +15 Cooking skill because of their passive (spell:107073). An extra 15 Cooking skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|90 1|

R Halfhill |N|Travel to {Halfhill} (55.90, 49.43)| |Z|376| |P|90 1|
N Train Pandaria Cooking |N|(npc:64231) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |P|90 1|
N Learn Cooking Recipes |N|Speak to (npc:64231) and learn all available Cooking Recipes {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |P|90 2|

A So You Want to Be a Chef... |QID|31281| |N|(npc:64231) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |P|90 2|
B (item:74660) |QID|31281| |N|Speak to (npc:62431) and buy 5 (item:74660) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |L|74660 5| |P|90 2|
C So You Want to Be a Chef... |QID|31281.1| |CO| |N|Cook 5 (spell:125117)<br/><b>5 (item:74660)| |L|86057 5| |P|90 7|
T So You Want to Be a Chef... |QID|31281| |N|(npc:64231) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |P|90 7|
A Ready for Greatness |QID|31302| |N|(npc:64231) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |P|90 7|
B (item:74851) |QID|31302| |N|Speak to (npc:62431) and buy 5 (item:74851) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |L|74851 5| |P|90 7|
B (item:74852) |QID|31302| |N|Speak to (npc:62431) and buy 5 (item:74852) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |L|74852 5| |P|90 7|
C Ready for Greatness |QID|31302| |CO| |N|Cook 5 (spell:125122)<br/><b>5 (item:74851)<br/><b>5 (item:74852)| |P|90 12|
T Ready for Greatness |QID|31302| |N|(npc:64231) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |P|90 15|

N Choose One Specialization to Level Up |N|(choice:1:Way of the Brew)<br/>(choice:2:Way of the Grill)<br/>(choice:3:Way of the Oven)<br/>(choice:4:Way of the Pot)<br/>(choice:5:Way of the Steamer)<br/>(choice:6:Way of the Wok)|

--Way of the Brew
N Materials Required |N|Collect materials for level 1-75<br/><b>41 (item:74845)<br/><b>100 (item:74847)<br/><b>350 (item:74846)<br/><b>5 (item:74853)<br/><b>250 (item:74840)| |CHOICE|1| |P|90 75|
A Way of the Brew |QID|31479| |N|(npc:64231) in {The Halfhill Market} (53.54, 51.14)| |Z|376| |NPC|64231| |CHOICE|1| |P|90 15|
B (item:74845) |QID|31479| |N|Speak to (npc:62431) and buy a (item:74845) in {The Halfhill Market} (53.59, 51.17)| |Z|376| |NPC|64231| |L|74845| |CHOICE|1| |P|90 15|
T Way of the Brew |QID|31479| |N|(npc:58717) in {The Halfhill Market} (53.18, 52.12)| |Z|376| |NPC|58717| |CHOICE|1| |P|90 15|

N Learn Way of the Brew Recipes |N|Speak to (npc:58717) and learn all available Way of the Brew Recipes in {The Halfhill Market} (53.18, 52.12)| |Z|376| |NPC|58717| |CHOICE|1| |P|90 16|
N 1-30 (spell:124052) |CO| |N|Cook 40 (spell:12452)<br/><b>40 (item:74845)| |CHOICE|1| |P|90 30|

N Learn Way of the Brew Recipes |N|Speak to (npc:58717) and learn all available Way of the Brew Recipes in {The Halfhill Market} (53.18, 52.12)| |Z|376| |NPC|58717| |CHOICE|1| |P|90 31|
N 30-50 (spell:124053) |CO| |N|Cook 20 (spell:124053)<br/><b>100 (item:74847)<br/><b>100 (item:74846)| |CHOICE|1| |P|90 50|

N Learn Way of the Brew Recipes |N|Speak to (npc:58717) and learn all available Way of the Brew Recipes in {The Halfhill Market} (53.18, 52.12)| |Z|376| |NPC|58717| |CHOICE|1| |P|90 51|
N 50-75 (spell:125602) |CO| |N|Cook 5 (spell:125602)<br/><b>5 (item:74853)<br/><b>250 (item:74840)<br/><b>250 (item:74846)| |CHOICE|1| |P|90 75|

--Way of the Grill
N Materials Required |N|Collect materials for level 1-75<br/><b>30 (item:74833)<br/><b>25 (item:74856)<br/><b>250 (item:74848)<br/><b>5 (item:74853)<br/><b>50 (item:74838)<br/><b>50 (item:74860)| |CHOICE|2| |P|90 75|
A Way of the Grill |QID|31311| |N|(npc:64231) in {The Halfhill Market} (53.56, 51.17)| |Z|376| |NPC|64231| |CHOICE|2| |P|90 15|
C Way of the Grill |QID|31311| |N|Bring 5 (item:74833) to (npc:58712) in {The Halfhill Market} (53.00, 51.38)| |Z|376| |NPC|58712| |CHOICE|2| |P|90 15|
T Way of the Grill |QID|31311| |N|(npc:64231) in {The Halfhill Market} (53.00, 51.38)| |Z|376| |NPC|58712| |CHOICE|2| |P|90 15|

N Learn Way of the Grill Recipes |N|Speak to (npc:64231) and learn all available Way of the Grill Recipes in {The Halfhill Market} (53.00, 51.38)| |Z|376| |NPC|58712| |CHOICE|2| |P|90 15|
N 1-25 (spell:104298) |CO| |N|Cook 25 (spell:104298)<br/><b>25 (item:74833)| |CHOICE|2| |P|90 25|

N Learn Way of the Grill Recipes |N|Speak to (npc:64231) and learn all available Way of the Grill Recipes in {The Halfhill Market} (53.00, 51.38)| |Z|376| |NPC|58712| |CHOICE|2| |P|90 26|
N 25-50 (spell:104299) |CO| |N|Cook 25 (spell:104299)<br/><b>25 (item:74856)<br/><b>250 (item:74848)| |CHOICE|2| |P|90 50|

N Learn Way of the Grill Recipes |N|Speak to (npc:64231) and learn all available Way of the Grill Recipes in {The Halfhill Market} (53.00, 51.38)| |Z|376| |NPC|58712| |CHOICE|2| |P|90 51|
N 50-75 (spell:125141) |CO| |N|Cook 5 (spell:125141)<br/><b>5 (item:74853)<br/><b>50 (item:74838)<br/><b>50 (item:74860)<br/><b>250 (item:74850)| |CHOICE|2| |P|90 75|

--Way of the Oven
N Materials Required |N|Collect materials for level 1-75<br/><b>30 (item:74839)<br/><b>50 (item:74865)<br/><b>5 (item:74853)<br/><b>50 (item:74865)<br/><b>250 (item:74842)<br/><b>250 (item:74837)| |CHOICE|3| |P|90 75|
A Way of the Oven |QID|31478| |N|(npc:64231) in {The Halfhill Market} (53.59, 51.14)| |Z|376| |NPC|64231| |CHOICE|3| |P|90 15|
C Way of the Oven |QID|31478| |N|Bring 5 (item:74839) to (npc:58716) in {The Halfhill Market} (53.35, 51.60)| |Z|376| |NPC|58716| |L|74839 5| |CHOICE|3| |P|90 15|
T Way of the Oven |QID|31478| |N|(npc:58716) in {The Halfhill Market} (53.35, 51.60)| |Z|376| |NPC|58716| |CHOICE|3| |P|90 15|

N Learn Way of the Oven Recipes |N|Speak to (npc:58716) and learn all available Way of the Oven Recipes in {The Halfhill Market} (53.35, 51.60)| |Z|376| |NPC|58716| |CHOICE|3| |P|90 15|
N 1-25 (spell:104310) |CO| |N|Cook 25 (spell:104310)<br/><b>25 (item:74839)| |CHOICE|3| |P|90 25|

N Learn Way of the Oven Recipes |N|Speak to (npc:58716) and learn all available Way of the Oven Recipes in {The Halfhill Market} (53.35, 51.60)| |Z|376| |NPC|58716| |CHOICE|3| |P|90 26|
N 25-50 (spell:104311) |CO| |N|Cook 25 (spell:104311)<br/><b>50 (item:74865)| |CHOICE|3| |P|90 50|

N Learn Way of the Oven Recipes |N|Speak to (npc:58716) and learn all available Way of the Oven Recipes in {The Halfhill Market} (53.35, 51.60)| |Z|376| |NPC|58716| |CHOICE|3| |P|90 51|
N 50-75 (spell:125600) |CO| |N|Cook 5 (spell:125600)<br/><b>5 (item:74853)<br/><b>50 (item:74865)<br/><b>250 (item:74842)<br/><b>250 (item:74837)| |CHOICE|3| |P|90 75|

--Way of the Pot
N Materials Required |N|Collect materials for level 1-75<br/><b>30 (item:74856)<br/><b>25 (item:74837)<br/><b>500 (item:74841)<br/><b>5 (item:74853)<br/><b>50 (item:74834)<br/><b>50 (item:74864)| |CHOICE|4| |P|90 75|
A Way of the Pot |QID|31472| |N|(npc:64231) in {The Halfhill Market} (53.56, 51.16)| |Z|376| |NPC|64231| |CHOICE|4| |P|90 15|
C Way of the Pot |QID|31472| |N|Bring 5 (item:74856) to (npc:58714) in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58714| |L|74839 5| |CHOICE|4| |P|90 15|
T Way of the Pot |QID|31472| |N|(npc:64231) in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|64231| |CHOICE|4| |P|90 15|

N Learn Way of the Pot Recipes |N|Speak to (npc:58714) and learn all available Way of the Oven Recipes in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58714| |CHOICE|4| |P|90 15|
N 1-25 (spell:104304) |CO| |N|Cook 25 (spell:104304)<br/><b>25 (item:74856)| |CHOICE|4| |P|90 25|

N Learn Way of the Pot Recipes |N|Speak to (npc:58714) and learn all available Way of the Oven Recipes in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58714| |CHOICE|4| |P|90 26|
N 25-50 (spell:104305) |CO| |N|Cook 25 (spell:104305)<br/><b>25 (item:74837)<br/><b>250 (item:74841)| |CHOICE|4| |P|90 50|

N Learn Way of the Pot Recipes |N|Speak to (npc:58714) and learn all available Way of the Oven Recipes in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58714| |CHOICE|4| |P|90 51|
N 50-75 (spell:125596) |CO| |N|Cook 5 (spell:125596)<br/><b>5 (item:74853)<br/><b>250 (item:74841)<br/><b>50 (item:74834)<br/><b>50 (item:74864)| |CHOICE|4| |P|90 75|

--Way of the Steamer
N Materials Required |N|Collect materials for level 1-75<br/><b>30 (item:74857)<br/><b>75 (item:74859)<br/><b>250 (item:74843)<br/><b>5 (item:74853)<br/><b>250 (item:74847)<br/><b>50 (item:74839)| |CHOICE|5| |P|90 75|
A Way of the Steamer |QID|31475| |N|(npc:64231) in {The Halfhill Market} (53.58, 51.15)| |Z|376| |NPC|64231| |CHOICE|5| |P|90 15|
C Way of the Steamer |QID|21475| |N|Bring 5 (item:74857) to (npc:58715) in {The Halfhill Market} (52.60, 51.72)| |Z|376| |NPC|58715| |L|74857 5| |CHOICE|5| |P|90 15|
T Way of the Steamer |QID|31475| |N|(npc:58715) in {The Halfhill Market} (52.60, 51.72)| |Z|376| |NPC|58715| |CHOICE|5| |P|90 15|

N Learn Way of the Steamer Recipes |N|Speak to (npc:58715) and learn all available Way of the Steamer Recipes in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58715| |CHOICE|5| |P|90 15|
N 1-25 (spell:104307) |CO| |N|Cook 25 (spell:104307)<br/><b>25 (item:74857)| |CHOICE|5| |P|90 25|

N Learn Way of the Steamer Recipes |N|Speak to (npc:58715) and learn all available Way of the Steamer Recipes in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58715| |CHOICE|5| |P|90 26|
N 25-50 (spell:104308) |CO| |N|Cook 25 (spell:104308)<br/><b>25 (item:74859)<br/><b>250 (item:74843)| |CHOICE|5| |P|90 50|

N Learn Way of the Steamer Recipes |N|Speak to (npc:58715) and learn all available Way of the Steamer Recipes in {The Halfhill Market} (52.58, 51.61)| |Z|376| |NPC|58715| |CHOICE|5| |P|90 51|
N 50-75 (spell:125598) |CO| |N|Cook 5 (spell:125598)<br/><b>5 (item:74853)<br/><b>50 (item:74859)<br/><b>250 (item:74847)<br/><b>50 (item:74839)| |CHOICE|5| |P|90 75|

--Way of the Wok
N Materials Required |N|Collect materials for level 1-75<br/><b>55 (item:74841)<br/><b>25 (item:74864)<br/><b>25 (item:74839)<br/><b>5 (item:74853)<br/><b>50 (item:74857)<br/><b>50 (item:75014)<br/><b>250 (item:74844)| |CHOICE|6| |P|90 75|
A Way of the Wok |QID|31470| |N|(npc:64231) in {The Halfhill Market} (53.55, 51.19)| |Z|376| |NPC|64231| |CHOICE|6| |P|90 15|
C Way of the Wok |QID|31470| |N|Bring 5 (item:74841) to (npc:58713) in {The Halfhill Market} (52.78, 51.88)| |Z|376| |NPC|64231| |L|74851 5| |CHOICE|6| |P|90 15|
T Way of the Wok |QID|31470| |N|(npc:58713) in {The Halfhill Market} (52.78, 51.88)| |Z|376| |NPC|58713| |CHOICE|6| |P|90 15|

N Learn Way of the Wok Recipes |N|Speak to (npc:58713) and learn all available Way of the Wok Recipes in {The Halfhill Market} (52.78, 51.88)| |Z|376| |NPC|58713| |CHOICE|6| |P|90 15|
N 1-25 (spell:104301) |CO| |N|Cook 25 (spell:104301)<br/><b>50 (item:74841)| |CHOICE|6| |P|90 25|

N Learn Way of the Wok Recipes |N|Speak to (npc:58713) and learn all available Way of the Wok Recipes in {The Halfhill Market} (52.78, 51.88)| |Z|376| |NPC|58713| |CHOICE|6| |P|90 26|
N 25-50 (spell:104302) |CO| |N|Cook 25 (spell:104302)<br/><b>25 (item:74864)<br/><b>25 (item:10439)| |CHOICE|6| |P|90 50|

N Learn Way of the Wok Recipes |N|Speak to (npc:58713) and learn all available Way of the Wok Recipes in {The Halfhill Market} (52.78, 51.88)| |Z|376| |NPC|58713| |CHOICE|6| |P|90 51|
N 50-75 (spell:125594) |CO| |N|Cook 5 (spell:125594)<br/><b>5 (item:74853)<br/><b>50 (item:74857)<br/><b>50 (item:75014)<br/><b>250 (item:74844)| |CHOICE|6| |P|90 75|

N Guide Complete |N|You have reach level 75 Pandaria Cooking|

]]
end, {description = [[This guide covers how to level the Pandaria Cooking profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
