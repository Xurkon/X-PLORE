local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Alliance_En_Storm_Peaks_Daily_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("Northrend Zone Dailies", "120(80 Dailies)", nil, "Alliance", nil, "D", nil, function()
return [[

N Switch Guide |N|Complete (guide:"120(77-80)#120(77-80)#120(77-80)") first to begin dailies| |QID|13007|
R K3 |N|Travel to K3 in The Storm Peaks (40.9, 85.4)| 
A Overstock |N|Ricket (40.9, 85.4)| |QID|12833| |D| |NPC|29428|
C Overstock |N|Use the (item:40676) at (42, 82) to kill 12x Garm Invaders| |U|40676| |QID|12833| |D| |NPC|29619|
T Overstock |N|Ricket (40.9, 85.4)| |QID|12833| |D| |NPC|29428|

R Frosthold |N|Travel to Frost Hold (29.8, 75.7)|
A Pushed Too Far |N|Fjorlin Frostbrow (29.8, 75.7)| |QID|12869| |D| |NPC|29732|
C Pushed Too Far |N|When you start this quest, you'll mount up on a Stormcrest Eagle. Fly to the Foot Steppes in the Northeast and look for Stormpeak Wyrms (46.5, 61.9). Your biggest challenge will be catching the things, since they can fly faster than your eagle does. The preferred prey will be the wyrms who are either roosted on the mountains and rocks or are attacking rhinos. If you find one of those, they're easy pickings. They melee and have a weak frost breath attack, but are no threat to your eagle. If you can't find any who are roosted or distracted, you can catch the fliers by heading them off. They may be faster, but you're much more maneuverable| |QID|12869| |D| |NPC|29854, 29753|
T Pushed Too Far |N|Fjorlin Frostbrow (29.8, 75.7)| |QID|12869| |D| |NPC|29732|

R Brunnhildar Village |N|Fly to Brunnhildar Village (50.9, 65.6)|
N Accept Quest |N|Accept quests from Gretta the Arbiter (50.9, 65.6)| |NPC|29796|
A The Aberrations Must Die |N|Gretta the Arbiter (50.9, 65.6)| |O| |QID|13425| |D| |NPC|29796|
A Maintaining Discipline |N|Gretta the Arbiter (50.9, 65.6)| |O| |QID|13422| |D| |NPC|29796|
A Back to the Pit |N|Gretta the Arbiter (50.9, 65.6)| |O| |QID|13424| |D| |NPC|29796|
A Defending Your Title |N|Gretta the Arbiter (50.9, 65.6)| |O| |QID|13423| |D| |NPC|29796|

C The Aberrations Must Die |N|Go to Valkyrion (25, 60) and obtain (item:41612) from the Valkyrion Aspirants. Use the (item:41612) to destroy 30 Plagued Proto-Drake Eggs| |U|41612| |QID|13425| |O| |D| |NPC|29569| |OBJ|3891|
C Maintaining Discipline |N|Go inside the cave at (42, 70) and find the Exhausted Vrykul and use the (item:42837) to get them back to work| |U|42837| |QID|13422| |O| |D| |NPC|30146|
C Back to the Pit |N|Use (item:42499) and defeat Hyldsmeet Warbear in the pit area| |U|42499| |QID|13424| |O| |D| |NPC|30174|
C Defending Your Title |N|Defeat 6 Victorious Challengers in Brunnhildar Village| |QID|13423| |O| |D| |NPC|30012|

T Maintaining Discipline |N|Gretta the Arbiter (50.9, 65.6)| |QID|13422| |O| |D| |NPC|29796|
T The Aberrations Must Die |N|Gretta the Arbiter (50.9, 65.6)| |QID|13425| |O| |D| |NPC|29796|
T Back to the Pit |N|Gretta the Arbiter (50.9, 65.6)| |QID|13424| |O| |D| |NPC|29796|
T Defending Your Title |N|Gretta the Arbiter (50.9, 65.6)| |QID|13423| |O| |D| |NPC|29796|

R Dun Niffelem |N|Travel to Dun Niffelem in Storm Peaks (64, 61)| |Z|120|
A Raising Hodir's Spear |N|Lorekeeper Randvir (64.8, 59.1), Honored| |QID|13001| |Z|120| |NPC|30252|  |REP|1119, 6|
C Raising Hodir's Spear |N|Enter the cave at (55.9, 64.6) and collect 3 (item:42541) (54.7, 60.7) from the depths of Hibernal Cavern and 3 (item:42542) from the Stoic Mammoths in the Valley of Ancient Winters| |QID|13001| |Z|120| |OBJ|8247| |NPC|30260|  |REP|1119, 6|
T Raising Hodir's Spear |N|Lorekeeper Randvir (64.8, 59.1)| |QID|13001| |Z|120| |NPC|30252|  |REP|1119, 6|
A Hot and Cold |N|Fjorn's Anvil (63.2, 62.9)| |QID|12981| |Z|120| |D| |OBJ|8218|
A Blowing Hodir's Horn |N|Hodir's Horn (64.2, 64.4) |QID|12977| |Z|120| |D| |OBJ|7352|
A Polishing the Helm |N|Hodir's Helm (64.5, 59.6)| |QID|13006| |Z|120| |D| |OBJ|8221|
A Spy Hunter |N|Frostworg Denmother (63.5, 59.8), Honored| |QID|12994| |Z|120| |D| |NPC|30294| |REP|1119, 6|
A Thrusting Hodir's Spear |N|Hodir's Spear (65, 60.9), Honored| |QID|13003| |Z|120| |D| |OBJ|8220| |REP|1119, 6|
A Feeding Arngrim |N|Arngrim the Insatiable (67.5, 60), Revered| |QID|13046| |Z|120| |D| |OBJ|8284|  |REP|1119, 7|

C Feeding Arngrim |N|If you have pets put them into passive mode. Go to the Valley of Ancient Winters (57, 64) and use (item:42774) on the Roaming Jormungar there. Once they have become disembodied, you must fight them until they are weakened| |U|42774| |QID|13046| |Z|120| |D| |NPC|30422|  |REP|1119, 7|
C Spy Hunter |N|Go out to (57.2, 64) and use (item:42479) at the corpse. Follow the wolf that appears then kill the Dwarves when he spawns them, if you group with other players doing this quest it will be MUCH FASTER| |U|42479| |QID|12994| |Z|120| |D| |NPC|32569, 30219, 30222|  |REP|1119, 6|
C Polishing the Helm |N|Enter Hibernal Cavern west of Dun Niffelem (55.6, 62.9) and collect 5 units of (item:42640) from the Viscous Oils there| |QID|13006| |Z|120| |D| |NPC|30325|
C Thrusting Hodir's Spear |U|42769| |N|If you're trying this for the 1st time take off all your armor in case you die. Use (item:42769) on a Wild Wyrm. Once mounted keep pressing 1 and 3, when you get the 'claw warning' press 2 to dodge then press 4. In the next phase, press 1 until you stack at least 10 'Pry' and attempt to kill it by pressing 2, if it fails keep pressing 1 until 2 becomes available again| |QID|13003| |Z|120| |D| |NPC|30275|  |REP|1119, 6|
C Blowing Hodir's Horn |N|Kill 5 Niffelem Forefathers and 5 Restless Frostborn at Thunderfall (71, 52) Then use (item:42164) over their corpses| |U|42164| |QID|12977| |Z|120| |D| |NPC|29974, 30144|
K Kill Brittle Revenant |N|Kill Brittle Revenants and collect 6x (item:42246) (70, 59)| |L|42246 6| |Z|120| |NPC|30160|
C Hot and Cold |N|Look for Tiny black things with smoke coming up from them (74, 62) They are easier to spot in the snow. Get near one, use an (item:42246), then right-click loot the metal scrap. Do this until you have 5| |U|42246| |QID|12981| |Z|120| |D| |OBJ|8231|

T Hot and Cold |N|Fjorn's Anvil (63.2, 62.9)| |QID|12981| |Z|120| |D| |OBJ|8218|
T Blowing Hodir's Horn |N|Hodir's Horn (64.2, 64.4) |QID|12977| |Z|120| |D| |OBJ|7352|
T Polishing the Helm |N|Hodir's Helm (64.5, 59.6)| |QID|13006| |Z|120| |D| |OBJ|8221|
T Spy Hunter |N|Frostworg Denmother (63.5, 59.8), Honored| |QID|12994| |Z|120| |D| |NPC|30294| |REP|1119, 6|
T Thrusting Hodir's Spear |N|Hodir's Spear (65, 60.9), Honored| |QID|13003| |Z|120| |D| |OBJ|8220| |REP|1119, 6|
T Feeding Arngrim |N|Arngrim the Insatiable (67.5, 60), Revered| |QID|13046| |Z|120| |D| |OBJ|8284| |REP|1119, 7|

N Guide Complete 
]]
end)
	end
	
	function Guide:Unload()
	end
end