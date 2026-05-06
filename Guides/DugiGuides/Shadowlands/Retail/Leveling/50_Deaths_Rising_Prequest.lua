local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Shadowlands_Deaths_Rising_Prequest")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Shadowlands|r", "Death's Rising Pre-Quest", nil, nil, nil, "D", nil, function()
return [[

N Level 48 Required |N|You need to be level 48 to continue| |PL|48|
A An Urgent Request |QID|60115| |N|Auto quest| |FAC|Horde|
T An Urgent Request |QID|60115| |N|Speak to (npc:169928) (48.67, 74.09)| |FAC|Horde| |Z|85| |NPC|169928|
A Cause for Distraction |QID|60669| |N|Speak to (npc:169928)<br/><b>On top of Grommash Hold (49.25, 73.71)| |FAC|Horde| |Z|85| |NPC|169928|
T Cause for Distraction |QID|60669| |N|Speak to (npc:169928) (49.25, 73.71)| |FAC|Horde| |Z|85| |NPC|169928|
A Return of the Crusade |QID|60670| |N|Speak to (npc:169928) (49.25, 73.71)| |FAC|Horde| |Z|85| |NPC|169928|
T Return of the Crusade |QID|60670| |N|Speak to (npc:169878) (53.00, 77.38)| |FAC|Horde| |Z|85| |NPC|169928|
A Field Reports |QID|60725| |N|Speak to (npc:169878) (53.00, 77.38)| |FAC|Horde| |Z|85| |NPC|169928|
N (npc:169991) |QID|60725.1| |N|Speak to (npc:169991) to collect (item:180232)<br/><b>He walks around the area  (46.01, 18.29)| |FAC|Horde| |Z|1| |NPC|169991|
N (npc:170023) |QID|60725.2| |N|Speak to (npc:170023) to collect (item:180231) (50.77, 44.41)| |FAC|Horde| |Z|1| |NPC|170023|
N (npc:170058) |QID|60725.3| |N|Speak to (npc:170058) to collect (item:180233) (67.25, 39.08)| |FAC|Horde| |Z|10| |NPC|170058|
T Field Reports |QID|60725| |N|Speak to (npc:170084) (49.40, 59.19)| |FAC|Horde| |Z|10| |NPC|170084|
A Damned Intruders |QID|60759| |N|Speak to (npc:170084) (49.40, 59.19)| |FAC|Horde| |Z|10| |NPC|170084|
C Damned Intruders  |QID|60759| |N|Kill 6 Cultists around this area and 4 (npc:170168)<br/><b>Neophytes and Shadowmages count (49.56, 59.06)| |FAC|Horde| |Z|10| |NPC|170166, 170167, 170168| 
T Damned Intruders |QID|60759| |N|Speak to (npc:170084)<br/><b>She walks around this area. (49.40, 59.19)| |FAC|Horde| |Z|10| |NPC|170084|
A Return of the Scourge |QID|60761| |N|Speak to (npc:170084)<br/><b>She walks around this area. (49.40, 59.19)| |FAC|Horde| |Z|10| |NPC|170084|
T Return of the Scourge |QID|60761| |N|Speak to (npc:169878) (53.00, 77.38)| |FAC|Horde| |Z|85| |NPC|169878|
A A Message from Icecrown |QID|60727| |N|Speak to (npc:169878) (53.00, 77.38)| |FAC|Horde| |Z|85| |NPC|169878|

A An Urgent Request |QID|60113| |N|Auto quest| |FAC|Alliance| |
T An Urgent Request |QID|60113| |N|Speak to (npc:167329) (39.44, 64.15)| |FAC|Alliance| |Z|84| |NPC|167329|
A Cause for Distraction |QID|60116| |N|Speak to (npc:167329) (39.44, 64.15)| |FAC|Alliance| |Z|84| |NPC|167329|
T Cause for Distraction |QID|60116| |N|Speak to (npc:167329) (39.44, 64.15)| |FAC|Alliance| |Z|84| |NPC|167329|
A Return of the Crusade |QID|60117| |N|Speak to (npc:167329) (39.44, 64.15)| |FAC|Alliance| |Z|84| |NPC|167329|
T Return of the Crusade |QID|60117| |N|Speak to (npc:166383) (65.70, 77.11)| |FAC|Alliance| |Z|84| |NPC|166383|
A Field Reports |QID|59876| |N|Speak to (npc:166383) (65.70, 77.11)| |FAC|Alliance| |Z|84| |NPC|166383|

N (npc:166185) |QID|59876.1| |N|Speak to (npc:166185) to collect (item:177960) (42.13, 66.58)| |FAC|Alliance| |Z|37| |NPC|166185|
N (npc:166643) |QID|59876.2| |N|Speak to (npc:166643) to collect (item:177959) (16.91, 63.86)| |FAC|Alliance| |Z|49| |NPC|166643|
N (npc:166617) |QID|59876.3| |N|Speak to (npc:166617) to collect (item:177958) (93.72, 11.90)| |FAC|Alliance| |Z|47| |NPC|166617|

T Field Reports |QID|59876| |N|Speak to (npc:166184) (73.50, 47.19)| |FAC|Alliance| |Z|47| |NPC|166184|
A Damned Intruders |QID|60766| |N|Speak to (npc:166184) (73.50, 47.19)| |FAC|Alliance| |Z|47| |NPC|166184|
C Damned Intruders |QID|60766| |N|Kill 12 Scourge Enemies around this area (74.88, 46.73)| |FAC|Alliance| |Z|47| |NPC|170235, 170236, 170237|
T Damned Intruders |QID|60766| |N|Speak to (npc:166184) (73.50, 47.19)| |FAC|Alliance| |Z|47| |NPC|166184|
A Return of the Scourge |QID|60767| |N| Speak to (npc:166184) (73.50, 47.19)| |FAC|Alliance| |Z|47| |NPC|166184|
T Return of the Scourge |QID|60767| |N|Speak to (npc:166383) (65.70, 77.11)| |FAC|Alliance| |Z|84| |NPC|166383|
A A Message from Icecrown |QID|59877| |N|Speak to (npc:166383) (65.70, 77.11)| |FAC|Alliance| |Z|84| |NPC|166383|

T A Message from Icecrown |QID|59877| |N|Speak to (npc:167045) (71.06, 21.99)| |FAC|Alliance| |Z|118| |NPC|167045|
T A Message from Icecrown |QID|60727| |N|Speak to (npc:167045) (71.06, 21.99)| |FAC|Horde| |Z|118| |NPC|167045|
A Securing the Area |QID|60169| |N|Speak to (npc:167045) (71.06, 21.99)| |Z|118| |NPC|167045|
A A Valiant Effort |QID|60004| |N|Speak to (npc:168123) (71.02, 22.03)| |FAC|Horde| |Z|118| |NPC|168123|
C A Valiant Effort |QID|60004| |N|use (item:183689) on 6 (npc:166959) around this area<br/><b>They look like soldiers lying injured on the ground around this area. (71.59, 23.81)| |FAC|Horde| |Z|118| |NPC|166959|
A A Valiant Effort |QID|60003| |N|Speak to (npc:168123) (71.02, 22.03)| |FAC|Alliance| |Z|118| |NPC|168123|
C A Valiant Effort |QID|60003| |N|use (item:183797) on 6 (npc:166958) around this area<br/><b>They look like soldiers lying injured on the ground around this area. (71.59, 23.81)| |FAC|Alliance| |Z|118| |NPC|166958|
C Securing the Area |QID|60169| |N|Kill 12 Scourge Attackers around this area (71.59, 23.81)| |Z|118| |NPC|166004, 171757, 171768, 171809|
T Securing the Area |QID|60169| |N|Speak to (npc:167045) (71.06, 21.99)| |Z|118| |NPC|167045|
T A Valiant Effort |QID|60004| |N|Speak to (npc:168123) (71.02, 22.03)| |FAC|Horde| |Z|118| |NPC|168123|
T A Valiant Effort |QID|60003| |N|Speak to (npc:168123) (71.02, 22.03)| |FAC|Alliance| |Z|118| |NPC|168123|
A Scouting from a Safe Distance |QID|62157| |N|Speak to (npc:168123) (71.02, 22.03)| |Z|118| |NPC|168123|
N Survey Mord'rethar |QID|62157.2| |N|Click Sight-O-Matic 3001 (69.18, 33.87)| |Z|118|
N Survey Aldur'thar |QID|62157.1| |N|Click Sight-O-Matic 3000 (62.25, 29.99)| |Z|118|
T Scouting from a Safe Distance |QID|62157| |N|Speak to (npc:168123) (71.02, 22.03)| |Z|118| |NPC|168123|
--Week 2
A A New Foothold |QID|60828| |N|(npc:168123) in (map:118) (71.02, 22.03)| |Z|118| |NPC|168123|
T A New Foothold |QID|60828| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
A Cult Couture |QID|60843| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
A Fighting for Attention |QID|62185| |N| (npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
C Fighting for Attention |QID|62185| |N|collect (item:183698) from nearby enemies and use it to rescue 6 (npc:173650) in (map:118) (53.70, 33.84)| |Z|118| |NPC|173650|
C Cult Couture |QID|60843| |N|Kill (npc:168985) and (npc:168981) until you collect  (item:181253) and (item:181350) in (map:118) (51.93, 30.44)| |Z|118| |NPC|168985, 168981|
T Cult Couture |QID|60843| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
T Fighting for Attention |QID|62185| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
A Secrets in Shadows |QID|60861| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
N (item:181350) |QID|60861| |N|Use (item:181350) ability| |BUFF|133754|
C Investigate Mord'rethar |QID|60861.1| |N|Watch the dialogue<br/><b>Inside the building<br/><b>Use the (spell:339133) ability<br/><b>Avoid the Shadow Stalkers that patrol the area (60.66, 62.16)| |Z|118|
T Secrets in Shadows |QID|60861| |N|Click objective tracker to turnin| |Z|118|
A Bursting the Bubble |QID|62225| |N|Click objective tracker to accept| |Z|118|
C Bursting the Bubble |QID|62225| |N|Use the (spell:340441) ability to sabotage 3 Chamber Experiments (61.51, 62.14)| |Z|118| |POI|
T Bursting the Bubble |QID|62225| |N|(npc:170467) in (map:118)<br/><b>Right-click the  (spell:339133) buff on your buff bar (44.95, 44.77)| |Z|118| |NPC|170467|
A A Message from Above |QID|60867| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
N (npc:170588) |QID|60867.1| |N|Mount (npc:170588) in (map:118) (45.45, 45.99)| |Z|118| |NPC|170588|
N Locate Herald Dalora |QID|60867.2| |N|Watch the dialogue in (map:118) (46.38, 77.94)| |Z|118|
C Message from Above |QID|60867.3| |N|Slay the Scourge Forces<br/><b>Use the abilities on your vehicle bar. in (map:118) (49.15, 74.60)| |Z|118|
T A Message from Above |QID|60867| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
A Only Shadows Remain |QID|60932| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
K (npc:171802) |QID|60932.1| |N|Kill (npc:171802) in (map:118)<br/><b>Inside the building<br/><b>Crusaders will join the fight and help you kill her (44.39, 77.66) (42.57, 78.93)| |Z|118| |NPC|171802|
T Only Shadows Remain |QID|60932| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
A With Hope in Hand |QID|60871| |N|(npc:170467) in (map:118) (44.95, 44.77)| |Z|118| |NPC|170467|
C With Hope in Hand |QID|60871.1| |N|Speak to (npc:172277) and Establish a Portal to Stormwind in (map:118) (76.40, 19.97)| |Z|118| |NPC|172277|
T With Hope in Hand |QID|60871| |N|(npc:167329) in (map:84) (39.44, 64.15)| |Z|84| |NPC|167329|

A The Banshee's Champion |QID|61488| |N|Speak to (npc:172514) (53.02, 77.02)| |FAC|Horde| |Z|85| |NPC|172514|
C The Banshee's Champion |QID|61488| |N|Kill (npc:169035) (23.48, 68.35)| |FAC|Horde| |Z|23| |NPC|169035|
T The Banshee's Champion |QID|61488| |N|Speak to (npc:169928)<br/><b>On top of Grommash Hold (49.26, 73.72)| |FAC|Horde| |Z|85| |NPC|169928|
A The Banshee's Champion |QID|61486| |N|Speak to (npc:172510) (65.55, 76.98)| |FAC|Alliance| |Z|84| |NPC|166383|
C The Banshee's Champion |QID|61486| |N|Kill (npc:172497) at Marris Stead in Eastern Plaguelands (23.48, 68.35)| |FAC|Alliance| |Z|23| |NPC|172497|
T The Banshee's Champion |QID|61486| |N|Speak to (npc:167329) (39.44, 64.15)| |FAC|Alliance| |Z|84| |NPC|167329|

N Guide Complete |N|Swich to (guide:"Death's Rising (Daily 50+)") guide|

]]
end, {image = "icecrown.tga", description = [[This guide covers the Shadowlands scourge invasion event questline]]})	end

	function Guide:Unload()
	end
end
