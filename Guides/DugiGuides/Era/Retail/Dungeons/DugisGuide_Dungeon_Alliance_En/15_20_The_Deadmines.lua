local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeon_Alliance_En_15_20_Deadmines")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dungeons Azeroth|r", "The Deadmines (15-20)", "The Wailing Caverns (15-21)", "Alliance", nil, "I", nil, function()
return [[

N Level 14 Required |N|The minimum level to begin these quest is level 14, tick to continue| |QID|65| |PL|14|

R Sentinel Hill |QID|65| |N|Travel to Sentinel Hill (56.3, 47.6)| |Z|1436|
A The Defias Brotherhood (1) |QID|65| |N|(npc:234) in {Sentinel Hill} (56.33, 47.52)| |Z|1436| |NPC|234|

R Three Corners |QID|244| |N|Travel to {Three Corners} in {Redridge Mountains} (15.32, 71.42)| |Z|1433| |REACH|
A Encroaching Gnolls |QID|244| |N|(npc:464) in {Three Corners} (15.32, 71.42)| |Z|1433| |NPC|464|
T Encroaching Gnolls |QID|244| |N|(npc:1070) in {Redridge Mountains} (30.74, 60.15)| |Z|1433| |NPC|1070|
T The Defias Brotherhood (1) |QID|65| |N|(npc:266) in {Lakeshire} (26.65, 45.18)| |Z|1433| |NPC|266|
A The Defias Brotherhood (2) |QID|132| |N|(npc:266) in {Lakeshire} (26.65, 45.18)| |Z|1433| |NPC|266|

R Sentinel Hill |QID|135| |N|Travel to {Sentinel Hill} (56.28, 47.53)| |Z|1436|
T The Defias Brotherhood (2) |QID|132| |N|(npc:234) in {Sentinel Hill} (56.28, 47.53)| |Z|1436| |NPC|234|
A The Defias Brotherhood (3) |QID|135| |N|(npc:234) in {Sentinel Hill} (56.28, 47.53)| |Z|1436| |NPC|234|

R Stormwind City |QID|2040| |N|Travel to Stormwind City} (62.7, 34.5)| |Z|1453|
h Stormwind City |QID|2040| |N|Speak to (npc:6740) and set hearth to {Stormwind City} (60.5, 75.2)| |Z|1453| |NPC|6740|
A Underground Assault |QID|2040| |N|(npc:6579) in {Stormwind City} (62.7, 34.5)| |Z|1453| |NPC|6579|
A Oh Brother. . .  |QID|167| |N|(npc:656) in {Stormwind City} (65.4, 21.2)| |Z|1453| |NPC|656|
A Collecting Memories |QID|168| |N|(npc:656) in {Stormwind City} (65.4, 21.2)| |Z|1453| |NPC|656|
T The Defias Brotherhood (3) |QID|135| |N|(npc:332) in {SI:7} (75.86, 59.80)| |Z|1453| |NPC|332|
A The Defias Brotherhood (4) |QID|141| |N|(npc:332) in {SI:7} (75.86, 59.80)| |Z|1453| |NPC|332|

R Sentinel Hill |QID|142| |N|Travel to {Sentinel Hill} (56.29, 47.62)| |Z|1436|
T The Defias Brotherhood (4) |QID|141| |N|(npc:234) in {Sentinel Hill} (56.29, 47.62)| |Z|1436| |NPC|234|
A The Defias Brotherhood (5) |QID|142| |N|(npc:234) in {Sentinel Hill} (56.29, 47.62)| |Z|1436| |NPC|234|

R Moonbrook |QID|142| |N|Travel to {Moonbrook} (44.01, 69.47)| |Z|1436| 
C The Defias Brotherhood (5) |QID|142| |N|Kill (npc:550) and collect (item:1381), he should be near the road entrance to {Moonbrook} (45.72, 68.02)| |Z|1436| |NPC|550|
R Sentinel Hill |OID|14| |N|Travel or (item:6948) to {Sentinel Hill} (56.32, 47.55)| |Z|1436| |U|6948|
T The Defias Brotherhood (5) |QID|142| |N|(npc:234) in {Sentinel Hill} (56.29, 47.60)| |Z|1436| |NPC|234|
A The Defias Brotherhood (6) |QID|155| |N|(npc:467) in {Sentinel Hill}, he might not be around if another player already started the quest, you will have to wait for him to respawn (56.29, 47.60)| |Z|1436| |NPC|467|
C The Defias Brotherhood (6) |QID|155| |N|Escort The (npc:467) to discover where VanCleef is hiding <br/><br/>The hard part is when you're approaching the fountain in {Moonbrook} as (npc:467) will end up pulling multiple mobs, possible to solo if there are other players in {Moonbrook} otherwise safe to skip (57.20, 60.53) (57.75, 64.97) (45.73, 65.02) (42.57, 71.27)| |Z|1436| |NPC|467|

C Oh Brother. . .  |QID|167| |N|Travel down to the Deadmine Pre-Instance area and kill (npc:626) and collect (item:1875)<br/><br/>You will need a group to complete this quest (41.0, 81.0)| |DMAP|The_Deadmines_Pre_A| |NPC|626|
C Collecting Memories |QID|168| |N|Kill the Skeletons and Zombies around The Deadmines outside the instance and collect 4 (item:1894)<br/><br/>You will need a group to complete this quest (41.0, 81.0)| |DMAP|The_Deadmines_Pre_A| |NPC|625, 623, 624|

R Stormwind City |TID|168| |N|Travel to {Stormwind City} (65.4, 21.2)|
T Oh Brother. . . |QID|167| |N|(npc:656) in {Stormwind City} (65.4, 21.2)| |Z|1453|
T Collecting Memories  |QID|168| |N|(npc:656) in {Stormwind City} (65.4, 21.2)| |Z|1453|

R Sentinel Hill |TID|14| |N|Travel to {Sentinel Hill} (56.32, 47.55)| |Z|1436| |U|6948|
T The People's Militia (3) |QID|14| |N|(npc:234) in {Sentinel Hill} (56.30, 47.55)| |Z|1436| |NPC|234|
T The Defias Brotherhood (6) |QID|155| |N|(npc:234) in {Sentinel Hil} (56.29, 47.61)| |Z|1436| |NPC|234|
A The Defias Brotherhood (7) |QID|166| |N|(npc:234) in {Sentinel Hil} (56.29, 47.61)| |Z|1436| |NPC|234|
A Red Silk Bandanas |QID|214| |N|(npc:820) in {Sentinel Hill} (56.7, 47.4)| |Z|1436| |NPC|820|

R The Deadmines |QID|373| |N|Zone into {The Deadmines} dungeon (42.57, 71.74)| |Z|1436| |I|
C Underground Assault |QID|2040| |N|Kill (npc:642) and collect the (item:7365) from the Shredder's corpse| |DMAP|The_Deadmines_A| |NPC|642|
C The Defias Brotherhood (7)| |QID|166| |N|Kill (npc:639), the final boss of The Deadmines| |DMAP|The_Deadmines_A| |NPC|639|
N (item:2874) |QID|373| |N|Collect (item:2874) from (npc:639)| |L|2874| |DMAP|The_Deadmines_A|
A The Unsent Letter |QID|373| |N|Use (item:2874) to accept quest| |U|2874| |DMAP|The_Deadmines_A|
C Red Silk Bandanas |QID|214| |N|Collect these from the mobs inside the instance| |DMAP|The_Deadmines_A|

R Westfall |TID|214| |N|Travel back to Westfall (56.3, 47.6)| |Z|1436|
T The Defias Brotherhood (7) |QID|166| |N|(npc:234) in {Sentinel Hil} (56.29, 47.61)| |Z|1436| |NPC|234|
T Red Silk Bandanas |QID|214| |N|(npc:820) in {Sentinel Hill} (56.7, 47.4)| |Z|1436| |NPC|820|

R Stormwind City|TID|2040| |N|Travel to {Stormwind City} (62.7, 34.5)| |Z|1453|
T Underground Assault |QID|2040| |N|(npc:6579) in {Stormwind City} (62.7, 34.5)| |Z|1453| |NPC|6579|

N Guide Complete. Tick To Continue To The Wailing Caverns (15-21) |N|Tick to continue to The Wailing Caverns (15-21)| 

]]
end)
	end
	
	function Guide:Unload()
	end
end