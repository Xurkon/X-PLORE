local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_60_Venthyr_Daily")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "Venthyr Daily Quests (60+)", nil, nil, nil, "D", nil, function()
return [[

N Accept Daily Quest |N|Accept any Daily Quests in {Sinfall} you find in the and the guide will automatically load it up<br/><br/>Tick this step (42.57,53.11)| |Z|1699| |MD| |W| |NPC|164738, 164741, 158713, 165302|
A Return Lost Souls |QID|61334| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
A Return Lost Souls |QID|62867| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
A Return Lost Souls |QID|62868| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
A Return Lost Souls |QID|62869| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
A Storm the Maw |QID|60456| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
A Soul Salvage |QID|60460| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|

A Replenish the Reservoir |QID|61981| |N|(npc:172605) in {Sinfall}  (55.70,26.04)| |Z|1699| |O| |D| |NPC|172605|

A Training in Ardenweald |QID|60401| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|
A Training in Maldraxxus |QID|60409| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|
A Training in Bastion |QID|60406| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|
A Training Our Forces |QID|60410| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|

A A Call to Ardenweald |QID|60422| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|
A A Call to Bastion |QID|60427| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|
A A Call to Maldraxxus |QID|60431| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|
A Troubles at Home |QID|60432| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|

A Rare Resources |QID|60417| |N|(npc:158713) in {Sinfall} (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
A A Wealth of Wealdwood |QID|60370| |N|(npc:158713) in {Sinfall} (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
A A Source of Sorrowvine |QID|60378| |N|(npc:158713) in {Sinfall}  (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
A Gildenite Grab |QID|60358| |N|(npc:158713) in {Sinfall}  (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
A Bonemetal Bonanza |QID|60375| |N|(npc:158713) in {Sinfall}  (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|

A Challenges in Ardenweald |QID|60441| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|
A Challenges in Bastion |QID|60444| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|
A Challenges in Maldraxxus |QID|60446| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|
A Challenges in Revendreth |QID|60448| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|

A Aiding Ardenweald |QID|60389| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|
A Aiding Bastion |QID|60394| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|
A Aiding Maldraxxus |QID|60397| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|
A Aiding Revendreth |QID|60399| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|

A Anima Appeal |QID|60463| |N|(npc:164739) in {Sinfall}  (47.67,57.39)| |O| |D| |Z|1700| |NPC|164739|

A Overdue Purging |QID|61847| |N|(npc:173087) in {Revendreth} (71.49,76.29)| |O| |D| |Z|1565| |NPC|173087|
A Awaken Our Allies |QID|61735| |N|(npc:173038) in {Revendreth} (71.54,76.36)| |O| |D| |Z|1565| |NPC|173038|
A Edict of Doom: Devourers |QID|61845| |N|(npc:173248) in {Revendreth} (71.64,76.94)| |O| |D| |Z|1565| |NPC|173248|
A Edict of Doom: Sinstone Golems |QID|61848| |N|(npc:173248) in {Revendreth} (71.64,76.94)| |O| |D| |Z|1565| |NPC|173248|
A Edict of Doom: Dredbats |QID|61846| |N|(npc:173248) in {Revendreth} (71.64,76.94)| |O| |D| |Z|1565| |NPC|173248|
A Census of Sins |QID|61734| |N|(npc:173532) in {Revendreth} (72.26,75.83)| |O| |D| |Z|1565| |NPC|173532|
A Old Habits Never Die |QID|61732| |N|(npc:173042) in {Revendreth} (72.37,76.03)| |O| |D| |Z|1565| |NPC|173042|
A Crumbled Reality |QID|61707| |N|(npc:173036) in {Revendreth} (71.33,74.45)| |O| |D| |Z|1565| |NPC|173036|
A Big Bag of Creepers |QID|61733| |N|(npc:173036) in {Revendreth} (71.33,74.45)| |O| |D| |Z|1565| |NPC|173036|
A Take the Bite Out of 'Em |QID|61849| |N|(npc:173630) in {Revendreth} (71.21,74.34)| |O| |D| |Z|1565| |NPC|173630|

C Training in Bastion |QID|60406| |N|Complete 3 World Quests in Bastion with Your Trainee| |O| |D|
C Training in Maldraxxus |QID|60409| |N|Complete 3 World Quests in Maldraxxus with Your Trainee| |O| |D|
C Training in Ardenweald |QID|60401| |N|Complete 3 World Quests in Ardenweald with Your Trainee| |O| |D|
C Training Our Forces |QID|60410| |N|Complete 3 World Quests in Ardenweald with Your Trainee| |O| |D|

C Aiding Ardenweald |QID|60389| |N|Complete 3 World Quests in Ardenweald| |O| |D|
C Aiding Bastion |QID|60394| |N|Complete 3 World Quests in Bastion| |O| |D|
C Aiding Maldraxxus |QID|60397| |N|Complete 3 World Quests in Maldraxxus| |O| |D|
C Aiding Revendreth |QID|60399| |N|Complete 3 World Quests in Revendreth| |O| |D|

C Challenges in Revendreth |QID|60448| |N|Defeat the Powerful Foes of Revendreth<br/><b>Complete the (qid:60532) world quest in Revendreth using the world quest guide if it is active<br/><b>Alternatively, you may also complete the (map:1676) or (map:1663) dungeons using their respective dungeon guides<br/><b>Completing any one of these will fulfill the quest requirements| |O| |D|
C Challenges in Bastion |QID|60444| |N|Defeat the Powerful Foes of Bastion<br/><b>Complete the (qid:60534) world quest in Bastion using the world quest guide if it is active<br/><b>Alternatively, you may also complete the (map:1692) or (map:1666) dungeons using their respective dungeon guides<br/><b>Completing any one of these will fulfill the quest requirements| |O| |D|
C Challenges in Maldraxxus |QID|60446| |N|Defeat the Powerful Foes of Maldraxxus<br/><b>Complete the (qid:60531) world quest in Maldraxxus using the world quest guide if it is active<br/><b>Alternatively, you may also complete the (map:1687) or (map:1697) dungeons using their respective dungeon guides<br/><b>Completing any one of these will fulfill the quest requirements| |O| |D|
C Challenges in Ardenweald |QID|60441| |N|Defeat the Powerful Foes of Ardenweald<br/><b>Complete the (qid:60533) world quest in Ardenweald using the world quest guide if it is active<br/><b>Alternatively, you may also complete the (map:1669) or (map:1678) dungeons using their respective dungeon guides<br/><b>Completing any one of these will fulfill the quest requirements| |O| |D|

C A Call to Maldraxxus |QID|60431| |N|Defend Maldraxxus by completing world quests in Maldraxxus<br/><b>Loot treasures or kill rare enemies across Maldraxxus<br/><b>You can also kill bosses in the (map:1697) and (map:1687) dungeons| |O| |D|
C A Call to Bastion |QID|60427| |N|Defend Bastion by completing world quests in Bastion<br/><b>Loot treasures or kill rare enemies across Bastion<br/><b>You can also kill bosses in the (map:1692) and (map:1666) dungeons| |O| |D|
C A Call to Ardenweald |QID|60422| |N|Defend Ardenweald by completing world quests in Ardenweald<br/><b>Loot treasures or kill rare enemies across Ardenweald<br/><b>You can also kill bosses in the (map:1669) and (map:1678) dungeons| |O| |D|
A Troubles at Home |QID|60432| |N|Defend Revendreth by completing world quests in Revendreth<br/><b>Loot treasures or kill rare enemies across Revendreth<br/><b>You can also kill bosses in the (map:1676) and (map:1663) dungeons| |O| |D|

C Gildenite Grab |QID|60358| |N|Collect 3 (item:179321)<br/><b>This ore drops from rare spawns and treasures all over Bastion| |O| |D|
C Bonemetal Bonanza |QID|60375| |N|Collect 3 (item:179317)<br/><b>This drops from rare spawns and treasures all over Maldraxxus| |O| |D|
C A Source of Sorrowvine |QID|60378| |N|Collect 3 (item:179318)<br/><b>Loot treasures or kill rare enemies across Revendreth| |O| |D|
C A Wealth of Wealdwood |QID|60370| |N|Collect 3 (item:179320)<br/><b>Loot treasures or kill rare enemies across Ardenweald| |O| |D|
C Rare Resources |QID|60417| |N|Collect 3 (item:179327)<br/><b>These coins drop from rare spawns and treasures all over Shadowlands zones| |O| |D|

C Return Lost Souls |QID|61334| |N|Click Soul Cage or (npc:176145) and rescue 5 (npc:174182) in {The Maw} (39.52,46.74)| |O| |D| |Z|1543| |NPC|174182, 176145|
C Return Lost Souls |QID|62867| |N|Click Soul Cage or (npc:176145) and rescue 10 (npc:174182) in {The Maw} (39.52,46.74)| |O| |D| |Z|1543| |NPC|174182, 176145|
C Return Lost Souls |QID|62868| |N|Click Soul Cage or (npc:176145) and rescue 15 (npc:174182) in {The Maw} (39.52,46.74)| |O| |D| |Z|1543| |NPC|174182, 176145|
C Return Lost Souls |QID|62869| |N|Click Soul Cage or (npc:176145) and rescue 20 (npc:174182) in {The Maw} (39.52,46.74)| |O| |D| |Z|1543| |NPC|174182, 176145|
C Storm the Maw |QID|60456| |N|Defeat 3 Rare or Special Encounter Bosses <br/><b>Encounters periodically show on the map| |O| |D|
C Soul Salvage |QID|60460| |N|Gather 150 (item:184561) from Torghast, Tower of the Damned| |O| |D|

C Census of Sins |QID|61734| |N|Inspect 7 Lost Sinstones (74.02,76.96) (75.28,75.09) (70.08,70.21) (71.70,61.19)  (69.67,53.34) (75.29,47.16) (78.49,36.18)| |O| |D| |POI|
C Crumbled Reality |QID|61707.1| |N|Click Infused Rubble and collect 100 (item:182158)  (66.05,60.85)| |O| |D| |Z|1565| |POI|
C Edict of Doom: Devourers |QID|61845.1| |N|Destroy 20 Devourers in {Revendreth} (66.08,59.76)| |O| |D| |Z|1565| |NPC|156061, 160812, 157892|
C Overdue Purging |QID|61847.1| |N|Kill Manifestation enemies around this area and destroy 30 Manifestation (66.14,59.33)| |O| |D| |Z|1565| |NPC|160521, 160477, 166718|
C Take the Bite Out of 'Em |QID|61849.1| |N|Kill Depraved enemies around this area and collect 40 (item:182692) (70.05,54.21)| |O| |D| |Z|1565| |NPC|161345, 161333, 161344|
C Old Habits Never Die |QID|61732.1| |N|Click 10 Hoarded Anima Cage (71.92,49.85)| |O| |D| |Z|1565|
C Awaken Our Allies |QID|61735.1| |N|Click (npc:173137) and awaken 15  (57.62,37.25)| |O| |D| |Z|1565| |POI| |NPC|173137|
C Edict of Doom: Sinstone Golems |QID|61848.1| |N|Kill 4 (npc:159233) in {Revendreth} (30.26,20.61)| |O| |D| |Z|1565| |NPC|159233|
N 20 (item:182583) |QID|61733.1| |N|click Mire Creeper and collect 20 (item:182583) (46.12,68.41)| |O| |D| |Z|1565| |POI|
C Edict of Doom: Dredbats |QID|61846.1| |N|Destroy 25 Dredbats in {Revendreth} (49.94,70.24)| |O| |D| |Z|1565| |NPC|157828, 158976, 156077, 159077|

T Overdue Purging |QID|61847| |N|(npc:173087) in {Revendreth} (71.49,76.29)| |O| |D| |Z|1565| |NPC|173087|
T Awaken Our Allies |QID|61735| |N|(npc:173038) in {Revendreth} (71.54,76.36)| |O| |D| |Z|1565| |NPC|173038|
T Edict of Doom: Devourers |QID|61845| |N|(npc:173248) in {Revendreth} (71.64,76.94)| |O| |D| |Z|1565| |NPC|173248|
T Edict of Doom: Sinstone Golems |QID|61848| |N|(npc:173248) in {Revendreth} (71.64,76.94)| |O| |D| |Z|1565| |NPC|173248|
T Edict of Doom: Dredbats |QID|61846| |N|(npc:173248) in {Revendreth} (71.64,76.94)| |O| |D| |Z|1565| |NPC|173248|
T Census of Sins |QID|61734| |N|(npc:173532) in {Revendreth} (72.26,75.83)| |O| |D| |Z|1565| |NPC|173532|
T Old Habits Never Die |QID|61732| |N|(npc:173042) in {Revendreth} (72.37,76.03)| |O| |D| |Z|1565| |NPC|173042|
T Crumbled Reality |QID|61707| |N|(npc:173036) in {Revendreth} (71.33,74.45)| |O| |D| |Z|1565| |NPC|173036|
T Big Bag of Creepers |QID|61733| |N|(npc:173036) in {Revendreth} (71.33,74.45)| |O| |D| |Z|1565| |NPC|173036|
T Take the Bite Out of 'Em |QID|61849| |N|(npc:173630) in {Revendreth} (71.21,74.34)| |O| |D| |Z|1565| |NPC|173630|

T Storm the Maw |QID|60456| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
T Soul Salvage |QID|60460| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
T Return Lost Souls |QID|61334| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
T Return Lost Souls |QID|62867| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
T Return Lost Souls |QID|62868| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|
T Return Lost Souls |QID|62869| |N|(npc:164738) in {Sinfall} (45.41,28.47)| |Z|1699| |O| |D| |NPC|164738|

T Replenish the Reservoir |QID|61981| |N|(npc:172605) in {Sinfall}  (55.70,26.04)| |Z|1699| |O| |D| |NPC|172605|

T Training in Ardenweald |QID|60401| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|
T Training in Maldraxxus |QID|60409| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|
T Training in Bastion |QID|60406| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|
T Training Our Forces |QID|60410| |N|(npc:164741) in {Sinfall}  (58.10,59.69)| |O| |D| |Z|1699| |NPC|164741|

T A Call to Ardenweald |QID|60422| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|
T A Call to Bastion |QID|60427| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|
T A Call to Maldraxxus |QID|60431| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|
T Troubles at Home |QID|60432| |N|(npc:158653) in {Sinfall}  (51.77,37.54)| |O| |D| |Z|1699| |NPC|158653|

T Anima Appeal |QID|60463| |N|(npc:164739) in {Sinfall}  (47.67,57.39)| |O| |D| |Z|1700| |NPC|164739|

T Rare Resources |QID|60417| |N|(npc:158713) in {Sinfall} (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
T A Wealth of Wealdwood |QID|60370| |N|(npc:158713) in {Sinfall} (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
T A Source of Sorrowvine |QID|60378| |N|(npc:158713) in {Sinfall}  (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
T Gildenite Grab |QID|60358| |N|(npc:158713) in {Sinfall}  (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|
T Bonemetal Bonanza |QID|60375| |N|(npc:158713) in {Sinfall}  (61.67,66.72)| |O| |D| |Z|1700| |NPC|158713|

T Challenges in Ardenweald |QID|60441| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|
T Challenges in Bastion |QID|60444| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|
T Challenges in Maldraxxus |QID|60446| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|
T Challenges in Revendreth |QID|60448| |N|(npc:165291) in {Sinfall}  (56.02,78.61)| |O| |D| |Z|1700| |NPC|165291|

T Aiding Ardenweald |QID|60389| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|
T Aiding Bastion |QID|60394| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|
T Aiding Maldraxxus |QID|60397| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|
T Aiding Revendreth |QID|60399| |N|(npc:165302) in {Sinfall}  (62.44,76.57)| |O| |D| |Z|1700| |NPC|165302|

C Anima Appeal |QID|60463| |N|Speak to (npc:172605) and deposit 400 (cur:1813) in the Anima Reservoir<br/><b>Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands (55.70,26.04)| |Z|1699| |O| |D| |NPC|172605|
T Anima Appeal |QID|60463| |N|(npc:164739) in {Sinfall}  (47.67,57.39)| |O| |D| |Z|1700| |NPC|164739|

C Replenish the Reservoir |QID|61981| |N|Speak to (npc:164739) and deposit 1000 (cur:1813) in the Anima Reservoir<br/><b>Gather anima by completing world quests, killing rare enemies, and looting treasures across the Shadowlands (55.70,26.04)| |Z|1699| |O| |D| |NPC|164739|
T Replenish the Reservoir |QID|61981| |N|(npc:172605) in {Sinfall}  (55.70,26.04)| |Z|1699| |O| |D| |NPC|172605|

N Guide Complete |N|Reset the guide to start again|

]]
end, {image = "revendreth.tga", description = [[]]})	end

	function Guide:Unload()
	end
end
