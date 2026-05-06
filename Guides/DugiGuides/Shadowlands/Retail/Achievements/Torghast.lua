local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Torghast_Questline")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Quests|r"}, "Torghast Questline (60)", nil, nil, nil, "A", "nil", function()
return [[

T The Highlord Calls |QID|63029| |O|
T The Highlord Calls |QID|63032| |O|
T The Highlord Calls |QID|63030| |O|
T The Highlord Calls |QID|63033| |O|
N Complete 'The Highlord Calls' |N|Use your covenant guide to complete 'The Highlord Calls' quest first| |OID|63029,63032,63030,63033|

A Into Torghast |QID|60136| |N|(npc:164079) in {Ring of Fates} (39.94,68.59)| |Z|1670| |NPC|164079|

R The Maw |QID|60136| |N|Travel to {The Maw} (46.91,41.69)| |Z|1543| 
N (npc:162804) |QID|60136.1| |N|Speak to (npc:162804) about a Way into Torghast in {The Maw} (46.91,41.69)| |Z|1543| |NPC|162804|
T Into Torghast |QID|60136| |N|(npc:162804) in {The Maw} (46.91,41.69)| |Z|1543| |NPC|162804|
A The Search for Baine |QID|61099| |N|(npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
N Use Ve'nari's Portal |QID|61099.1| |N|Use Ve'nari's Portal to Enter Torghast (48.20,39.38)| |Z|1543|
N Take the Attuned Shard |QID|61099.2| |N|Take the Attuned Shard to the Wayfinder and See Where it Leads<br/><b>Enter the instance with the popup that displays (37.96,47.08)| |Z|1911|
K (npc:175123) |QID|61099.3| |N|Fight your way to to the 6th floor and kill (npc:175123) (46.43,50.95)| |Z|1656| |NPC|175123|
A Prison of the Forgotten |QID|60267| |N|Auto quest after looting (npc:175123) (46.43,50.95)| |Z|1656| |NPC|175123|
N (npc:175294) |QID|61099.4| |N|Rescue (npc:175294) (34.79,56.25)| |Z|1656| |NPC|175294|

T The Search for Baine |QID|61099| |N|(npc:164079) in {The Enclave} (40.08, 68.97)| |Z|1670| |NPC|164079|
N (npc:162804) |QID|60267.1| |N|Speak to (npc:162804) in {Ve'nari's Refuge} (46.88, 41.68)| |Z|1543| |NPC|162804|
T Prison of the Forgotten |QID|60267| |N|Click Domination Lock (15.96,62.97)| |Z|1911|

A Explore Torghast |QID|62932| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
N Enter Torghast |QID|62932.1| |N|Enter {Torghast} (16.29,47.08)| |Z|1911| |F|1911|
N (item:184198) |QID|62932.1| |N|Kill the final boss in {Torghast} on floor 6 and collect  (item:184198)| 
T Explore Torghast |QID|62932| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A Remnants of Hope |QID|62935| |N|(npc:164079) in {Oribos}<br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Enter Torghast |QID|62935.1| |N|Enter {Torghast} (16.29,47.08)| |Z|1911| |F|1911|
N (npc:157561) |QID|62935.1| |N|Free 10 (npc:157561) in {Torghast}<br/><b>They look like ghosts chained to the floor or locked in cages<br/><b>There are usually many of them on floor 3| |NPC|157561|
T Remnants of Hope |QID|62935| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A Information for a Price |QID|62938| |N|(npc:164079) in {Oribos}<br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Enter Torghast |QID|62938.1| |N|Enter Torghast {Torghast} (16.29,47.08)| |Z|1911| |F|1911|
B (item:184200) |QID|62938.1| |N|Speak to (npc:152594) in {Torghast} on floor 3 and purchase (item:184200)| |NPC|152594|
B (item:184200) |QID|62938.2| |N|Speak to (npc:170257) in {Torghast} on floor 6 and purchase (item:184199)| |NPC|170257|
T Information for a Price |QID|62938| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A Torment Chamber: Jaina |QID|60139| |N|(npc:164079) in {Oribos}<br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Use the Attuned Shard at the Wayfinder in Torghast |QID|60139.1| |N|Click Wayfinder {Torghast} and choose 'Use the [Attuned Shard] to begin your search for Jaina Proudmoor' and enter the instance (37.96,47.08)||Z|1911| 
N Rescue Lady Jaina Proudmoore |QID|60139.2| |N|Kill (npc:175234) on floor 6 and Rescue Lady Jaina Proudmoore| |NPC|175234|
T Torment Chamber: Jaina |QID|60139| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A Finding a Witness |QID|62966| |N|(npc:164079) in {Oribos}<br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Enter Torghast |QID|62966.1| |N|Enter {Torghast} (16.29,47.08)| |Z|1911| |F|1911|
N Find the Informant |QID|62966.1| |N|Speak to (npc:175542) on floor 1 and Ask him "Have you seen any mortal prisoners brought through here?"| |NPC|175542|
T Finding a Witness |QID|62966| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A Lest the Trail Go Cold |QID|62969| |N|(npc:164079) in {Oribos}<br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Enter Torghast |QID|62966.1| |N|Enter {Torghast} (16.29,47.08)| |Z|1911| |F|1911|
N Find a Clue to Thrall's Location |QID|62969.1| |N|Kill the boss on floor 6 and collect (item:184242)| 
T Lest the Trail Go Cold |QID|62969| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|

A Torment Chamber: Thrall |QID|60146| |N|(npc:164079) in {Oribos} <br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Use the Attuned Shard at the Wayfinder in Torghast |QID|60146.1| |N|Click Wayfinder and choose Use the (item:184551) to begin your search for Thrall {Torghast}  (37.96,47.08)|  |Z|1911|
N Defeat Thrall's Captors |QID|60146.2| |N|Kill (npc:175238) on floor 6| |NPC|175238|
N (npc:175238) |QID|60146.3| |N|Rescue (npc:175238), he appears nearby to where you killed the boss| |NPC|175238|
T Torment Chamber: Thrall |QID|60146| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A Signs of the Lion |QID|62836| |N|(npc:164079) in {Oribos}<br/><b>This quest will appear on the next weekly reset (39.92,68.62)| |Z|1670| |NPC|164079|
N Enter Torghast |QID|62836.1| |N|Enter {Torghast} (16.29,47.08)| |Z|1911| |F|1911|
N Find a Clue |QID|62836.1| |N|Kill the boss on floor 6 and Collect (item:184278)|
N Find the Second Clue |QID|62836.2| |N|Kill the boss on floor 12and collect (item:184277)<br/><b>You may also leave Torghast and enter again, killing the boss on floor 6 for credit| 
N Find the Third Clue |QID|62836.3| |N|Kill the boss on floor 18 and collect (item:184276) <br/><b>You may also leave Torghast and enter again, killing the boss on floor 6 for credit|
T Signs of the Lion |QID|62836| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
A The Captive King |QID|61730| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|
C The Captive King |QID|61730.1| |N|Click Helm of Domination (39.50,69.27)| |Z|1670|
T The Captive King |QID|61730| |N|(npc:164079) in {Oribos} (39.92,68.62)| |Z|1670| |NPC|164079|

N (item:179358) |QID|60501| |N|Collect (item:179358) from the final boss (npc:168938) in "Castle Nathria" raid, to progress to the next quest| |NPC|168938| |L|179358|
A Redemption for the Redeemer |QID|60501| |N|Use (item:179358) to accept quest| |U|179358|

T Redemption for the Redeemer |QID|60501| |N|(npc:168893) in {Revendreth} (26.07,43.63)| |Z|1525| |NPC|168893|
A An Echo in the Darkness |QID|61557| |N|(npc:175531) in {Oribos} (39.91,68.62)| |Z|1670| |NPC|175531|
T An Echo in the Darkness |QID|61557| |N|(npc:175531) in {Oribos} (39.91,68.62)| |Z|1670| |NPC|175531|
A The Highlord's Vision |QID|61558| |N|(npc:175912) in {Oribos} (40.11,68.95)| |Z|1670| |NPC|175912|
N (npc:175912) |QID|61558.1| |N|Speak to (npc:175912) (40.11,68.95)| |Z|1670| |NPC|175912|
N Focus on the Helm of Domination |QID|61558.2| |N|click Helm of Domination (39.50,69.25)| |Z|1670| |NPC|175912|
T The Highlord's Vision |QID|61558| |N|(npc:164079) (39.94,68.58)| |Z|1670| |NPC|164079|
A A Mourneblade Born |QID|61559| |N|(npc:164079) (39.94,68.58)| |Z|1670| |NPC|164079|
N (npc:164079) |QID|61559.1| |N|Speak to (npc:170153) (39.94,68.58)| |Z|1670| |NPC|170153|
T A Mourneblade Born |QID|61559| |N|(npc:170153) in {Oribos} (39.79,68.17)| |Z|1670| |NPC|175531|
A The Jailer's Grasp |QID|62569| |N|(npc:170153) in {Oribos} (39.79,68.17)| |Z|1670| |NPC|175531|
N Break the Helm's Grip |QID|62569.1| |N|click Helm of Domination (39.49,69.26)| |Z|1670| |NPC|175531|
T The Jailer's Grasp |QID|62569| |N|(npc:170153) in {Oribos} (40.22,68.15)| |Z|1670| |NPC|175531|

N Guide Complete 

]]
end, {description = [[This guide will walk you through completing the Torghast questline]]})
	end

	function Guide:Unload()
	end
end