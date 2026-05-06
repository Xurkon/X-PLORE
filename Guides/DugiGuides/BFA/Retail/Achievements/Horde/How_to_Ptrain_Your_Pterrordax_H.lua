local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_How_to_Ptrain_Your_Pterrordax_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "How to Ptrain Your Pterrordax", nil, "Horde", nil, "A", nil, function()
return [[

N Read |N|This guide will help with getting the (aid:13030) achievement, and can be used with the Sticky Frame.<br/>Tick this step.|
N Note |N|This will take about 1 month to complete.|

N Required |N|You will need to be level 50 to start the quest line.| |PL|50|

- Pterrordax Egg Required to Start the Quest Line
R The Sliver |QID|50393| |N|Travel to {The Sliver} (53.12, 19.29)| |Z|1165|
N Location #1 |QID|50393| |N|You will need to kill (npc:126618) to get (item:157782) in {Zanchul} (39.30, 13.32).<br/>The (item:157782) has a drop rate of 0.08% and is required to start the quest line.| |Z|1165| |NPC|126618| |L|157782|
R Scaletrader Post |QID|50393| |N|Travel to {Scaletrader Post} (70.78, 29.60)| |Z|862|
N Location #2 |QID|50393| |N|You will need to kill (npc:122113) to get (item:157782) in {Skyrender Eyrie} (66.87, 33.24).<br/>The (item:157782) has a drop rate of 0.03% and is required to start the quest line.| |Z|862| |NPC|122113| |L|157782|

- First Set of Quests
A A Child of Paku |QID|50393| |N|Auto Accept|
R Warbeast Kraal |QID|50393| |N|Travel to {Warbeast Kraal} (67.24, 42.99)| |Z|862|
h Warbeast Kraal |QID|50393| |N|Set Hearthstone to {Warbeast Kraal} (66.58, 42.37)| |Z|862| |NPC|123062|
T A Child of Paku |QID|50393| |N|(npc:127377) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|127377|
A Your Problem Now |QID|50394| |N|(npc:127377) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|127377|
C Egg Placed in a Suitable Nest |QID|52305.1| |N|Place egg in the nest in {Pterror Rise} (70.76, 50.88)| |Z|862|
C Egg Hatched |QID|52305.2| |N|Wait for the egg to hatch in {Pterror Rise} (70.76, 50.88)| |Z|862|
T Your Problem Now |QID|50394| |N|(npc:127377) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|127377|
A SKREEEEE! |QID|50402| |N|(npc:133678) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|133678|
C Ask (npc:127377) for Help |QID|50402| |N|Speak to (npc:127377) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|127377|
R Warbeast Kraal |QID|50402| |N|Travel to {Warbeast Kraal} (67.24, 42.99)| |Z|862|
B (item:157779) |QID|50402| |N|Speak to (npc:135249) and buy (item:157779) for 8<g> 50<s> in {Warbeast Kraal} (66.88, 41.66)| |Z|862| |NPC|135249| |L|157779|
C SKREEEEE! |QID|50402| |N|Feed (npc:133678) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|133678|
T SKREEEEE! |QID|50402| |N|(npc:133678) in {Pterror Rise} (71.47, 49.22)| |Z|862| |NPC|133678|
A Nature Versus Nurture |QID|52305| |N|(npc:135308) in {Pterror Rise} (70.76, 50.88)| |Z|862| |NPC|135308|

- Daily Quests for 7 days
N Accept Daily Quests |MD| |N|Accept a quest from (npc:135308) or (npc:135455) in {Pterror Rise} tick this objective AFTER you accept the quest.| |Z|862| |NPC|135308, 135455| |TID|50305|

A A Nose for Ptrouble |QID|50801| |N|(npc:135308) in {Pterror Rise} (70.76, 50.86)| |Z|862| |NPC|135308| |D| |TID|52305|
A SKREEEEE! |QID|50796| |N|(npc:135279) in {Pterror Rise} (70.73, 51.09)| |Z|862| |NPC|135279| |D| |TID|52305|
A Skree... |QID|50791| |N|(npc:135272) in {Pterror Rise} (70.73, 50.84)| |Z|862| |NPC|133272| |D| |TID|52305|
A Out on a Limb |QID|50798| |N|(npc:135308) in {Pterror Rise} (70.76, 50.85)| |Z|862| |NPC|135308| |D| |TID|52305|

C A Nose for Ptrouble |QID|50801| |N|Kill (npc:135304) in {The Slough} (62.09, 45.60)| |Z|862| |NPC|135304, 135303| |D| |TID|52305|
B (item:157779) |QID|50796.1| |N|Speak to (npc:135249) and buy (item:157779) for 8<g> 50<s> in {Warbeast Kraal} (66.88, 41.66)| |Z|862| |NPC|135249| |L|157779| |D| |TID|52305|
C SKREEEEE! |QID|50796.2| |N|Feed (npc:135279) in {Pterror Rise} (70.72, 51.07)| |Z|862| |NPC|135279| |D| |TID|52305|
C Soothe (npc:135272) |QID|50791.1| |N|Pick up (npc:135272) in {Pterror Rise} (70.77, 50.85)| |Z|862| |NPC|135272| |D| |TID|52305|
C Put (npc:135272) Back On The Nest |QID|50791.2| |N|Put (npc:135272) back on the nest in {Pterror Rise} (70.76, 50.85)| |Z|862| |NPC|135272| |D| |TID|52305|
C Out on a Limb |QID|50798| |N|Click on the Long Stick in {The Slough} (63.11, 42.96)| |Z|862| |D| |TID|52305|

T A Nose for Ptrouble |QID|50801| |N|(npc:133678) in {Pterror Rise} (70.78, 50.82)| |Z|862| |NPC|133678| |D| |TID|50395|
T SKREEEEE! |QID|50796| |N|(npc:133678) in {Pterror Rise} (70.72, 51.07)| |Z|862| |NPC|133678| |D| |TID|50395|
T Skree... |QID|50791| |N|(npc:133678) in {Pterror Rise} (70.77, 50.86)| |Z|862| |NPC|127377| |D| |TID|50395|
T Out on a Limb |QID|50798| |N|(npc:133678) in {Pterror Rise} (70.79, 50.81)| |Z|862| |NPC|133678| |D| |TID|50395|

- Second Set of Quests
C Nature Versus Nurture |QID|52305| |N|Reset and reload guide to Complete dailies until (npc:135455) is ready to fly.|
T Nature Versus Nurture |QID|50305| |N|(npc:133678) in {Pterror Rise} (70.78, 50.82)| |Z|862| |NPC|133678|
A The Call of the Skies |QID|50395| |N|(npc:133678) in {Pterror Rise} (70.75, 50.85)| |Z|862| |NPC|133678|
C The Call of the Skies |QID|50395.1| |N|Speak to (npc:133678) and watch him fall in {Pterror Rise} (70.75, 50.85)| |Z|862| |NPC|133678|
T The Call of the Skies |QID|50395| |N|(npc:127377) in {Pterror Rise} (70.94, 51.02)| |Z|862| |NPC|127377|
A Fear of Falling |QID|50401| |N|(npc:127377) in {Pterror Rise} (70.88, 50.98)| |Z|862| |NPC|127377|
C Find (npc:133678) |QID|50401.1| |N|Click on (npc:133678) inside the ship wreckage in {Talanji's Rebuke} (74.33, 51.91)| |Z|862| |NPC|133678|
C (item:158885) |QID|50401.2| |N|Collect 8 (item:158885) from (npc:135412) in {Talanji's Rebuke} (74.52, 49.46)| |Z|862| |NPC|135412| |L|158885 8|
T Fear of Falling |QID|50401| |N|(npc:133678) in {Talanji's Rebuke} (74.35, 51.91)| |Z|862| |NPC|133678|
A Back to the Nest |QID|50412| |N|(npc:133678) in {Talanji's Rebuke} (74.35, 51.91)| |Z|862| |NPC|133678|
C Back to the Nest |QID|50412| |N|Head back to the nest in {Pterror Rise} (70.78, 50.81)<br/>(npc:133678) will follow you.| |Z|862| |NPC|133678|
T Back to the Nest |QID|50412| |N|(npc:133678) in {Pterror Rise} (70.76, 50.85)| |Z|862| |NPC|133678|
A Room To Grow |QID|52447| |N|(npc:135308) in {Pterror Rise} (70.78, 50.80)| |Z|862| |NPC|135308|

- Daily Quests for 14 days
N Accept Daily Quests |MD| |N|Accept a quest from (npc:135308) or (npc:135455) in {Pterror Rise} tick this objective AFTER you accept the quest.| |Z|862| |NPC|135308, 135455, 141025| |TID|52447|

A SKREEEEE! |QID|50839| |N|(npc:135455) in {Pterror Rise} (70.73, 51.09)| |Z|862| |NPC|135455| |D| |TID|52447|
A Kua'fon's Day Off |QID|51146| |N|(npc:135308) in {Pterror Rise} (70.76, 51.03)| |Z|862| |NPC|135308| |D| |TID|52447|
A A Nose for Ptrouble |QID|50838| |N|(npc:135308) in {Pterror Rise} (70.75, 51.02)| |Z|862| |NPC|135308| |D| |TID|52447|
A No Ptake, Only Throw |QID|52317| |N|(npc:141025) in {Pterror Rise} (70.75, 51.08)| |Z|862| |NPC|141025| |D| |TID|52447|
A Mast Effect |QID|50842| |N|(npc:135308) in {Pterror Rise} (70.75, 51.04)| |Z|862| |NPC|135308| |D| |TID|52447|

B (item:157780) |QID|50839.1| |N|Speak to (npc:135249) and buy (item:157780) for 29<g> 75<s> in {Warbeast Kraal} (66.88, 41.66)| |Z|862| |NPC|135249| |L|157780| |D| |TID|52447|
C SKREEEEE! |QID|50839.2| |N|Feed (npc:135455) in {Pterror Rise} (70.72, 51.07)| |Z|862| |NPC|135455| |D| |TID|52447|
C Kua'fon's Day Off |QID|51146| |N|Find and click on (npc:136589) in {Port of Zandalar} (56.51, 56.01)<br/>Make use of the Target NPC button.| |Z|1165| |NPC|136589| |D| |TID|52447|
C A Nose for Ptrouble |QID|50838| |N|Kill (npc:135466) in {Atal'Gral} (81.04, 36.19)| |Z|862| |NPC|135466| |D| |TID|52447|
C No Ptake, Only Throw |QID|52317| |N|Use (item:162024) and throw it to (npc:141025) 5 times in {Pterror Rise} (70.74, 50.92)| |Z|862| |NPC|141025| |D| |TID|52447|
C (item:158885) |QID|50842.1| |N|Collect 8 (item:158885) from (npc:135412) in {Talanji's Rebuke} (74.52, 49.46)| |Z|862| |L|158885 8| |D| |TID|52447|
C (npc:135481) |QID|50842.2| |N|Click on the Fish Pile in {Talanji's Rebuke} (74.51, 51.96)| |Z|862| |D| |TID|52447|

T SKREEEEE! |QID|50839| |N|(npc:135455) in {Pterror Rise} (71.72, 51.07)| |Z|862| |NPC|135455| |D| |TID|52447|
T Kua'fon's Day Off |QID|51146| |N|(npc:133679) in {Pterror Rise} (70.74, 51.07)| |Z|862| |NPC|133679| |D| |TID|52447|
T A Nose for Ptrouble |QID|50838| |N|(npc:133679) in {Pterror Rise} (70.73, 51.09)| |Z|862| |NPC|133679| |D| |TID|52447|
T No Ptake, Only Throw |QID|52317| |N|(npc:133679) in {Pterror Rise} (70.73, 51.10)| |Z|862| |NPC|133679| |D| |TID|52447|
T Mast Effect |QID|50842| |N|(npc:133679) in {Pterror Rise} (70.74, 51.07)| |Z|862| |NPC|133679| |D| |TID|52447|

- Third Set of Quests
C Room To Grow |QID|52447| |N|Reset and reload guide to Complete dailies until (npc:135455) is ready to attempt another flight.|
T Room To Grow |QID|52447| |N|(npc:133679) in {Pterror Rise} (70.71, 51.08)| |Z|862| |NPC:133679|
A A Pterrible Fate |QID|50396| |N|(npc:133679) in {Pterror Rise} (70.73, 51.09)| |Z|862| |NPC|133679|
T A Pterrible Fate |QID|50396| |N|(npc:127377) in {Pterror Rise} (71.44, 49.27)| |Z|862| |NPC|127377|
A Surrogate Wings |QID|50886| |N|(npc:127377) in {Pterror Rise} (71.46, 49.30)| |Z|862| |NPC|127377|
R Port of Zandalar |QID|50886| |N|Travel to {Port of Zandalar} (52.09, 89.94)| |Z|1165| |REACH|
B (item:158913) |QID|50886| |N|Speak to (npc:138033) and buy (item:158913) for 106<g> 25<s> in {Grand Bazaar} (57.44, 58.96)| |Z|1165| |NPC|138033| |L|158913|
T Surrogate Wings |QID|50886| |N|(npc:135308) in {Pterror Rise} (70.73, 51.01)| |Z|862| |NPC|135308|
A Ptrust Fall |QID|50887| |N|(npc:135308) in {Pterror Rise} (70.73, 51.00)| |Z|862| |NPC|135308|
C Ride the Kite |QID|50887.1| |N|Ride (npc:135550) in {Pterror Rise} (70.65, 50.99)| |Z|862| |NPC|135550| |V|
C Confidence Built |QID|50887.2| |N|Enter path of smoke rings until the confidence progress bar builds to 100%.<br/>Click on (npc:135627) to return to {Pterror Rise} (71.54, 58.45)| |Z|862| |NPC|135627|
T Ptrust Fall |QID|50887| |N|(npc:135595) in {Pterror Rise} (72.40, 57.00)| |Z|862| |NPC|135595|
A Maybe When You're Older |QID|50900| |N|(npc:135595) (72.38, 57.05)| |Z|862| |NPC|135595|
C Return to the Nest |QID|50900.1| |N|Click on (npc:135627) (72.52, 57.13)| |Z|862| |NPC|135627| |V|
T Maybe When You're Older |QID|50900| |N|(npc:135308) in {Pterror Rise} (70.70, 51.02)| |Z|862| |NPC|135308|
A Eyes on the Skies |QID|52748| |N|(npc:135308) in {Pterror Rise} (70.71, 50.98)| |Z|862| |NPC|135308|

- Daily Quests for 4 - 7 days
N Accept Daily Quests |MD| |N|Accept a quest from (npc:135308) or (npc:135455) in {Pterror Rise} tick this objective AFTER you accept the quest.| |Z|862| |NPC|135308, 135455, 141026| |TID|52748|

A Falling With Style |QID|50930| |N|(npc:141026) in {Pterror Rise} (70.85, 50.67)| |Z|862| |NPC|141026| |D| |TID|52748|
A A Nose for Ptrouble |QID|50860| |N|(npc:135308) in {Pterror Rise} (70.82, 50.70)| |Z|862| |NPC|135308| |D| |TID|52748|
A SKREEEEE! |QID|50841| |N|(npc:135502) in {Pterror Rise} (70.73, 51.09)| |Z|862| |NPC|135502| |D| |TID|52748|
A Kua'fon's Day Off |QID|51146| |N|(npc:135308) in {Pterror Rise} (70.76, 51.03)| |Z|862| |NPC|135308| |D| |TID|52748|

C Ride the Kite |QID|50930.1| |N|Ride (npc:135753) in {Pterror Rise} (70.80, 50.78)| |Z|862| |NPC|135753| |V| |TID|52748|
C Confidence |QID|50930.2| |N|Enter path of smoke rings until the confidence progress bar builds to 100%.<br/>Click on (npc:135627) to return to {Pterror Rise} (71.52, 58.39)| |Z|862| |NPC|135627| |D| |TID|52748|
C A Nose for Ptrouble |QID|50860| |N|Kill (npc:135508) in {Savagelands} (68.93, 30.98)| |Z|862| |NPC|135508 |D| |TID|52748|
B Buy (item:157781) |QID|50841.1| |N|Speak to (npc:135249) and buy (item:157781) for 127<g> 50<s> in {Warbeast Kraal} (66.88, 41.66)| |Z|862| |NPC|135249| |L|157781| |D| |TID|52748|
C SKREEEEE! |QID|50841| |N|Feed (npc:133680) in {Pterror Rise} (70.72, 51.07)| |Z|862| |NPC|133680| |D| |TID|52748|
C Kua'fon's Day Off |QID|51146| |N|Find and click on (npc:136589) in {Port of Zandalar} (56.51, 56.01)<br/>Make use of the Target NPC button.| |Z|1165| |NPC|136589| |D| |TID|52748|

T Falling With Style |QID|50930| |N|(npc:135308) in {Pterror Rise} (70.83, 50.71)| |Z|862| |D| |TID|52748|
T A Nose for Ptrouble |QID|50860| |N|(npc:133680) in {Pterror Rise} (70.86, 50.67)| |Z|862| |NPC|133680| |D| |TID|52748|
T SKREEEEE! |QID|50841| |N|(npc:133680) in {Pterror Rise} (70.72, 51.07)| |Z|862| |NPC|133680| |D| |TID|52748|
T Kua'fon's Day Off |QID|51146| |N|(npc:133679) in {Pterror Rise} (70.74, 51.07)| |Z|862| |NPC|133679| |D| |TID|52748|

- Last Set of Quests
C Eyes on the Skies |QID|52748.1| |N|Reset and reload guide to Complete dailies until (npc:135455) is fully grown.|
C Speak to (npc:135242) |QID|52748.2| |N|Speak to (npc:135242) in {Pterror Rise} (71.46, 49.27)| |Z|862| |NPC|135242|
T Eyes on the Skies |QID|52748| |N|(npc:133682) in {Pterror Rise} (70.86, 50.93)| |Z|862| |NPC|133682|
A Aerial Aspirations |QID|50397| |N|(npc:133682) in {Pterror Rise} (70.83, 50.96)| |Z|862| |NPC|133682|
C Aerial Aspirations |QID|50397| |N|Climb on (npc:133682) in }Pterror Rise} (70.87, 50.99)| |Z|862| |NPC|133682| |V|
T Aerial Aspirations |QID|50397| |N|(npc:133682) in {Talanji's Rebuke} (76.41, 48.93)(75.15, 49.39)| |Z|862| |NPC|133682|
A Wisdom of the Wingless |QID|50940| |N|(npc:133682) in {Talanji's Rebuke} (75.19, 49.43)| |Z|862| |NPC|133682|
R Warbeast Kraal |QID|50940| |N|Travel to {Warbeast Kraal} (67.24, 42.99)| |Z|862|
T Wisdom of the Wingless |QID|50940| |N|(npc:135801) in {Pterror Rise} (70.68, 50.65)| |Z|862| |NPC|135801|
A Dress for the Slide, Not the Ride |QID|50942| |N|(npc:135801) in {Pterror Rise} (70.68, 50.60)| |Z|862| |NPC|135801|
R The Sliver |QID|50942| |N|Travel to {The Sliver} (53.12, 19.29)| |Z|1165|
B (item:159138) |QID|50942.1| |N|Speak to (npc:126329) and buy (item:159138) for 63<g> 75<s> in {The Head Shop} (54.67, 34.97)(54.85, 34.71)| |Z|1165|
R Port of Zandalar |QID|50942| |N|Travel to {Port of Zandalar} (52.09, 89.94)| |Z|1165| |REACH|
B Buy (item:159139) |QID|50942.2| |N|Speak to (npc:125879) and buy (item:159139) for 1,250<g> in {Grand Bazaar} (57.49, 58.10)| |Z|1165| |NPC|125879| |L|159139|
R Atal'Gral |QID|50942| |N|Travel to {Atal'Gral} (79.97, 41.46)| |Z|862|
C (npc:133682) Dressed for Success |QID|50942.3| |N|Click on (npc:133682) in {Talanji's Rebuke} (75.19, 49.43)| |Z|862| |NPC|133682|
T Dress for the Slide, Not the Ride |QID|50942| |N|(npc:135801) in {Talanji's Rebuke} (75.30, 49.35)| |Z|862| |NPC|135801|
A The Joy of Flight |QID|50943| |N|(npc:135801) in {Talanji's Rebuke} (75.31, 49.36)| |Z|862| |NPC|135801|
C The Joy of Flight |QID|50943.1| |N|Mount (npc:135809) in {Talanji's Rebuke} (75.21, 49.40)| |Z|862| |NPC|135809| |V|
C Follow (npc:135801) Back to the Roost |QID|50943.2| |N|Follow (npc:135801) while using E to gain altitude and Q to speed up energy regeneration.<br/>You may need to repeat to get the hang of it.<br/>If you are too far way from (npc:135801) you get dismounted and need to do it again.<br/>(75.80, 49.10) (76.61, 48.94) (77.82, 47.74) (79.26, 44.72) (78.31, 43.07) (73.97, 42.20) (73.33, 39.86) (69.52, 38.42) (69.26, 40.63) (70.39, 43.36) (69.73, 46.68) (69.27, 47.95) (69.94, 47.32) (69.93, 48.39) (70.68, 50.32)| |Z|862| |NPC|135801|
T The Joy of Flight |QID|50943| |N|(npc:135744) in {Pterror Rise} (70.63, 50.68)| |Z|862| |NPC|135744|
A Down, But Not Out |QID|50944| |N|(npc:135744) in {Pterror Rise} (70.65, 50.63)| |Z|862| |NPC|135744|
T Down, But Not Out |QID|50944| |N|(npc:135744) in {Pterror Rise} (70.65, 50.63)| |Z|862| |NPC|135744|

N Guide Complete |N|You earned the (aid:13030) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:13030) achievement.<br/><br/>Completing the achievement will reward you with the mount (item:159146).]]}) end

    function Guide:Unload()
    end
end
