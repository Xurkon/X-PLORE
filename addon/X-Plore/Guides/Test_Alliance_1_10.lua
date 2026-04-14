-----------------------------------------------------------------------
-- X-Plore Test Guide: Alliance 1-10 (Northshire Valley / Elwynn Forest)
-- Written in Zygor guide data format to test the parser.
-- Uses ZygorGuidesViewer:RegisterGuide() which is shimmed to XP.
-----------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Alliance\\Classic\\Northshire Valley 1-5",{
    description="This guide will walk you through the starting area of Northshire Valley for Human characters.",
    author="X-Plore Team",
    startlevel=1,
    endlevel=5,
    next="Leveling Guides\\Alliance\\Classic\\Elwynn Forest 5-10",
    condition_suggested="level >= 1 and level <= 5 and Alliance",
},[[
step
accept Beating Them Back!##28762 |goto Northshire/0 50.05,39.74
|tip Talk to Marshal McBride inside the building.
step
kill Blackrock Spy##49871+
Kill 6 Blackrock Spies |q 28762/1 |goto 47.23,37.62
|tip They can be found all around the area outside the abbey.
step
turnin Beating Them Back!##28762 |goto 50.05,39.74
accept Lions for Lambs##28759 |goto 50.05,39.74
|tip Talk to Marshal McBride.
step
talk Brother Paxton##951 |goto 49.81,40.43
accept Joining the Battle##28769 |goto 49.81,40.43
step
talk Llane Beswell##823 |goto 50.42,42.12
accept They Sent Assassins##28757 |goto 50.42,42.12
step
kill Blackrock Worgen##49535+
Kill 8 Blackrock Worgs |q 28759/1 |goto 42.67,32.12
|tip They can be found in the forest to the northwest.
step
kill Goblin Assassin##50039+
Kill 8 Goblin Assassins |q 28757/1 |goto 42.67,32.12
|tip Look for them stealthed near the trees.
step
turnin Lions for Lambs##28759 |goto 50.05,39.74
turnin They Sent Assassins##28757 |goto 50.42,42.12
step
accept Fear No Evil##28763 |goto 49.81,40.43
|tip Talk to Brother Paxton.
step
use First Aid Kit##68897 |goto 44.57,36.41
|tip Use the First Aid Kit on Injured Soldiers lying on the ground.
Heal 4 Injured Soldiers |q 28763/1
step
turnin Fear No Evil##28763 |goto 49.81,40.43
accept The Rear is Clear##28764 |goto 49.81,40.43
step
kill Blackrock Invader##42938+
goto Northshire/0 55.23,29.87
Kill 10 Blackrock Invaders |q 28764/1
|tip They are in the vineyard area to the northeast.
step
turnin The Rear is Clear##28764 |goto 50.05,39.74
accept Blackrock Invasion##26389 |goto 50.05,39.74
step
accept Ending the Invasion!##28765 |goto 50.05,39.74
|tip Talk to Marshal McBride again.
step
kill Kurtok the Slayer##103 |goto 61.13,22.34
|tip He's inside the cave at the back of Northshire Valley.
Kill Kurtok the Slayer |q 28765/1
step
turnin Ending the Invasion!##28765 |goto 50.05,39.74
accept Report to Goldshire##54 |goto 50.05,39.74
|tip Talk to Marshal McBride.
step
goto Elwynn Forest/0 42.11,65.93
|tip Follow the road south out of Northshire and into Elwynn Forest.
step
turnin Report to Goldshire##54 |goto Goldshire/0 42.11,65.93
|tip Talk to Marshal Dughan in Goldshire.
]])

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Alliance\\Classic\\Elwynn Forest 5-10",{
    description="This guide will walk you through Elwynn Forest quests for levels 5-10.",
    author="X-Plore Team",
    startlevel=5,
    endlevel=10,
    condition_suggested="level >= 5 and level <= 10 and Alliance",
},[[
step
accept The Fargodeep Mine##62 |goto Elwynn Forest/0 42.14,65.89
|tip Talk to Marshal Dughan in Goldshire.
step
goto Elwynn Forest/0 39.65,82.13
|tip Enter the Fargodeep Mine to the southwest of Goldshire.
step
kill Kobold Worker##40+, Kobold Miner##41+
Kill 12 Kobold Workers |q 62/1 |goto 39.65,82.13
|tip Clear through the mine.
step
turnin The Fargodeep Mine##62 |goto 42.14,65.89
accept The Jasperlode Mine##76 |goto 42.14,65.89
step
goto Elwynn Forest/0 60.87,50.14
|tip Head to the Jasperlode Mine northeast of Goldshire.
step
confirm Explore the Jasperlode Mine |q 76/1 |goto 60.87,50.14
|tip Enter and explore the Jasperlode Mine.
step
turnin The Jasperlode Mine##76 |goto 42.14,65.89
accept Westfall##239 |goto 42.14,65.89
|tip This leads to the next zone.
]])
