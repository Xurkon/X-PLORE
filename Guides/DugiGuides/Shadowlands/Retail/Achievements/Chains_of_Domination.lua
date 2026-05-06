 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Chains_of_Domination")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Korthia|r"}, "Chains of Domination Questline (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |QID|63576| |N|You need to be level 60 to accept this quest| |PL|60|
A The First Move |QID|63576| |N|You will accept this quest automatically in {Oribos} (41.34, 67.98)| |Z|1670|
N (npc:177136) |QID|63576| |N|Speak to (npc:177136) and choose 'Ask Adrestes what happened in Elysian Hold' (41.34, 67.98)| |Z|1670| |NPC|177136|
T The First Move |QID|63576| |N|(npc:164079) in {Oribos} (40.24, 68.14)| |Z|1670| 

A A Gathering of Covenants |QID|63856| |N|(npc:159478) in {Oribos} (38.90, 69.97)| |Z|1670| |NPC|159478|
N (npc:159478) |QID|63856| |N|Speak to (npc:159478) (38.90, 69.97)| |Z|1670| 
T A Gathering of Covenants |QID|63856| |N|(npc:159475) in {Oribos} (50.16, 42.99)| |Z|1673| |NPC|159475|
A Voices of the Eternal |QID|63857| |N|(npc:159475) in {Oribos} (50.16, 42.99)| |Z|1673| |NPC|159475|
N (npc:177571) |QID|63857| |N|Speak to (npc:177571) to begin (48.81, 53.88)| |Z|1673| |NPC|177571|
T Voices of the Eternal |QID|63857| |N|(npc:177141) in {Oribos} (40.69, 66.49)| |Z|1670| |NPC|177141|
A The Battle of Ardenweald |QID|63578| |N|(npc:177141) in {Oribos} (40.69, 66.49)| |Z|1670| |NPC|177141|
N (npc:178291) |QID|63578| |N|Mount (npc:178291) outside the Enclave (52.17, 89.80)| |Z|1670| |V| |NPC|178291|
N Reach the Defense Forces |SID|51685|1| |N|Ride the Etherwyrm to Ardenweald (51.33, 34.44)| |Z|2005| |QID|63578|
N Create a Decoy with the Animacone |SID|51594|2| |N|Click Animacone<br/><b>Two fairies will fly it out to you. (51.16, 33.11)| |Z|2005| |QID|63578|
N Push Back the Maw Forces |SID|0|3| |N|Kill enemies around this area and click on the portals (52.95, 35.34)| |Z|2005| |QID|63578|
K (npc:177114) |SID|51609|4| |N|Kill (npc:177114)<br/><b>You will be stunned and saved by Kleia (48.49, 37.24)| |Z|2005| |QID|63578| |NPC|177114|
N (npc:177365) SID|51684|5| |N|Mount (npc:177365) (48.68, 37.59)| |Z|2005| |QID|63578| |V| |NPC|177365|
K Slime 30 Mawsworn |SID|51610|6| |N|Kill Mawsworn enemies around this area<br/><b>Use the ability on your action bar.(49.43, 39.41)| |Z|2005| |QID|63578|
K (npc:177159) |SID|51589|7| |N|Kill (npc:177159) (47.97, 40.24)| |Z|2005| |QID|63578| |NPC|177159|
N Save the Wildseed |SID|51614|8| |N|Click on the (npc:178425) in near the waypoints (47.65, 42.76) (46.78, 43.39) (47.58, 43.84) (46.87, 44.84) | |Z|2005| |QID|63578| |NPC|178425|
N Rally your Allies |SID|51615|9| |N|Click (npc:178440) to rally the allies (47.87, 46.27) (49.09, 43.54)| |Z|2005| |QID|63578| |NPC|178440|
N Eradicate the Invaders |SID|51616|10| |N|Kill enemies around this area<br/><b>Kill the enemies that spawn from black swirling portals (49.05, 43.06)| |Z|2005| |QID|63578|

T The Battle of Ardenweald |QID|63578| |N|(npc:177148) in {Ardenweald} (48.72, 43.35)| |Z|1565| |NPC|177148|
A Can't Turn Our Backs |QID|63638| |N|(npc:177148) in {Ardenweald} (48.72, 43.35)| |Z|1565| |NPC|177148|
N (npc:177460) |QID|63638| |N|Speak to (npc:177460) to check on the Winter Queen (47.05, 48.61)| |Z|1565| |NPC|177460|
T Can't Turn Our Backs |QID|63638| |N|(npc:177460) in {Ardenweald} (47.05, 48.61)| |Z|1565| |NPC|177460|
A The Heart of Ardenweald |QID|63904| |N|(npc:177460) in {Ardenweald} (47.05, 48.61)| |Z|1565| |NPC|177460|
N (npc:178565) |QID|63904| |N|Speak to (npc:178565) to Discover the Winter Queen's Sigil (47.84, 53.56)| |Z|1565|
T The Heart of Ardenweald |QID|63904| |N|(npc:177460) in {Ardenweald} (47.05, 48.61)| |Z|1565| |NPC|177460|
A Report to Oribos |QID|63639| |N|(npc:177460) in {Ardenweald} (47.05, 48.61)| |Z|1565| |NPC|177460|

R Oribos |TID|63639| |N|Travel to {Oribos} (38.89, 69.98)| |Z|1670
T Report to Oribos |QID|63639| |N|(npc:159478) in {Oribos} (38.89, 69.98)| |Z|1670| |NPC|159478|
A Opening the Maw |QID|63660| |N|(npc:159478) in {Oribos} (38.89, 69.98)| |Z|1670| |NPC|159478| 
N (npc:159478) |QID|63660| |N|Speak to (npc:159478) in {Oribos} (38.89, 69.98)| |Z|1670| |NPC|159478|
T Opening the Maw |QID|63660| |N|(npc:159478) in {Oribos} (38.89, 69.98)| |Z|1670| |NPC|159478|
A Link to the Maw |QID|63661| |N|(npc:159478) in {Oribos} (38.89, 69.98)| |Z|1670| |NPC|159478|

N (npc:162804) |QID|63661| |N|Speak to (npc:162804) in {The Maw} (46.90, 41.69)| |Z|1543| |NPC|162804|

T Link to the Maw |QID|63661| |N|(npc:162804) in {The Maw} (46.90, 41.69)| |Z|1543| |NPC|162804|
A Mysteries of the Maw |QID|63662| |N|(npc:162804) in {The Maw} (46.90, 41.69)| |Z|1543| |NPC|162804|
N Use the Animaflow Teleporter |QID|63662| |N|Click Animaflow Teleporter (47.19, 43.36)| |Z|1543|
N (npc:162804) |QID|63662| |N|Speak to (npc:162804) and follow Ve'nari to the Site (60.16, 66.52) (62.51, 67.47) (58.35, 14.34)| |Z|1961| 
T Mysteries of the Maw |QID|63662| |N|(npc:162804) in {Korthia} (58.35, 14.34)| |Z|1961| |NPC|162804|
A Korthia, the City of Secrets |QID|63663| |N|(npc:162804) in {Korthia} (58.35, 14.34)| |Z|1961| |NPC|162804|
N (npc:177202) |QID|63663.1| |N|Speak to (npc:177202) to complete Ve'nari's Scan (58.35, 14.34)| |Z|1961| |NPC|177202|
N Investigate the Group of Attendants |QID|63663.2| |N|Watch the dialogue (58.60, 20.62)| |Z|1961|
N (npc:180469) |QID|63663.3| |N|Speak to (npc:180469) (58.66, 20.60)| |Z|1961| |NPC|180469|

T Korthia, the City of Secrets |QID|63663| |N|(npc:177227) in {Korthia} (63.89, 23.80)| |Z|1961| |NPC|177227|
A Who is the Maw Walker? |QID|63994| |N|(npc:177227) in {Korthia} (63.89, 23.80)| |Z|1961| |NPC|177227|
N (npc:177227) |QID|63994| |N|(npc:177227) in {Korthia} (63.89, 23.80)| |Z|1961| |NPC|177227|
T Who is the Maw Walker? |QID|63994| |N|(npc:177227) in {Korthia} (63.89, 23.80)| |Z|1961| |NPC|177227|
A Opening to Oribos |QID|63665| |N|(npc:177227) in {Korthia} (63.89, 23.80)| |Z|1961| |NPC|177227|

C Opening to Oribos |QID|63665| |N|click Waystone to use it (64.59, 23.95)| |Z|1961|
T Opening to Oribos |QID|63665| |N|(npc:177230) in (39.76, 36.93)| |Z|1671| |NPC|177230|
A Charge of the Covenants |QID|64007| |N|(npc:177230) in (39.76, 36.93)| |Z|1671| |NPC|177230|
N (spell:192262) |QID|64007| |N|Use the (spell:192262) ability to Rally the Covenants to Charge into the Maw (39.76, 36.93)| |Z|1671|

R Korthia |QID|64007| |N|Walk into the swirling black portal (29.91, 21.96)| |Z|1671|
T Charge of the Covenants |QID|64007| |N|(npc:177228) in {Korthia} (62.76, 25.01)| |Z|1961| |NPC|177228|
A Surveying Secrets |QID|64555| |N|(npc:177228) in {Korthia} (62.76, 25.01)| |Z|1961| |NPC|177228|
N (npc:180523) |QID|64555.1| |N|Speak to (npc:180523) to Obtain the Keeper's Respite Defense Report (61.92, 25.43)| |Z|1961| |NPC|180523|
N (npc:180520) |QID|64555.2| |N|Speak to (npc:180520) Obtain the Fauna of Korthia Report (54.63, 30.56)| |Z|1961| |NPC|180520|
N (npc:180525) |QID|64555.3| |N|Speak to (npc:180525) and kill (npc:177245)<br/><b>It will attack after talking to Mnemis (52.27, 39.24)| |Z|1961| |NPC|180525, 177245|
N (npc:180521) |QID|64555.4| |N|Speak to (npc:180521) (60.06, 31.41)| |Z|1961| |NPC|180521|
N (item:187439) |QID|64555.5| |N|Kill enemies around this area and collect (item:187439) (60.03, 34.24)| |Z|1961|

T Surveying Secrets |QID|64555| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|
A In Need of Assistance |QID|64556| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228| |NPC|177228|
A Observational Records |QID|64561| |N|(npc:178844) in {Korthia} (64.81, 25.42)| |Z|1961| |NPC|178844| |D| |TID|64556|
A We Need a Healer - You! |QID|64562| |N|(npc:179216) in {Korthia} (61.53, 24.04)| |Z|1961| |NPC|179216| |D| |TID|64556|
A Anima Reclaimation |QID|64560| |N|(npc:178793) in {Korthia} (61.96, 25.60)| |Z|1961| |NPC|178793| |D| |TID|64556|
N 8 (item:185754) |QID|64560| |N|Kill enemies around this area and collect 8 (item:185754) (54.62, 20.44)| |Z|1961| |D| |TID|64556|
N 5 (item:186170) |QID|64561| |N|click Observation Device and collect 5 (item:186170) (31.52, 50.98)| |Z|1961| |D| |TID|64556|
C A We Need a Healer - You! |QID|64562| |N|Use (item:187504) to restore 10 Covenant Wounded <br/><b>Use it on Kyrian Guardians, Fae Enchanters, Stoneborn Enforcers, and Prime Bladeguards (49.66, 52.77)| |Z|1961| |D| |TID|64556|
T Anima Reclaimation |QID|64560| |N|(npc:178793) in (61.96, 25.60)| |Z|1961| |NPC|178793| |D| |TID|64556|
T We Need a Healer - You! |QID|64562| |N|(npc:178844) in {Korthia} (61.53, 24.04)| |Z|1961| |D| |TID|64556|
T Observational Records |QID|64561| |N|(npc:178844) in {Korthia} (64.81, 25.42)| |Z|1961| |D| |TID|64556|
C In Need of Assistance |QID|64556| |N|Assist Ta'nasi, Mikanikos and Kael'thas by completing their daily quests| |Z|1961| |NPC|177228|
T In Need of Assistance |QID|64556| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|

A A Show of Gratitude |QID|63848| |N|(npc:177927) in {Korthia} (62.71, 24.78)| |Z|1961| |NPC|177927|
T A Show of Gratitude |QID|63848| |N|(npc:178470) in {Korthia} (65.64, 23.35) (65.91, 22.92)| |Z|1961| |NPC|178470|
A Ease of Passage |QID|63855| |N|(npc:178470) in {Korthia} (65.91, 22.92)| |Z|1961| |NPC|178470|
N (npc:178470) |QID|63855.1| |N|Speak to (npc:178470) and Establish a connection between Korthia and Ve'nari's Refuge (65.91, 22.92)| |Z|1961| |NPC|178470|
N Find a Suitable Location |QID|63855.2| |N|Find a Suitable Location (64.97, 23.68)| |Z|1961|
N Imprint the Anima Signature |QID|63855.3| |N|click Animaflow Teleporter (64.97, 23.68)| |Z|1961|
N Collect Ve'nari's Bag |QID|63855.4| |N|Click Ve'nari's Overstuffed Bag (66.02, 23.04)| |Z|1961|
N Fly to Ve'nari's Refuge |QID|63855.5| |N|Click Animaflow Teleporter (64.98, 23.67)| |Z|1961|
N Use the Animaflow Teleporter |QID|63855.5| |N|Use the Animaflow Teleporter {The Maw} (47.30, 43.71)| |Z|1543|
T Ease of Passage |QID|63855| |N|(npc:162804) (46.91, 41.70)| |Z|1543| |NPC|162804|
A Grab Bag |QID|63895| |N|(npc:162804) in {The Maw} (46.91, 41.70)| |Z|1543| |NPC|162804|
N Use the Transferral Augmentor |QID|63895.1| |N|Click Transferral Augmentor (46.90, 41.54)| |Z|1543|
N Transfer Successfully |QID|63895.2| |N|click Transferral Augmentor (46.90, 41.54)| |Z|1543|
T Grab Bag |QID|63895| |N|(npc:179078) (61.65, 59.08)| |Z|1543| |NPC|179078|
A Hearing Aid |QID|63849| |N|(npc:179078) (61.65, 59.08)| |Z|1543| |NPC|179078|
N (spell:351849) |QID|63849.1| |N|Use (spell:351849) ability<br/><b>It appears as a button on your screen<br/><b>This will grant you limited invisibility against elite enemies| |BUFF|3528300|
N Place the Aural Sequencer Prime |QID|63849.1| |N|Click Aural Sequencer<br/><b>Avoid enemies with large blue circles around them (64.76, 57.68)| |Z|1543|
N (spell:351849) |QID|63849.3| |N|Use (spell:351849) ability<br/><b>It appears as a button on your screen<br/><b>This will grant you limited invisibility against elite enemies| |BUFF|3528300|
N Place the Aural Sequencer Relay |QID|63849.3| |N|Click Aural Sequencer (67.69, 58.43)| |Z|1543|
N (spell:351849) |QID|63849.4| |N|Use (spell:351849) ability<br/><b>It appears as a button on your screen<br/><b>This will grant you limited invisibility against elite enemies| |BUFF|3528300|
N Place the Aural Sequencer Ground |QID|63849.4| |N|click Aural Sequencer (66.08, 56.38) (64.30, 50.61)| |Z|1543|
T Hearing Aid |QID|63849| |N|(npc:179078) in {The Maw} (64.36, 50.56)| |Z|1543|
A Birds of a Feather |QID|63810| |N|(npc:179078) in {The Maw} (64.36, 50.56)| |Z|1543|
N (spell:351849) |QID|63810.1| |N|Use (spell:351849) ability<br/><b>It appears as a button on your screen<br/><b>This will grant you limited invisibility against elite enemies| |BUFF|3528300|
N Find the Winged Creature |QID|63810| |N|Find the Winged Creature (67.20, 55.67)| |Z|1543|
T Birds of a Feather |QID|63810| |N|(npc:177597) (67.30, 55.76)| |Z|1543|
A The Caged Bird |QID|63754| |N|(npc:177597) (67.30, 55.76)| |Z|1543|
N (spell:351849) |QID|63754.1| |N|Use (spell:351849) ability<br/><b>It appears as a button on your screen<br/><b>This will grant you limited invisibility against elite enemies| |BUFF|3528300|
K (npc:178311) |QID|63754| |N|Kill (npc:178311) and (66.86, 56.33) (65.86, 60.27)| |Z|1543| |NPC|178311|
N (spell:351849) |QID|63754.1| |N|Use (spell:351849) ability<br/><b>It appears as a button on your screen<br/><b>This will grant you limited invisibility against elite enemies| |BUFF|3528300|
N (npc:177597) |QID|63754| |N|Unlock the Mawsworn Cage,(67.29, 55.76)| |Z|1543|
T The Caged Bird |QID|63754| |N|(npc:177597) (67.02, 56.01)| |Z|1543| |NPC|177597|
A Claim the Sky |QID|63764| |N|(npc:177597) (67.02, 56.01)| |Z|1543| |NPC|177597|
N (npc:177597) |QID|63764| |N|Speak to (npc:177597) (67.02, 56.01)| |Z|1543| |NPC|177597|
T Claim the Sky |QID|63764| |N|(npc:177603) {Skyhold} (57.60, 58.95)| |Z|1971| |NPC|177603|
A A Hate, Hate Relationship |QID|63811| |N|(npc:177603) (57.60, 58.95)| |Z|1971|
N Accompany Danica |QID|63811.1| |N|Watch the dialogue (58.42, 78.59)| |Z|1971|
N Complete Danica's Announcement |QID|63811.2| |N|Watch the dialogue (58.42, 78.59)| |Z|1971|
N (spell:353828) |QID|63811.3| |N|Use (spell:353828) to deliver Helya's Message (58.42, 78.59)| |Z|1971|
T A Hate, Hate Relationship |QID|63811| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|
A Fury Given Voice |QID|63831| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|
A The Chosen Few |QID|63844| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|
N (npc:177732) |QID|63831.1| |N|Speak to (npc:177732) (39.83, 36.62)| |Z|1971| |NPC|177732|
N Forge the Horn |QID|63831.2| |N|Follow the Smith's instructions<br/><b>Pay attention to the item Helgar asks for in your chat window<br/><b>Click the objects that Helgar asks for<br/><b>If you fail, speak to Helgar to begin again (40.20, 33.92)| |Z|1971|
N Retrieve the Newly Forged Horn |QID|63831.3| |N|Click Newly Forged Horn (40.44, 35.73)| |Z|1971|
N Use the Horn of Challenge |QID|63844.4| |N|Click Horn of Challenge (72.97, 35.06)| |Z|1971|
K (npc:178151) |QID|63844.2| |N|Kill 3 (npc:178151)<br/><b>They will fly into the Circle of Glory one at a time (77.10, 36.82)| |Z|1971| |NPC|178151|
N Leave the Circle of Glory |QID|63844| |N|Click Challenger's Winds (72.53, 36.61)| |Z|1971| |REACH|72.88,37.90,1971|
T The Chosen Few |QID|63844| |N|(npc:178269) (72.88, 37.90)| |Z|1971| |NPC|178269|
T Fury Given Voice |QID|63831| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|
A Wrath of Odyn |QID|63845| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|
N (npc:177726) |QID|63845.1| |N|Speak to (npc:177726) to begin (58.32, 85.29)| |Z|1971| |NPC|177726|
N Form the Wrath of Odyn |QID|63845.2| |N|Watch the dialogue (58.32, 85.29)| |Z|1971|
T Wrath of Odyn |QID|63845| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|
A Mawsplaining |QID|64014| |N|(npc:177726) (58.32, 85.29)| |Z|1971| |NPC|177726|

N Return to Oribos |QID|64014| |N|Jump into the portal (59.01, 22.84)| |Z|1971| |REACH|46.91, 41.70,1971| |MAP|1543|
N (npc:162804) |QID|64014| |N|(npc:162804) {The Maw} (46.91, 41.70)| |Z|1543| |NPC|162804|

T Mawsplaining |QID|64014| |N|(npc:162804) (46.91, 41.70)| |Z|1543| |NPC|162804|
A Tears of the Damned |QID|63896| |N|(npc:162804) (46.91, 41.70)| |Z|1543| |NPC|162804|
A Anger Management |QID|63867| |N|(npc:162804) (46.91, 41.70)| |Z|1543| |NPC|162804|
C Tears of the Damned |QID|63896| |N|Collect 10 Tears of the Damned<br/><b>They look like small blue crystals on the ground all over the River of Souls (28.47, 41.49)| |Z|1543| 
C Anger Management |QID|63867| |N|Use (item:186094) on Furious Shades all over the River of Souls (28.47, 41.49)| |Z|1543| 
T Tears of the Damned |QID|63896| |N|(npc:179078) (37.41, 26.93)| |Z|1543| |NPC|179078|
T Anger Management |QID|63867| |N|(npc:179078) (37.41, 26.93)| |Z|1543| |NPC|179078|
A Focusing the Eye |QID|63901| |N|(npc:179078) (37.41, 26.93)| |Z|1543| |NPC|179078|
N (spell:354133) |QID|63901.1| |N|Use (spell:354133) ability (42.37, 21.09)| |Z|1543| 
K (npc:178863) |QID|63901.2| |N|Kill (npc:178863)<br/><b>Walk over spears on the ground to collect them<br/><b>Use the (spell:354048) ability that appears on your screen to pull down and kill Chosenseeker Eyes (42.02, 20.80)| |Z|1543| |NPC|178863|
T Focusing the Eye |QID|63901| |N|(npc:178950) (37.04, 19.32)| |Z|1543| |NPC|178950|
A Good News, Everyone! |QID|63902| |N|(npc:178950) (37.04, 19.32)| |Z|1543| |NPC|178950| 
N (npc:178950) |N|Speak to (npc:178950) to being traveling (37.04, 19.32)| |Z|1543| |QID|63902.1| |V|
N (npc:177228) |QID|63902.2| |N|Speak to (npc:177228) {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|
T Good News, Everyone! |QID|63902| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|

A A Unified Effort |QID|64106| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|
C A Unified Effort |N|Aid a Covenant Assault<br/><b>Check your map in The Maw and complete a Covenant Assault to complete| |QID|64106|
T A Unified Effort |QID|64106| |N|(npc:177228) in {Korthia} (62.76, 25.00)| |Z|1961| |NPC|177228|

N Reach Renown Level 44 |N|Complete Covenant Calling and weekly quests<br/><b>Renown gains are capped weekly<br/><b>The cap resets with the weekly server reset| |RENOWN|44|

A Vault of Secrets |QID|63703| |N|(npc:177927) in (62.71,24.79)| |Z|1961| |NPC| 177927|
N (npc:177423) |QID|63703.1| |N|Meet (npc:177423) Near Scholar's Den (57.47,29.96)| |Z|1961| |NPC|177423|
T Vault of Secrets |QID|63703| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|
A Vengeance for Korthia |QID|63704| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|
A The Knowledge Keepers |QID|63705| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|

A Let the Anima Flow |QID|63706| |N|(npc:177449) in {Korthia} (57.22,29.95)| |Z|1961| |NPC|177449|
K (npc:178191) |QID|63706.1| |N|kill (npc:178191) inside the cave, he will spawn later (61.37,34.85)| |Z|2006| |NPC|178191|
N (npc:178010) |QID|63705| |N|click Mawsworn Cage and rescue 5 Record Keepers (59.47,34.82)| |Z|1961| |NPC|178010|
C Vengeance for Korthia |QID|63704.1| |N|Kill 15 Mawsworn enemies around this area(59.47,34.82)| |Z|1961| |W| 
T Let the Anima Flow |QID|63706| |N|(npc:177449) in {Korthia} (57.22,29.95)| |Z|1961| |NPC|177449|

T Vengeance for Korthia |QID|63704| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|
T The Knowledge Keepers |QID|63705| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|
A Secrets of the Vault |QID|63709| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|

N (npc:177423) |QID|63709.1| |N|Speak to (npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|

T Secrets of the Vault |QID|63709| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|
A The Anima Trail |QID|63710| |N|(npc:177423) in {Korthia} (57.47,29.96)| |Z|1961| |NPC|177423|

T The Anima Trail |QID|63710| |N|(npc:177451) inside the cave (34.91,35.13)| |Z|1961| |NPC|177451|
A Lost Records |QID|63712| |N|(npc:177451) inside the cave (34.91,35.13)| |Z|1961| |NPC|177451|
A Bone Tools |QID|63711| |N|(npc:177452) in {Korthia} (34.87,35.49)| |Z|1961| |NPC|177452|
N Activate the Matrix Beacon |QID|63712.1| |N|Use (item:185921) to activate it (34.87,35.49)| |Z|1961| |U|185921|
N Find the Cracked Record |QID|63712.2| |N|click Cracked Record<br/><b>The elite bear will not wake up (36.93,34.32) (37.80,37.02) (39.19,38.66) (38.44,40.57)| |Z|1961
C Bone Tools |QID|63711.1| |N|Kill Terrorclaw enemies around this area and collect 50 (item:185719)<br/><B>You can find more around here (36.86,33.04,1961,"Bone Tools") (35.04,38.02)| |Z|1961|
T Lost Records |QID|63712| |N|(npc:177451) inside the cave (34.91,35.13)| |Z|1961| |NPC|177451|
T Bone Tools |QID|63711| |N|(npc:177452) in {Korthia} (34.87,35.49)| |Z|1961| |NPC|177452|
A Hooking Over |QID|63713| |N|(npc:177452) in {Korthia} (34.87,35.49)| |Z|1961| |NPC|177452|
N Repair the Anima Conduit |QID|63713.1| |N|Clcik on grapple points on the island then speak to (npc:178580) to begin repairs and defend (29.80,34.10) (29.80,34.10) (19.08,39.50)| |Z|1961| |NPC|178580|
T Hooking Over |QID|63713| |N|(npc:177452) in {Korthia}<br/><b>Use grapple points to return back (29.80,34.10) (34.49,35.65) (34.87,35.49)| |Z|1961| |NPC|177452|
A To the Vault |QID|63714| |N|(npc:177451) inside the cave (34.91,35.13)| |Z|1961| |NPC|177451|
N (npc:178633) |N|Mount (npc:178633) (37.34,36.73) (47.28,39.88)| |Z|1961| |QID|63714| |V| |NPC|178633|
N (npc:178633) |QID|63714.1| |N|Ride the (npc:178633) to the Korthian Vault (50.02,63.89)| |Z|1961| |NPC|178633|
 
T To the Vault |QID|63714| |N|(npc:177459) in {Korthian Vault} (49.05,64.51) | |Z|1961| |NPC|177459|
A Defending the Vault |QID|63717| |N|(npc:177459) in {Korthian Vault} (49.05,64.51) | |Z|1961| |NPC|177459|
A Keepers of Korthia |QID|63722| |N|(npc:177459) in {Korthian Vault} (49.05,64.51) | |Z|1961| |NPC|177459|
N (npc:178654) |QID|63722.1| |N|Rescue (npc:178654) inside the building (47.25,65.64) (43.89,67.57) | |Z|1961| |NPC|178654|
N (npc:178656) |QID|63722.2| |N|Rescue (npc:178656) inside the building (44.54,70.27) (44.44,76.65) | |Z|1961| |NPC|178656|
N (npc:178651) |QID|63722.3| |N|Rescue (npc:178651) (46.82,73.18) (56.69,71.63) | |Z|1961| |NPC|178651|
N Weaken the Mawsworn Forces |QID|63717.1| |N|Kill enemies around this area to Weaken the Mawsworn Forces<br/><b> Also rescue (npc:178870) and click on Death motes, swirling black and white orbs floating above the ground (50.09,69.55) | |Z|1961| |NPC|178870|

T Defending the Vault |QID|63717| |N|(npc:178647) in {Korthia} (50.28,74.13)| |Z|1961| |NPC|178647|
T Keepers of Korthia |QID|63722| |N|(npc:178647) in {Korthia} (50.28,74.13)| |Z|1961| |NPC|178647|
A Into the Vault |QID|63725| |N|(npc:178676) in {Korthia} (50.29,75.94) | |Z|1961| |NPC|178676|
N (npc:178676) |QID|63725.1| |N|Speak to (npc:178676) to open the Vault Entrance (50.29,75.94) | |Z|1961| |NPC|178676|
N Enter the Vault |QID|63725.2| |N|Enter the Vault<br/><b>Jump in the white portal (50.30,77.92) | |Z|1961|
N Recover the Primus' Sigil |QID|63725.3| |N|Kill (npc:177567) and (npc:177566) and recover the Primus' Sigil <br/><b>One will not die until the other does in {Chamber of the Sigil} (38.27,31.27)| |Z|2008| |NPC|177567, 177566|
N Return to Keeper's Respite |N|Click Tal-Galan's Portal to Return to Keeper's Respite (47.50,43.36) | |Z|2008| |REACH|63.38,23.83,1961| |MAP|1961|
T Into the Vault |QID|63725| |N|(npc:177228) in {Korthia|} (62.76,25.00)| |Z|1961| |NPC|177228|
A Untangling the Sigil |QID|63726| |N|(npc:177228) in {Korthia} (62.76,25.00)| |Z|1961| |NPC|177228|
N (npc:177228) |QID|63726.1| |N|Speak to (npc:177228) in {Korthia} (62.76,25.00) | |Z|1961| |NPC|177228|
N (npc:164937) |QID|63726.2| |N|Speak to (npc:164937) in {The Runecarver} (50.17,54.07)| |Z|1912| |NPC|164937|
N (npc:177570) |SID|51677|1| |N|Speak to (npc:177570)| |QID|63726|
N Repel the Mawsworn |QID|63726.3| |N|Kill Mawsworn enemies around this area<br/><b>Avoid the white swirling areas targeted on the ground|
T Untangling the Sigil |QID|63726| |N|(npc:177569) in (map:1912) (50.33,54.15)| |Z|1912|
A The Primus Returns |QID|63727| |N|(npc:177569) in (map:1912) (50.33,54.15)| |Z|1912|
N Return to Keeper's Respite |QID|63727.1| |N|Return to Keeper's Respite (62.98,24.60)| |Z|1961|
T The Primus Returns |QID|63727| |N|(npc:177194) in {Korthia} (62.81,26.43)| |Z|1961| |NPC|177194|

N Reach Renown Level 47 |N|Complete (guide:"Korthia Daily Quests (60+)") guide and Covenant Assaults <br/><b>Renown gains are capped weekly| |N|RENOWN|47|

tip Complete the "Shaping Fate" weekly quest in the "Korthia Daily Quests" guide.
<br/><b>Complete the "Replenish the Reservoir" weekly quest in your covenant's daily quest guide.
<br/><b>Renown gains are capped weekly.
<br/><b>The cap resets with the weekly server reset.

Speak to (npc:177194)
A The Chains of Command |QID|63612| |N|(npc:177194) (62.81,26.43)| |Z|1543| |NPC|177194|

T The Chains of Command |QID|63612| |N|(npc:177560) (62.88,65.99)| |Z|1543| |NPC|177560|
A What We Wish to Be |QID|63613| |N|(npc:177560) (62.88,65.99)| |Z|1543| |NPC|177560|
A Clip Their Wings |QID|63615| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
A Weapon in Hand |QID|63614| |N|(npc:178040), next to you| |Z|1543| |PPOS| |NPC|178040|
N Summon the Death Gate to Bastion |QID|63613.4| |N|Click Death Gate to Bastion inside the building (64.90,64.04) (67.45,65.51)| |Z|1543|
N Summon the Death Gate to Ardenweald |QID|63613.2| |N|Click Death Gate to Ardenweald inside the building (67.38,55.60)| |Z|1543|
K (npc:177129) |QID|63614.1| |N|Kill (npc:177129) and collect (item:185772) (63.29,55.31) (61.85,56.38)| |Z|1543| |NPC|177129|
N Summon Death Gate to Revendreth |QID|63613.3| |N|click Death Gate to Revendreth (64.72,53.69) (62.46,51.58)| |Z|1543|
N Summon Death Gate to Maldraxxus |QID|63613.5| |N| (67.00,48.94)| |Z|1543|
C Clip Their Wings |QID|63615.1| |N|Kill 6 (npc:177168) and collect (item:185742)<br/><b>Use (item:185742) on Helsworn Soulbreakers flying in the air around this area (66.26,51.66)| |Z|1543| |NPC|177168|
T Weapon in Hand |QID|63614| |N|(npc:178040), next to you| |Z|1543| |PPOS| |NPC|178040|

T What We Wish to Be |QID|63613| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
T Clip Their Wings |QID|63615| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
A A Job Done Right |QID|63616| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
N Place the Necropolis Beacon |QID|63616.1| |N|click Necropolis Beacon (68.69,52.90)| |Z|1543|
N Annihilate the Mawsworn Forces |QID|63616.2| |N|Use the ability on your action bar to destroy the forces below you| |Z|1543| |POI|
T A Job Done Right |QID|63616| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
A Bending Bars |QID|63617| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
K (npc:177271) |QID|63617.1| |N|Kill (npc:177271), use the (spell:350588) ability<br/><b>It appears as a button on your screen (65.99,51.63) (65.22,48.01)| |Z|1543| |NPC|177271|

T Bending Bars |QID|63617| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
A What Maldraxxus Does Best |QID|63618| |N|(npc:177560), next to you| |Z|1543| |PPOS| |NPC|177560|
A Forsworn and Forgotten |QID|63619| |N|(npc:177288) (65.61,46.11)| |Z|1543| |NPC|177288|
N Release 5 (npc:177309) |QID|63619.1| |N|Click (npc:177309)<br/><b>Some prisoners will transform into them<br/><b>Use the (spell:350588) ability on your screen for extra AoE damage (67.12,42.76)| |Z|1543| |NPC|177309|
C What Maldraxxus Does Best |QID|63618.1| |N|Kill 10 Mawsworn enemies around this area<br/><b>Use the (spell:350588) ability on your screen for extra AoE damage. (67.12,42.76)| |Z|1543|
T Forsworn and Forgotten |QID|63619| |N|Field turn-in|
T What Maldraxxus Does Best |QID|63618| |N|(npc:177560), next to you| |NPC|177560| |PPOS|
A A Traitor's Due |QID|63620| |N|(npc:177560), next to you| |NPC|177560| |PPOS|
K (npc:177294) |QID|63620.1| |N|Kill (npc:177294) (61.45,41.42)| |Z|1543| |NPC|177294|
T A Traitor's Due |QID|63620| |N|(npc:178103) (61.96,41.55)| |Z|1543| |NPC|178103|
A Victory in Our Name |QID|63622| |N|(npc:178103) (61.96,41.55)| |Z|1543| |NPC|178103|
N Return to Korthia |N|Click Death Gate to Korthia (61.57,40.74) (64.29,24.24)| |QID|63622| | |Z|1961|
N (npc:179395) |QID|63622.2| |N|Speak to (npc:179395) (60.29,27.36)| |Z|1961| |NPC|179395|
T Victory in Our Name |QID|63622| |N|(npc:177194) (62.81,26.43)| |Z|1961| |NPC|177194|

N Reach Renown Level 50 |N|Complete (guide:"Korthia Daily Quests (60+)") guide and Covenant Assaults <br/><b>Renown gains are capped weekly| |N|RENOWN|50|

A Dreadlords! |QID|63659| |N|(npc:177167) (60.69,27.68)| |Z|1961| |NPC|177167|
T Dreadlords! |QID|63659| |N|(npc:177194) (62.81,26.43)| |Z|1961| |NPC|177194|
A Dread Tidings |QID|63644| |N|(npc:177194) (62.81,26.43)| |Z|1961| |NPC|177194|
N (npc:177379) |QID|63644.1| |N|Speak to (npc:177379) (29.47,41.72)| |Z|1525| |NPC|177379|
N Use the Mirror to Reach the Dawnkeep |QID|63644.2| |N|Run into the swirling red mirror (28.20,41.68) (26.01,43.86)| |Z|1525|
T Dread Tidings |QID|63644| |N|(npc:168898) (22.92,43.74)| |Z|1525| |NPC|168898|
A The Dawnkeep Prisoner |QID|63645| |N|(npc:168898) (22.92,43.74)| |Z|1525| |OID|60501| |NPC|168898|

N (npc:168898) |QID|63645.1| |N|Speak to (npc:168898) (22.92,43.74)| |Z|1525| |OID|63645| |NPC|168898|
T The Dawnkeep Prisoner |QID|63645| |N|(npc:168898) (22.92,43.75)| |Z|1525| |NPC|168898|
A Convoy of the Covenants |QID|63646| |N|(npc:168898) (22.92,43.75)| |Z|1525| |NPC|168898|
N (npc:177332) |QID|63646.1| |N|Speak to (npc:177332) to coordinate with the Princeguard (23.13,43.28) (27.76,41.00)| |Z|1525| |NPC|177332|
N Ride in Prince Renathal's Carriage |QID|63646.2| |N|Click Prince Renathal's Carriage (33.36,41.28)| |Z|1525| |V|
T Convoy of the Covenants |QID|63646| |N|(npc:165866) (34.28,21.93)| |Z|1525| |NPC|165866|
A The Unseen Guests |QID|63647| |N|(npc:165866) (34.28,21.93)| |Z|1525| |NPC|165866|
N Investigate the Envoy |QID|63647.1| |N|Watch the dialogue (34.28,21.93)| |Z|1525|
T The Unseen Guests |QID|63647| |N|(npc:178793), next to you| |Z|1525| |NPC|178793|
A Nal'ragas |QID|63648| |N|(npc:178793), next to you| |Z|1525| |NPC|178793|
A Spy vs Spy |QID|63649| |N|(npc:179149), next to you| |Z|1525| |NPC|179149|
K (npc:159106) |QID|63649.1| |N|Use (item:185734) and kill 5 (npc:159106)<br/><b>Use it in random areas to reveal Dreadlords<br/><b>Disguised Dreadlords will appear as enemies glowing red<br/><b>They will also appear as yellow dots on your minimap (31.49,20.57) | |Z|1525| |NPC|159106|
T Spy vs Spy |QID|63649| |N|(npc:179149), next to you| |Z|1525| |NPC|179149|
K (npc:177521) |QID|63648.1| |N|Kill (npc:177521) (26.52,25.60) (23.79,29.01)| |Z|1525| |NPC|177521|
T Nal'ragas |QID|63648| |N|(npc:177644) (25.01,27.97)| |Z|1525| |NPC|177644|
A De-Infiltration |QID|63650| |N|(npc:177644) (25.01,27.97)| |Z|1525| |NPC|177644|
N (npc:178045) |N|Use (npc:178045) (25.12,27.83) | |Z|1525| |QID|63650.1| |V| |NPC|178045|
N Ride Navrataal to Sinfall |QID|63650.1| |N|Use (npc:178045)  to ride Navrataal to Sinfall  (42.80,44.47)| |Z|1699| |NPC|178045|
T De-Infiltration |QID|63650| |N|(npc:158653) in {Sinfall} (51.83,37.53)| |Z|1699| |NPC|158653|
A The "Unwelcome" Guests |QID|63652| |N|(npc:158653) in {Sinfall}  (51.83,37.53)| |Z|1699| |NPC|158653|
A Cryptograms |QID|63651| |N|(npc:178260) (55.11,39.91)| |Z|1699| |NPC|178260|
K (npc:166137) |QID|63652.1| |N|Kill (npc:166137), tick this step (65.98,33.50)| |Z|1699| |NPC|166137|
K (npc:175922) |QID|63652.1| |N|Kill (npc:175922), tick this step<br/><b>She walks around inside Sinfall (42.63,43.91)| |Z|1699| |NPC|175922|
K (npc:174183) |QID|63652.1| |N|Speak to (npc:174183) and kill her (54.92,46.11)| |Z|1700| |NPC|174183|
C Cryptograms |QID|63651.1| |N|click Infernal Cryptogram and transcribe 10 Infernal Cryptogram<br/><b>They look like blue runes on the walls inside Sinfall  (46.49,55.08)| |Z|1700|
T Cryptograms |QID|63651| |N|(npc:178260) in {Sinfall} (55.07,39.94)| |Z|1699| |NPC|178260|
T The "Unwelcome" Guests |QID|63652| |N|(npc:158653) in {Sinfall} (51.73,37.62)| |Z|1699| |NPC|158653|
A The Power of a Crown |QID|63653| |N|(npc:158653) in {Sinfall} (51.73,37.62)| |Z|1699| |NPC|158653|

N Search Sinfall |QID|63653.1| |N|Follow the path (21.72,78.65) (25.30,45.13)| |Z|1525| 
N Locate the Medallion of Wrath |QID|63653.2| |N|Watch the dialogue (25.15,45.12)| |Z|1525| 

T The Power of a Crown |QID|63653| |N|(npc:178337) (25.15,45.12)| |Z|1525| |NPC|178337|
A The Nathrezim |QID|63654| |N|(npc:178337) (25.15,45.12)| |Z|1525| |NPC|178337|
N Investigate Dawnkeep |QID|63654.1| |N|Investigate Dawnkeep<br/><b>Follow The Stonewright as she walks (22.67,45.94)| |Z|1525| 
K (npc:178402) |QID|63654.3| |N|Kill (npc:178402) (22.59,45.94)| |Z|1525| |NPC|178402|
K (npc:178403) |QID|63654.2| |N|Kill (npc:178403) (22.59,45.94)| |Z|1525| |NPC|178403|
K (npc:177514) |QID|63654.4| |N|Confront (npc:177514)<br/><b>He will be captured at around 66% health (22.59,45.94)| |Z|1525| |NPC|177514|
T The Nathrezim |QID|63654| |N|(npc:178413) (23.08,45.86)| |Z|1525| |NPC|178413|
A The Meaning of Wrath |QID|63656| |N|(npc:179978) (23.09,45.96)| |Z|1525| |NPC|179978|
T The Meaning of Wrath |QID|63656| |N|(npc:177194) (62.81,26.43)| |Z|1961| |NPC|177194|

N Reach Renown Level 52 |N|Complete (guide:"Korthia Daily Quests (60+)") guide and Covenant Assaults <br/><b>Renown gains are capped weekly| |N|RENOWN|52|

A A Cry From the Heart |QID|63672| |N|(npc:177919)<br/><b>You may need to relog to get this to appear (63.39,24.33)| |Z|1961| |NPC|177919|

T A Cry From the Heart |QID|63672| |N|(npc:160262) (44.79,38.93)| |Z|1701| |COV|NightFae| |NPC|160262|
T A Cry From the Heart |QID|63672| |N|(npc:160262) (71.58,45.86)| |Z|1701| |NPC|160262|
A Hunting Amid Houses |QID|63673| |N|(npc:160262) (44.79,38.93)| |Z|1701| |COV|NightFae| |NPC|160262|
A Hunting Amid Houses |QID|63728| |N|(npc:160262) (71.58,45.86)| |Z|1701| |NPC|160262|
N (npc:160262) |QID|63673.1| |N|Speak to (npc:160262) (44.79,38.93)| |Z|1701| |O| |NPC|160262|
N (npc:160262) |QID|63728.1| |N|Speak to (npc:160262) (44.79,38.93)| |Z|1701| |O| |NPC|160262|
N (npc:177471) |QID|63673.2| |N|Find (npc:177471) in Maldraxxus (42.79,25.12)| |Z|1536| |O| |NPC|177471|
N (npc:177471) |QID|63728.2| |N|Find (npc:177471) in Maldraxxus  (42.79,25.12)| |Z|1536| |O| |NPC|177471|
T Hunting Amid Houses |QID|63673| |N|(npc:177471) (42.79,25.12)| |Z|1536| |O| |NPC|177471|
T Hunting Amid Houses |QID|63728| |N|(npc:177471) (42.79,25.12)| |Z|1536| |O| |NPC|177471|
A The Blade in the Night |QID|63990| |N|(npc:177471) (42.79,25.12)| |Z|1536|
N Search the First Floor |QID|63990.1| |N|Enter the building and click Record of War on top of the bookshelf (42.35,24.31) (41.83,23.31)| |Z|1536|
N Search the Second Floor |QID|63990.2| |N|Click Record of War on the corner of the pillar (41.95,23.22)| |Z|1536|
N Search the Third Floor |QID|63990.3| |N|Run up the stairs click Record of War (42.05,23.90) (42.16,23.21)| |Z|1536|
N Search the Top Floor |QID|63990.4| |N|Run up the stairs|click Record of War (41.92,22.79) (41.98,23.36)| |Z|1536|
N (npc:177435) |QID|63990.5| |N|Speak to (npc:177435) (42.11,23.32)| |Z|1536| |NPC|177435|
T The Blade in the Night |QID|63990| |N|(npc:177435) (42.11,23.32)| |Z|1536| |NPC|177435|
A By Your Leave |QID|63674| |N|(npc:177435) (42.11,23.32)| |Z|1536| |NPC|177435|
N (npc:177436) QID|63674.1| |N|Speak to (npc:177436) (52.91,68.77)| |Z|1536| |NPC|177436|
T By Your Leave |QID|63674| |N|(npc:177435) (52.92,68.65)| |Z|1536| |NPC|177435|
A You Cannot Run |QID|63675| |N|(npc:177435) (52.92,68.65)| |Z|1536| |NPC|177435|
A You Cannot Hide |QID|63676| |N|(npc:177435) (52.92,68.65)| |Z|1536| |NPC|177435|
A You Can Only Die |QID|63677| |N|(npc:177435) (52.92,68.65)| |Z|1536| |NPC|177435|

K (npc:177729) |QID|63677.1| |N|Kill (npc:177729) click the Gateway to Exoramas beneath it (74.70,32.80)| |Z|1536| |NPC|177729|
K (npc:177730) |QID|63676.1| |N|Kill (npc:177730)  inside the building (72.54,30.48)| |Z|1536| |NPC|177730|
N (item:185768) |QID|63675.1| |N|Click Suspicious Communication and collect the clues (item:185768), (item:185770) (item:185769) (item:185767) and (item:185761) (70.60,35.05) (71.68,32.66) (70.10,31.23) (67.51,28.40) (65.44,28.45)| |Z|1536| |L|185768|
N 10 (item:185773) |QID|63676.2| |N|Kill enemies around this area and collect 10 (item:185773) (69.39,31.86)| |Z|1536|

K (npc:177731) |QID|63675.2| |N|Kill (npc:177731) (72.32,44.95)| |Z|1536| |NPC|177731|
T You Cannot Run |QID|63675| |N|(npc:177435) (72.06,45.37)| |Z|1536| |NPC|177435|
T You Cannot Hide |QID|63676| |N|(npc:177435) (72.06,45.37)| |Z|1536| |NPC|177435|
T You Can Only Die |QID|63677| |N|(npc:177435) (72.06,45.37)| |Z|1536| |NPC|177435|
A Akarek Avenged |QID|63678| |N|(npc:177435) (72.06,45.37)| |Z|1536| |NPC|177435|

T Akarek Avenged |QID|63678| |N|(npc:177782) <br/><b>Fly up to it with your mount or click the Gateway to Exoramas beneath it (74.83,33.65)| |Z|1536| |NPC|177782|

A Magical Mystery Tour! |QID|63679| |N|(npc:177919), next to you (74.86,33.56)| |Z|1536| |NPC|177919|
T Magical Mystery Tour! |QID|63679| |N|(npc:177962) (25.35,29.05)| |Z|1525| |NPC|177962|
A Hunting Huln |QID|64092| |N|(npc:177962) (25.35,29.05)| |Z|1525| |NPC|177962|

N (npc:177962) |QID|64092.1| |N|Speak to (npc:177962) (25.35,29.05)| |Z|1525| |NPC|177962|
N Obtain the Disguise |QID|64092.2| |N|Speak to (npc:177962) to obtain the disguise (25.35,29.05)| |Z|1525| |NPC|177962|

N (npc:178221) |QID|64092.3| |N|Speak to (npc:178221)<br/><b>Avoid the blue rings surrounding patrolling Keeneyed Eviscerators<br/><b>You can talk to Lady Moonberry next to you to renew your disguise (30.27,30.04)| |Z|1525| |NPC|178221|
N Find Another Stoneborn who Might Know Something |QID|64092.4| |N|Find Another Stoneborn who Might Know Something (30.69,28.03) (37.93,23.74)| |Z|1525|
T Hunting Huln |QID|64092| |N|(npc:178254) (37.93,23.74)| |Z|1525| |NPC|178254|

A Mal'appropriated |QID|64091| |N|(npc:179327) (37.96,23.30)| |Z|1525| |NPC|179327|

N Collect 8 Sigils of Binding |QID|64091.1| |N|Collect 8 Sigils of Binding<br/><b>They look like large stone markers on the ground around this area (32.65,25.96)| |Z|1525|
N (npc:178254) |QID|64091.2| |N|Speak to (npc:178254) (37.93,23.72)| |Z|1525| |NPC|178254|
T Mal'appropriated |QID|64091| |N|(npc:177963), next to you (37.93,23.72)| |Z|1525| |NPC|177963|
A The Big Squeeze |QID|64090| |N|(npc:177963), next to you (37.93,23.72)| |Z|1525| |NPC|177963|

N Head into Dominance Keep |QID|64090.1| |N|Head into Dominance Keep (35.91,22.38) (35.42,22.34)| |Z|1525|
N Speak with the Agitated Stoneborn |QID|64090.2| |N|Speak with the Agitated Stoneborn (35.42,22.34)| |Z|1525|
N (npc:177963) |QID|64090.3| |N|Speak to (npc:177963) (35.16,21.87) (35.70,22.68)| |Z|1525| |NPC|177963|
N (spell:354446) |QID|64090.4| |N|Use the (spell:354446) ability (35.70,22.68)| |Z|1525|
N Sefeat 3 Illusions |QID|64090.5| |N|Kill enemies that attack and defeat 3 Illusions | (35.70,22.68)| |Z|1525|
N Expunge Wrath |QID|64090.6| |N|Speak to (npc:177967) and kill enemies that attack in waves (35.68,22.72)| |Z|1525| |NPC|177967|
N (npc:178255) |QID|64090.7| |N|Speak to (npc:178255) (35.67,22.56)| |Z|1525| |NPC|178255|
T The Big Squeeze |QID|64090| |N|(npc:177967) (35.68,22.72)| |Z|1525| |NPC|177967|
A Out On the Edge |QID|63680| |N|(npc:177967) (35.68,22.72)| |Z|1525| |NPC|177967|
N (npc:178223) |QID|63680.1| |N|Speak to (npc:178223) (35.17,21.92) (34.20,15.83)| |Z|1525| |NPC|178223|
N (npc:177472) |QID|63680.2| |N|Find (npc:177472) (34.93,15.56) (33.93,9.03)| |Z|1525| |NPC|177472|
N (npc:177472) |QID|63680.3| |N|Kill (npc:178412) and rescue (npc:177472) (33.93,9.03)| |Z|1525| |NPC|177472|
N (npc:178223) |QID|63680.4| |N|Speak to (npc:178223) (33.93,9.03)| |Z|1525| |NPC|178223|

T Out On the Edge |QID|63680| |N|(npc:177962) (34.03,9.71)| |Z|1525| |NPC|177962|
A Back to The Heart |QID|63681| |N|(npc:177962) (34.03,9.71)| |Z|1525| |NPC|177962|
T Back to The Heart |QID|63681| |N|(npc:177434) (48.02,53.94)| |Z|1565| |NPC|177434|
A Rituals of Night |QID|64042| |N|(npc:177434) (48.02,53.94)| |Z|1565| |NPC|177434|
N Bring the Supply Wagon to the Grove of Awakening |QID|64042.1| |N|Click Ritual Supplies<br/><b>Make sure it tethers to you (48.59,53.88) (45.42,64.98)| |Z|1565|
N (spell:355198) |QID|64042| |N|click Fae Ritual Oils (45.41,65.05)| |Z|1565| |BUFF|136007|
N Bring the Ritual Oils to Former Night Warriors |QID|64042.4| |N|Bring the Ritual Oils to Former Night Warriors  (45.20,64.60)| |Z|1565|
N (spell:355197) |N|click Basket of Flowers (45.40,65.03)| |Z|1565| |QID|64042| |BUFF|306845|
N Spread Flowers Around Tyrande |QID|64042.3| |N|Use the Spread Flowers ability<br/><b>It appears as a button on your screen<br/><b>Run around to spread the flowers (45.27,65.70)| |Z|1565|
N (spell:355199) |N|click Basket of Incense (45.41,65.08)| |Z|1565| |QID|64042| |BUFF|458733|

N Place the Incense |QID|64042.5| |N|click Basket of Incense (45.30,66.11)| |Z|1565|
N Place Ritual Foci |QID|64042.2| |N|click Ritual Foci (45.38,65.68) (45.11,65.70) (45.24,65.43)| |Z|1565|

T Rituals of Night |QID|64042| |N|(npc:177434) (45.31,64.81)| |Z|1565| |NPC|177434|
A The Power of Elune |QID|63682| |N|(npc:177434) (45.31,64.81)| |Z|1565| |NPC|177434|
N (npc:177434) |QID|63682.1| |N|Speak to (npc:177434) to being the ritual (45.31,64.81)| |Z|1565|
N Assist in the Ritual |QID|63682.2| |N|Use the "Assisting" ability (45.18,65.25)| |Z|1565|
N Help Subdue Tyrande |QID|63682.3| |N|Kill (npc:178653)<br/><b>Run to Shandris during "Convocation of Elune."<br/><b>She will have an arrow over her head<br/><b>Avoid standing in sparkling blue circles (45.25,65.71)| |Z|1565| |NPC|178653|
T The Power of Elune |QID|63682| |N|(npc:178669) (45.25,65.04)| |Z|1565| |NPC|178669|
A Winter's Sigil |QID|63683| |N|(npc:178669) (45.25,65.04)| |Z|1565| |NPC|178669|

N Take the Sisters' Tear |QID|63683.1| |N|click The Sisters' Tear (45.30,65.08)| |Z|1565|
N (npc:177434) |QID|63683.2| |N|Speak to (npc:177434) (44.77,38.95)| |Z|1701| |COV|NightFae| |NPC|177434|
N (npc:177434) |QID|63683.2| |N|Speak to (npc:177434) (71.58,45.86)| |Z|1701|  |NPC|177434|

T Winter's Sigil |QID|63683| |N|(npc:177434) (44.77,38.95)| |Z|1701| |COV|NightFae| |NPC|177434|
T Winter's Sigil |QID|63683| |N|(npc:177434) (71.58,45.86)| |Z|1701| |NPC|177434|
A Inform the Primus |QID|64437| |N|(npc:177434) (44.77,38.95)| |Z|1701| |COV|NightFae| |NPC|177434|
A Inform the Primus |QID|64437| |N|(npc:177434) (71.58,45.86)| |Z|1701| |NPC|177434|
T Inform the Primus |QID|64437| |N|(npc:177194) (62.81,26.43)| |Z|1961| |NPC|177194|
A Filling an Empty Throne |QID|63623| |N|(npc:177194) (62.81,26.43)| |Z|1961| |COV|Necrolord| |NPC|177194| 

T Filling an Empty Throne |QID|63623| |N|(npc:177194) (49.69,51.23)| |Z|1698| |COV|Necrolord| |NPC|177194|
A The Roads We Walk |QID|63624| |N|(npc:177194) (49.69,51.23)| |Z|1698| |COV|Necrolord| |NPC|177194|

N Watch the Ceremony |QID|63624.1| |N|Watch the dialogue| |COV|Necrolord|
N (npc:177976) |QID|63624.2| |N|Speak to (npc:177976) (49.99,36.43)| |Z|1698| |COV|Necrolord| |NPC|177976|
N (npc:177934) |QID|63624.3| |N|Speak to (npc:177934) (46.67,42.38)| |Z|1698| |COV|Necrolord| |NPC|177934|
N (npc:178035) |QID|63624.4| |N|Speak to (npc:178035) (51.79,40.83)| |Z|1698| |COV|Necrolord| |NPC|178035|
T The Roads We Walk |QID|63624| |N|(npc:177975) (49.69,51.23)| |Z|1698| |COV|Necrolord| |NPC|177975|

N Reach Renown Level 56 |N|Complete (guide:"Korthia Daily Quests (60+)") guide and Covenant Assaults <br/><b>Renown gains are capped weekly| |N|RENOWN|56|
A A Paladin's Soul |QID|63579| |N|(npc:179356) (62.74,25.38)| |Z|1961| |NPC|179356|
N Use the Attuned Shard at the Wayfinder in Torghast |QID|63579.1| |N|click Wayfinder (37.88,47.10)| |Z|1911|

K (npc:176579) |QID|63579.2| |N|Enter Torghast Reach the Third Floor and kill (npc:176579) (34.27,30.70)| |Z|1969| |NPC|176579|
N Enter the Portal of Souls |QID|63579.3| |N|click Portal of Souls<br/><b>It looks like a swirling portal floating in the air near the Guardian of Souls. (33.10,28.49)| |Z|1969|
N (item:185680) |QID|63579.4| |N|Click Remnant of Justice and collect (item:185680) (40.12,30.28)| |Z|1969|

T A Paladin's Soul |QID|63579| |N|(npc:154629)<br/><b>Up on the highest platform (40.15,19.93)| |Z|1533| |NPC|154629|

A Wounded Memories |QID|63580| |N|(npc:177116) up on the highest platform.(39.96,20.10)| |Z|1533| |NPC|177116|
N Place the Remnant of Justice |QID|63580.1| |N|click Remnant of Justicem up on the highest platform (40.22,20.44)| |Z|1533|

T Wounded Memories |QID|63580| |N|(npc:154629) (40.15,19.93)| |Z|1533| |NPC|154629|
A Step Into the Light |QID|63581| |N|(npc:154629) (40.15,19.93)| |Z|1533| |NPC|154629|
N Enter Uther's Memory |QID|63581.1| |N|click Soul Mirror (40.22,20.44)| |Z|1533|

N Kneel Before Alonsus |QID|63581.2| |N|Use the kneel ability, it should appear as a button on your screen (67.49,73.25)| |Z|827|
N Attend the Ceremony |QID|63581.3| |N|Watch the dialogue (67.49,73.25)| |Z|827|
N Investigate the Grain |QID|63581.4| |N|click Suspicious Grain inside the building (68.70,73.02)| |Z|827|
N Open the Door |QID|63581.5| |N|click Chapel Door (66.14,74.67)| |Z|827|
N Destroy the Plauged Grain |QID|63581.7| |N|Use the holy smite ability to destroy the Plagued Grain in each waypoint (68.51,76.42) (65.67,79.03) (62.42,78.90) (62.70,72.04) (64.85,68.58) (65.82,71.83)| |Z|827| |count 1
K 10 Arthas's Followers |QID|63581.6| |N|Kill 10 enemies around this area (62.70,72.04)| |Z|827|
N Begin the Memory |N|Watch the dialogue| |QID|63581| |BUFF|135860|
T Step Into the Light |QID|63581| |N|(npc:177116) (39.96,20.10)| |Z|1533| |NPC|177116|
A He Was My Student |QID|63582| |N|(npc:177116) (39.96,20.10)| |Z|1533| |NPC|177116|
N Enter Uther's Memory |QID|63582.1| |N|Click Soul Mirror (40.22,20.44)| |Z|1533|
N Speak to Arthas |QID|63582.2| |N|Watch the dialogue in {Stormwind City} (52.39,45.47)| |Z|84|
K (npc:177718) |QID|63582.3| |N|Kill (npc:177718), he will surrender when he reaches 50% health (52.39,45.47)| |Z|84|
N Return to The Eonian Archives |QID|63582| |N|Watch the dialogue (40.16,20.29)| |Z|1533|
T He Was My Student |QID|63582| |N|(npc:177123) (40.22,20.19)| |Z|1533| |NPC|177123|
A I Intend to Live Forever |QID|63583| |N|(npc:180733) (40.20,20.36)| |Z|1533| |NPC|180733|
N Enter Uther's Memory |QID|63583.1| |N|click Soul Mirror (40.22,20.44)| |Z|1533| 
N (npc:179521) |QID|63583.3| |N|Click (npc:179521) in {Western Plaguelands} (41.84,65.93) (42.72,65.65) (42.77,68.84) (43.54,68.50) (43.87,69.97)| |Z|22| |NPC|179521|
K 10 Scourge Forces |QID|63583.2| |N|Kill enemies around this area (44.75,69.25)| |Z|22|
K (npc:177886) |QID|63583.4| |N|Kill (npc:177886), he will defeat you eventually (46.09,69.26)| |Z|22| |NPC|177886|
N Leave Andorhal |N|Watch the dialogue (46.09,69.26)| |Z|22| |QID|63583|
T I Intend to Live Forever |QID|63583| |N|(npc:177116) (39.96,20.10)| |Z|1533| |NPC|177116|
A Blind Loyalty |QID|63585| |N|(npc:177116) (39.96,20.10)| |Z|1533| |NPC|177116|
N (npc:180719) |N|Speak to (npc:180719) (40.37,19.66)| |Z|1533| |QID|63585| |V| |NPC|180719|
N (npc:160037) |QID|63585.2| |N|Speak to (npc:160037) (55.64,41.95)| |Z|1707| |NPC|160037|

T Blind Loyalty |QID|63585| |N|(npc:160037) (55.64,41.95)| |Z|1707| |NPC|160037|
A Compassion in Devotion |QID|63586| |N|(npc:160037) (55.64,41.95)| |Z|1707| |NPC|160037|
T Compassion in Devotion |QID|63586| |N|(npc:177116) (24.34,30.12)| |Z|1533| |NPC|177116| |COV|Kyrian|
T Compassion in Devotion |QID|63586| |N|(npc:177116) (24.34,30.12)| |Z|1533| |NPC|177116|
A Directing Dedication |QID|63589| |N|(npc:177116) (24.34,30.12)| |Z|1533| |NPC|177116|
A Rebuilding Faith |QID|63588| |N|(npc:177300) (24.43,29.99)| |Z|1533| |NPC|177300|
A Reclaimable Anima |QID|63587| |N|(npc:177123) (24.17,29.98)| |Z|1533| |NPC|177123|
N Activate the South Anima Channeler |QID|63589.1| |N|click Anima Channeler (22.70,24.94)| |Z|1533|
N Activate the North Anima Channeler |QID|63589.2| |N|click Anima Channeler (24.21,22.82)| |Z|1533|
N Convince 10 Forsworn |QID|63588.1| |N|Kill Humanoid enemies around this area<br/><b>They will convert or die (25.30,22.78)| |Z|1533|
N 5 (item:185853) |QID|63587.1| |N|Kill Mechanical enemies around this area and collect 5 (item:185853) (25.30,22.78)| |Z|1533|
N Activate the South Anima Collector |QID|63589.3| |N|click Anima Collector (22.63,23.37)| |Z|1533|
N Activate the North Anima Collector |QID|63589.4| |N|click Anima Collector (22.61,22.32)| |Z|1533|
N Ring the North Gate Vesper |QID|63589.6| |N|click Gate Vesper (20.66,21.56)| |Z|1533|
N Ring the South Gate Vesper |QID|63589.5| |N|click Gate Vesper (20.67,24.21)| |Z|1533|
T Rebuilding Faith |QID|63588| |N|Fallen Disciple Nikolon, next to you|
T Reclaimable Anima |QID|63587| |N|(npc:177123) (20.93,23.06)| |Z|1533| |NPC|177123|
T Directing Dedication |QID|63589| |N|(npc:177116) (20.63,22.88)| |Z|1533| |NPC|177116|
A The Vesper Rings |QID|63590| |N|(npc:177116) (20.63,22.88)| |Z|1533| |NPC|177116|
C Defend Adrestes |QID|63590.1| |N|Speak to (npc:177116) and kill enemies that attack in waves (20.62,22.88)| |Z|1533| |NPC|177116|
T The Vesper Rings |QID|63590| |N|(npc:177116) (20.63,22.88)| |Z|1533| |NPC|177116|
A A Triumphant Return |QID|63584| |N|(npc:177116) (20.63,22.88)| |Z|1533| |NPC|177116|
N (npc:180719) |N|Speak to (npc:180719) and fly to Elysian Hold (20.91,22.24)| |Z|1533| |QID|63584| |V| |NPC|180719|
T A Triumphant Return |QID|63584| |N|(npc:168517) (37.08,61.06)| |Z|1707| |NPC|168517|
A The Grand Reception |QID|63591| |N|(npc:168517) (37.08,61.06)| |Z|1707| |COV|Kyrian| |NPC|168517|
A The New Path |QID|63592| |N|(npc:168517) (37.08,61.06)| |Z|1707| |OID|63592| |NPC|168517|

N (npc:168517) |QID|63592.1| |N|Speak to (npc:168517) (37.08,61.06)| |Z|1707| |OID|63592|  |NPC|168517|
T The New Path |QID|63592| |N|(npc:179379) (45.99,57.84)| |Z|1707| |OID|63592| |NPC|179379|
A New Sigil of the Kyrian |QID|63593| |N|(npc:179379) (45.99,57.84)| |Z|1707| |OID|63592| |NPC|179379|

N (npc:168517) |QID|63591.1| |N|Speak to (npc:168517) (37.08,61.06)| |Z|1707| |COV|Kyrian| |NPC|168517|
N (npc:180175) |QID|63591.2| |N|Speak to (npc:180175) (45.40,58.67)| |Z|2017| |COV|Kyrian| |NPC|180175|
N (npc:180223) |QID|63591.3| |N|Speak to (npc:180223) (47.20,44.20)| |Z|2017| |COV|Kyrian| |NPC|180223|
N (npc:180174) |QID|63591.4| |N|Speak to (npc:180174) (51.12,41.94)| |Z|2017| |COV|Kyrian| |NPC|180174|
N (npc:180183) |QID|63591.5| |N|Speak to (npc:180183) (54.27,43.45)| |Z|2017| |COV|Kyrian| |NPC|180183|

T The Grand Reception |QID|63591| |N|(npc:180189) (55.79,29.93)| |Z|2017| |COV|Kyrian| |NPC|180189|
A The New Path |QID|63592| |N|(npc:180189) (55.79,29.93)| |Z|2017| |COV|Kyrian| |NPC|180189|
N (npc:180189) |QID|63592.1| |N|Speak to (npc:180189) (55.77,29.90)| |Z|2017| |COV|Kyrian| |NPC|180189|
N (npc:177123) |QID|63592.2| |N|Speak to (npc:177123) to Begin the Ceremony (43.79,68.35)| |Z|2018| |NPC|177123|
T The New Path |QID|63592| |N|(npc:179379) (45.95,57.68)| |Z|2018| |NPC|179379|
A New Sigil of the Kyrian |QID|63593| |N|(npc:179379) (45.88,57.87)| |Z|2018| |NPC|179379|
N Return to Oribos |QID|63593.1| |N|click Anima Gateway to Oribos(51.35,72.64)| |Z|2018|
T New Sigil of the Kyrian |QID|63593| |N|(npc:177194) (62.81,26.43)| |Z|1961| |NPC|177194|

N Reach Renown Level 58 |N|Complete (guide:"Korthia Daily Quests (60+)") guide and Covenant Assaults<br/><b>Renown gains are capped weekly| |N|RENOWN|58|
	
A Doorway in the Dark |QID|64211| |N|(npc:177194) (62.84,26.40)| |Z|1961| |FAC|Alliance| |NPC|177194|
A Doorway in the Dark |QID|64212| |N|(npc:177194) (62.84,26.40)| |Z|1961| |FAC|Horde| |NPC|177194|
N Await Jaina's Return |QID|64211.1| |N|Watch the dialogue (63.02,25.64)| |Z|1961| |FAC|Alliance|
N Await Thrall's Return |QID|64212.1| |N|Watch the dialogue (63.02,25.64)| |Z|1961| |FAC|Horde|
N (npc:180210) |QID|64211.2| |N|Speak to (npc:180210) (63.02,25.64)| |Z|1961| |FAC|Alliance| |NPC|180210|
N (npc:180211) |QID|64212.2| |N|Speak to (npc:180211) (62.87,25.62)| |Z|1961| |FAC|Horde| |NPC|180211|
T Doorway in the Dark |QID|64211| |N|(npc:180074) (63.03,25.63)| |Z|1961| |FAC|Alliance| |NPC|180074|
T Doorway in the Dark |QID|64212| |N|(npc:180211) (62.87,25.62)| |Z|1961| |FAC|Horde| |NPC|180211|
A A Symbol of Hope |QID|64213| |N|(npc:180074) (63.03,25.63)| |Z|1961| |FAC|Alliance| |NPC|180074|
A A Symbol of Hope |QID|64214| |N|(npc:180211) (62.87,25.62)| |Z|1961| |FAC|Horde| |NPC|180211|
N Learn About Anduin's Compass |QID|64213.1| |N|Watch the dialogue (63.03,25.63)| |Z|1961| |FAC|Alliance|
N Learn About Anduin's Compass |QID|64214.1| |N|Watch the dialogue (62.87,25.62)| |Z|1961| |FAC|Horde|
N Examine the Compass |QID|64213.2| |N|click Enchanted Compass (63.19,24.49)| |Z|1961| |FAC|Alliance|
N Examine the Compass |QID|64214.2| |N|click Enchanted Compass (63.19,24.49)| |Z|1961| |FAC|Horde|

T A Symbol of Hope |QID|64213| |N|(npc:180074) (63.12,24.52)| |Z|1961| |FAC|Alliance| |NPC|180074|
T A Symbol of Hope |QID|64214| |N|(npc:180073) (63.04,24.55)| |Z|1961| |FAC|Horde| |NPC|180073|
A Covenants Renewed |QID|64314| |N|(npc:177228) (63.13,24.40)| |Z|1961| |NPC|177228|

N (npc:177194) |QID|64314.1| |N|Speak to (npc:177194) (62.82,26.42)| |Z|1961| |NPC|177194|
C Covenants Renewed |QID|64314.2| |N|Click the sigils of each covenant (63.52,25.01) (63.62,24.54) (63.44,24.12) (63.14,24.08)| |Z|1961|
N (npc:177194) |QID|64314.3| |N|Speak to (npc:177194) to Present Sigils to the Primus (63.03,24.82)| |Z|1961| |NPC|177194|
T Covenants Renewed |QID|64314| |N|(npc:177194) (63.03,24.82)| |Z|1961| |NPC|177194|

N Guide Complete

]]
end, {description = [[This guide covers unlocking Korthia zone for patch 9.1]]})
  end
    
  function Guide:Unload()
  end
end