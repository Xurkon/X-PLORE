local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_WarWithin_LoreWalking")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200The War Within|r", "|cffffd200Exploration|r"}, "Lorewalking", nil, nil, nil, "A", nil, function()
return [[

A Lorewalking |QID|90705| |N|You will accept this quest automatically in {Dornogal} (49.65,31.53)| |Z|2339|
T Lorewalking |QID|90705| |N|(npc:230246) in {Dornogal} (49.65,31.53)| |Z|2339| |NPC|230246|
N Begin a Lorewalking Campaign |N|Speak to (npc:230246) and choose a quest line then select the same choice below<br/><br/>(choice:1:Xalath Questline)<br/>(choice:2:Eth Questline)<br/>(choice:3:LK Questline) (49.65,31.53)| |Z|2339| |NPC|230246|
N (npc:231891)| |QID|84371.1| |N|Listen to (npc:231891) to Learn About the Legion Invasion| |CHOICE|1| |PPOS| |NPC|231891|
N (npc:231891)| |QID|84371.2| |N|Talk to (npc:231891) to Learn of the High Priest's Journey| |CHOICE|1| |PPOS| |NPC|231891|
N Scenario Begin |QID|40710| |N|Begin Blade in Twilight Scenario| |F|18| |CHOICE|1|
A Blade in Twilight |QID|40710| |N|(npc:231472) in {Tirisfal Glades} (12.79,59.00)| |Z|18| |CHOICE|1| |NPC|231472|
N Marked Location |QID|40710.1| |N|Go to the Marked Location in {Tirisfal Glades} (13.47,57.58)| |Z|18| |CHOICE|1|
N Find the First Clue |SID|29555|1| |N|Click Slaghammer's Notes: The New Leader in {Tirisfal Glades} (13.47,57.59)| |QID|40710| |Z|18| |CHOICE|1|
N Find the Second Clue |SID|29556|1| |N|Click Slaghammer's Notes: Tyr's Fall in {Tirisfal Glades} (13.19,55.46)| |QID|40710| |Z|18| |CHOICE|1|
N Find the Third Clue |SID|29557|1| |N|Click Slaghammer's Notes: Xal'atath, the Blade of the Black Empire in {Tirisfal Glades} (13.90,55.40)| |QID|40710| |Z|18| |CHOICE|1|
N Enter the Tomb |SID|29342|2| |N|Enter the Tomb at the Bottom of the Lake in {Tirisfal Glades} (37.44,12.84) (35.66,31.62)| |QID|40710| |Z|20| |CHOICE|1|
K (npc:101122) |SID|29346|3| |N|Defeat the Guards at the Door to Gain Access Kill (npc:101122) in {Tirisfal Glades} (37.17,40.86)| |QID|40710| |Z|20| |CHOICE|1| |NPC|101122|
N Enter the Tomb of Tyr |SID|29379|4| |N|Enter the Tomb of Tyr in {Tirisfal Glades} (37.16,48.00)| |QID|40710| |Z|20| |CHOICE|1|
K (npc:101875) |SID|29347|5| |N|Stop the Dampening Ritual in {Tirisfal Glades} (40.96,50.40) (41.21,58.40) (33.98,59.91) (33.59,50.47)| |QID|40710| |Z|20| |CHOICE|1| |NPC|101875|
K (npc:102693) |SID|29507|6| |N|Defeat the Amassing Darkness in {Tirisfal Glades} (37.45,54.95)| |QID|40710| |Z|20| |CHOICE|1| |NPC|102693|
K (npc:102784) |SID|29409|7| |N|Kill (npc:102784),Fight to the Prison Chamber in {Tirisfal Glades} (37.60,67.18) (49.43,74.87)| |QID|40710| |Z|20| |CHOICE|1| |NPC|102784|
K (npc:101148) |SID|29410|8| |N|Kill the (npc:101148) in {Tirisfal Glades} (58.92,75.20)| |QID|40710| |Z|20| |CHOICE|1| |NPC|101148|
N Click Xal'atath |SID|29458|9| |N|Take the Blade of the Black Empire in {Tirisfal Glades} (58.53,76.78)| |QID|40710| |Z|20| |CHOICE|1|
N (spell:201904) |SID|29459|10| |N|Use (spell:201904) to kill Zakajz Forever in {Tirisfal Glades} (58.53,76.78)| |QID|40710| |Z|20| |CHOICE|1|
T Blade in Twilight |QID|40710| |N|(npc:231891) in {Tirisfal Glades} (58.53,76.78)| |Z|20| |CHOICE|1| |NPC|231891|
N Follow the High Priest's |QID|84371.3| |N|Follow the High Priest's Journey and Acquire Xal'atath in {Tirisfal Glades} (58.53,76.78)| |Z|20| |CHOICE|1|
T Lorewalking: The Blade and the High Priest |QID|84371| |N|(npc:231891) in {Tirisfal Glades} (58.53,76.78)| |Z|20| |CHOICE|1| |NPC|231891|
A Lorewalking: The Blade's Gambit |QID|84779| |N|(npc:231891) in {Tirisfal Glades} (58.53,76.78)| |Z|20| |CHOICE|1| |NPC|231891|
N (npc:231891) |QID|84779.1| |N|Listen to (npc:231891) to Learn of Xal'atath's Gambit in {Tirisfal Glades} (58.53,76.78)| |Z|20| |CHOICE|1| |NPC|231891|

N Accept Quest |N|Accept "Every Little Death Helps" from Xal'atath, Blade of the Black Empire in {Zuldazar} (78.07,36.72)| |Z|862| |FAC|Horde| |CHOICE|1| |OID|54117, 54118|
N Accept Quest |N|Accept "Every Little Death Helps" from Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |Z|942| |FAC|Alliance| |CHOICE|1| |OID|54113, 54114|
A Every Little Death Helps |QID|54117| |N|Xal'atath, Blade of the Black Empire in {Zuldazar} (78.07,36.72)| |FAC|Horde| |Z|862| |CHOICE|1| |O|
A Every Little Death Helps |QID|54118| |N|Xal'atath, Blade of the Black Empire in {Zuldazar} (78.07,36.72)| |FAC|Horde| |Z|862| |CHOICE|1| |O|
A Every Little Death Helps |QID|54113| |N|Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |FAC|Alliance| |Z|942| |CHOICE|1| |O|
A Every Little Death Helps |QID|54114| |N|Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |FAC|Alliance| |Z|942| |CHOICE|1| |O|
K (npc:149086) |QID|54117.1| |N|Kill (npc:149086) in {Zuldazar} (79.66,38.04)| |Z|862| |CHOICE|1| |NPC|149086| |O|
K (npc:149086) |QID|54118.1| |N|Kill (npc:149086) in {Zuldazar} (79.66,38.04)| |Z|862| |CHOICE|1| |NPC|149086| |O|
K (npc:149086) |QID|54113.1| |N|Kill (npc:149086) in {Stormsong Valley} (32.82,32.04)| |Z|942| |CHOICE|1| |O| |NPC|149086|
K (npc:149086) |QID|54114.1| |N|Kill (npc:149086) in {Stormsong Valley} (32.82,32.04)| |Z|942| |CHOICE|1| |O| |NPC|149086|

T Every Little Death Helps |QID|54117| |N|Xal'atath, Blade of the Black Empire in {Zuldazar} (78.06,36.72)| |Z|862| |CHOICE|1| |O|
T Every Little Death Helps |QID|54118| |N|Xal'atath, Blade of the Black Empire in {Zuldazar} (78.06,36.72)| |Z|862| |CHOICE|1| |O|
T Every Little Death Helps |QID|54113| |N|Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |Z|942| |CHOICE|1| |O|
T Every Little Death Helps |QID|54114| |N|Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |Z|942| |CHOICE|1| |O|
A Unintended Consequences |QID|54058| |N|Xal'atath, Blade of the Black Empire in {Zuldazar} (78.06,36.72)| |FAC|Horde| |Z|862| |CHOICE|1| |PRE|54117|
A Unintended Consequences |QID|53760| |N|Xal'atath, Blade of the Black Empire in {Zuldazar} (78.06,36.72)| |FAC|Horde| |Z|862| |CHOICE|1| |PRE|54118|
A Unintended Consequences |QID|54058| |N|Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |FAC|Alliance| |Z|942| |CHOICE|1| |PRE|54113|
A Unintended Consequences |QID|53760| |N|Xal'atath, Blade of the Black Empire in {Stormsong Valley} (34.14,31.76)| |FAC|Alliance| |Z|942| |CHOICE|1| |PRE|54114|
N (npc:231818) |N|Click (npc:231817) in {Zuldazar} (78.00,36.70)| |QID|54058| |FAC|Horde| |Z|862| |CHOICE|1| |V| |NPC|231818| |PRE|54117|
N (npc:231818) |N|Click (npc:231817) in {Zuldazar} (78.00,36.70)| |QID|53760| |FAC|Horde| |Z|862| |CHOICE|1| |V| |NPC|231818| |PRE|54118|
N (npc:231704) |N|Click (npc:231703) in {Stormsong Valley} (34.10,31.94)| |QID|54058| |FAC|Alliance| |Z|942| |CHOICE|1| |V| |NPC|231704| |PRE|54113|
N (npc:231704) |N|Click (npc:231703) in {Stormsong Valley} (34.10,31.94)| |QID|53760| |FAC|Alliance| |Z|942| |CHOICE|1| |V| |NPC|231704| |PRE|54114|
N Find the Void Stone |QID|54058.1| |N|Watch the dialogue| |PRE|54058| |CHOICE|1|
N Find the Void Stone |QID|53760.1| |N|Watch the dialogue| |PRE|53760| |CHOICE|1|
K (npc:145052) |QID|54058.2| |N|Kill (npc:145052) and Stop the Ritual in {Drustvar} (20.14,35.77)  |PRE|54058| |Z|896| |CHOICE|1| |NPC|145052|
K (npc:145052) |QID|53760.2| |N|Kill (npc:145052) and Stop the Ritual in {Drustvar} (20.14,35.77) |PRE|53760| |Z|896| |CHOICE|1| |NPC|145052|
N (item:164911)| |QID|54058.3| |N|Click Void Stone in {Drustvar} (20.12,35.84)  |PRE|54058| |Z|896| |CHOICE|1|
N (item:164911)| |QID|53760.3| |N|Click Void Stone in {Drustvar} (20.12,35.84) |PRE|53760| |Z|896| |CHOICE|1|
N Activate the Void Stone |QID|54058.4| |N|Use (spell:283517) in {Drustvar} (20.12,35.84)  |PRE|54058| |Z|896| |CHOICE|1|
N Activate the Void Stone |QID|53760.4| |N|Use (spell:283517) in {Drustvar} (20.12,35.84) |PRE|53760| |Z|896| |CHOICE|1|
T Unintended Consequences |QID|54058| |N|(npc:144773) in {Drustvar} (19.92,36.24)  |PRE|54058| |Z|896| |CHOICE|1| |NPC|144773|
T Unintended Consequences |QID|53760| |N|(npc:144773) in {Drustvar} (19.92,36.24) |PRE|53760| |Z|896| |CHOICE|1| |NPC|144773|
A The Pirate's Treasure |QID|53761| |N|(npc:144773) in {Drustvar} (19.92,36.24)| |Z|896| |CHOICE|1| |NPC|144773|
N (npc:231742) |QID|53761| |N|Begin riding (npc:231742) in {Drustvar} (19.87,36.42)| |Z|896| |CHOICE|1| |V| |NPC|231742|
N Find the Pirate's Den |QID|53761.1| |N|Watch the dialogue (74.90,78.55)| |Z|895| |CHOICE|1|
K (npc:145230) |QID|53761.2| |N|Kill (npc:145230) and collect (item:164976) in {Tiragarde Sound} (74.90,78.55)| |Z|895| |CHOICE|1| |NPC|145230|
N (item:164763) |QID|53761.3| |N|Click Ocean Chest and collect (item:164763) in {Tiragarde Sound} (74.90,78.91)| |Z|895| |CHOICE|1|
T The Pirate's Treasure |QID|53761| |N|(npc:145396) in {Tiragarde Sound} (75.04,77.67)| |Z|895| |CHOICE|1| |NPC|145396|
A The Tempest Crown |QID|53762| |N|(npc:145396) in {Tiragarde Sound} (75.04,77.67)| |Z|895| |CHOICE|1| |NPC|145396|
N (npc:231750) |QID|53762| |N|Begin riding (npc:231750) in {Tiragarde Sound} (75.06,77.46)| |V| |Z|895| |CHOICE|1| |NPC|231750|
N Find Toatana's Cave |QID|53762.1| |N|Find Toatana's Cave in {Vol'dun} (51.93,13.69)| |Z|864| |CHOICE|1|
K (npc:147493) |QID|53762.2| |N|Kill (npc:147493) in {Vol'dun} (53.45,13.14)| |Z|864| |CHOICE|1| |NPC|147493|
N (item:165018)| |QID|53762.3| |N|Collect (item:165018) in {Vol'dun} (53.45,13.15)| |Z|864| |CHOICE|1|
T The Tempest Crown |QID|53762| |N|(npc:146384) in {Vol'dun} (53.03,13.67)| |Z|864| |CHOICE|1| |NPC|146384|
A Twist the Knife |QID|53763| |N|(npc:146384) in {Vol'dun} (53.03,13.67)| |FAC|Horde| |Z|864| |CHOICE|1| |NPC|146384|
A Twist the Knife |QID|54126| |N|(npc:146384) in {Vol'dun} (53.03,13.67)| |FAC|Alliance| |Z|864| |CHOICE|1| |NPC|146384|
N (npc:234309) |N|Begin riding (npc:231742) in {Vol'dun} (51.82,13.34)| |QID|53763| |FAC|Horde| |Z|864| |CHOICE|1| |V| |NPC|231742|
N (npc:234309) |N|Begin riding (npc:231742) in {Vol'dun} (51.82,13.34)| |QID|54126| |FAC|Alliance| |Z|864| |CHOICE|1| |V| |NPC|231742|
N Find Xal'atath |QID|53763.1| |N|Watch the dialogue in {Vol'dun} (61.11,8.38)| |FAC|Horde| |Z|864| |CHOICE|1|
N Find Xal'atath |QID|54126.1| |N|Watch the dialogue in {Vol'dun} (61.11,8.38)| |FAC|Alliance| |Z|864| |CHOICE|1|
N Enter the Crucible |QID|53763.2| |N|Watch the dialogue in {Vol'dun} (61.11,8.38)| |FAC|Horde| |Z|864| |CHOICE|1|
N Enter the Crucible |QID|54126.2| |N|Watch the dialogue in {Vol'dun} (61.11,8.38)| |FAC|Alliance| |Z|864| |CHOICE|1|
N Place the Void Stone |QID|53763.3| |N|Click (npc:146529) in {Crucible of Storms} (27.98,54.60)| |FAC|Horde| |Z|1363| |CHOICE|1| |NPC|146529|
N Place the Void Stone |QID|54126.3| |N|Click (npc:146529) in {Crucible of Storms} (27.98,54.60)| |FAC|Alliance| |Z|1363| |CHOICE|1| |NPC|146529|
N Place the Trident of Deep Ocean |QID|53763.4| |N|Click (npc:146527) in {Crucible of Storms} (27.95,53.36)| |FAC|Horde| |Z|1363| |CHOICE|1| |NPC|146527|
N Place the Trident of Deep Ocean |QID|54126.4| |N|Click (npc:146527) in {Crucible of Storms} (27.95,53.36)| |FAC|Alliance| |Z|1363| |CHOICE|1| |NPC|146527|
N Place the Tempest Caller |QID|53763.5| |N|Click (npc:146528) in {Crucible of Storms} (27.87,52.21)| |FAC|Horde| |Z|1363| |CHOICE|1| |NPC|146528| 
N Place the Tempest Caller |QID|54126.5| |N|Click (npc:146528) in {Crucible of Storms} (27.87,52.21)| |FAC|Alliance| |Z|1363| |CHOICE|1| |NPC|146528|
N Receive the Gift |QID|53763.6| |N|Watch the dialogue in {Crucible of Storms} (27.87,52.21)| |FAC|Horde| |Z|1363| |CHOICE|1|
N Receive the Gift |QID|54126.6| |N|Watch the dialogue in {Crucible of Storms} (27.87,52.21)| |FAC|Alliance| |Z|1363| |CHOICE|1|
T Twist the Knife |QID|53763| |N|(npc:231891), next to you|  |PPOS| |FAC|Horde| |CHOICE|1| |NPC|231891|
T Twist the Knife |QID|54126| |N|(npc:231891), next to you| |PPOS| |FAC|Alliance| |CHOICE|1| |NPC|231891|
N Aid Xal'atath Across Kul Tiras and Zandalar |QID|84779.2| |N|Watch the dialogue| |CHOICE|1|
T Lorewalking: The Blade's Gambit |QID|84779| |N|(npc:231891), next to you|  |PPOS| |CHOICE|1| |NPC|231891|
A Lorewalking: The Blade's Past |QID|84782| |N|(npc:231891), next to you|  |PPOS| |CHOICE|1| |NPC|231891|
N Listen to (npc:231891) |QID|84782.1||N|Listen to (npc:231891) to Learn of Xal'atath's Distant Past | |CHOICE|1| |NPC|231891|
N Enter Ny'alotha |N|Enter Ny'alotha| |F|2381| |PPOS| |CHOICE|1|
T Lorewalking: The Blade's Past |QID|84782| |N|(npc:230321) in {Ny'alotha} (52.58,72.93)| |Z|2381| |CHOICE|1| |NPC|230321|
A Lorewalking: The Blade's Forces |QID|85871| |N|(npc:230321) in {Ny'alotha} (52.58,72.93)| |Z|2381| |CHOICE|1| |NPC|230321|
A Lorewalking: The Blade's Nemeses |QID|84784| |N|(npc:230321) in {Ny'alotha} (52.58,72.93)| |Z|2381| |CHOICE|1| |NPC|230321|
N Summon Yogg-Saron |QID|84784.1| |N|Click Ritual Obelisk in {Ny'alotha} (53.28,63.71)| |Z|2384| |CHOICE|1|

N (spell:466732) |N|Use the Path of the Chosen Ability in {Ny'alotha} (53.14,51.83)<br/><b>It appears on your vehicle bar when standing on this spot<br/><b>This will take you to the next area.| |Z|2384| |CHOICE|1|
N (spell:466732) |N|Use the Path of the Chosen Ability in {Ny'alotha} (60.16,53.47)<br/><b>It appears on your vehicle bar when standing on this spot<br/><b>This will take you to the top of the building| |Z|2381| |CHOICE|1|
N Summon Y'Shaarj |QID|84784.2| |N|Click Ritual Obelisk {Ny'alotha} (36.94,50.25)| |Z|2383| |CHOICE|1|
N (spell:466732) |N|Use the Path of the Chosen Ability in {Ny'alotha} (32.41,46.64)<br/><b>It appears on your vehicle bar when standing on this spot<br/><b>This will take you back down| |Z|2383| |CHOICE|1|
N Summon C'Thun |QID|84784.3| |N|Click Ritual Obelisk in {Ny'alotha} (57.75,60.23)| |Z|2382| |CHOICE|1|
N Slay Xal'atath's Forces |QID|85871.1| |N|Kill (npc:230580) in {Ny'alotha} (53.34,71.89)| |Z|2381| |CHOICE|1| |NPC|230580|
N (spell:466732) |N|Use  (spell:466732) in {Ny'alotha} (78.66,89.41)<br/><b>It appears on your vehicle bar when standing on this spot<br/><b>This will take you back to Xithixxin| |Z|2382| |CHOICE|1|
T Lorewalking: The Blade's Forces |QID|85871| |N|(npc:230321) in {Ny'alotha} (52.60,72.85)| |Z|2381| |CHOICE|1| |NPC|230321|
T Lorewalking: The Blade's Nemeses |QID|84784| |N|(npc:230321) in {Ny'alotha} (52.60,72.85)| |Z|2381| |CHOICE|1| |NPC|230321|
A Lorewalking: The Blade's Downfall |QID|84789| |N|(npc:230321) in {Ny'alotha} (52.60,72.85)| |Z|2381| |CHOICE|1| |NPC|230321|

N (spell:466732) |N|Use the Path of the Chosen Ability in {Ny'alotha} (50.98,28.15)<br/><b>It appears on your vehicle bar when standing on this spot<br/><b>This will take you across the Annex of Prophecy| |Z|2379| |CHOICE|1|
N Descend to the Annex of Prophecy |QID|84789.1| |N|Descend to the Annex of Prophecy in {Ny'alotha} (50.97,77.32)| |Z|2379| |CHOICE|1|
N Defeat Xal'atath |QID|84789.2| |N|Watch the dialogue in {Ny'alotha} (50.97,77.32)| |Z|2379| |CHOICE|1|
T Lorewalking: The Blade's Downfall |QID|84789| |N|(npc:231891), next to you| |PPOS| |CHOICE|1| |NPC|231891|

--Eth_Questline
N (npc:231891) |QID|85027.1| |N|Speak to (npc:231891) to Learn About the Ethereals, next to you| |CHOICE|2| |PPOS| |NPC|231891|
N (npc:231891) |QID|85027.2| |N|Talk to (npc:231891) to Learn About the Protectorate, next to you| |CHOICE|2| |PPOS| 
A The Ethereum |QID|10339| |N|(npc:20448) in {Netherstorm} (59.50,32.38)| |Z|109| |CHOICE|2| |NPC|20448|
K (npc:20727)| |QID|10339.4| |N|Kill (npc:20727) in {Netherstorm} (56.76,37.71)<br/><b>He walks around this area| |Z|109| |CHOICE|2| |NPC|20727|
K 5 (npc:20452)| |QID|10339.1| |N|Kill 5 (npc:20452) in {Netherstorm} (57.09,36.12)| |Z|109| |CHOICE|2| |NPC|20452|
K 2 (npc:20456)| |QID|10339.3| |N|Kill 2 (npc:20456) in {Netherstorm} (57.09,36.12)| |Z|109| |CHOICE|2| |NPC|20456|
K 5 (npc:20453)| |QID|10339.2| |N|Kill 5 (npc:20453) in {Netherstorm} (57.09,36.12)| |Z|109| |CHOICE|2| |NPC|20453|
T The Ethereum |QID|10339| |N|(npc:20482) in {Netherstorm} (56.82,38.70)<br/><b>Click Ethereum Transponder Zeta to summon the Image of Commander Ameer| |Z|109| |CHOICE|2| |NPC|20482|
A Ethereum Data |QID|10384| |N|(npc:20482) in {Netherstorm} (56.82,38.70)| |Z|109| |CHOICE|2| |NPC|20482|
N (item:29582)| |QID|10384.1| |N|Click Ethereum Data Cell and collect (item:29582) in {Netherstorm} (55.77,39.89)| |Z|109| |CHOICE|2|
T Ethereum Data |QID|10384| |N|(npc:20482) in {Netherstorm} (56.81,38.69)| |Z|109| |CHOICE|2| |NPC|20482|
A Potential for Brain Damage = High |QID|10385| |N|(npc:20482) in {Netherstorm} (56.81,38.69)| |Z|109| |CHOICE|2| |NPC|20482|
N (item:29482) |QID|10385.1| |N|Kill (npc:20459) and collect (item:29482) then use the item in {Netherstorm} (56.62,38.46)| |Z|109| |CHOICE|2| |NPC|20459|
K (npc:20619) |QID|10385.2| |N|Kill (npc:20619) and collect 12 (item:29459) in {Netherstorm} (56.62,38.46)<br/><b>You must consume the (item:29482) to see these| |Z|109| |CHOICE|2| |NPC|20619|
T Potential for Brain Damage = High |QID|10385| |N|(npc:20482) in {Netherstorm} (56.81,38.70)<br/><b>Click Ethereum Transponder Zeta, this will summon the Image of Commander Ameer.| |Z|109| |CHOICE|2| |NPC|20482|
A Delivering the Message |QID|10406| |N|(npc:20482) in {Netherstorm} (56.81,38.70)| |Z|109| |CHOICE|2| |NPC|20482|
N Sabotage the Ethereum Conduit |QID|10406.1| |N|Sabotage the Ethereum Conduit in {Netherstorm} (56.69,42.61)<br/><b>Walk with the Protectorate Demolitionist and protect him until you reach the goal<br/><b>Defend against the waves of enemies that attack| |Z|109| |CHOICE|2|
T Delivering the Message |QID|10406| |N|(npc:20482) in {Netherstorm} (56.81,38.70)| |Z|109| |CHOICE|2| |NPC|20482|
A Nexus-King Salhadaar |QID|10408| |N|(npc:20482) in {Netherstorm} (56.81,38.70)| |Z|109| |CHOICE|2| |NPC|20482|
N Disrupt Salhadaar's Power Conduit |QID|10408.1| |N|use (item:29618) in {Netherstorm} (53.72,41.68) (53.23,42.32) (53.92,43.15)| |Z|109| |CHOICE|2|
K (npc:20454) |QID|10408.2| |N|Kill (npc:20454) in {Netherstorm} (53.61,42.36)<br/><b>All 3 blue beams must be disabled to free him| |Z|109| |CHOICE|2| |NPC|20454|
T Nexus-King Salhadaar |QID|10408| |N|(npc:20482) in {Netherstorm} (56.81,38.70)| |Z|109| |CHOICE|2| |NPC|20482|
N Aid the Protectorate |QID|85027.3| |N|Watch the dialogue in {Netherstorm} (56.81,38.70)| |Z|109| |CHOICE|2|
N (npc:231891) |QID|85027.4| |N|Speak to (npc:231702) in {Netherstorm} (56.81,38.70)| |Z|109| |CHOICE|2| |NPC|231702|
A Recipe for Destruction |QID|10437| |N|(npc:20907) in {Netherstorm} (60.10,31.72)| |Z|109| |CHOICE|2| |NPC|20907|
K (npc:18869) |QID|10437.1| |N|Kill (npc:18869) and collect 4 (item:29822) in {Netherstorm} (61.44,37.37)| |Z|109| |CHOICE|2| |NPC|18869|
T Recipe for Destruction |QID|10437| |N|(npc:20907) in {Netherstorm} (60.11,31.73)| |Z|109| |CHOICE|2| |NPC|20907|
A Dimensius the All-Devouring |QID|10439| |N|(npc:20907) in {Netherstorm} (60.11,31.73)| |Z|109| |CHOICE|2| |NPC|20907|
N (npc:20985) |QID|10439.1| |N|Speak to (npc:20985) in {Netherstorm} (60.64,32.06)| |Z|109| |CHOICE|2| |NPC|20985|
N (npc:20985) |QID|10439.2| |N|Speak to (npc:20985) in {Netherstorm} (60.77,39.21)| |Z|109| |CHOICE|2| |NPC|20985|
K (npc:19554)| |QID|10439.3| |N|Kill (npc:19554) and (npc:21780) inside the building in {Netherstorm} (62.42,40.87)| |Z|109| |CHOICE|2| |NPC|19554, 21780|
T Dimensius the All-Devouring |QID|10439| |N|(npc:20907) in {Netherstorm} (60.10,31.73)| |Z|109| |CHOICE|2| |NPC|20907|
N Aid the Protectorate Forces |QID|85027.6| |N|Watch the dialogue in {Netherstorm} (60.10,31.73)| |Z|109| |CHOICE|2|
T Lorewalking: The Protectorate |QID|85027| |N|(npc:231702) in {Netherstorm} (60.10,31.73)| |Z|109| |CHOICE|2| |NPC|231702|
A Lorewalking: Locus-Walker |QID|85029| |N|(npc:231702) in {Netherstorm} (60.10,31.73)| |Z|109| |CHOICE|2| |NPC|231702|
N (npc:231891) |QID|85029.1| |N|Speak to (npc:231891) to Learn About Void Ethereals in {Netherstorm} (60.10,31.73)| |Z|109| |CHOICE|2| |NPC|231891|
A Throwing Shade |QID|47203| |N|(npc:121230) in {Eredath} (35.34,59.54)| |Z|882| |CHOICE|2| |NPC|121230|
N Meet Alleria |QID|47203.1| |N|Meet Alleria in Umbra Hollows in {Eredath} (36.99,52.46)| |Z|882| |CHOICE|2|
N Enter the Void Tear |QID|47203.2| |N|Click (npc:121654) in {Eredath} (37.11,52.35)| |Z|882| |CHOICE|2| |NPC|121654|
N Examine the Dismantled Portal |QID|47203.3| |N|Click (npc:126414) in {Eredath} (39.67,48.22)<br/><b>Avoid walking close to NPCs or within the blue circles| |Z|882| |CHOICE|2| |NPC|126414|
N Examine the Image of Saprish |QID|47203.4| |N|Click (npc:126411) in {Eredath} (35.53,43.70)| |Z|882| |CHOICE|2| |NPC|126411|
N Examine the Voidforge |QID|47203.5| |N|Click Voidforge (npc:126413) in {Eredath} (36.05,38.67)| |Z|882| |CHOICE|2| |NPC|126413|
N Meet Alleria and Locus-Walker |QID|47203.6| |N|Meet Alleria and Locus-Walker in {Eredath} (31.88,37.48)| |Z|882| |CHOICE|2|
T Throwing Shade |QID|47203| |N|(npc:121230) in {Eredath} (31.88,37.48)| |Z|882| |CHOICE|2| |NPC|121230|
A Sources of Darkness |QID|47217| |N|(npc:121230) in {Eredath} (31.88,37.48)| |Z|882| |CHOICE|2| |NPC|121230|
A The Shadowguard Incursion |QID|47218| |N|(npc:121597) in {Eredath} (31.93,37.33)| |Z|882| |CHOICE|2| |NPC|121597|
N Deactivate the Void Harvester |QID|47217.1| |N|Click (npc:121676) in {Eredath} (31.68,34.37) (28.36,34.24) (25.60,32.15) (24.65,33.38) (25.06,35.78)| |Z|882| |CHOICE|2| |NPC|121676|
K (npc:121629) |QID|47218.1| |N|Kill 15 (npc:121629) in {Eredath} (26.86,37.06)| |Z|882| |CHOICE|2| |NPC|121629|
T Sources of Darkness |QID|47217| |N|(npc:121230) in {Eredath} (31.88,37.47)| |Z|882| |CHOICE|2| |NPC|121230|
T The Shadowguard Incursion |QID|47218| |N|(npc:121597) in {Eredath} (31.94,37.33)| |Z|882| |CHOICE|2| |NPC|121597|
A A Vessel Made Ready |QID|47219| |N|(npc:121597) in {Eredath} (31.94,37.33)| |Z|882| |CHOICE|2| |NPC|121597|
N Enter the Void Tear |QID|47219.1| |N|Click (npc:128882) in {Eredath} (31.95,37.03)| |Z|882| |CHOICE|2| |NPC|128882|
K (npc:121663)| |QID|47219.2| |N|Kill (npc:121761) in {Eredath} (26.69,45.01)<br/><b>Kill the three Shadowguard to free Nhal'athoth| |Z|882| |CHOICE|2| |NPC|121761|
N (item:151088) |QID|47219.3| |N|Click Heart of Nhal'athoth and collect (item:151088) in {Eredath} (26.62,45.00)| |Z|882| |CHOICE|2|
T A Vessel Made Ready |QID|47219| |N|(npc:121230) in {Eredath} (28.44,47.21)| |Z|882| |CHOICE|2| |NPC|121230|
C Lorewalking: Locus-Walker |QID|85029.2| |N|Aid Locus-Walker in Teaching Alleria to Master the Void  in {Eredath} (28.44,47.21)| |Z|882| |CHOICE|2|
T Lorewalking: Locus-Walker |QID|85029| |N|(npc:231702) in {Eredath} (28.44,47.21)| |Z|882| |CHOICE|2| |NPC|231702|
A Lorewalking: The Brokers |QID|85028| |N|(npc:231702) in {Eredath} (28.44,47.21)| |Z|882| |CHOICE|2| |NPC|231702|
N (npc:231891) |QID|85028.1| |N|Speak to (npc:231702) in {Eredath} (28.44,47.21)| |Z|882| |CHOICE|2| |NPC|231702|
N (npc:156688) |QID|85028.2| |N|Speak to (npc:156688) in {Oribos} (67.46,50.33)| |Z|1670| |CHOICE|2| |NPC|156688|
A The Al'ley Cat of Oribos |QID|63976| |N|(npc:156688) in {Oribos} (67.46,50.33)| |Z|1670| |CHOICE|2| |NPC|156688|
T The Al'ley Cat of Oribos |QID|63976| |N|(npc:178908) in {Oribos} (56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|178908|
A Insider Trading |QID|63977| |N|(npc:178908) in {Oribos} (56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|178908|
A Things Best Kept Dark |QID|63979| |N|(npc:178908) in {Oribos} (56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|178908|
N (npc:156768) |QID|63977.4| |N|Speak to (npc:156768) in {Oribos} (63.47,50.36) (64.38,68.34)| |Z|1670| |CHOICE|2| |NPC|156768|
N (npc:164100) |QID|63977.1| |N|Speak to (npc:164100) in {Oribos} (47.73,72.66)| |Z|1670| |CHOICE|2| |NPC|164100|
N (npc:168011) |QID|63977.2| |N|Speak to (npc:168011) in {Oribos} (34.51,57.47)| |Z|1670| |CHOICE|2| |NPC|168011|
N (npc:167738) |QID|63977.3| |N|Speak to (npc:167738) in {Oribos} (40.32,32.63)| |Z|1670| |CHOICE|2| |NPC|167738|
K (npc:178997) |QID|63979.1| |N|Kill (npc:178997) and collect (item:186182) in {Oribos} (31.49,50.42) (38.51,25.29)| |Z|1670| |CHOICE|2| |NPC|178997|
T Insider Trading |QID|63977| |N|(npc:178908) in {Oribos} (54.98,14.97) (75.28,47.33)(56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|178908|
T Things Best Kept Dark |QID|63979| |N|(npc:178908) in {Oribos} (56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|178908|
A Seeking Smugglers |QID|63980| |N|(npc:178908) in {Oribos} (56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|178908|
N (npc:231702) |QID|85028.4| |N|Speak to (npc:231702) in {Oribos} (56.72,31.86)| |Z|1672| |CHOICE|2| |NPC|231702|
T Seeking Smugglers |QID|63980| |N|(npc:160090) in {Revendreth} (51.34,82.72)| |Z|1525| |CHOICE|2| |NPC|160090|
A Above My Station |QID|63982| |N|(npc:160090) in {Revendreth} (51.34,82.72)| |Z|1525| |CHOICE|2| |NPC|160090|
R Transfer Station Ta |QID|63982.1| |N|Take the Portal to Transfer Station Ta in {Revendreth} (50.99,81.88)| |Z|1525| |CHOICE|2| |F|1533|
T Above My Station |QID|63982| |N|(npc:158890) in {Bastion} (32.52,32.35)| |Z|1533| |CHOICE|2| |NPC|158890|
A Dead Drop |QID|63983| |N|(npc:158890) in {Bastion} (32.52,32.35)| |Z|1533| |CHOICE|2| |NPC|158890|
N Find the Export Party |QID|63983.1| |N|Find the Export Party in {Bastion} (36.94,31.55)| |Z|1533| |CHOICE|2|
K (npc:178937) |QID|63983.2| |N|Kill (npc:178937) in {Bastion} (37.38,29.97), Subdue the Prototype Aquilon| |Z|1533| |CHOICE|2| |NPC|178937|
N (npc:178938) |QID|63983| |N|Ride (npc:178938) in {Bastion} (37.33,29.94)|  |Z|1533| |CHOICE|2| |V| |NPC|178938|
N Return the Prototype Aquilon |QID|63983.3| |N|Watch the dialogue in {Bastion} (32.60,32.49)<br/><b>Outside the building, watch the chat and use the ability on your bar that matches what At'dalil says<br/><b>Do this until you return to the Transfer Station| |Z|1533| |CHOICE|2|
T Dead Drop |QID|63983| |N|(npc:158890) in {Bastion} (32.52,32.34)| |Z|1533| |CHOICE|2| |NPC|158890|
A Coins for the Ferryman |QID|63984| |N|(npc:158890) in {Bastion} (32.52,32.34)| |Z|1533| |CHOICE|2| |NPC|158890|
N (npc:245948) |N|Ride (npc:245948) in {Bastion} (32.95,32.35)| |QID|63984| |Z|1533| |CHOICE|2| |V| |NPC|245948|
T Coins for the Ferryman |QID|63984| |N|(npc:178792) in {Oribos} (29.82,66.58)| |Z|1670| |CHOICE|2| |NPC|178792|
A The Veiled Market |QID|63985| |N|(npc:178792) in {Oribos} (29.82,66.58)| |Z|1670| |CHOICE|2| |NPC|178792|
N (npc:178792) |QID|63985| |N|Ride (npc:178792) in {Oribos} (29.82,66.58)| |Z|1670| |CHOICE|2| |V| |NPC|178792|
N (npc:179144) |QID|63985.2| |N|Speak to (npc:179144) in {The Gilded Landing} (84.12,47.29)| |Z|2016| |CHOICE|2| |NPC|179144|
T The Veiled Market |QID|63985| |N|(npc:178908) in {The Gilded Landing} (86.69,48.48)| |Z|2016| |CHOICE|2| |NPC|178908|
N Attempt to Enter Tazavesh |QID|85028.9| |N|Attempt to Enter Tazavesh in {The Gilded Landing} (86.69,48.48)| |Z|2016| |CHOICE|2|
N (npc:231891) |QID|85028.10| |N|Speak to (npc:231702) in {The Gilded Landing} (86.69,48.48)| |Z|2016| |CHOICE|2| |NPC|231702|
A Ease of Passage |QID|63855| |N|(npc:178470) in {Korthia} (65.91,22.92)| |Z|1961| |CHOICE|2| |NPC|178470|
N (npc:178470) |QID|63855.1| |N|Speak to (npc:178470) in {Korthia} (65.91,22.92)| |Z|1961| |CHOICE|2| |NPC|178470|
N Find a Suitable Location |QID|63855.2| |N|Watch the dialogue in {Korthia} (65.04,23.83)| |Z|1961| |CHOICE|2|
N Imprint the Anima Signature |QID|63855.3| |N|Click (npc:178085) in {Korthia} (64.97,23.68)| |Z|1961| |CHOICE|2| |NPC|178085|
N Collect Ve'nari's Bag |QID|63855.4| |N|Click Ve'nari's Overstuffed Bag in {Korthia} (66.01,23.05)| |Z|1961| |CHOICE|2|
N (npc:246041) |QID|63855| |N|(npc:246041) and fly to Fly to Ve'nari's Refuge (65.25,23.62)| |Z|1961| |CHOICE|2| |V| |NPC|246041|
T Ease of Passage |QID|63855| |N|(npc:162804) in {The Maw} (46.90,41.70)| |Z|1543| |CHOICE|2| |NPC|162804|
A Grab Bag |QID|63895| |N|(npc:162804) in {The Maw} (46.90,41.70)| |Z|1543| |CHOICE|2| |NPC|162804|
N Use the Transferral Augmentor |QID|63895.1| |N|Click Transferral Augmentor in {The Maw} (46.89,41.53)| |Z|1543| |CHOICE|2|
N Transfer Successfully |QID|63895.2| |N|Click Transferral Augmentor in {The Maw} (46.89,41.54)| |Z|1543| |CHOICE|2|
T Grab Bag |QID|63895| |N|(npc:179078) in {The Maw} (61.65,59.08)| |Z|1543| |CHOICE|2| |NPC|179078|
N Assist the broker Ve'nari |QID|85028.13| |N|Assist the broker Ve'nari  in {The Maw} (61.65,59.08)| |Z|1543| |CHOICE|2|
N (npc:231891) |QID|85028.14| |N|Speak to (npc:231702) in {The Maw} (61.65,59.08)| |Z|1543 |CHOICE|2| |NPC|231891|
T Lorewalking: The Brokers |QID|85028| |N|(npc:232441), next to you| |NPC|232441|

A Locus-Walker, Telogrus Ranger |QID|85035| |N|(npc:234111) in {Dornogal} (49.32,31.12)| |Z|2339| |CHOICE|2| |NPC|234111|
R Telogrus Rift |QID|85035.1| |N|Click Void Portal in {Dornogal} (49.38,31.00) |only if default| |Z|2339| |CHOICE|2| 
K (npc:231709) |QID|85035.2| |N|Kill (npc:231709) in {Telogrus Rift} (25.98,28.01)<br/><b>They will spawn in three waves of two when you walk forward| |Z|971| |CHOICE|2| |NPC|231709|
T Locus-Walker, Telogrus Ranger |QID|85035| |N|(npc:231706) in {Telogrus Rift} (27.50,28.40)| |Z|971| |CHOICE|2| |NPC|231706|
A Veni Vidi Ve'nari |QID|85036| |N|(npc:231706) in {Telogrus Rift} (27.50,28.40)| |Z|971| |CHOICE|2| |NPC|231706|
N Witness the Conversation |QID|85036.1| |N|Watch the dialogue in {Telogrus Rift} (27.66,27.77)| |Z|971| |CHOICE|2|
R Dornogal |QID|85036.2| |N|Click Void Portal in {Telogrus Rift} (27.92,27.60)| |Z|971| |CHOICE|2|
T Veni Vidi Ve'nari |QID|85036| |N|(npc:232441) in {Dornogal} (49.59,31.63)| |Z|2339| |CHOICE|2| |NPC|232441|
--Begin_LK_Questline

N Talk to Cho |QID|85884.1| |N|speak to (npc:236114) and select "Who was the Lich King?"| |PPOS| |CHOICE|3| |NPC|236114|
A A Prince's Duty |QID|85862| |N|(npc:233752) in {Scarlet Halls} (34.10,84.06)| |Z|2418| |CHOICE|3| |NPC|233752|
N Train 6 Soldiers |QID|85862.1| |N|Interact with 6 (npc:233670) in {Scarlet Halls} (49.87,70.55)<br/><b>Use the abilities on your action bar to defeat the trainees<br/><b>Be sure to toggle your auto-attack on as well| |Z|2418| |CHOICE|3| |NPC|233670|
C Spar with Muradin |QID|85862.2| |N|Speak to (npc:233753) and spar in {Scarlet Halls} (54.58,29.69)<br/><b>Stun him during Storm Bolt when you can<br/><b>Be sure to toggle your auto-attack on as well| |Z|2418| |CHOICE|3| |NPC|233753|
T A Prince's Duty |QID|85862| |N|(npc:233804) in {Scarlet Halls} (55.45,21.82)| |Z|2418| |CHOICE|3| |NPC|233804|
N Listen to the Story |QID|85884.2| |N|Listen to the Story of Prince Arthas Menethil in {Scarlet Halls} (55.45,21.82)| |Z|2418| |CHOICE|3|
N (npc:236114) |QID|85884.3| |N|Speak to (npc:236114) in {Scarlet Halls} (55.45,21.82)| |Z|2418| |CHOICE|3| |NPC|236114|
N Decide the Fate of Stratholme |SID|105295|1| |N|Watch the dialogue, Stand in the yellow circle of light before the bridge in front of you| |QID|85884|
N (npc:26499) |SID|105296|2| |QID|85884| |N|Speak to (npc:26499), Follow Arthas into the city and meet him just inside| |NPC|26499|
N Witness the Culling of Stratholme |QID|85884.4| |N|Watch the dialogue, walk with Arthas inside the city and watch the events play out|
N (npc:26499) |SID|105296|3| |QID|85884| |N|speak to (npc:26499), wait to be teleported to the new area<br/><b>Arthas will be standing in front of you| |NPC|26499|
K (npc:26533) |SID|27933|4| |QID|85884| |N|Kill (npc:26533), Follow Arthas to the right to locate Mal'Ganis| |NPC|26533|
N Confront Mal'Ganis |QID|85884.5| |N|Watch the dialogue|
N (npc:236114) |QID|85884.6| |N|speak to (npc:236114)<br/><b>Cho will appear in a few moments| |NPC|236114|
A The Forgotten Tale |QID|12291| |N|(npc:27347) in {Dragonblight} (87.17,57.49)| |Z|115| |CHOICE|3| |NPC|27347|
N (item:37570) |N|use (item:37570) in {Dragonblight} (86.49,65.44)| |QID|12291| |Z|115| |CHOICE|3| |U|37570|
N (npc:27225) |QID|12291.2| |N|Speak to (npc:27225) in {Dragonblight} (86.70,64.87)| |Z|115| |CHOICE|3| |NPC|27225|
N (npc:27229) |QID|12291.4| |N|Speak to (npc:27229) in {Dragonblight} (86.42,65.28)| |Z|115| |CHOICE|3| |NPC|27229|
N (npc:27226) |QID|12291.1| |N|Speak to (npc:27226) in {Dragonblight} (86.21,65.59)| |Z|115| |CHOICE|3| |NPC|27226|
N (npc:27224) |QID|12291.3| |N|Speak to (npc:27224) in {Dragonblight} (85.69,67.68)| |Z|115| |CHOICE|3| |NPC|27224|
T The Forgotten Tale |QID|12291| |N|(npc:27347) in {Dragonblight} (87.18,57.49)| |Z|115| |NPC|27347|
A The Truth Shall Set Us Free |QID|12301| |N|(npc:27347) in {Dragonblight} (87.18,57.49)| |Z|115| |CHOICE|3| |NPC|27347|
N Redeem The Forgotten |QID|12301.1| |N|use (item:37577) in {Dragonblight}, Watch the dialogue (86.80,66.18)| |Z|115| |CHOICE|3|
T The Truth Shall Set Us Free |QID|12301| |N|(npc:27347) in {Dragonblight} (87.17,57.48)| |Z|115| |CHOICE|3| |NPC|27347|
A Parting Thoughts |QID|12305| |N|(npc:27347) in {Dragonblight} (87.17,57.48)| |Z|115| |CHOICE|3| |NPC|27347|
T Parting Thoughts |QID|12305| |N|(npc:27314) in {Dragonblight} (79.15,47.17)| |Z|115| |CHOICE|3| |NPC|27314|
A Frostmourne Cavern |QID|12478| |N|(npc:27314) in {Dragonblight} (79.15,47.17)| |Z|115| |CHOICE|3| |NPC|27314|
N Reveal the Secrets of the Past |QID|12478.1| |N|Use (item:37933) inside the cave {Dragonblight} (74.26,23.64) (75.11,20.18)| |Z|115| |CHOICE|3|
T Frostmourne Cavern |QID|12478| |N|(npc:27314) in {Dragonblight} (79.15,47.16)| |Z|115| |CHOICE|3| |NPC|27314|
N Learn about the Doomed Expedition |QID|85884.8| |N|Watch the dialogue in {Dragonblight} (79.15,47.16)| |Z|115| |CHOICE|3|
T Lorewalking: The Prince Who Would Be King |QID|85884| |N|(npc:236114), next to you| |PPOS| |CHOICE|3| |NPC|236114|
A Lorewalking: No King Rules Forever |QID|85885| |N|(npc:236114), next to you| |PPOS| |CHOICE|3| |NPC|236114|
N (npc:236114) |QID|85885.1| |N|Speak to (npc:236114), next to you| |PPOS| |NPC|236114|
N Learn About the Lich King's Betrayal |QID|85885.2| |N|Watch the dialogue|
N (npc:236114) |QID|85885.3| |N|Speak to (npc:236114), next to you| |PPOS| |NPC|236114|
A Ascent of the Lich King |QID|85875| |N|Auto quest in {Icecrown} (51.41,79.48)| |Z|118| |CHOICE|3|
K (npc:233758) |QID|85875.1| |N|Kill (npc:233758) in {Icecrown} (51.53,79.92)<br/><b>Use the ability on your bar<br/><b>Be sure to toggle your auto-attack on| |Z|118| |CHOICE|3| |NPC|233758|
K (npc:233760) |QID|85875.2| |N|Kill (npc:233760) in {Icecrown} (51.77,80.68)<br/><b>Use the ability on your bar<br/><b>Be sure to toggle your auto-attack on| |Z|118| |CHOICE|3| |NPC|233760|
K (npc:233759) |QID|85875.3| |N|Kill (npc:233759) in {Icecrown} (52.00,81.44)| |Z|118| |CHOICE|3| |NPC|233759|
T Ascent of the Lich King |QID|85875| |N|(npc:233811) in {Icecrown} (52.35,82.59)| |Z|118| |CHOICE|3| |NPC|233811|
N Witness the Ascent of the Lich King |QID|85885.4| |N|Watch the dialogue in {Icecrown} (52.35,82.59)| |Z|118| |CHOICE|3|
N (npc:236114) |QID|85885.5| |N|Speak to (npc:236114) in {Icecrown} (52.35,82.59)| |Z|118| |CHOICE|3| |NPC|236114|
N Enter the Halls of Reflection |scenariostart Halls of Reflection##572 |QID|85885| |CHOICE|3|
K (npc:38112) |SID|27915|1| |QID|85885| |N|Speak to (npc:37221) to begin and kill (npc:38112)<br/><b>Wait for the dialogue in the middle of the room<br/><b>Kill the waves of enemies that attack before Falric becomes active| |CHOICE|3| |NPC|38112|
K (npc:38113) |SID|27916|1| |QID|85885| |N|Kill (npc:38113)<br/><b>Kill the waves of enemies that attack before Marwyn becomes active| |CHOICE|3| |NPC|38113|
N Escape from the Lich King |SID|27917|1|  |QID|85885.6|  |N|Speak to (npc:36955) and Help Jaina investigate the Halls of Reflection<br/><b>When you engage the Lich King, keep moving and kill enemies, avoiding the ice that appears behind you<br/><b>Stay closer to the Lich King and kill enemies as they spawn rather than letting them get close to Jaina before engaging<br/><b>Enemies will go right for Jaina and ignore you<br/><b>You will need to keep her alive<br/><b>When Jaina reaches the end and yells about the opening, run through with her| |QID|85885| |CHOICE|3|
A O' Thanagor |QID|85878| |N|You will accept this quest automatically|  |CHOICE|3|
C O' Thanagor  |QID|85878.1| |N|Kill 25 enemies around this area<br/><b>Use the abilities on your bar to eliminate the opposing raid members in the middle of the platform<br/><b>Avoid falling off the edge| |CHOICE|3|
T O' Thanagor |QID|85878| |N|(npc:236114), next to you| |NPC|236114|
T Lorewalking: No King Rules Forever |QID|85885| |N|(npc:236114), next to you|  |CHOICE|3| |NPC|236114|

N Guide Complete

]]
end, {description = [[This guide will walk you through to complete (aid:40831)]]})
    end

    function Guide:Unload()
    end
end