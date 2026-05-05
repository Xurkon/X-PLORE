-----------------------------------------------------------------------
-- X-Plore Test Guide: Horde 1-10 (Valley of Trials / Durotar)
-- Written in Zygor guide data format to test the parser.
-- Uses ZygorGuidesViewer:RegisterGuide() which is shimmed to XP.
-----------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Horde\\Classic\\Valley of Trials 1-5",{
    description="This guide will walk you through the starting area of Valley of Trials for Orc and Troll characters.",
    author="X-Plore Team",
    startlevel=1,
    endlevel=5,
    next="Leveling Guides\\Horde\\Classic\\Durotar 5-10",
    condition_suggested="level >= 1 and level <= 5 and Horde",
},[[
step
accept Your Place In The World##4641 |goto Valley of Trials/0 44.58,68.35
|tip Talk to Kaltunk outside the Den.
step
goto Valley of Trials/0 42.93,69.31
|tip Enter the Den to the west.
step
turnin Your Place In The World##4641 |goto 42.93,69.31
accept Cutting Teeth##788 |goto 42.93,69.31
|tip Talk to Gornek inside the Den.
step
kill Mottled Boar##3098+
Kill 10 Mottled Boars |q 788/1 |goto 48.31,71.52
|tip They are found all around the Valley of Trials.
step
turnin Cutting Teeth##788 |goto 42.93,69.31
accept Invaders in Our Home##37446 |goto 42.93,69.31
step
accept Galgar's Cactus Apple Surprise##4402 |goto 41.64,68.18
|tip Talk to Galgar by the campfire.
step
collect 10 Cactus Apple##3581 |goto 46.55,62.47
Collect 10 Cactus Apples |q 4402/1
|tip Pick them from the cactus plants around the valley.
step
turnin Galgar's Cactus Apple Surprise##4402 |goto 41.64,68.18
step
kill Scorpid Worker##3124+
Kill 12 Scorpid Workers |q 37446/1 |goto 48.31,74.52
|tip They are found in the southern part of the valley.
step
turnin Invaders in Our Home##37446 |goto 42.93,69.31
accept Sting of the Scorpid##789 |goto 42.93,69.31
step
kill Sarkoth##3281 |goto 40.56,66.23
|tip Sarkoth is a named scorpid in a small cave to the northwest.
collect 1 Sarkoth's Pincer##4863 |q 789/1
step
turnin Sting of the Scorpid##789 |goto 42.93,69.31
accept Lazy Peons##5441 |goto 42.93,69.31
step
use Foreman's Blackjack##16114 |goto 44.32,77.65
|tip Use the Blackjack on Lazy Peons sleeping under huts.
|tip You need to wake up 4 Lazy Peons.
Wake Up 4 Lazy Peons |q 5441/1
step
turnin Lazy Peons##5441 |goto 42.93,69.31
accept Report to Sen'jin Village##25152 |goto 42.93,69.31
step
goto Durotar/0 55.72,73.98
|tip Follow the road east out of the Valley of Trials into Durotar.
step
turnin Report to Sen'jin Village##25152 |goto Durotar/0 55.72,73.98
|tip Talk to Master Gadrin at Sen'jin Village.
]])

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Horde\\Classic\\Durotar 5-10",{
    description="This guide will walk you through Durotar quests for levels 5-10.",
    author="X-Plore Team",
    startlevel=5,
    endlevel=10,
    condition_suggested="level >= 5 and level <= 10 and Horde",
},[[
step
accept A Peon's Burden##2158 |goto Durotar/0 53.12,68.44
|tip Talk to Ukor by the road.
step
goto Durotar/0 50.87,42.45
|tip Head north to Razor Hill.
step
turnin A Peon's Burden##2158 |goto 50.87,42.45
|tip Talk to Innkeeper Grosk in Razor Hill.
step
home Razor Hill |goto 50.87,42.45
|tip Set your hearthstone to Razor Hill.
step
accept Vanquish the Betrayers##784 |goto 50.59,43.21
|tip Talk to Gar'Thok in Razor Hill.
step
accept Encroachment##837 |goto 50.59,43.21
step
kill Kul Tiras Sailor##3378+, Kul Tiras Marine##3382+
Kill 10 Kul Tiras Sailors |q 784/1 |goto 58.69,57.12
Kill 8 Kul Tiras Marines |q 784/2 |goto 58.69,57.12
|tip They are at the shipwreck east of Razor Hill along the coast.
step
turnin Vanquish the Betrayers##784 |goto 50.59,43.21
step
kill Razormane Quilboar##3111+, Razormane Scout##3112+
Kill 4 Razormane Quilboar |q 837/1 |goto 43.66,50.23
Kill 4 Razormane Scouts |q 837/2 |goto 43.66,50.23
|tip They are southwest of Razor Hill.
step
turnin Encroachment##837 |goto 50.59,43.21
]])
