-----------------------------------------------------------------------
-- X-Plore Test Guide: TBC (The Burning Crusade) 60-70
-- Expansion: 1 (TBC)
-- This guide tests the expansion filtering system.
-----------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Alliance\\TBC\\Outland 60-70",{
    description="Test guide for TBC expansion (expansion=1). This should only appear on TBC and later clients.",
    author="X-Plore Team",
    startlevel=60,
    endlevel=70,
    next="Leveling Guides\\Alliance\\WotLK\\Northrend 68-80",
    condition_suggested="level >= 60 and level <= 70 and Alliance",
},[[
step
accept The Scorched Grove##10198 |goto Hellfire Peninsula/0 62.21,39.96
step
kill Dreadfang##19238+
Kill 8 Bleeding Hollow Rogue |q 10198/1 |goto 63.21,41.96
step
turnin The Scorched Grove##10198 |goto 62.21,39.96
step
accept On Priest's Trail |q 10211 |goto Hellfire Peninsula/0 62.44,37.71
step
kill Void Reaver##19239+
Kill 10 Void Reaver |q 10211/1 |goto 58.21,43.96
step
turnin On Priest's Trail |q 10211 |goto 62.44,37.71
]])
