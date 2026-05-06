local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Leveling_Horde_En_56_56_Western_Plaguelands")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Azeroth 50-60|r", "1422(56-56)#1422(56-56)#1422(56-56)", "1423(56-57)#1423(56-57)#1423(56-57)", "Horde", nil, "L", nil, function()
return [[

R Undercity |QID|1004| |N|Travel to {Undercity} (67.74, 37.91)| |Z|1458| 
h Undercity |QID|1004| |N|Speak to (npc:6741) and set hearth at {Undercity} (67.74, 37.91)| |Z|1458| |NPC|6741|
A The New Frontier |QID|1004| |N|(npc:10879) in {Trade Quarter} (63.90, 43.76)| |Z|1458| |NPC|10879|
A A Call to Arms: The Plaguelands! |QID|5094| |N|(npc:10879) in {Trade Quarter} (63.90, 43.76)| |Z|1458| |OID|5093, 5095| |NPC|10879|
N (item:12230) |QID|4661| |N|Withdraw (item:12230) from the bank (66.0, 45.2)| |Z|1458| |L|12230| |OO| |NPC|4549, 2458| -- Undercity
N (item:12235) |QID|4294| |N|Withdraw (item:12235) from the bank (66.0, 45.2)| |Z|1458| |L|12235| |OO| |NPC|4549, 2458| -- Undercity
N (item:15788) |QID|6029| |N|Withdraw (item:15788) from the bank (66.0, 45.2)| |Z|1458| |L|15788| |OO| |NPC|4549, 2458| -- Undercity
N (item:15790) |QID|6030| |N|Withdraw (item:15790) from the bank (66.0, 45.2)| |Z|1458| |L|15790| |OO| |NPC|4549, 2458| -- Undercity
N (item:11511) |QID|5882| |N|Store (item:11511) in the bank (66.0, 45.2)| |Z|1458| |L|11511| |O| |NPC|4549, 2458| -- Undercity
N (item:11515) |QID|5887| |N|Store (item:11515) in the bank (66.0, 45.2)| |Z|1458| |L|11515| |O| |NPC|4549, 2458| -- Undercity
N (item:11516) |QID|5887| |N|Store (item:11516) in the bank (66.0, 45.2)| |Z|1458| |L|11516| |O| |NPC|4549, 2458| -- Undercity
T A Donation of Runecloth |QID|7818| |N|(npc:14729) in {Magic Quarter} (71.83, 29.15)| |Z|1458| |L|14047 60| |O| |OID|4642| |NPC|14729|
T A Donation of Mageweave |QID|7817| |N|(npc:14729) in {Magic Quarter} (71.83, 29.15)| |Z|1458| |L|4338 60| |O| |OID|4642| |NPC|14729|

R The Apothecarium |QID|4294| |N|Travel to {The Apothecarium} (52.94, 77.23)| |Z|1458| |O|
N (item:12236) |QID|4294| |N|Click on the Testing Equipment and turn in the quest to get a (item:15102), you will need to open it to get (item:12236), keep turning in the quest and check the item until you run out of (item:12235) (47.56, 73.40)| |OBJ|3571| |O|
C ... and a Batch of Ooze |QID|4294| |N|Get 5 (item:12236) from the Testing Equipment (47.56, 73.40)| |Z|1458| |O| |NPC|10136|
T ... and a Batch of Ooze |QID|4294| |N|(npc:10136) in {The Apothecarium} (47.56, 73.40)| |Z|1458| |O| |NPC|10136|
N (item:12234) |QID|4294| |N|Click on the Testing Equipment and turn in the quest to get a (item:15103), you will need to open it to get (item:12236), keep turning in the quest and check the item until you run out of (item:12230) (47.56, 73.40)| |OBJ|3571| |O|
C A Sample of Slime... |QID|4293| |N|Get 5 (item:12234) from the Testing Equipment (47.81, 73.17)| |Z|1458| |O|
T A Sample of Slime... |QID|4293| |N|(npc:10136) in {The Apothecarium} (47.53, 73.26)| |Z|1458| |O| |NPC|10136|
A Melding of Influences |QID|4642| |N|(npc:10136) in {The Apothecarium} (47.84, 73.16)| |Z|1458| |PRE|4293| |NPC|10136|
N (item:12288) |QID|4642| |N|Store (item:12288) in the bank (66.0, 45.2)| |Z|1458| |L|12288| |O| |NPC|4549, 2458| -- Undercity

R The Bulwark |QID|5096| |N|Travel to {The Bulwark} (83.14, 68.92)| |Z|1420|
T A Call to Arms: The Plaguelands! |QID|5094| |N|(npc:10837) in {The Bulwark} (83.14, 68.92)| |Z|1420| |O| |NPC|10837|
T A Call to Arms: The Plaguelands! |QID|5093| |N|(npc:10837) in {The Bulwark} (83.14, 68.92)| |Z|1420| |O| |NPC|10837|
T A Call to Arms: The Plaguelands! |QID|5095| |N|(npc:10837) in {The Bulwark} (83.14, 68.92)| |Z|1420| |O| |NPC|10837|
A Scarlet Diversions |QID|5096| |N|(npc:10837) in {The Bulwark} (83.14, 68.92)| |Z|1420| |NPC|10837|
N (item:12814) |QID|5096| |N|Collect (item:12814) from the Box of Incendiaries in {The Bulwark} (83.18, 69.05)| |Z|1420| |L|12814|
T The Everlook Report |QID|6029| |N|(npc:10839) in {The Bulwark} (83.19, 68.43)| |Z|1420| |NPC|10839|
T Argent Dawn Commission |QID|5405| |N|(npc:10839) in {The Bulwark} (83.19, 68.43)| |Z|1420| |L|12846| |E| |NPC|10839|
N (item:12846) |QID|5021| |N|Equip (item:12846), you will need this equipped to collect Scourgestones that you can turn in for (fac:529) reputation| |BUFF|133440|
A A Plague Upon Thee (1) |QID|5901| |N|(npc:11615) in {The Bulwark} (83.28, 72.36)| |Z|1420| |NPC|11615|

R Felstone Field |QID|5021| |N|Travel to {Felstone Field} (38.41, 54.06)| |Z|1422|
A Better Late Than Never (1) |QID|5021| |N|(npc:10778) in {Felstone Field} (38.41, 54.06)| |Z|1422| |NPC|10778|
T Better Late Than Never (1) |QID|5021| |N|Janice's Parcel in {Felstone Field} (38.72, 55.25)| |Z|1422| |OBJ|4191|
A Better Late Than Never (2) |QID|5023| |N|Janice's Parcel in {Felstone Field} (38.72, 55.25)| |Z|1422| |OBJ|4191|
C Scarlet Diversions |QID|5096| |N|Click on the command tent to set it on fire and use the (item:12807) next to it in {Felstone Field} (40.55, 51.95)| |Z|1422| |U|12807| |OBJ|4176|
T Scarlet Diversions |QID|5096| |N|(npc:10839) in {The Bulwark} (83.14, 68.97)| |Z|1420| |NPC|10839|
A The Scourge Cauldrons |QID|5228| |N|(npc:10837) in {The Bulwark} (83.14, 68.97)| |Z|1420| |NPC|10837|
T The Scourge Cauldrons |QID|5228| |N|(npc:11055) in {The Bulwark} (83.04, 71.93)| |Z|1420| |NPC|11055|
A Target: Felstone Field |QID|5229| |N|(npc:11055) in {The Bulwark} (83.04, 71.93)| |Z|1420| |NPC|11055|
C Target: Felstone Field |QID|5229| |N|Kill (npc:11075) and collect (item:13194) in {Felstone Field} (37.13, 57.13)| |Z|1422| |NPC|11075|
T Target: Felstone Field |QID|5229| |N|Scourge Cauldron in {Felstone Field} (37.19, 56.92)| |Z|1422| |OBJ|4271|
A Return to the Bulwark |QID|5230| |N|Scourge Cauldron in {Felstone Field} (37.17, 56.99)| |Z|1422| |OBJ|4271|

R The Bulwark |QID|5231| |N|Travel to {The Bulwark} (83.03, 71.92)| |Z|1420| 
T Return to the Bulwark |QID|5230| |N|(npc:11055) in {The Bulwark} (83.04, 71.91)| |Z|1420| |NPC|11055|
A Target: Dalson's Tears |QID|5231| |N|(npc:11055) in {The Bulwark} (82.96, 71.82)| |Z|1420| |NPC|11055|

R Dalson's Tears |QID|5231| |N|Travel to {Dalson's Tears} (47.8, 50.7)| |Z|1422| 
N As you go... |AYG|5231| |QID|9126| |N|Collect 30 (item:22526) for a later quest from the Skeletons| |L|22526 30| 
T Mrs. Dalson's Diary |QID|5058| |N|Mrs. Dalson's Diary in {Dalson's Tears}, inside the barn on the floor (47.8, 50.7)| |Z|1422| |E| |OBJ|4032|
K (npc:10816) |QID|5060| |N|Kill (npc:10816), it should spawn outside the barn after you turn in 'Mrs. Dalson's Diary' and collect the (item:12738) (47.66, 50.08)| |Z|1422| |L|12738| |NPC|10816|
T Locked Away (1) |QID|5059| |N|Outhouse in {Dalson's Tears} (48.11, 49.66)| |Z|1422| |E| |OBJ|3332|
K (npc:10836) |QID|5060| |N|Kill (npc:10836), he should spawn after turn in 'Locked Away' from the outhouse and (48.11, 49.66)| |Z|1422| |E| |L|12739| |NPC|10836|
T Locked Away (2) |QID|5060| |N|Locked Cabinet in {Dalson's Tears}, upstairs in the house (47.39, 49.62)| |Z|1422| |E| |OBJ|4031|
C Target: Dalson's Tears |QID|5231| |N|Kill (npc:11077) and collect (item:13195) in {Dalson's Tears} (45.97, 52.46)| |Z|1422| |NPC|11077|
T Target: Dalson's Tears |QID|5231| |N|Scourge Cauldron in {Dalson's Tears} (46.15, 52.06)| |Z|1422| |OBJ|4271|
A Return to the Bulwark |QID|5232| |N|Scourge Cauldron in {Dalson's Tears} (46.15, 52.06)| |Z|1422| |OBJ|4271|

R The Bulwark |QID|5233| |N|Travel to {The Bulwark} (83.03, 71.92)| |Z|1420| 
T Return to the Bulwark |QID|5232| |N|(npc:11055) in {The Bulwark} (83.03, 71.92)| |Z|1420| |NPC|11055|
A Target: Writhing Haunt |QID|5233| |N|(npc:11055) in {The Bulwark} (83.03, 71.92)| |Z|1420| |NPC|11055|

R The Writhing Haunt |QID|5233| |N|Travel to {The Writhing Haunt} (53.01, 66.03)| |Z|1422| 
N As you go... |AYG|5233| |QID|9126| |N|Collect 30 (item:22526) for a later quest from the Skeletons| |L|22526 30| 
A The Wildlife Suffers Too |QID|4984| |N|(npc:10739) in {The Writhing Haunt} (53.67, 64.76)| |Z|1422| |NPC|10739|
C Target: Writhing Haunt |QID|5233| |N|Kill (npc:11076) and collect (item:13197) in {The Writhing Haunt} (53.01, 66.03)| |Z|1422| |NPC|11076|
T Target: Writhing Haunt |QID|5233| |N|Scourge Cauldron in {The Writhing Haunt} (53.02, 65.82)| |Z|1422| |OBJ|4271|
A Return to the Bulwark |QID|5234| |N|Scourge Cauldron in {The Writhing Haunt} (53.02, 65.82)| |Z|1422| |OBJ|4271|

R The Bulwark |QID|5235| |N|Travel to {The Bulwark} (83.03, 71.92)| |Z|1420| 
T Return to the Bulwark |QID|5234| |N|(npc:11055) in {The Bulwark} (83.03, 71.90)| |Z|1420| |NPC|11055|
A Target: Gahrron's Withering |QID|5235| |N|(npc:11055) in {The Bulwark} (83.03, 71.90)| |Z|1420| |NPC|11055|

R Gahrron's Withering |QID|5235| |N|Travel to {Gahrron's Withering} (62.66, 58.78)| |Z|1422| 
N As you go... |AYG|5233| |QID|9126| |N|Collect 30 (item:22526) for a later quest from the Skeletons| |L|22526 30| 
C Target: Gahrron's Withering |QID|5235| |N|Kill (npc:11078) and collect (item:13196) in {Gahrron's Withering} (62.66, 58.78)| |Z|1422| |NPC|11078|
T Target: Gahrron's Withering |QID|5235| |N|Scourge Cauldron in {Gahrron's Withering} (62.57, 58.65)| |Z|1422| |OBJ|4271|
A Return to the Bulwark |QID|5236| |N|Scourge Cauldron in {Gahrron's Withering} (62.57, 58.65)| |Z|1422| |OBJ|4271|

R Thondroril River |N|Travel to {Thondroril River} (66.58, 39.76) (67.12, 37.67)| |Z|1422|

N Guide Complete |N|Tick to continue to the next guide| 

]]
end, {image = "westernplaguelands.tga", description = [[]]})	end
	
	function Guide:Unload()
	end
end
