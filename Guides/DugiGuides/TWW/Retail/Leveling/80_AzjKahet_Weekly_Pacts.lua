local Guide = DugisGuideViewer:RegisterModule("DugisGuide_WarWithin_80_AzjKahet_Weekly_Pacts")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200The War Within|r", "Azj'Kahet Weekly Pacts", nil, nil, nil, "D", nil, function()
return [[

N Reach Renown Level 3 with (fac:2600) |QID|84681| |N|Complete daily quests, weekly quests, and zone quests in Azj-Kahet to gain renown.| |FR|2600, 3|

N Accept Daily Quests |QID|84682| |N|(npc:207471), accept all available daily quests, tick this step (55.73,43.83)| |Z|2255| |MD| |W| |NPC|207471|

A Of Pacts and Patrons |QID|84682| |N|(npc:207471) in {The Weaver's Lair} (55.73,43.83)| |O| |Z|2255| |NPC|207471| -- This quest is only required to be completed by one character to unlock the weekly Pact quest.

N (npc:224734) |QID|84682.1| |N|Speak to (npc:224734) and select "Tell me about making a Pact with the Weaver." to learn of the Weaver's Pact (56.37,43.33)| |O| |Z|2255| |NPC|224734|
N (npc:224733) |QID|84682.3| |N|Speak to (npc:224733) and select "Tell me about making a Pact with the Vizier." to learn of the Vizier's Pact (56.20,42.24)| |O| |Z|2255| |NPC|224733|
N (npc:224729) |QID|84682.2| |N|Speak to (npc:224729) and select "Tell me about making a Pact with the General." to learn of the General's Pact (55.88,42.13)| |O| |Z|2255| |NPC|224729|
N Forge a Pact |QID|84682.4| |N|Speak to (npc:220867) and select "Choose a member of the Severed Threads to forge a Pact with." (55.33,41.22)<br/><b>Each weekly reset, you will be able to choose a new pact.<br/><b>Pick wisely because this choice will affect your entire warband for the week.<br/><b>You cannot choose different pacts on alts.| |O| |Z|2255| |NPC|224729|

T Of Pacts and Patrons |QID|84682| |N|(npc:220867) in {The Weaver's Lair} (55.33,41.22)| |O| |Z|2255| |NPC|220867|

N Accept Weekly Pact Quest |QID|80592||N|(npc:220867) in {The Weaver's Lair}, tick this step (55.33,41.22)| |MD| |W| |Z|2255| |NPC|220867|

A Forge a Pact |QID|80592| |N|(npc:220867) in {The Weaver's Lair} (55.33,41.22)| |D| |O| |Z|2255| |NPC|220867|

N Choose a Pact |QID|80592.1| |N|Speak to (npc:220867) and select "Choose a member of the Severed Threads to forge a Pact with." (55.33,41.22)<br/><b>Each weekly reset, you will be able to choose a new pact.<br/><b>Pick wisely because this choice will affect your entire warband for the week.<br/><b>You cannot choose different pacts on alts.| |D| |O| |Z|2255| |NPC|224729|

T Forge a Pact |QID|80592| |N|(npc:220867) in {The Weaver's Lair} (55.33,41.22)| |D| |O| |Z|2255| |NPC|220867|

N Accept Weekly Pact Quest |N|(npc:220867) in {The Weaver's Lair}, tick this step (55.33,41.22)| |MD| |W| |Z|2255| |NPC|220867| |PRE|80592|

C Hand of the Vizier |QID|80672.1| |N|Complete Activities in Azj-Kahet<br/><b>Complete world quests to contribute 20% for each one.<br/><b>You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.| |D| |O| |Z|2255|
C Blade of the General |QID|80671.1| |N|Complete Activities in Azj-Kahet<br/><b>Complete world quests to contribute 20% for each one.<br/><b>You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.| |D| |O| |Z|2255|
C Eyes of the Weaver |QID|80670.1| |N|Complete Activities in Azj-Kahet<br/><b>Complete world quests to contribute 20% for each one.<br/><b>You can also investigate espionage rumors or uncover weave-rat caches in The Burrows.| |D| |O| |Z|2255|

T Hand of the Vizier |QID|80672| |N|(npc:224733) in {The Weaver's Lair} (56.20,42.24)| |D| |O| |Z|2255| |NPC|224733|
T Blade of the General |QID|80671| |N|(npc:224729) in {The Weaver's Lair} (55.89,42.14)| |D| |O| |Z|2255| |NPC|224729|
T Eyes of the Weaver |QID|80670| |N|(npc:224734) in {The Weaver's Lair} (56.37,43.33)| |D| |O| |Z|2255| |NPC|224734|

N You have completed the weekly pact quest in Azj-Kahet<br/><b>You can forge another pact at the next weekly reset.<br/><b>This guide will automatically reset when a new pact can be made.

]]
end, {description = [[This guide will assist you in completing the weekly pact quest for The Weaver, The General, and The Vizier]]})
    end

    function Guide:Unload()
    end
end