-----------------------------------------------------------------------
-- X-Plore Test Guide: WotLK (Wrath of the Lich King) 68-80
-- Expansion: 2 (WotLK)
-- This guide tests the expansion filtering system.
-----------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Alliance\\WotLK\\Northrend 68-80",{
    description="Test guide for WotLK expansion (expansion=2). This should appear on WotLK, Cata, MoP, and later clients.",
    author="X-Plore Team",
    startlevel=68,
    endlevel=80,
    next="Leveling Guides\\Alliance\\CATA\\Mount Hyjal 80-85",
    condition_suggested="level >= 68 and level <= 80 and Alliance",
},[[
step
accept The Wrath of the Lich King |q 12841 |goto Howling Fjord/0 48.12,62.34
step
turnin The Wrath of the Lich King |q 12841 |goto Howling Fjord/0 48.12,62.34
step
accept The Shattered War |q 12842 |goto Howling Fjord/0 48.12,62.34
step
kill Shattered Offensive Berserker##32485+
Kill 8 Shattered Offensive |q 12842/1 |goto 52.12,64.34
step
turnin The Shattered War |q 12842 |goto 48.12,62.34
step
accept Skadi the Ruthless |q 12843 |goto Howling Fjord/0 48.12,62.34
step
goto Howling Fjord/0 61.12,69.34
Reach Level 70 |q 99999
]])
