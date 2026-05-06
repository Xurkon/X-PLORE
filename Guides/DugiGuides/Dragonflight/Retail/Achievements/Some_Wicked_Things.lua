 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Some_Wicked_Things")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Some Wicked Things (30+ Storyline)", nil, nil, "WARLOCK", "L", "|SG|UnitLevel([[player]])>=30|", function()
return [[

N Level 30 Required |N|You will need to be level 30 to use this guide| |PL|30|

A Beginning Impossible |QID|75538| |N|(npc:204198) in {Mage Quarter} (43.80, 79.20)| |Z|84| |NPC|204198| |FAC|Alliance|
A Beginning Impossible |QID|76430| |N|(npc:207051) in {The Cleft of Shadow} (41.60, 51.60)| |Z|86| |NPC|207051| |FAC|Horde|

N Beginning Impossible |QID|75538.1| |N|Take (npc:207684) to the Darkmoon Faire in {Mage Quarter} (43.83, 79.13)| |Z|84| |NPC|207684| |V| |FAC|Alliance|
N Beginning Impossible |QID|76430.1| |N|Take (npc:204648) to the Darkmoon Faire in {The Cleft of Shadow} (40.49, 53.50)| |Z|86| |NPC|204648| |V| |FAC|Horde|

T Beginning Impossible |QID|75538| |N|(npc:203968) in {Darkmoon Pavilion} (47.40, 78.80)| |Z|407| |NPC|203968| |OID|76430|
A Some Wicked Things This Way Come |QID|75539| |N|(npc:203968) in {Darkmoon Pavilion} (47.40, 78.80)| |Z|407| |NPC|203968|

N (npc:203698) |QID|75539| |N|Question (npc:203968) in {Darkmoon Pavilion} (47.44, 78.95)<br/><b>'That's nice. Where have all the people gone?'<br/><b>'Really.'<br/><b>'And the darkness?'<br/><b>'The Demons?'<br/><b>"I'm on to you."<br/><b>'Yes I am.'<br/><b>"I'm not dropping this."<br/><br/>Click Accept on the prompt that appears.| |Z|407| |REACH|44.85,78.78,407| |NPC|203968| |O|
K (npc:204964) |QID|75539| |N|Slay (npc:204964) in {Darkmoon Deathmatch} (44.85, 78.78)<br/><b>You will need to kite (npc:204968), he hits hard, even with Voidwalker.<br/><b>Use (spell:334275) on (npc:204968) and maintain application as much as possible to allow you to kite around the arena.<br/><b>You have until (qid:75542) to question (npc:203968) to obtain (item:207294).<br/><b>You can redo this quest line on another Warlock alt.| |Z|407| |NPC|204964| |O|
N Some Wicked Things This Way Come |QID|75539.1| |N|Speak to New Warlocks in (map:407) (50.46, 78.58)| |Z|407|

T Some Wicked Things This Way Come |QID|75539| |N|(npc:203968) in {Darkmoon Pavilion} (47.40, 78.80)| |Z|407| |NPC|203968|
A Hermetic Insurance |QID|75540| |N|(npc:203968) in {Darkmoon Pavilion} (47.40, 78.80)| |Z|407| |NPC|203968|

N (npc:205274) |QID|75540.1| |N|Use (spell:410940) "ability on screen" on (npc:205274) in (map:407) (48.40, 78.99)| |Z|407| |NPC|205274|
N (npc:205272) |QID|75540.2| |N|Use (spell:410940) "ability on screen" on (npc:205272) in (map:407) (48.43, 78.40)| |Z|407| |NPC|205272|
N (npc:205273) |QID|75540.1| |N|Use (spell:410940) "ability on screen" on (npc:205273) in (map:407) (48.47, 79.85)| |Z|407| |NPC|205273|

T Hermetic Insurance |QID|75540| |N|(npc:203968) in {Darkmoon Pavilion} (47.40, 78.80)| |Z|407| |NPC|203968|
A Those Who Hesitate |QID|75541| |N|(npc:203968) in {Darkmoon Pavilion} (47.51, 78.93)| |Z|407| |NPC|203968|

N (npc:205276) |QID|75541.1| |N|Speak to (npc:205276) in {Darkmoon Boardwalk} (46.17, 88.99)| |Z|407| |NPC|205276|
N (npc:205276) |QID|75541.2| |N|Use (spell:20707) "ability on screen" on (npc:205276) in {Darkmoon Boardwalk} (46.17, 88.99)| |Z|407| |NPC|205276|

T Those Who Hesitate |QID|75541| |N|(npc:205276) in {Darkmoon Boardwalk} (46.15, 88.98)| |Z|407| |NPC|205276|
A A Wolf Among Sheep |QID|76155| |N|(npc:205276) in {Darkmoon Boardwalk} (46.15, 88.98)| |Z|407| |NPC|205276|

N (npc:206590) |QID|76155.1| |N|Use (spell:412234) "ability on screen" on nearby (npc:206590) in {Darkmoon Boardwalk} (46.04, 88.64)| |Z|407| |NPC|205590|

T A Wolf Among Sheep |QID|76155| |N|(npc:203968) in {Darkmoon Pavilion} (47.57, 78.93)| |Z|407| |NPC|203968|
A Curses & Cultists |QID|75542| |N|(npc:203968) in {Darkmoon Pavilion} (47.57, 78.93)| |Z|407| |NPC|203968|

N (npc:205367) |QID|75542.1| |N|Speak to (npc:205367) to teach Curse of Weakness in {The Darkmoon Faire} (49.98, 58.28)| |Z|407| |NPC|205367|
N (npc:205400) |QID|75542.2| |N|Speak to (npc:205400) to teach Curse of Exhaustion in {The Darkmoon Faire} (50.14, 57.17)| |Z|407| |NPC|205400|
N (npc:205399) |QID|75542.3| |N|(npc:205399) to teach Curse of Tongues in {The Darkmoon Faire} (49.25, 58.38)| |Z|407| |NPC|205399|
N Accept |QID|75542.4| |N|Accept the invite (49.25, 58.38)| |Z|407| |REACH|58.92,58.38,407|

T Curses & Cultists |QID|75542| |N|(npc:205433) in {The Darkmoon Faire} (58.93, 63.00)| |Z|407| |NPC|205433|
A Fel Suspicions |QID|75639| |N|(npc:205433) in {The Darkmoon Faire} (58.93, 63.00)| |Z|407| |NPC|205433|

N (spell:411531) |QID|75639.1| |N|Use (spell:411531) "ability on screen" to cast Eye of Kilrogg in {The Darkmoon Faire} (59.39, 63.54)| |Z|407|
N (npc:203968) and (npc:207051) |QID|75639.2| |N|Spy on Madam Shadow and Phineas in {The Darkmoon Faire} (59.39, 63.54)| |Z|407| |NPC|203531, 207051|

T Fel Suspicions |QID|75639| |N|Demonic Gateway in {The Darkmoon Faire} (59.51, 62.39)| |Z|407|

A Last Rites By Accident |QID|75543| |N|Demonic Gateway in {The Darkmoon Faire} (59.51, 62.39)| |Z|407|

N Last Rites By Accident |QID|75543.1| |N|Go through the Demonic Gateway in {The Darkmoon Faire} (59.51, 62.39)| |Z|407|
N (npc:205575) |QID|75543.2| |N|Find Initiate Oman in {Altar of Storms} (8.58, 30.21)| |Z|36| |NPC|205575|
N (npc:204241) |QID|75543.3| |N|Use (spell:1098) "ability on screen" on (npc:204241) to Subjugate in {Altar of Storms} (9.12, 30.00)| |Z|36| |NPC|204241|
N Investigate (205538)'s corpse |QID|75543.4| |N|Click on (npc:205538)'s corpse in {Altar of Storms} (8.91, 30.09)| |Z|36| |NPC|205538|

T Last Rites By Accident |QID|75543| |N|(npc:205575) in {Altar of Storms} (8.46, 36.01)| |Z|36| |NPC|205575|
A When Revenge Burns Green |QID|75544| |N|(npc:205575) in {Altar of Storms} (8.46, 36.01)| |Z|36| |NPC|205575|
N Find (npc:205582) |QID|75544.1| |N|Find (npc:205582) in {The Tainted Scar} (32.99, 45.32)| |Z|17| |NPC|205582|
K (npc:204243) |QID|75544.2| |N|Slay (npc:204243) in {The Tainted Scar} (32.83, 45.79)| |Z|17| |NPC|204243|

T When Revenge Burns Green |QID|75544| |N|(npc:205818) in {The Tainted Scar} (33.65, 45.73)| |Z|17| |NPC|205818|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end