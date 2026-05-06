local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Lets_Bee_Friends_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "Let's Bee Friends", nil, "Alliance", nil, "A", nil, function()
return [[

N Read |N|This guide will help with getting the (aid:13062) achievement, and can be used with the Sticky Frame.<br/>Tick this step.|

N Choose |MD| |N|(choice:1:Quest Line - Part 1)<br/>(choice:2:Farm Annealed Honey Amulet)<br/>(choice:3:Farm Annealed Honey Amulet w/ World Quest)<br/>(choice:4:Quest Line - Part 2)<br/>(choice:5:Daily Quest)|

-- Quest Line (Part 1)
R Mildenhall Meadery |QID|50070| |N|Travel to {Mildenhall Meadery} (68.58, 65.02)| |Z|942| |CHOICE|1|
A Mayhem at Mildenhall Meadery |QID|50343| |N|(npc:131793) in {Mildenhall Meadery} (68.85, 65.21)| |Z|942| |NPC|131793| |CHOICE|1|
C Mayhem at Mildenhall Meadery |QID|50343| |N|Investigate the {Mildenhall Meadery} (68.44, 67.47)| |Z|942| |CHOICE|1|
T Mayhem at Mildenhall Meadery |QID|50343| |N|(npc:132017) in {Mildenhall Meadery} (68.48, 67.79)| |Z|942| |NPC|132017| |CHOICE|1|
A Detective Mildenhall |QID|50070| |N|(npc:132017) in {Mildenhall Meadery} (68.48, 67.79)| |Z|942| |NPC|132017| |CHOICE|1|
A Cleanup Duty |QID|50359| |N|(npc:132017) in {Mildenhall Meadery} (68.48, 67.79)| |Z|942| |NPC|132017| |CHOICE|1|
C Detective Mildenhall |QID|50070| |N|Search the {Mildenhall Meadery} for clues (68.53, 68.98) (69.15, 69.30) (70.80, 69.68) (69.24, 70.70) (67.91, 70.85)| |Z|942| |OBJ|16253, 12361, 11423, 9623, 13070| |POI| |CHOICE|1|
C Cleanup Duty |QID|50359| |N|Kill 4 (npc:133429) and 4 (npc:131663) in {Mildenhall Meadery} (69.72, 69.97)| |Z|942| |POI| |NPC|133429, 131663| |CHOICE|1|

T Detective Mildenhall |QID|50070| |N|(npc:132017) in {Mildenhall Meadery} (67.91, 70.85)| |Z|942| |NPC|132017| |PPOS| |CHOICE|1|
T Cleanup Duty |QID|50359| |N|(npc:132017) in {Mildenhall Meadery} (67.91, 70.85)| |Z|942| |NPC|132017| |PPOS| |CHOICE|1|
A Don't Go in the Basement |QID|50064| |N|(npc:132017) in {Mildenhall Meadery} (67.91, 70.85)| |Z|942| |NPC|132017| |PPOS| |CHOICE|1|
N Mead Barrel |QID|50064.1| |N|Examine the Mead Barrel in {Mildenhall Meadery}<br/><br/>It is downstair in the basement of the building (70.82, 69.12)| |Z|942| |OBJ|13899| |CHOICE|1|
N (npc:131861) |QID|50064.2| |N|Kill (npc:131861) in {Mildenhall Meadery} (70.99, 69.06)| |Z|942| |NPC|131861| |CHOICE|1|
T Don't Go in the Basement |QID|50064| |N|(npc:132647) in {Mildenhall Meadery} (71.01, 69.21)| |Z|942| |NPC|132647| |CHOICE|1|
A Recovering Raimond |QID|50161| |N|(npc:132647) in {Mildenhall Meadery} (71.01, 69.21)| |Z|942| |NPC|132647| |CHOICE|1|

R Rosaline's Apiary |OID|50534| |N|Travel to {Rosaline's Apiary} (71.61, 68.02)| |Z|942| |CHOICE|1|
C Recovering Raimond |QID|50161| |N|Collect 2 (item:156717) and 3 (item:156808) in {Rosaline's Apiary}<br/><br/>You can see them as yellow dots on the minimap (71.61, 68.02)| |Z|942| |OBJ|16253| |POI| |CHOICE|1|
T Recovering Raimond |QID|50161| |N|(npc:132292) in {Rosaline's Apiary} (74.17, 72.72)| |Z|942| |NPC|132292| |CHOICE|1|
A Royal Succession |QID|50168| |N|(npc:132292) in {Rosaline's Apiary} (74.17, 72.72)| |Z|942| |NPC|132292| |CHOICE|1|
A Sticky Situation |QID|50162| |N|(npc:132292) in {Rosaline's Apiary} (74.17, 72.72)| |Z|942| |NPC|132292| |CHOICE|1|
C Royal Succession |QID|50168| |N|Collect the (item:157839) from (npc:132341) in {Rosaline's Apiary} (74.71, 71.27)| |Z|942| |NPC|132341| |CHOICE|1|
C Sticky Situation |QID|50162| |N|Collect 60 (item:156709) from (npc:131377), (npc:134519) and Beehives in {Rosaline's Apiary} (74.26, 69.51)| |Z|942| |OBJ|11109| |NPC|131377, 134519| |CHOICE|1|
T Royal Succession |QID|50168| |N|(npc:132292) in {Rosaline's Apiary} (74.13, 72.67)| |Z|942| |NPC|132292| |CHOICE|1|
T Sticky Situation |QID|50162| |N|(npc:132292) in {Rosaline's Apiary} (74.13, 72.67)| |Z|942| |NPC|132292| |CHOICE|1|
A Honey Glazed Sam |QID|50504| |N|(npc:132292) in {Rosaline's Apiary} (74.13, 72.67)| |Z|942| |NPC|132292| |CHOICE|1|
C Honey Glazed Sam |QID|50504| |N|Rescue (npc:134013) in {Rosaline's Apiary} (72.85, 72.25)| |Z|942| |NPC|134013| |CHOICE|1|
T Honey Glazed Sam |QID|50504| |N|(npc:134028) in {Rosaline's Apiary} (72.85, 72.25)| |Z|942| |NPC|134028| |CHOICE|1|
A Free the Farmhands |QID|50264| |N|(npc:134028) in {Rosaline's Apiary} (72.85, 72.25)| |Z|942| |NPC|134028| |CHOICE|1|
A Fetching Wrex |QID|50493| |N|(npc:134028) in {Rosaline's Apiary} (72.85, 72.25)| |Z|942| |NPC|134028| |CHOICE|1|
A The Bee Team |QID|50165| |N|(npc:134447) in {Rosaline's Apiary} (72.85, 72.25)| |Z|942| |NPC|134447| |CHOICE|1|
A Wendigo Away |QID|50534| |N|(npc:134447) in {Rosaline's Apiary} (72.85, 72.25)| |Z|942| |NPC|134447| |CHOICE|1|

R Highland Flats |OID|50165| |N|Travel to {Highland Flats} (66.31, 78.62)| |Z|942| |CHOICE|1|
N As you go... |AYG|50264| |N|Crack open Crystallized Honey to search for (npc:134146) and kill 12 (npc:131513) in {Highland Flats}| |QID|50493| |NPC|132163, 130039, 130531, 139571| |CHOICE|1|
C Wendigo Away |QID|50534| |N|Kill (npc:131537) in {Highland Flats} (66.31, 78.62)| |Z|942| |NPC|131537| |CHOICE|1|
C Free the Farmhands |QID|50264| |N|Rescue the (npc:133154) in {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |NPC|133154| |CHOICE|1|
R Highland Flats |QID|50493| |N|Travel to {Highland Flats} (69.35, 79.16)| |Z|942| |CHOICE|1|
C Fetching Wrex |QID|50493| |N|Crack open Crystallized Honey to search for (npc:134146) in {Highland Flats} (69.35, 79.16)| |Z|942| |OBJ|11839| |NPC|134146| |CHOICE|1|
C The Bee Team |QID|50165| |N|Kill 12 (npc:131513) in {Highland Flats} (67.72, 77.85)| |Z|942| |NPC|131513| |CHOICE|1|

R Mildenhall Meadery |TID|50553| |N|Travel to {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |REACH| |CHOICE|1|
T Free the Farmhands |QID|50264| |N|(npc:134447) in {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |POI| |NPC|134447| |CHOICE|1|
T Fetching Wrex |QID|50493| |N|(npc:134447) in {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |POI| |NPC|134447| |CHOICE|1|
T The Bee Team |QID|50165| |N|(npc:134447) in {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |POI| |NPC|134447| |CHOICE|1|
T Wendigo Away |QID|50534| |N|(npc:134447) in {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |POI| |NPC|134447| |CHOICE|1|
A Back to the Lab |QID|50553| |N|(npc:134447) in {Mildenhall Meadery} (68.89, 72.41)| |Z|942| |NPC|134447| |CHOICE|1|
T Back to the Lab |QID|50553| |N|(npc:133204) in {Mildenhall Meadery} (71.04, 69.20)| |Z|942| |NPC|133204| |CHOICE|1|

-- Annealed Honey Amulet
R Deadwash |AID|13062| |N|Travel to {Deadwash} (42.79, 57.39)| |Z|942| |CHOICE|2|
R Gale's Rest |AID|13062| |N|Travel to {Gale's Rest} (43.17, 57.60) (43.23, 55.21) (43.58, 53.39) (42.93, 50.68) (49.02, 50.24) (48.24, 45.98) (47.65, 38.71) (47.24, 35.47) (45.42, 37.99)| |Z|942| |REACH|45.42,37.99| |CHOICE|2|
K (npc:141901) |AID|13062| |LOOP| |N|Kill (npc:141901) until you get (item:163699) in {Gale's Rest} (44.69, 37.03)(44.38, 36.56)(45.55, 35.66)(44.72, 34.77)(44.67, 32.72)(45.35, 31.63)(45.73, 29.41)(47.31, 32.26)(46.60, 32.45)(44.78, 40.09)(44.41, 40.96)(44.46, 42.73)(45.10, 39.56)| |Z|942| |NPC|141901| |L|163699| |CHOICE|2|

-- Annealed Honey Amulet - World Quest
R Mildenhall Meadery |AID|13062| |N|Travel to {Mildenhall Meadery} (68.54, 65.08)| |Z|942| |CHOICE|3|
K (npc:131663) |QID|52924.1| |N|Kill 8 (npc:131663) (69.34, 68.81)| |Z|942| |L|163699| |CHOICE|3|
K (npc:133429) |AID|52924.2| |N|Kill 6 (npc:133429) (69.34, 68.81)| |Z|942| |L|163699| |CHOICE|3|

-- Hand Annealed Honey Amulet to Rosaline Mildenhall (npc:143128)
R Mariner's Row |QID|53347| |N|Travel to {Mariner's Row} (76.71, 72.55)| |Z|1161| |CHOICE|4|
N Find (npc:143128) |QID|53347| |N|Find (npc:143128):<br/>Make use of the Target Button.<br/><br/>Scribes & Nobles (52.60, 48.10)<br/>Goldmans Cafè (55.38, 62.90)<br/>Inaccessible building (57.51, 66.22)<br/>Upper floor of an unnamed shop (72.45, 73.32)<br/><br/>Tick this step.| |Z|1161| |NPC|143128| |CHOICE|4|
N (item:163702) |QID|53347| |N|Speak to (npc:143128) and give her the (item:163699) and she will give you a (item:163702)| |PPOS| |Z|1161| |NPC|143128| |L|163702| |CHOICE|4|

-- Quest Line (Part 2)
R Mildenhall Meadery |QID|53347| |N|Travel to {Mildenhall Meadery} (68.54, 65.08)| |Z|942| |CHOICE|4|
N (npc:131793) |QID|53347| |N|Speak to (npc:131793) and hand him the letter. (68.85, 65.15)| |Z|942| |CHOICE|4|
A Bumbles the Bee |QID|53347| |N|(npc:131793) in {Mildenhall Meadery} (68.85, 65.16)| |Z|942| |NPC|131793| |CHOICE|4|
C Bumbles the Bee |QID|53347| |N|Locate Raimond's Secret Ingredient in {Rosaline's Apiary} (74.14, 72.72)| |Z|942| |CHOICE|4|
T Bumbles the Bee |QID|53347| |N|(npc:132647) in {Mildenhall Meadery} (71.07, 69.18)| |Z|942| |NPC|132647| |CHOICE|4|
A Let's Bee Friends |QID|53371| |N|(npc:132647) in {Mildenhall Meadery} (71.07, 69.18)| |Z|942| |NPC|132647| |CHOICE|4|
C Collect 8 (item:156825) |QID|53371.3| |N|Collect 8 (item:156825) by killing (npc:131663), (npc:133429) in {Mildenhall Meadery} (69.62, 69.08)| |Z|942| |NPC|133663, 133429| |L|156825 8| |CHOICE|4|
C Make (item:163720) |QID|53371.2| |N|Click on Raimond's Secret Ingredient on the table behind (npc:132647) in {Mildenhall Meadery} (71.10, 69.20)| |Z|942| |CHOICE|4|
C Let's Bee Friends |QID|53371.1| |N|Use (item:163720) on (npc:143658) in {Mildenhall Meadery} (71.10, 69.20)| |Z|942| |NPC|143658| |CHOICE|4|
T Let's Bee Friends |AID|53371| |N|(npc:132647) in {Mildenhall Meadery} (71.08, 69.18)| |Z|942| |NPC|132647| |CHOICE|4|

-- Daily Quests
A Let's Bee Friends |QID|53371| |N|(npc:132647) in {Mildenhall Meadery} (71.07, 69.18)| |Z|942| |NPC|132647| |D| |CHOICE|5|
C Collect 8 (item:156825) |QID|53371.3| |N|Collect 8 (item:156825) by killing (npc:131663), (npc:133429) in {Mildenhall Meadery} (69.62, 69.08)| |Z|942| |NPC|133663, 133429| |L|156825 8| |D| |CHOICE|5|
C Let's Bee Friends |QID|53371.2| |N|Click on Raimond's Secret Ingredient on the table behind (npc:132647) in {Mildenhall Meadery} (71.10, 69.20)| |Z|942| |D| |CHOICE|5|
C Let's Bee Friends |QID|53371.1| |N|Use (item:163720) on (npc:143658) in {Mildenhall Meadery} (71.10, 69.20)| |Z|942| |NPC|143658| |D| |CHOICE|5|
T Let's Bee Friends |AID|53371| |N|(npc:132647) in {Mildenhall Meadery} (71.08, 69.18)| |Z|942| |NPC|132647| |D| |CHOICE|5|

N Guide Complete |N|You earned the (aid:13062) achievement.|

]]
end, {description = [[This guide will walk you through completing the (aid:13062) achievement]]}) end

    function Guide:Unload()
    end
end
