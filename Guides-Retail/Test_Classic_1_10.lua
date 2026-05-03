-----------------------------------------------------------------------
-- X-Plore Test Guide: Classic (Vanilla) 1-10
-- Expansion: 0 (Classic)
-- This guide tests the expansion filtering system.
-----------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Alliance\\Classic\\Northshire Valley 1-5",{
    description="Test guide for Classic expansion (expansion=0). This should only appear on Vanilla clients.",
    author="X-Plore Team",
    startlevel=1,
    endlevel=5,
    next="Leveling Guides\\Alliance\\Classic\\Elwynn Forest 5-10",
    condition_suggested="level >= 1 and level <= 5 and Alliance",
},[[
step
accept Beating Them Back!##28762 |goto Northshire/0 50.05,39.74
step
kill Blackrock Spy##49871+
Kill 6 Blackrock Spies |q 28762/1 |goto 47.23,37.62
step
turnin Beating Them Back!##28762 |goto 50.05,39.74
step
talk Brother Paxton##951 |goto 49.81,40.43
step
kill Blackrock Worgen##49535+
Kill 8 Blackrock Worgs |q 28759/1 |goto 42.67,32.12
step
turnin Lions for Lambs##28759 |goto 50.05,39.74
step
use First Aid Kit##68897 |goto 44.57,36.41
Heal 4 Injured Soldiers |q 28763/1
]])
