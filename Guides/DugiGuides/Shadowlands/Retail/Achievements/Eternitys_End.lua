local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Eternitys_End")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Zereth Mortis|r"}, "Eternity's End Questline (60)", nil, nil, nil, "A", "nil", function()
return [[

N Level 60 Required |QID|64942| |N|You need to be level 60 to accept this quest| |PL|60|
N Renown 40 Required |N|Reach Renown Level 40<br/><b>Increase your Renown level by completing your covenant dailies, callings & Maw Assaults<br/><b>Alternatively, if you have completed Eternity's End Chapter 3 on a character before on the same account, you can buy Broker Mark of Distinction from Au'Dara for 500<g> (59.87, 70.81, 1671, "Au'Dara")| |N|RENOWN|40|
N Complete Covenant Campaign |N|You will need to complete all 9 chapters| |OID|62557, 60111, 62561, 59325|

-- Intro Story Line Chapters 1,2 & 3 for Patch 9.2
-- //Into the Unkown//
A Call of the Primus |QID|64942| |N|You will accept this quest automatically in {Oribos} (41.34, 67.98)| |Z|1670|
N (npc:159478) |QID|64942.1| |N|Speak to (npc:159478) and choose 'I am ready to go.' (39.19, 70.24)| |Z|1670| |NPC|159478|
T Call of the Primus |QID|64942| |N|(npc:181655) in {The Crucible} (33.28, 50.46)| |Z|2042| |NPC|181655|
A A Hasty Voyage |QID|64944| |N|(npc:181655) in {The Crucible} (33.56, 51.20)| |Z|2042| |NPC|181655| |PRE|64942|
N (npc:182631) |QID|64944.1| |N|Mount (npc:182631) (33.26, 46.86)| |Z|2042| |V| |NPC|182631|
C Mawsworn forces defeated |SID|0|1| |N|Use the action bar abilties to defeat the Mawsworn forces (25.05, 48.38)| |Z|2042| |QID|64944|
C Reins Grabbed |SID|52850|2| |N|Defeat the rider and grab the reins (36.61, 26.97)| |Z|2042| |QID|64944|
T A Hasty Voyage |QID|64944| |N|(npc:181931) in {Path of Inception} (24.95, 53.60)| |Z|1970| |NPC|181931|
A Strangers in a Strange Land |QID|64945| |N|(npc:181931) in {Path of Inception} (24.95, 53.60)| |Z|1970| |NPC|181931| |PRE|64944|
N Explore the Surroundings |QID|64945.1| |N|Explore the Surroundings (28.35, 53.47)| |Z|1970|
T Strangers in a Strange Land |QID|64945| |N|(npc:181561) in {Genesis Vestibule} (28.79, 53.53)| |Z|1970| |NPC|181561|
A Long Lost Firim |QID|65456| |N|(npc:181561) in {Genesis Vestibule} (28.79, 53.53)| |Z|1970| |NPC|181561| |PRE|64945|
N Quadangular Object |QID|65456.1| |N|Click on the Quadangular Object in {Path of Inception} (27.20, 52.65)| |Z|1970|
N Triangular Object |QID|65456.2| |N|Click on the Triangular Object in {Path of Inception} (27.17, 54.51)| |Z|1970|
N Quadangular Altar |QID|65456.3| |N|Click on the Quadangular Altar in {Path of Inception} (28.38, 53.27)| |Z|1970|
N Triangular Altar |QID|65456.4| |N|Click on the Triangular Altar in {Path of Inception} (28.38, 53.73)| |Z|1970|
T Long Lost Firim |QID|65456| |N|(npc:181561) in {Path of Inception} (28.48, 53.50)| |Z|1970| |NPC|181561|
A Give Me A Hand |QID|64947| |N|(npc:181561) in {Genesis Vestibule} (28.48, 53.50)| |Z|1970| |NPC|181561| |PRE|65456|
N (item:188954) |QID|64947.1| |N|Click the Disabled Automa in {Genesis Alcove} (31.86, 49.97)| |Z|1970| |NPC|184057| |L|188954|
N (npc:184058) |QID|64947.2| |N|Kill (npc:184058) in {Genesis Alcove} (32.12, 49.86)| |Z|1970| |NPC|184058|
T Give Me A Hand |QID|64947| |N|(npc:184062) in {Genesis Vestibule} (31.19, 51.21)| |Z|1970| |NPC|184062|
A A Mutual Exchange |QID|64950| |N|(npc:184062) in {Genesis Vestibule} (31.19, 51.21)| |Z|1970| |NPC|184062| |PRE|64947|
A For Research Purposes |QID|64949| |N|(npc:184062) in {Genesis Vestibule} (31.19, 51.21)| |Z|1970| |NPC|184062| |PRE|64947|
N Collect 12 (item:188956) |QID|64949| |N|Collect 12 (item:188956) from alerted mobs in (Genesis Vestibule) (30.56, 51.35)| |Z|1970| |POI| |NPC|184059, 184060| |L|188956 12|
N Open the door |QID|64950.1| |N|Stand on the pad and use the (spell:365986) button in {Genesis Vestibule} (31.18, 56.16)| |Z|1970|
N (npc:184860) |QID|64950.2| |N|Kill (npc:184860) and avoid his (spell:365909) ability in {Genesis Repository} (31.94, 56.99)| |Z|1970| |NPC|184860|
N A Mutual Exchange |QID|64950.3| |N|Click on the Primordial Core in {Genesis Repository} (32.05, 57.35)| |Z|1970|
T A Mutual Exchange |QID|64950| |N|(npc:184062) in {Genesis Vestibule} (31.21, 51.23)| |Z|1970| |NPC|184062|
T For Research Purposes |QID|64949| |N|(npc:184062) in {Genesis Vestibule} (31.21, 51.23)| |Z|1970| |NPC|184062|
A The Road to Haven |QID|64951| |N|(npc:184062) in {Genesis Vestibule} (31.21, 51.23)| |Z|1970| |NPC|184062| |PRE|64949|
N (npc:184082) |QID|64951.1| |N|Mount on (npc:184082) in {Genesis Vestibule} (31.31, 51.38)| |Z|1970| |V| |NPC|184082|
N Rode out of Genesis Vestibule |QID|64951.2| |N|Reached {Felicitous Glade} (33.97, 60.70)| |Z|1970|
T The Road to Haven |QID|64951| |N|(npc:181561) in {Felicitous Glade} (34.03, 60.80)| |Z|1970| |NPC|181561|
A Forging Connections |QID|65271| |N|(npc:181931) in {Felicitous Glade} (34.01, 60.80)| |Z|1970| |NPC|181931| |PRE|64951|
N Enter Haven |QID|65271.1| |N|Enter {Haven}, you will be trapped (34.05, 64.01)| |Z|1970|
N (npc:177486) |QID|65271.2| |N|Speak to (npc:177486) and choose 'We have arrived from Oribos in pursuit of the Jailer.' (34.89, 64.83)| |Z|1970| |NPC|177486|
T Forging Connections |QID|65271| |N|(npc:177486) in {Haven} (34.89, 64.83)| |Z|1970| |NPC|177486|
A Defending Haven |QID|64953| |N|(npc:177486) in {Haven} (34.89, 64.83)| |Z|1970| |NPC|177486| |PRE|65271|
A Destroying the Destructors |QID|64952| |N|(npc:178016) in {Haven} (34.82, 64.80)| |Z|1970| |NPC|178016| |PRE|65271|
h Haven |N|Sepak to (npc:180916) and set your hearth to {Haven} (34.83, 63.99)| |Z|1970| |NPC|180916| |QID|64952|
K 13 Mawsworn |QID|64953| |N|Kill 13 (npc:183649) or (npc:183645) in {The Great Veldt} (37.09, 61.78)| |Z|1970| |NPC|183649, 183645|
C Destroy 4 Maw Destructors |QID|64952| |N|Destroy 4 Maw Destructors (37.87, 64.01) (39.01, 63.51) (38.21, 60.39) (36.82, 61.54)| |Z|1970| |NPC|185182|
T Destroying the Destructors |QID|64952| |N|(npc:178016) in {Haven} (34.80, 64.80)| |Z|1970| |NPC|178016|
T Defending Haven |QID|64953| |N|(npc:177486) in {Haven} (34.88, 64.85)| |Z|1970| |NPC|177486|
A This Old Waystone |QID|64957| |N|(npc:178016) in {Haven} (34.82, 64.79)| |Z|1970| |NPC|178016| |PRE|64952|
R Travel to Geometric Cavern |TID|64957| |N|Travel to the Geometric Cavern (33.56, 69.00)| |Z|1970| |REACH|33.56,69.00|
N Activate the Ancient Waystone |QID|64957.2| |N|Use the (spell:367326) ability that appears on the screen (32.99, 69.71)| |Z|1970|
N Go through the Waystone |QID|64957.3| |N|Click the Ancient Waystone in {Geometric Cavern} (32.99, 69.71)| |Z|1970|
T This Old Waystone |QID|64957| |N|(npc:184698) in {Ring of Transference} (49.56, 37.09)| |Z|1671| |NPC|184698|
A The Forces Gather |QID|64958| |N|(npc:184698) in {Ring of Transference} (49.56, 37.09)| |Z|1671| |NPC|184698| |PRE|64957|
N Use the Zereth Mortis Portal |QID|64958.1| |N|Go through the Zereth Mortis Portal in {Ring of Transference} (49.59, 25.60)| |Z|1671|
N (npc:177486) |QID|64958.2| |N|Speak to (npc:177486) and choose 'Yes. I have returned with my allies from Oribos.' (34.88, 64.86)| |Z|1970| |NPC|177486|
T The Forces Gather |QID|64958| |N|(npc:177486) in {Haven} (34.88, 64.86)| |Z|1970| |NPC|177486|

-- //We Battle Onward
A Our Forward Scouts |QID|65768| |N|(npc:181183) in {Haven} (34.94, 64.80)| |Z|1970| |NPC|181183| |PRE|64958|
A Legendary Assistance |QID|66383| |N|(npc:181183) in {Haven} (34.94, 64.80)| |Z|1970| |NPC|181183| |O| |PRE|64958|
T Legendary Assistance |QID|66383| |N|(npc:182257) in {Haven} (34.76, 64.19)| |Z|1970| |NPC|182257| |O|
A Favor of the First Ones |QID|65771| |N|(npc:178015) in {Haven} (34.88, 64.96)| |Z|1970| |NPC|178015| |PRE|64958|
A Necessary Harvest |QID|65772| |N|(npc:178016) in {Haven} (34.82, 64.79)| |Z|1970| |NPC|178016| |PRE|64958|
N Terrace Formation Report |QID|65768.3| |N|Speak to (npc:185847) and choose option 'Bolvar requests your current report.' in {Terrace Formation} (38.99, 44.60)| |Z|1970| |NPC|185847|
N Provis Flora Report |QID|65768.2| |N|Speak to (npc:185845) and choose option 'Bolvar requests your current report.' in {Provis Flora} (40.49, 59.78)| |Z|1970| |NPC|185855|
N Genesis Fields Report |QID|65768.1| |N|Speak to (npc:185844) and choose option 'Bolvar requests your current report.' in {Genesis Fields} (41.19, 67.96)| |Z|1970| |NPC|185844|
N As You Go... |AYG|65771| |N|Click on 8 Enlightened Incense Burners for (qid:65771) and kill raptora, cervids and lupines and collect 15 (item:190975) for (qid:65772) in {The Great Veldt} (40.25, 60.33)| |Z|1970| |POI| |NPC|180052, 178098, 180051|
T Our Forward Scouts |QID|65768| |N|(npc:181183) in {Haven} (34.94, 64.80)| |Z|1970| |NPC|181183|
T Favor of the First Ones |QID|65771| |N|(npc:178015) in {Haven} (34.88, 64.96)| |Z|1970| |NPC|178015|
T Necessary Harvest |QID|65772| |N|(npc:178016) in {Haven} (34.82, 64.79)| |Z|1970| |NPC|178016|
A Knowing is Half the Battle |QID|64794| |N|(npc:181183) in {Haven} (34.96, 64.78)| |Z|1970| |NPC|181183| |PRE|65772|
R Travel to Provis Strata |TID|64794| |N|Travel to {Provis Strata} (48.60, 49.19)| |Z|1970| |REACH|48.60,49.19|
T Knowing is Half the Battle |QID|64794| |N|(npc:181180) in {Provis Strata} (48.60, 49.19)| |Z|1970| |NPC|181180|
A Scour the Sands |QID|64796| |N|(npc:181180) in {Provis Strata} (48.60, 49.19)| |Z|1970| |NPC|181180| |PRE|64794|
N Search First Area |QID|64796.1| |N|Search the First Area and avoid (npc:181797) in {Provis Strata} (48.46, 47.64)| |Z|1970|
N Search Second Area |QID|64796.2| |N|Search the Second Area and avoid (npc:181797) in {Provis Strata} (51.45, 48.58)| |Z|1970|
N Search Third Area |QID|64796.3| |N|Search the Third Area and avoid (npc:181797) in {Provis Strata} (50.67, 45.34)| |Z|1970|
N Search Fourth Area |QID|64796.4| |N|Search the Fourth Area and avoid (npc:181797) in {Provis Strata} (47.97, 44.76)| |Z|1970|
T Scour the Sands |QID|64796| |N|(npc:182046) in {Provis Strata} (47.99, 44.83)| |Z|1970| |NPC|182046|
A Harmony and Discord |QID|64797| |N|(npc:182046) in {Provis Strata} (47.99, 44.83)| |Z|1970| |NPC|182046| |PRE|64796|
T Harmony and Discord |QID|64797| |N|(npc:181193) in {Provis Terra} (41.98, 48.07)| |Z|1970| |NPC|181193|
A Battle for the Forge |QID|64814| |N|(npc:181193) in {Provis Terra} (41.98, 48.07)| |Z|1970| |NPC|181193| |PRE|64797|
A Together, We Ride |QID|64815| |N|(npc:181193) in {Provis Terra} (41.98, 48.07)| |Z|1970| |NPC|181193| |PRE|64797|
N As You Go... |AYG|64814| |N|Click on 5 Covenant forces (npc:181429) or (npc:182596) or (npc:182589) for (qid:64815) kill 8 (npc:182284) or (npc:182289) for (qid:64814) in {Provis Terra} (44.68, 43.62)| |Z|1970| |POI| |NPC|181429, 182596, 182589, 182289|
T Battle for the Forge |QID|64814| |N|(npc:181193) in {Provis Terra} (41.96, 48.08)| |Z|1970| |NPC|181193|
T Together, We Ride |QID|64815| |N|(npc:181193) in {Provis Terra} (41.96, 48.08)| |Z|1970| |NPC|181193|
A In Plain Sight |QID|64817| |N|(npc:181193) in {Provis Terra} (41.96, 48.08)| |Z|1970| |NPC|181193| |PRE|64814|
N Reach the Obelisk |QID|64817.1| |N|Reach the obelisk in {Provis Flora} (41.31, 51.96)| |Z|1970|
N Reclaim Provis Flora |QID|64817.2| |N|Kill Dreadlord mobs in {Provis Flora} (41.45, 53.32)| |Z|1970|
T In Plain Sight |QID|64817| |N|(npc:183615) in {Provis Flora} (41.50, 53.58)| |Z|1970| |NPC|183615|
A Reinforcements May Be Necessary |QID|64818| |N|(npc:183615) in {Provis Flora} (41.50, 53.58)| |Z|1970| |NPC|183615| |PRE|64817|
T Reinforcements May Be Necessary |QID|64818| |N|(npc:181183) in {Haven} (41.35, 58.70) (37.98, 62.02) (35.04, 64.71)| |Z|1970| |NPC|181183|
A This is Your Fault, Fix It |QID|64820| |N|(npc:177486) in {Haven} (34.87, 64.85)| |Z|1970| |NPC|177486| |PRE|64818|
A A Break in Communication |QID|64822| |N|(npc:181183) in {Haven} (35.01, 64.73)| |Z|1970| |NPC|181183| |PRE|64818|
A Nothing is True |QID|64821| |N|(npc:181183) in {Haven} (35.01, 64.73)| |Z|1970| |NPC|181183| |PRE|64818|
N (npc:183458) |QID|64822.2| |N|Speak to (npc:183458) and choose option 'Your Presence in requested immediately at Provis Terra' (37.96, 62.23) (41.13, 66.98) (42.31, 65.56)| |Z|1970| |NPC|183458|
N (npc:183465) |QID|64822.3| |N|Speak to (npc:183465) and choose option 'Your Presence in requested immediately at Provis Terra' (44.38, 63.64) (46.14, 62.16) (48.43, 61.57)| |Z|1970| |NPC|183465|
N (npc:183455) |QID|64822.1| |N|Speak to (npc:183455) and choose option 'Your Presence in requested immediately at Provis Terra' (47.16, 57.35)| |Z|1970| |NPC|183455|
N As You Go... |AYG|64820| |N|Use (item:187839) on (npc:181884) or (npc:181857) then kill (npc:181668) for (qid:64821) click on (npc:181339) for (qid:64820) in {Provis Flora} (42.21, 59.82)| |Z|1970| |POI| |NPC|181339, 181884, 181857, 181668| |U|187839|
T This is Your Fault, Fix It |QID|64820| |N|(npc:177486), in {Haven} (34.87, 64.85)| |Z|1970| |NPC|177486|
T Nothing is True |QID|64821| |N|(npc:181183), in {Haven} (35.03, 64.72)| |Z|1970| |NPC|181183|
T A Break in Communication |QID|64822| |N|(npc:181183), in {Haven} (35.03, 64.72)| |Z|1970| |NPC|181183|
A Doppelganger Duel |QID|64823| |N|(npc:181183) in {Haven} (35.03, 64.72)| |Z|1970| |NPC|181183| |PRE|64822|
C Culprit Confronted |QID|64823| |N|Meet and attack your doppelganger at the {Circle of Thought} (37.95, 62.13) (41.21, 66.96) (46.35, 63.72) (47.42, 62.61)| |Z|1970| |NPC|181203|
T Doppelganger Duel |QID|64823| |N|(npc:183724) in {Circle of Thought} (47.31, 63.56)| |Z|1970| |NPC|183724|
A Fighting for the Forge |QID|64824| |N|(npc:183724) in {Circle of Thought} (47.31, 63.56)| |Z|1970| |NPC|183724| |PRE|64823|
N (npc:183724) |QID|64824.1| |N|Speak to (npc:183724) and choose option 'I'm ready.' (47.29, 63.56)| |Z|1970| |NPC|183724|
N (npc:181413) |QID|64824.2| |N|Confront (npc:181413) in {Forge of Afterlives} (57.37, 53.66)| |Z|1970| |NPC|181413|
T Fighting for the Forge |QID|64824| |N|(npc:183717) in {Forge of Afterlives} (57.35, 53.52)| |Z|1970| |NPC|183717|
A Seeking Haven |QID|64825| |N|(npc:183717) in {Forge of Afterlives} (57.35, 53.52)| |Z|1970| |NPC|183717| |PRE|64824|
N Use Portal |QID|64825.1| |N|Click the Portal to Haven in {Forge of Afterlives} (57.12, 53.69)| |Z|1970|
T Seeking Haven |QID|64825| |N|(npc:181183) in {Haven} (35.02, 64.72)| |Z|1970| |NPC|181183|

-- //Forming an Understanding
A Danger Near and Far |QID|64218| |N|(npc:179611) in {Haven} (35.19, 65.02)| |Z|1970| |NPC|179611| |PRE|64825|
N Danger Near and Far |QID|64218.1| |N|Investigate Genesis Fields in {Cradle of Nascence} (37.97, 62.24) (42.66, 68.81) (40.52, 75.74)| |Z|1970|
T Danger Near and Far |QID|64218| |N|(npc:179611) in {Cradle of Nascence} (40.20, 76.57)| |Z|1970| |NPC|179611|
A A Mysterious Voice |QID|64219| |N|(npc:179611) in {Cradle of Nascence} (40.20, 76.57)| |Z|1970| |NPC|179611| |PRE|64218|
N Open Door |QID|64219.1| |N|Click the Cradel of Nascence Door in {Cradle of Nascence} (40.14, 76.88)| |Z|1970|
N (npc:179528) |QID|64219.2| |N|Defend (npc:179528) from waves of Devours then kill (npc:184272) in {Cradle of Nascence} (39.90, 77.74)| |Z|1970| |NPC|183177, 184272|
T A Mysterious Voice |QID|64219| |N|(npc:179611) in {Cradle of Nascence} (39.83, 77.98)| |Z|1970| |NPC|179611|
A Core of the Matter |QID|64223| |N|(npc:179611) in {Cradle of Nascence} (39.83, 77.98)| |Z|1970| |NPC|179611| |PRE|64219|
R Haven |TID|64223| |N|Travel to {Haven} (35.61, 65.04)| |Z|1970|
N (npc:177486) |QID|64223.1| |N|Speak to (npc:177486) and choose option 'Pelagos speaks the truth.' (34.88, 64.85)| |Z|1970| |NPC|177486|
T Core of the Matter |QID|64223| |N|(npc:179611) in {Haven} (34.88, 64.82)| |Z|1970| |NPC|179611|
A Seeking the Unknown |QID|64224| |N|(npc:179611) in {Haven} (34.88, 64.82)| |Z|1970| |NPC|179611| |PRE|64223|
N Seeking the Unknown |QID|64224.1| |N|Click on Undelivered Mail in {The Slumbering Vault} (33.30, 66.34)| |Z|1970|
T Seeking the Unknown |QID|64224| |N|(npc:179611) in {Haven} (34.88, 64.81)| |Z|1970| |NPC|179611|
A Finding Firim |QID|64225| |N|(npc:179611) in {Haven} (34.88, 64.81)| |Z|1970| |NPC|179611| |PRE|64224|
N (npc:180038) |QID|64225.1| |N|Find (npc:180038) in {The Great Veldt} (37.99, 62.19) (36.80, 55.40)| |Z|1970| |NPC|180038|
N (npc:180038) |QID|64225.2| |N|Click on the body of (npc:180038) in {The Great Veldt} (36.80, 55.35)| |Z|1970| |NPC|180038|
f Faith's Repose |TID|64225| |N|Click the Ancient Translocator for {Faith's Repose} (35.69, 44.48)| |Z|1970|
N Firim's Cave |QID|64225.3| |N|Find Firim's cave in {Faith's Repose} (37.30, 49.44) (35.83, 44.87)| |Z|1970|
T Finding Firim |QID|64225| |N|(npc:177958) in {Exile's Hollow} (34.52, 48.14)| |Z|1970| |NPC|177958|
A Unseen Agents |QID|64227| |N|(npc:177958) in {Exile's Hollow} (34.52, 48.14)| |Z|1970| |NPC|177958| |PRE|64225|
A Security Measures |QID|64226| |N|(npc:177958) in {Exile's Hollow} (34.52, 48.14)| |Z|1970| |NPC|177958| |PRE|64225|
N Sensory Synchronizer |QID|64226.1| |N|Click on the Sensory Synchronizer (34.36, 48.12)| |Z|1970|
N As You Go... |AYG|64226.2| |N|Click on Triggered traps for (qid:64226) amd kill (npc:180085), (npc:180088) and (npc:180089) for (qid:64227) in {The Great Veldt} (37.29, 46.11)| |Z|1970| |POI| |NPC|180085, 180088, 180089|
T Unseen Agents |QID|64227| |N|(npc:177958) in {Exile's Hollow} (34.05, 48.01)| |Z|1970| |NPC|177958|
T Security Measures |QID|64226| |N|(npc:177958) in {Exile's Hollow} (34.05, 48.01)| |Z|1970| |NPC|177958|
A Now You May Speak |QID|64228| |N|(npc:177958) in {Exile's Hollow} (34.05, 48.01)| |Z|1970| |NPC|177958| |PRE|64226|
N (npc:177958) |QID|64228.1| |N|Speak to (npc:177958) and choose option 'Tell Firim about the oracle.' (34.05, 48.01)| |Z|1970| |NPC|177958|
N Examine the Console |QID|64228.2| |N|Click on the console in {Exile's Hollow} (33.78, 49.42)| |Z|1970|
T Now You May Speak |QID|64228| |N|(npc:177958) in {Exile's Hollow} (34.03, 48.05)| |Z|1970| |NPC|177958|
A Surveying Cyphers |QID|65149| |N|(npc:177958) in {Exile's Hollow} (34.03, 48.05)| |Z|1970| |NPC|177958| |PRE|64228|
N West Concordance examined |QID|65149.1| |N|Click on the Tranquil Concordance in {The Great Veldt} (38.90, 48.58)| |Z|1970|
N Southwest Concordance examined |QID|65149.2| |N|Click on the Tranquil Concordance in {Felicitous Glade} (36.50, 53.44) (32.42, 53.57) (33.79, 55.43) (32.26, 62.88)| |Z|1970|
N South Concordance examined |QID|65149.3| |N|Click on the Tranquil Concordance in {Dimensional Falls} (35.16, 68.83) (40.52, 66.39) (47.24, 69.83) (49.33, 71.54)| |Z|1970|
N Location found |QID|65149.4| |N|Go inside the cave in {Choral Residium} (47.47, 69.85) (48.52, 63.88) (51.89, 62.81) (52.50, 63.03)| |Z|1970|
N (npc:179939) |QID|65149.5| |N|Kill (npc:179939) in {Choral Residium} (52.79, 63.70)| |Z|1970| |NPC|179939|
N Dormant Echoism attuned |QID|65149.6| |N|Click on the Resonant Echoism in {Choral Residium} (53.23, 63.87)| |Z|1970|
R Faith's Repose |TID|65149| |N|Travel to {Faith's Repose} (35.69, 44.48)| |Z|1970|
T Surveying Cyphers |QID|65149| |N|(npc:177958) in {Exile's Hollow} (34.05, 48.03)| |Z|1970| |NPC|177958|
A Cyphers of the First Ones |QID|64230| |N|(npc:177958) in {Exile's Hollow} (34.05, 48.03)| |Z|1970| |NPC|177958| |PRE|65149|
N Cypher Console examined |QID|64230.1| |N|Click the Cypher Console in {Exile's Hollow} (33.78, 49.42)| |Z|1970|
N Metrial Understanding unlocked |QID|64230.2| |N|Click on the Green square labeld 'Metrial Understanding' in {Exile's Hollow} (33.78, 49.42)| |Z|1970|
T Cyphers of the First Ones |QID|64230| |N|(npc:177958) in {Exile's Hollow} (34.01, 48.06)| |Z|1970| |NPC|177958|
A The Way Forward |QID|65305| |N|(npc:179611) in {Exile's Hollow} (33.97, 47.98)| |Z|1970| |NPC|179611| |PRE|64230|
R Haven |TID|65305| |N|Travel to {Haven} (35.61, 65.04)| |Z|1970|
T The Way Forward |QID|65305| |N|(npc:181183) in {Haven} (35.02, 64.72)| |Z|1970| |NPC|181183|

-- Chapters 4 & 5 for Patch 9.2
-- //Forging a New Path
A News from Oribos |QID|65335| |N|(npc:183677) in {Haven} (34.99, 64.67)| |Z|1970| |NPC|183677| |PRE|65305|
N (npc:183677) |QID|65335.1| |N|Speak to (npc:183677) and choose option 'Tell me what happened.' (34.99, 64.67)| |Z|1970| |NPC|183677|
T News from Oribos |QID|65335| |N|(npc:181183) in {Haven} (34.99, 64.67)| |Z|1970| |NPC|181183|
A Enlisting the Enlightened |QID|64830| |N|(npc:181183) in {Haven} (34.99, 64.67)| |Z|1970| |NPC|181183| |PRE|65335|
N (npc:178015) |QID|64830.1| |N|Speak to (npc:178015) and choose option 'We need your assistance.' (34.87, 64.95)| |Z|1970| |NPC|178015|
N (npc:177486) |QID|64830.2| |N|Speak to (npc:177486) and choose option 'We need your assistance.' (34.89, 64.85)| |Z|1970| |NPC|177486|
N (npc:178016) |QID|64830.3| |N|Speak to (npc:178016) and choose option 'We need your assistance.' (34.81, 64.80)| |Z|1970| |NPC|178016|
T Enlisting the Enlightened |QID|64830| |N|(npc:184532) in {Haven} (34.83, 64.79)| |Z|1970| |NPC|184532|
A Forging Unity from Diversity |QID|64833| |N|(npc:184532) in {Haven} (34.83, 64.79)| |Z|1970| |NPC|184532| |PRE|64830|
T Forging Unity from Diversity |QID|64833| |N|(npc:183139) in {Provis Esper} (56.24, 57.87)| |Z|1970| |NPC|183139|
A Remnants of the First Ones |QID|64831| |N|(npc:183139) in {Provis Fauna} (56.25, 57.95)| |Z|1970| |NPC|183139|
A Reclaiming Provis Esper |QID|64832| |N|(npc:183139) in {Provis Fauna} (56.25, 57.95)| |Z|1970| |NPC|183139|
N Remnants of the First Ones |QID|64831.1| |N|Kill (npc:183229) and loot (item:187732) (53.20, 59.59)<br/><b>Click (npc:183185) and loot (item:187731) (54.91, 49.37)<br/><b>Click Piled Rubble and click Conduction Remnant in {Provis Esper} (52.76, 51.87)| |Z|1970| |POI| |NPC|183229, 183185|
N (npc:184185) |QID|64832.1| |N|Kill 2 (npc:184185) in {Provis Esper} (55.41, 51.34)| |Z|1970| |POI| |NPC|184185|
N (npc:184198) |QID|64832.2| |N|Kill 5 (npc:184198) in {Provis Esper} (55.41, 51.34)| |Z|1970| |POI| |NPC|184198|
N (npc:184588) |QID|64832.3| |N|Kill 20 (npc:184588) in {Provis Esper} (55.41, 51.34)| |Z|1970| |POI| |NPC|184588|
T Remnants of the First Ones |QID|64831| |N|(npc:183168) in {Provis Esper} (52.72, 51.78)| |Z|1970| |NPC|183168| |PPOS|
T Reclaiming Provis Esper |QID|64832| |N|(npc:183168) in {Provis Esper} (52.99, 58.68)| |Z|1970| |NPC|183168| |PPOS|
A The Pilgrim's Journey |QID|64837| |N|(npc:183168) in {Provis Esper} (52.99, 58.68)| |Z|1970| |NPC|183168| |PPOS| |PRE|64831|
T The Pilgrim's Journey |QID|64837| |N|(npc:183251) in {Pilgrim's Grace} (61.30, 51.40)| |Z|1970| |NPC|183251|
A Glow and Behold |QID|64834| |N|(npc:183251) in {Pilgrim's Grace} (61.30, 51.40)| |Z|1970| |NPC|183251| |PRE|64837|
f Pilgrim's Grace |TID|64834| |N|Click the Ancient Translocator for {Pilgrim's Grace} (61.58, 50.28)| |Z|1970|
N Find Progenitor Fragment |QID|64834.1| |N|Find Progenitor Fragment attractant. (64.66, 53.56)| |Z|1970|
N Use Ancient Translocator |QID|64834.2| |N|Click on the Ancient Translocator (64.81, 53.56)| |Z|1970|
N Retrieve Conduction Remnant |QID|64834.3| |N|Click on one of the Conduction Remnant's (64.74, 53.56)| |Z|1970|
T Glow and Behold |QID|64834| |N|(npc:183252) in {Pilgrim's Grace} (64.73, 53.73)| |Z|1970| |NPC|183252|
A Where There's a Pilgrim, There's a Way |QID|64838| |N|(npc:183252) in {Pilgrim's Grace} (64.73, 53.73)| |Z|1970| |NPC|183252| |PRE|64834|
N (npc:181179) |QID|64838.1| |N|Speak to (npc:181179) and choose option 'I need to restore this artifact.' (61.27, 51.52)| |Z|1970| |NPC|181179|
N (npc:183298) |QID|64838.2| |N|Speak to (npc:183298) and choose option 'I need to restore this artifact.' (61.09, 49.19)| |Z|1970| |NPC|183298|
N (npc:181084) |QID|64838.3| |N|Speak to (npc:181084) and choose option 'I need to restore this artifact.' (61.48, 49.22)| |Z|1970| |NPC|181084|
T Where There's a Pilgrim, There's a Way |QID|64838| |N|(npc:183530) in {Pilgrim's Grace} (61.06, 50.65)| |Z|1970| |NPC|183530|
A In the Weeds |QID|64969| |N|(npc:183530) in {Pilgrim's Grace} (61.06, 50.65)| |Z|1970| |NPC|183530| |PRE|64838|
R Haven |TID|64969| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
T In the Weeds |QID|64969| |N|(npc:183338) in {Genisis Fields} (37.95, 62.16) (44.23, 70.31) (47.12, 75.48) (48.09, 75.14)| |Z|1970| |NPC|183338|
A Nip It in the Bud |QID|64836| |N|(npc:183338) in {Genesis Fields} (48.09, 75.14)| |Z|1970| |NPC|183338| |PRE|64969|
A Root of the Problem |QID|64839| |N|(npc:181771) in {Genesis Fields} (48.09, 75.14)| |Z|1970| |NPC|181771| |PRE|64969|
A Pluck from the Vines |QID|64835| |N|(npc:181771) in {Genesis Fields} (48.09, 75.14)| |Z|1970| |NPC|181771| |PRE|64969|
N Open the Catalyst Wards door |QID|64839.1| |N|Click on Bloomthron Barrier in {Genisis Fields} (49.45, 77.75) (49.60, 77.05)| |Z|1970|
N Missing Pilgrims rescued |QID|64835.2| |N|Click on 5 (npc:181583) in {Catalyst Wards} (70.31, 49.42)| |Z|2066| |NPC|181583|
N (item:188276) |QID|64839.1| |N|Kill (npc:182213) or (npc:182217) or (npc:181958) for 65 (item:188276) in {Genisis Fields} (48.06, 79.12)| |Z|1970| |NPC|182213, 182217, 181958| |L|188276 65|
N (npc:181652) |QID|64836.2| |N|Kill (npc:181652) in {Catalyst Wards} (57.75, 80.79)| |Z|2066| |NPC|181652|
T Pluck from the Vines |QID|64835| |N|(npc:184323) in {Catalyst Gardens} (47.64, 79.86)| |Z|1970| |NPC|184323|
T Root of the Problem |QID|64839| |N|(npc:184323) in {Catalyst Gardens} (47.64, 79.86)| |Z|1970| |NPC|184323|
T Nip It in the Bud |QID|64836| |N|(npc:183359) in {Catalyst Gardens} (47.62, 80.00)| |Z|1970| |NPC|183359|
A Herbal Remedies |QID|65331| |N|(npc:184323) in {Catalyst Gardens} (47.62, 79.89)| |Z|1970| |NPC|184323| |PRE|64835|
A Unchecked Growth |QID|64840| |N|(npc:184323) in {Catalyst Gardens} (47.62, 79.89)| |Z|1970| |NPC|184323| |PRE|64839|
A Take Charge |QID|64841| |N|(npc:181814) in {Catalyst Gardens} (47.57, 80.18)| |Z|1970| |NPC|181814| |PRE|64836|
N Herbal Remedies |QID|65331.1| |N|Use (item:189433) on 30 Lashers in {Catalyst Gardens} (44.67, 86.33)| |Z|1970| |POI| |NPC|182323| |U|189433|
N Herbal Remedies |QID|65331.2| |N|Kill 6 (npc:182322) in {Catalyst Gardens} (43.89, 85.84)| |Z|1970| |POI| |NPC|182322|
N (item:187835) |QID|64840.1| |N|Collect 12 (item:187835) from Overloaded Protector's in {Catalyst Gardens} (45.78, 95.15)| |Z|1970| |L|187835 12|
N West Console discharged |QID|64841.1| |N|Click on Catalyst Barrier Console in {Catalyst Gardens} (44.21, 88.31)| |Z|1970|
N East Console discharged |QID|64841.2| |N|Click on Catalyst Barrier Console in {Catalyst Gardens} (51.65, 91.00)| |Z|1970|
T Herbal Remedies |QID|65331| |N|(npc:184323) in {Catalyst Gardens} (47.62, 79.87)| |Z|1970| |NPC|184323|
T Unchecked Growth |QID|64840| |N|(npc:184323) in {Catalyst Gardens} (47.62, 79.87)| |Z|1970| |NPC|184323|
T Take Charge |QID|64841| |N|(npc:181814) in {Catalyst Gardens} (47.56, 80.28)| |Z|1970| |NPC|181814|
A Flora Frenzy |QID|64842| |N|(npc:184442) in {Catalyst Gardens} (47.65, 79.87)| |Z|1970| |NPC|184442| |PRE|64841|
N (npc:184442) |QID|64842.1| |N|Speak to (npc:184442) and choose option 'Bottoms up.' in {Catalyst Gardens} (47.65, 79.87)| |Z|1970| |NPC|184442|
N Crush the Automa |QID|64842.2| |N|Use the (spell:364272), (spell:364291), (spell:360049) botton on screen on the mobs in the area until the progress bar reaches 100% in {Catalyst Gardens} (45.14, 91.31)| |Z|1970|
T Flora Frenzy |QID|64842| |N|(npc:184442) in {Catalyst Gardens} (47.60, 79.88)| |Z|1970| |NPC|184442|
A Key Crafting |QID|64843| |N|(npc:181814) in {Catalyst Gardens} (47.60, 80.26)| |Z|1970| |NPC|181814| |PRE|64842|
N Reach the Creation Catalyst |QID|64843.1| |N|Jump on (npc:181969) and reach the Creation Catalyst in {Catalyst Gardens} (47.44, 87.24)| |Z|1970| |V| |NPC|181969|
N Creation Catalyst Console activated |QID|64843.2| |N|Click on Creation Catalyst Console in {Catalyst Gardens} (47.44, 88.57)| |Z|1970|
N Key of Afterlives restored |QID|64843.3| |N|Match the symbols above the Console to the platforms on the ground until it completes (47.26, 88.96)<br/><b>Speak to (npc:184453) if you fail.| |Z|1970|
N Key Fragments retrieved |QID|64843.4| |N|Click on one of the Conduction Remnant in {Catalyst Gardens} (47.44, 88.45)| |Z|1970|
T Key Crafting |QID|64843| |N|(npc:184153) in {Catalyst Gardens} (47.38, 88.45)| |Z|1970| |NPC|184153|
A The Pilgrimage Ends |QID|64844| |N|(npc:184153) in {Catalyst Gardens} (47.38, 88.45)| |Z|1970| |NPC|184153| |PRE|64843|
R Haven |TID|64844| |N|Travel to {Haven} (47.49, 76.52) (43.35, 69.27) (38.02, 62.27) (35.63, 64.24)| |Z|1970| |REACH|35.63,64.24|
R Pilgrim's Grace |TID|64844| |N|Travel to {Pilgrim's Grace} (61.52, 50.4)| |Z|1970|
N Return to the overlook |QID|64844.1| |N|Return to the overlook (62.96, 52.15) (63.48, 53.53) (64.60, 53.52)| |Z|1970|
N Listen to the plan |QID|64844.2| |N|Speak to (npc:181948) and choose option 'What's next?' (64.64, 53.41)| |Z|1970| |NPC|181948|
T The Pilgrimage Ends |QID|64844| |N|(npc:181948) in {The Overlook} (64.64, 53.41)| |Z|1970| |NPC|181948|

-- //Crown of Wills
R Haven |TID|64799| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
A The Broken Crown |QID|64799| |N|(npc:181183) in {Haven} (35.03, 64.71)| |Z|1970| |NPC|181183| |PRE|64844|
N (npc:177456) |QID|64799.1| |N|Speak to (npc:177456) and choose option 'Tell me what happened.' (33.32, 68.99)| |Z|1970|
T The Broken Crown |QID|64799| |N|(npc:181229) in {Geometric Cavern} (33.26, 68.96)| |Z|1970| |NPC|181229|
A Our Last Option |QID|64800| |N|(npc:181229) in {Geometric Cavern} (33.26, 68.96)| |Z|1970| |NPC|181229| |PRE|64799|
N Listen to the Plan |QID|64800.1| |N|Listen to the Plan. (33.30, 68.98)| |Z|1970|
T Our Last Option |QID|64800| |N|(npc:181229) in {Geometric Cavern} (33.22, 68.94)| |Z|1970| |NPC|181229|
A Hello, Darkness |QID|64802| |N|(npc:181245) in {Geometric Cavern} (33.28, 68.88)| |Z|1970| |NPC|181245| |PRE|64800|
N Wield the Broken Helm |QID|64802.1| |N|Click the Broken Helm (33.19, 68.85)| |Z|1970|
N (npc:184015) |QID|64802.2| |N|Use the Broken Helm on (npc:184015) by using the (spell:359515) button on the screen (33.40, 69.40)| |Z|1970| |NPC|184015|
T Hello, Darkness |QID|64802| |N|(npc:181245) in {Geometric Cavern} (33.33, 68.90)| |Z|1970| |NPC|181245|
A Testing One Two |QID|64803| |N|(npc:181245) in {Geometric Cavern} (33.33, 68.90)| |Z|1970| |NPC|181245| |PRE|64802|
A Elder Eru |QID|64801| |N|(npc:181229) in {Geometric Cavern} (33.24, 68.92)| |Z|1970| |NPC|181229| |PRE|64802|
N Helm Tested on Native Poultrids |QID|64803.1| |N|Use the Helm on (npc:184016) by using the (spell:359526) button on the screen (45.51, 71.44)| |Z|1970| |POI| |NPC|184016|
N Helm Tested on Cervids |QID|64803.2| |N|Use the Helm on (npc:178098) or (npc:178099) by using the (spell:359526) button on the screen (39.95, 64.65)| |Z|1970| |POI| |NPC|178098, 178099|
N Helm Tested on Outmoded Servitor |QID|64803.3| |N|Use the Helm on (npc:178772) by using the (spell:359526) button on the screen (56.38, 82.48)| |Z|1970| |POI| |NPC|178772|
T Testing One Two |QID|64803| |N|(npc:181266) in {Lexical Glade} (56.17, 83.28)| |Z|1970| |NPC|181266|
T Elder Eru |QID|64801| |N|(npc:181266) in {Lexical Glade} (56.17, 83.28)| |Z|1970| |NPC|181266|
A Cryptic Catalogue |QID|64804| |N|(npc:181266) in {Lexical Glade} (56.17, 83.28)| |Z|1970| |NPC|181266| |PRE|64803|
N First Phrase memorized |QID|64804.1| |N|Memorize the First Phrase in {Lexical Glade} (57.32, 84.06)| |Z|1970| |NPC|181271|
N Second Phrase memorized |QID|64804.2| |N|Memorize the Second Phrase in {Lexical Glade} (58.74, 84.50)| |Z|1970| |NPC|181268|
N Third Phrase memorized |QID|64804.3| |N|Memorize the Third Phrase in {Lexical Glade} (58.46, 81.76)| |Z|1970| |NPC|181270|
T Cryptic Catalogue |QID|64804| |N|(npc:184182) in {Lexical Grotto} (59.20, 78.88)| |Z|1970| |NPC|184182|
A The Not-Scientific Method |QID|64805| |N|(npc:184182) in {Lexical Grotto} (59.20, 78.88)| |Z|1970| |NPC|184182| |PRE|64804|
N Upload Phrases to Librarian |QID|64805.1| |N|Upload Phrases to (npc:181324) in {Lexical Grotto} (58.60, 78.62)| |Z|1970| |NPC|181324|
N Use Broken Helm on Librarian |QID|64805.2| |N|Use the Broken Helm on (npc:181324) by using the (spell:359593) button on the screen in {Lexical Grotto} (58.60, 78.62)| |Z|1970| |NPC|181324|
N Observe Results |QID|64805.3| |N|Observe the results with (npc:181324) in {Lexical Grotto} (58.69, 78.66)| |Z|1970| |NPC|181324|
N (npc:181324) |QID|64805.4| |N|Kill (npc:181324) in {Lexical Grotto} (58.69, 78.66)| |Z|1970| |NPC|181324|
T The Not-Scientific Method |QID|64805| |N|(npc:184182) in {Lexical Grotto} (59.17, 78.84)| |Z|1970| |NPC|184182|
A Two Paths to Tread |QID|64853| |N|(npc:184182) in {Lexical Grotto} (59.17, 78.84)| |Z|1970| |NPC|184182| |PRE|64805|
T Two Paths to Tread |QID|64853| |N|(npc:181245) in {Geometric Cavern} (33.32, 68.86)| |Z|1970| |NPC|181245|
A One Half of the Equation |QID|64809| |N|(npc:181229) in {Geometric Cavern} (33.21, 68.95)| |Z|1970| |NPC|181229| |PRE|64853|
T One Half of the Equation |QID|64809| |N|(npc:181367) in {Deserted Overlook} (57.20, 31.12)| |Z|1970| |NPC|181367|
A Oppress and Destroy |QID|64810| |N|(npc:181367) in {Deserted Overlook} (57.20, 31.12)| |Z|1970| |NPC|181367| |PRE|64809|
A Aggressive Excavation |QID|64811| |N|(npc:181372) in {Deserted Overlook} (57.20, 31.12)| |Z|1970| |NPC|181372| |PRE|64809|
N Invading Mawsworn Slain |QID|64810.1| |N|Kill Invading Mawsworn; use (spell:359690) button to help; fill progress bar to (100%) (58.49, 33.02)| |Z|1970| |NPC|181407, 181406, 181408|
T Oppress and Destroy |QID|64810| |N|(npc:184079) in {Deserted Overlook} (57.23, 31.12)| |Z|1970| |PPOS| |NPC|184079|
N Blocked Door Destroyed |QID|64811.1| |N|Click on the Blocked Door (62.72, 22.48)| |Z|1970|
N Inscrutable Phrases infused |QID|64811.2| |N|Click on the Inscrutable Phrase in the area (66.07, 25.77)<br/><b>Tick this step| |Z|1970| |POI| |NPC|181421, 181419, 181420|
T Aggressive Excavation |QID|64811| |N|(npc:181367) in {Deserted Overlook} (57.14, 31.20)| |Z|1970| |NPC|181367|
A Where the Memory Resides |QID|64806| |N|(npc:181367) in {Deserted Overlook} (57.14, 31.20)| |Z|1970| |NPC|181367| |PRE|64811|
R Oribos |TID|64806| |N|Travel to {Oribos} (38.89, 69.98)| |Z|1670|
R Bastion |TID|64806| |N|Travel to {Aspirant's Rest} (48.12, 74.19)| |Z|1533|
T Where the Memory Resides |QID|64806| |N|(npc:181280) in {Chamber of First Reflection} (55.93, 86.45) (57.64, 87.06) (59.22, 88.18)| |Z|1533| |NPC|181280|
A What We Wish to Forget |QID|64807| |N|(npc:181280) in {Chamber of First Reflection} (59.22, 88.18)| |Z|1533| |NPC|181280| |PRE|64806|
N Activate First Shard |QID|64807.1| |N|Click on the Shard of Domination (58.92, 88.13)| |Z|1533|
N (npc:181365) |QID|64807.2| |N|Kill (npc:181365) (58.84, 88.21)| |Z|1533| |NPC|181365|
N Activate Second Shard |QID|64807.3| |N|Click on the Shard of Domination (58.87, 88.16)| |Z|1533|
N (npc:182745) |QID|64807.4| |N|Kill (npc:182745) (58.90, 87.98)| |Z|1533| |NPC|182745|
T What We Wish to Forget |QID|64807| |N|(npc:181280) in {Chamber of First Reflection} (59.21, 88.18)| |Z|1533| |NPC|181280|
A What Makes Us Strong |QID|64808| |N|(npc:181284) in {Chamber of First Reflection} (59.08, 88.45)| |Z|1533| |NPC|181284| |PRE|64807|
N Activate Third Shard |QID|64808.1| |N|Click on the Shard of Domination (58.93, 88.08)| |Z|1533|
N Attempt to Collect Will |QID|64808.2| |N|Assist with the ritual and infuse the Shards of Domination (58.99, 87.82)| |Z|1533|
N (npc:181286) |QID|64808.3| |N|Speak to (npc:181286) and choose option 'Show us.' (58.95, 88.62)| |Z|1533| |NPC|181286|
T What Makes Us Strong |QID|64808| |N|(npc:181284) in {Chamber of First Reflection} (59.16, 88.29)| |Z|1533| |NPC|181284|
A What We Overcome |QID|64798| |N|(npc:181284) in {Chamber of First Reflection} (59.16, 88.29)| |Z|1533| |NPC|181284| |PRE|64808|
N Activate Fourth Shard |QID|64798.1| |N|Click on the Shard of Domination (58.93, 88.11)| |Z|1533|
N (npc:182879) |QID|64798.2| |N|Kill (npc:182879) in {Chamber of First Reflection} (58.87, 88.02)| |Z|1533| |NPC|182879|
T What We Overcome |QID|64798| |N|(npc:181280) in {Chamber of First Reflection} (59.21, 88.16)| |Z|1533| |NPC|181280|
A Forge of Domination |QID|64812| |N|(npc:181280) in {Chamber of First Reflection} (59.21, 88.16)| |Z|1533| |NPC|181280| |PRE|64798|
N Use Portal |TID|64812| |N|Use the Portal to Torghast in {Chamber of the First Reflection} (58.38, 88.06)| |Z|1533| |F|1911|
R Runecarver's Oubliette |TID|64812| |N|Travel to {Runecarver's Oubliette} (50.31, 67.27)| |Z|1912| |REACH|50.31,67.27|
T Forge of Domination |QID|64812| |N|(npc:181384) in {The Runecarver's Oubliette} (48.93, 57.60)| |Z|1912| |NPC|181384|
A The Crown of Wills |QID|64813| |N|(npc:181384) in {The Runecarver's Oubliette} (48.93, 57.60)| |Z|1912| |NPC|181384| |PRE|64812|
N Place Shards |QID|64813.1| |N|Take Shard of Domination and place in front of (npc:181384) (49.29, 62.47)| |Z|1912|
N Place Broken Helm half |QID|64813.2| |N|Click on Shard of Domination (50.31, 64.07)| |Z|1912|
N Use the Crown of Wills |QID|64813.3| |N|Click on the Crown of Wills (50.31, 64.07)| |Z|1912|
T The Crown of Wills |QID|64813| |N|(npc:181379) in {The Runecarver's Oubliette} (49.78, 68.00)| |Z|1912| |NPC|181379|
A Reality's Doorstep |QID|64816| |N|(npc:181379) in {The Runecarver's Oubliette} (49.78, 68.00)| |Z|1912| |NPC|181379| |PRE|64813|

-- Chapter 6 for Patch 9.2
-- //A Means to an End
R Haven |TID|64816| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
T Reality's Doorstep |QID|64816| |N|(npc:181183) in {Haven} (35.01, 64.71)| |Z|1970| |NPC|181183|
A Something Wonderful |QID|64875| |N|(npc:182556) in {Haven} (35.44, 65.06)| |Z|1970| |NPC|182556| |PRE|64816|
R Faith's Repose |TID|64875| |N|Travel to {Faith's Repose} (35.71, 44.62)| |Z|1970|
N Something Wonderful |QID|64875.1| |N|Speak to (npc:177958) and choose option 'What is happening?' (34.20, 48.29)| |Z|1970| |NPC|177958|
T Something Wonderful |QID|64875| |N|(npc:177958) in {Exile's Hollow} (34.20, 48.29)| |Z|1970| |NPC|177958|
A Music of the Spheres |QID|64876| |N|(npc:177958) in {Exile's Hollow} (34.20, 48.29)| |Z|1970| |NPC|177958| |PRE|64875|
N Music of the Spheres |QID|64876.1| |N|Click on Fractal Cypher A, B & C (33.38, 48.43) (34.27, 48.10) (33.99, 47.67)| |Z|1970|
T Music of the Spheres |QID|64876| |N|(npc:177958) in {Exile's Hollow} (34.20, 48.33)| |Z|1970| |NPC|177958|
A What A Long Strange Trip |QID|64878| |N|(npc:181706) in {Exile's Hollow} (34.12, 47.38)| |Z|1970| |NPC|181706| |PRE|64876|
N Follow Pocopoc |QID|64878.1| |N|Follow (npc:181706) and Speak to Pocopoc and choose option 'What are you doing?' (41.56, 43.00)| |Z|1970| |NPC|181706|
N Follow Pocopoc |QID|64878.2| |N|Follow (npc:181706) and Speak to Pocopoc and choose option 'Why are the devourers attacking us?' (42.82, 39.74)| |Z|1970| |NPC|181706|
N Follow Pocopoc |QID|64878.3| ||N|Follow (npc:181706) and Speak to Pocopoc and choose option 'Where are you going?' (42.67, 32.71)| |Z|1970| |NPC|181706|
N Follow Pocopoc |QID|64878.4| |N|Follow (npc:181706) and Speak to Pocopoc and choose option 'What is the vessel?' (44.66, 30.77)| |Z|1970| |NPC|181706|
N What A Long Strange Trip |QID|64878.5| |N|Vision location found (47.20, 29.37)| |Z|1970| |NPC|181706|
T What A Long Strange Trip |QID|64878| |N|(npc:181706) in {Resonant Peaks} (47.16, 29.39)| |Z|1970| |NPC|181706|
A Borrowed Power |QID|64888| |N|(npc:181706) in {Resonant Peaks} (47.16, 29.39)| |Z|1970| |NPC|181706| |PRE|64878|
A Pop Goes the Devourer! |QID|65245| |N|(npc:181706) in {Resonant Peaks} (47.16, 29.39)| |Z|1970| |NPC|181706| |PRE|64878|
N Pop Goes the Devourer! |QID|65245.1| |N|Kill 12 Lured mobs (48.20, 28.60)| |Z|1970| |NPC|181879, 183566, 183580, 183767|
N Empower Pocopoc |QID|64888.1| |N|Kill Lured mobs or run over orbs to reclaim Cosmic Energy (48.04, 28.43)| |Z|1970| |NPC|181879, 183566, 183580, 183767|
T Borrowed Power |QID|64888| |N|(npc:183701) in {Resonant Peaks} (47.32, 29.38)| |Z|1970| |PPOS| |NPC|183701|
T Pop Goes the Devourer! |QID|65245| |N|(npc:183701) in {Resonant Peaks} (47.32, 29.38)| |Z|1970| |PPOS| |NPC|183701|
A Match Made in Zereth Mortis |QID|64889| |N|(npc:183701) in {Resonant Peaks} (47.32, 29.38)| |Z|1970| |NPC|183701| |PPOS| |PRE|64888|
R Gravid Repose |TID|64889| |N|Travel to {Gravid Repose} (48.85, 28.78) (50.58, 32.00)| |Z|1970| |REACH|50.58,32.00|
N Interior Locus Arrangement |QID|64889.1| |N|Click on the Interior Locus Arrangement (67.95, 52.12)| |Z|2029|
N Locus Shift Used |QID|64889.2||N|Click on the Locus Shift and travel to {Interior Locus} (60.28, 41.23)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.| |Z|2029|
N Primus Locus Arrangement |QID|64889.3| |N|Click on the Primus Locus Arrangement (43.97, 30.23)| |Z|2029|
N Ascend to Primus Locus |QID|64889.4| |N|Click on the Locus Shift and travel to {Primus Locus} (40.87, 34.77)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.| |Z|2029|
A Between A Rock & A Rock |QID|64935| |N|(npc:375517) in {Resonant Peaks} (48.46, 27.10)| |Z|1970| |NPC|375517| |PRE|65245|
N Locate (npc:183783) |QID|64935.1| |N|Find (npc:183783) (48.37, 26.84)| |Z|1970| |NPC|183783|
N Controll (npc:183783) |QID|64935.2| |N|Click on (npc:183783) (48.39, 26.80)| |Z|1970| |NPC|183783|
N Search Pile |QID|64935.3| |N|Use button #3 (spell:363294) ability on the pile (48.40, 27.15)| |Z|1970|
N Secundus Locus Arrangement |QID|64935.4| |N|Utilise button #1 (spell:363173) on mobs and button #2 (spell:363586) to reduce damage taken (49.43, 25.47)<br/><b>Pile 1 (49.46, 25.43, 1970, "Pile 1")<br/><b>Pile 2 (48.96,29.30, 1970, "Pile 2")<br/><b>Pile 3 (49.76, 28.57, 1970, "Pile 3")<br/><b>Pile 4 (49.46, 25.48, 1970, "Pile 4")| |Z|1970|
N Between A Rock & A Rock |QID|64935.5| |N|Glowing Rubble Pile searched (49.36, 26.80)| |Z|1970|
N Glowing Rubble Pile |QID|64889.5| |N|Search pile to reveal Secundus Locus Arrangement (49.43, 26.81)| |Z|1970|
T Between A Rock & A Rock |QID|64935| |N|(npc:183701) in {Resonant Peaks} (49.43, 26.81)| |Z|1970| |NPC|183701|
N Ascend to Secundus Locus |QID|64889.6| |N|Click on Secundus Locus Arrangement (49.44, 26.79)<br/><b>Click Locus Shift and travel to {Secundus Locus} (48.46, 26.45)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.| |Z|1970|
N Tertius Locus Arrangement |QID|64889.7| |N|Click on Tertius Locus Arrangement (48.36, 29.78)| |Z|1970|
N Ascend to Tertius Locus |QID|64889.8| |N|Click on Locus Shift and travel to {Tertius Locus} (47.96, 28.00)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.| |Z|1970|
N Quartus Locus Arrangement |QID|64889.9| |N|Quartus Locus Arrangement found (50.91, 26.92)| |Z|1970|
N Ascend to Quartus Locus |QID|64889.10| |N|Click on Locus Shift and travel to {Quartus Locus} (51.87, 27.06)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.|Z|1970|
N Quintus Locus Arrangement |QID|64889.11| |N|Click on Quintus Locus Arrangement (48.51, 30.35)| |Z|1970|
N Ascend to Quintus Locus |QID|64889.12| |N|Click on Locus Shift and travel to {Quintus Locus} (48.48, 29.72)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.| |Z|1970|
N Ultimus Locus Arrangement |QID|64889.13| |N|Click on Ultimus Locus Arrangement (49.93, 32.39)| |Z|1970|
N Ascend to Ultimus Locus |QID|64889.14| |N|Click on Lotus Shift and travel to {Ultimus Locus} (50.65, 32.52)<br/><b>Requires 30 Cosmic Energy; Kill Lured mobs and absorb Cosmic Energy orbs.| |Z|1970|
T Match Made in Zereth Mortis |QID|64889| |N|(npc:183701) in {Resonant Peaks} (49.03, 32.73)| |Z|1970| |PPOS| |NPC|183701|
A Searching High and Low |QID|64936| |N|(npc:183701) in {Resonant Peaks} (49.03, 32.73)| |Z|1970| |NPC|183701| |PRE|64889|
N Ingress Phrases Found |QID|64936.1| |N|Pick up 3 Ingress Phrase<br/><b>Ingress Phrase #1 (49.10, 32.44, 1970, "Ingress Phrase #1")<br/><b>Ingress Phrase #2 (47.23, 33.06, 1970, "Ingress Phrase #2")<br/><b>Ingress Phrase #3 (48.58, 34.13, 1970, "Ingress Phrase #3")| |Z|1970|
N Ingress Phrases Placed |QID|64936.2| |N|Place the 3 Ingress Phrases on the door (48.03, 33.60)| |Z|1970|
N Vessel Chamber Entered |QID|64936.3| |N|You will teleport inside (48.10, 33.49)| |Z|1970|
N Vessel acquired |QID|64936.4| |N|Click on (npc:181949) (47.89, 33.96)| |Z|1970| |NPC|181949|
T Searching High and Low |QID|64936| |N|(npc:184949) in {Resonant Peaks} (47.89, 33.96)| |Z|1970| |NPC|184949|
A You Light Up My Life |QID|64937| |N|(npc:184949) in {Resonant Peaks} (47.89, 33.96)| |Z|1970| |NPC|184949| |PRE|64936|
N Activate Pocopoc's Defenses |QID|64937.1| |N|Click on Pocopoc, Doesn't really matter which one you click on. (47.94, 33.23)| |Z|1970|
N Defend Vessel |QID|64937.2| |N|Defend the vessel by using the target and abilities on attacking mobs (47.94, 33.14)| |Z|1970|
N Deliver Cosmic Orbs to Pocopoc |QID|64937.3| |N|Run over Cosmic Orbs created by Graktho the Automa-eater and run up to Pokopoc, repeat, until his Cosmic Energy bar is 100% (49.05, 32.17)| |Z|1970|
T You Light Up My Life |QID|64937| |N|(npc:181706) in {Exile's Hollow} (34.08, 48.13)| |Z|1970| |NPC|181706|
A Oracle, Heal Thyself |QID|65237| |N|(npc:181706) in {Exile's Hollow} (34.08, 48.13)| |Z|1970| |NPC|181706| |PRE|64937|
N Oracle, Heal Thyself |QID|65237.1| |N|Speak to (npc:181706) and choose option 'Transfer your energy into the oracle.' (34.19, 48.48)| |Z|1970| |NPC|181706|
T Oracle, Heal Thyself |QID|65237| |N|(npc:184938) in {Exile's Hollow} (34.12, 48.55)| |Z|1970| |NPC|184938|
A Arbiter in the Making |QID|65328| |N|(npc:181090) in {Exile's Hollow} (34.26, 48.57)| |Z|1970| |NPC|181090| |PRE|65237|
R Haven |TID|65328| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
N (npc:181183) |QID|65328.1| |N|Speak to (npc:181183) and choose option '<Tell Bolvar about Saezurah and her plans to forge a new arbiter.>' (35.03, 64.72)| |Z|1970|
T Arbiter in the Making |QID|65328| |N|(npc:181183) in {Haven} (35.03, 64.72)| |Z|1970| |NPC|181183|

-- Chapter 7 for Patch 9.2
-- //Starting Over
A A Monumental Discovery |QID|64879| |N|(npc:181183) in {Haven} (35.02, 64.73)| |Z|1970| |NPC|181183| |PRE|65328|
R Faith's Repose |TID|64879| |N|Travel to {Faith's Repose} (35.69, 44.48)| |Z|1970|
T A Monumental Discovery |QID|64879| |N|(npc:177958) in {Exile's Hollow} (34.21, 48.56)| |Z|1970| |NPC|177958|
A Restoration Project |QID|64723| |N|(npc:177958) in {Exile's Hollow} (34.21, 48.56)| |Z|1970| |NPC|177958| |PRE|64879|
N (npc:179528) |QID|64723.1| |N|Speak to (npc:179528) and choose option 'How do we help Zereth Mortis create a new Arbiter?' (34.12, 48.55)| |Z|1970| |NPC|179528|
N (npc:179528) |QID|64723.2| |N|Hear (npc:179528) out (34.12, 48.55)| |Z|1970| |NPC|179528|
T Restoration Project |QID|64723| |N|(npc:181545) in {Exile's Hollow} (33.87, 48.38)| |Z|1970| |NPC|181545|
A Help From Beyond |QID|64733| |N|(npc:181545) in {Exile's Hollow} (33.87, 48.38)| |Z|1970| |NPC|181545| |PRE|64723|
N (npc:177958) |QID|64733.1| |N|Speak to (npc:177958) and choose option 'Can we get additional aid from the Enlightened?' (34.21, 48.59)| |Z|1970| |NPC|177958|
N Awaken (npc:181513) |QID|64733.2| |N|Click on (npc:181513) in {Exile's Hollow} (34.61, 49.70)| |Z|1970| |NPC|181513|
R Haven |TID|64733| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
N (npc:181738) |QID|64733.3| |N|Speak to (npc:181738) and choose option 'I need your assistance.' (47.66, 80.65)| |Z|1970| |NPC|181738|
N (npc:181740) |QID|64733.4| |N|Speak to (npc:181740) and choose option 'Will you bring your forces to fight with us?' (47.72, 58.19)| |Z|1970||NPC|181740|
N (npc:171821) |QID|64733.5| |N|Speak to (npc:171821) and choose 'Will you bring your forces to fight with us?' (53.90, 48.44)| |Z|1970| |NPC|171821|
N Meet Assembled Forces |QID|64733.6| |N|Travel to {Deserted Overlook} (56.97, 32.11)| |Z|1970|
T Help From Beyond |QID|64733| |N|(npc:180914) in {Deserted Overlook} (56.68, 31.23)| |Z|1970| |NPC|180914|
A Keys To Victory |QID|64718| |N|(npc:180942) in {Deserted Overlook} (57.07, 31.14)| |Z|1970| |NPC|180942| |PRE|64733|
A A Matter Of Motivation |QID|64706| |N|(npc:180903) in {Deserted Overlook} (56.91, 31.26)| |Z|1970| |NPC|180903| |PRE|64733|
A Cleaving A Path |QID|64720| |N|(npc:180928) in {Deserted Overlook} (56.38, 31.23)| |Z|1970| |NPC|180928| |PRE|64733|
N Cleaving A Path |QID|64720.1| |N|Kill (npc:181626) in {Endless Sands} (58.83, 33.28)| |Z|1970| |NPC|181626|
N A Matter Of Motivation |QID|64706| |N|Use (item:188678) on 6 (npc:180898) in {Endless Sands} (61.12, 30.65)<br/><b>Bring them to this area (56.23, 29.85, 1970, "Deliver Automa")| |Z|1970| |NPC|180898| |U|188678|
N Keys To Victory |QID|64718| |N|Kill Mawsworn mobs to get (item:187809), use the keys on the cages in this area (61.12, 30.65)| |Z|1970| |POI| |NPC|181407, 181406|
N Cleaving A Path |QID|64720.2| |N|Kill (npc:181625) in {The Dread Portal} (58.34, 23.05)| |Z|1970| |NPC|181625|
T Keys To Victory |QID|64718| |N|(npc:180942) in {Deserted Overlook} (57.05, 31.09)| |Z|1970| |NPC|180942|
T A Matter Of Motivation |QID|64706| |N|(npc:180903) in {Endless Sands} (55.89, 29.83)| |Z|1970| |NPC|180903|
T Cleaving A Path |QID|64720| |N|(npc:180928) in {Endless Sands} (55.72, 29.92)| |Z|1970| |NPC|180928|
A Knocking On Death's Door |QID|64722| |N|(npc:180903) in {Endless Sands} (55.88, 29.85)| |Z|1970| |NPC|180903| |PRE|64720|
N Kbato Mounted |QID|64722.1| |N|Mount on (npc:181452) in {Deserted Overlook} (55.37, 30.34)| |Z|1970| |V| |NPC|181452|
N Defeat Mawsworn Forces |QID|64722.2| |N|Use Kbato's abilities on the Mawsworn forces until bar fills 100% (61.03, 25.39)| |Z|1970|
N Shadow Bulwark destroyed |QID|64722.3| |N|Destroy 2 (npc:181657) with (spell:361890) (65.41, 22.91)| |Z|1970| |NPC|181657|
T Knocking On Death's Door |QID|64722| |N|(npc:180965) in {Crypts of the Eternal} (35.99, 76.78)| |Z|2031| |NPC|180965|
A The Infinite Circle |QID|64727| |N|(npc:180942) in {Crypts of the Eternal} (36.53, 77.30)| |Z|2031| |NPC|180942| |PRE|64722|
N (npc:180942) |QID|64727.1| |N|Escort (npc:180942) to the center of the {Crypts of the Eternal} (47.65, 57.35)| |Z|2031| |NPC|180942|
T The Infinite Circle |QID|64727| |N|(npc:180942) in {Crypts of the Eternal} (52.94, 47.69)| |Z|2031| |NPC|180942|
A Unforgivable Intrusion |QID|64725| |N|(npc:180942) in {Crypts of the Eternal} (52.94, 47.69)| |Z|2031| |NPC|180942| |PRE|64727|
A The Order Of Things |QID|64726| |N|(npc:180942) in {Crypts of the Eternal} (52.94, 47.69)| |Z|2031| |NPC|180942| |PRE|64727|
N Eliminate 6 (npc:181690) |QID|64725.1| |N|Kill 6 (npc:181690) in {Crypts of the Eternal} (44.08, 42.96)| |Z|2031| |NPC|181690|
N Eliminate 3 (npc:181691) |QID|64725.2| |N|Kill 3 (npc:181691) in {Crypts of the Eternal} (58.23, 37.09)| |Z|2031| |NPC|181691|
N Seal the Breaches |QID|64726.1| |N|Push 6 Containment Sphere's<br/><b>First:- (31.07, 49.40, 2031, "Containment Sphere 1")<br/><b>Second:- (39.66, 15.56, 2031, "Containment Sphere 2")<br/><b>Third:- (47.75, 20.10, 2031, "Containment Sphere 3")<br/><b>Fourth:- (67.59, 28.26, 2031, "Containment Sphere 4")<br/><b>Fifth:- (63.61, 77.97, 2031, "Containment Sphere 5")<br/><b>Sixth:- (57.91, 86.83, 2031, "Containment Sphere 6")| |Z|2031|
T Unforgivable Intrusion |QID|64725| |N|(npc:180942) in {Crypts of the Eternal} (52.93, 47.56)| |Z|2031| |NPC|180942|
T The Order Of Things |QID|64726| |N|(npc:180942) in {Crypts of the Eternal} (52.93, 47.56)| |Z|2031| |NPC|180942|
A As Foretold |QID|64962| |N|(npc:180942) in {Crypts of the Eternal} (52.93, 47.56)| |Z|2031| |NPC|180942| |PRE|64726|
N (npc:180965) |QID|64962.1| |N|Speak to (npc:180965) and choose option 'The chamber is safe, we can proceed with the ritual.' (36.25, 76.78)| |Z|2031| |NPC|180965|
T As Foretold |QID|64962| |N|(npc:180942) in {Crypts of the Eternal} (52.86, 47.79)| |Z|2031| |NPC|180942|
A Acquaintances Forgotten |QID|64728| |N|(npc:180942) in {Crypts of the Eternal} (52.86, 47.79)| |Z|2031| |NPC|180942| |PRE|64962|
N (npc:180942) |QID|64728.1| |N|Tell (npc:180942) to begin the ritual in {Crypts of the Eternal} (52.87, 47.71)| |Z|2031| |NPC|180942|
N Activate Vessel |QID|64728.2| |N|Activate the (npc:182041) in {Crypts of the Eternal} (51.23, 48.81)| |Z|2031| |NPC|182041|
N Stabilize Vessel |QID|64728.3| |N|Join in stabilizing the (npc:182041) in {Crypts of the Eternal} (51.23, 48.81)| |Z|2031| |NPC|182041|
N Defeat Argus |QID|64728.4| |N|Kill (npc:181057) in {Crypts of the Eternal} (55.61, 48.21)<br/><b>Dont leave the platform, it will reset.<br/><b>Interrupt (spell:364646)<br/><b>Stay out of (spell:364643)| |Z|2031| |NPC|181057|
T Acquaintances Forgotten |QID|64728| |N|(npc:180942) in {Crypts of the Eternal} (52.91, 47.92)| |Z|2031| |NPC|180942|
A The Turning Point |QID|64730| |N|(npc:180942) in {Crypts of the Eternal} (52.91, 47.92)| |Z|2031| |NPC|180942| |PRE|64728|
N Examine the Vessel |QID|64730.1| |N|Click on the Vessel (51.40, 49.69)| |Z|2031|
N Examine the Automa Scryers |QID|64730.2| |N|Examine 3 Automa Scryer's<br/><b>First:- (54.74, 54.42, 2031, "Automa Scryer 1")<br/><b>Second:- (51.59, 55.79, 2031, "Automa Scryer 2")<br/><b>Third:- (47.78, 51.90, 2031, "Automa Scryer 3")| |Z|2031| |NPC|183694, 183692, 183693|
T The Turning Point |QID|64730| |N|(npc:180915) in {Crypts of the Eternal} (52.35, 46.34)| |Z|2031| |NPC|180915|
A For Every Soul |QID|64731| |N|(npc:180915) in {Crypts of the Eternal} (52.35, 46.34)| |Z|2031| |NPC|180915| |PRE|64730|
N (npc:180914) |QID|64731.1| |N|Speak to (npc:180914) and choose option 'What do you mean?' (50.64, 46.65)| |Z|2031| |NPC|180914|
T For Every Soul |QID|64731| |N|(npc:180942) in {Crypts of the Eternal} (52.82, 47.66)| |Z|2031| |NPC|180942|
A Lifetimes To Consider |QID|64729| |N|(npc:180942) in {Crypts of the Eternal} (52.82, 47.66)| |Z|2031| |NPC|180942| |PRE|64731|
N Firm's Portal Used |QID|64729.2| |N|Use Firim's Portal in {Crypts of the Eternal} (54.05, 48.29)| |Z|2031|
N Return to Exile's Hollow |QID|64729.1| |N|Return to Exile's Hollow (34.19, 48.11)| |Z|1970|
T Lifetimes To Consider |QID|64729| |N|(npc:181545) in {Exile's Hollow} (34.34, 48.43)| |Z|1970| |NPC|181545|
A Souls Entwined |QID|65238| |N|(npc:181545) in {Exile's Hollow} (34.34, 48.43)| |Z|1970| |NPC|181545| |PRE|64729|
R Haven |TID|65238| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
R Oribos |TID|65238| |N|Travel to {Oribos} (49.55, 30.03)| |Z|1671|
N (npc:159478) |QID|65238.1| |N|Speak to (npc:159478) (38.80, 69.54)| |Z|1670| |NPC|159478|
N Meet with Kleia and the Arbiter |QID|65238.2| |N|Meet with Kleia and the Arbiter (48.73, 48.73)| |Z|1673|
T Souls Entwined |QID|65238| |N|(npc:184584) in {The Crucible} (59.21, 55.55)| |Z|1673| |NPC|184584|
A Safe Haven |QID|65329| |N|(npc:184584) in {The Crucible} (59.21, 55.55)| |Z|1673| |NPC|184584| |PRE|65238|
R Haven |TID|65329| |N|Travel to {Haven} (35.62, 65.09)| |Z|1970|
T Safe Haven |QID|65329| |N|(npc:181183) in {Haven} (35.03, 64.74)| |Z|1970| |NPC|181183|

-- Chapter 8 for Patch 9.2.42979
-- //Epilogue: Judgment
A The Jailer's Defeat |QID|65249| |N|(npc:181183) in {Haven} (35.09, 64.73)| |Z|1970| |NPC|181183| |PRE|65329|
N Witness the Jailer's Defeat |QID|65249.1| |N|Speak to (npc:181183) and choose option '<Witness the Jailer's Defeat>' in {Haven} (35.09, 64.73)| |Z|1970| |NPC|181183|
T The Jailer's Defeat |QID|65249| |N|(npc:181183) in {Haven} (35.09, 64.73)| |Z|1970| |NPC|181183|
A Prisoner of Interest |QID|65250| |N|(npc:181183) in {Haven} (35.09, 64.73)| |Z|1970| |NPC|181183| |PRE|65249|
R Oribos |TID|65250| |N|Travel to {Oribos} (32.95, 69.72)| |Z|1970| |F|1671|
T Prisoner of Interest |QID|65250| |N|(npc:183822) in {Ring of Fates} (52.30, 40.33)| |Z|1670| |NPC|183822|
A A Long Walk |QID|65260| |N|(npc:183822) in {Ring of Fates} (52.30, 40.33)| |Z|1670| |NPC|183822| |PRE|65250|
N Speak to Uther |QID|65260.1| |N|Speak to (npc:183822) and choose option '<Escort Sylvanas to the Enclave.>' in {Ring of Fates} (52.30, 40.33)| |Z|1670| |NPC|183822|
N Escort Sylvanas |QID|65260.2| |N|Walk with (npc:184158) in {The Enclave} (38.39, 68.55)| |Z|1670| |NPC|184158|
N Speak to Tal-Inara |QID|65260.3| |N|Speak to (npc:159478) and choose option 'Take me to the Crucible' in {The Enclave} (38.78, 69.58)| |Z|1670| |NPC|159478|
T A Long Walk |QID|65260| |N|(npc:183830) in {The Crucible} (58.06, 49.00)| |Z|1673| |NPC|183830|
A The Fate of Sylvanas |QID|65263| |N|(npc:183830) in {The Crucible} (58.06, 49.00)| |Z|1673| |NPC|183830| |PRE|65260|
N Speak to Pelagos |QID|65263.1| |N|Speak to (npc:183830) and choose option '<Witness the Arbiter's judgment.>' in {The Crucible} (58.06, 49.00)| |Z|1673| |NPC|183830|
T The Fate of Sylvanas |QID|65263| |N|(npc:183830) in {The Crucible} (58.06, 49.00)| |Z|1673| |NPC|183830|
A Penance and Renewal |QID|65297| |N|(npc:183830) in {The Crucible} (58.06, 49.00)| |Z|1673| |NPC|183830| |PRE|65263|
N Speak to Tyrande |QID|65297.1| |N|Speak to (npc:183857) and choos option '<Witness Tyrande's judgment.>' in {Ring of Transference} (55.66, 59.77)| |Z|1671| |NPC|183857|
T Penance and Renewal |QID|65297| |N|(npc:183857) in {Ring of Transference} (55.66, 59.77)| |Z|1671| |NPC|183857|
N Guide Complete
]]
end, {description = [[This guide covers unlocking Zereth Mortis zone for patch 9.2]]})
    end

    function Guide:Unload()
    end
end
