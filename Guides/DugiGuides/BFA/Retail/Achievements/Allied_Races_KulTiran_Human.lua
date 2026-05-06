local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_Allied_Races_Kul_Tiran_Human")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Feats of Strength|r"}, "Allied Races: Kul Tiran Human", nil, "Alliance", nil, "A", nil, function()
return [[

N Level 40 Required |PL|40| |N|You will need to level your character to Level 40|
--N Required |N|Reach Exalted with: (fac:2160)| |REPR|2160, 42000|
--N Required |N|Earn the Achievement: (aid:13467)<br/><br/>Complete the War Campaign for both 8.0 and 8.1, complete the (guide:"War Campaign (10-50)") guide.| |AID|13467|
--N Required |N|Earn the Achievement: (aid:12891)<br/><br/>Complete the major storylines in Kul Tiras zones:<br/><br/><b>For the (aid:12593) achievement, complete the (guide:"895(10-50)#895(10-50)#895(10-50)") guide.<br/><br/><b>For the (aid:12997) and (aid:52151) achievement's, complete the (guide:"The Pride of Kul Tiras") guide.| |AID|12891|

R Stormwind City |QID|54706| |N|Travel to {Stormwind City} (52.77,14.49) |Z|84|
A Made in Kul Tiras |QID|54706| |N|(npc:148798) in {Stormwind Embassy} (52.29,13.38) |Z|84| |NPC|148798|

R Boralus |QID|54706| |N|Travel to {Boralus} (70.61,16.98)| |Z|1161|
C Made in Kul Tiras |QID|54706| |N|Speak to (npc:122370) and ask him "I am told you know where to find the shipwright, Dorian Atwater?" in {Harbormaster's Office} (67.99,21.91)| |Z|1161| |NPC|122370|
T Made in Kul Tiras |QID|54706| |N|(npc:122370) in {Harbormaster's Office} (67.99,21.91)| |Z|1161| |NPC|122370|
A The Master Shipwright |QID|55039| |N|(npc:122370) in {Harbormaster's Office} (68.00,21.91)| |Z|1161| |NPC|122370|
C The Master Shipwright |QID|55039| |N|Speak to (npc:148798) and choose "Take the letter." in {Harbormaster's Office} (67.95,22.21)| |Z|1161| |NPC|148798|

R Stormsong Valley |QID|55039| |N|Travel to {Stormsong Valley} (59.39,70.27)| |Z|942|
T The Master Shipwright |QID|55039| |N|(npc:150515) in {Brennadam} (59.39,70.27)| |Z|942| |NPC|150515|
A Fish Tales and Distant Sails |QID|55043| |N|(npc:150515) in {Brennadam} (59.39,70.27)| |Z|942| |NPC|150515|
C Fish Tales and Distant Sails |QID|55043| |N|Speak to 8 (npc:150522) and ask them "Do you know where I can find Dorian Atwater?" in {Brennadam} (58.99,69.75)| |Z|942| |NPC|150522|
T Fish Tales and Distant Sails |QID|55043| |N|(npc:150515) in {The Golden Flagon} (58.76,70.44)| |Z|942| |NPC|150515|
A Home, Home On the Renge |QID|54708| |N|(npc:150515) in {The Golden Flagon} (58.67,70.36)| |Z|942| |NPC|150515|

R Deadwash |QID|54708| |N|Travel to {Deadwash} (42.79, 57.39)| |Z|942|
C Find the Homestead |QID|54708.1| |N|Follow the path (43.60,54.00)<br/>Follow the road (47.44,50.57) (49.94,50.03) in {Atwater Stead}| |Z|942|
C Meet the Shipwright |QID|54708.2| |N|Speak to (npc:148872) and ask him "Are you Dorain Atwater?" in {Atwater Stead} (49.94,50.03)| |Z|942| |NPC|148872|
C Meet the Actual Shipwright |QID|54708.3| |N|Enter the building (50.08,49.85) (50.23,49.87) in {Atwater Stead}| |Z|942|
T Home, Home On Renge |QID|54708| |N|(npc:148870) in {Atwater Stead} (50.23,49.87)| |Z|942| |NPC|148870|
A I'm Too Old for This Ship |QID|54721| |N|(npc:148870) in {Atwater Stead} (50.23,49.87)| |Z|942| |NPC|148870|
C I'm Too Old for This Ship |QID|54721| |N|Click on (npc:150581), keep trying to saddle (npc:150581) until you succeed in {atwarter Stead} (50.37,50.46)| |Z|942| |NPC|150581|
T I'm Too Old for This Ship |QID|54721| |N|(npc:148870) in {Tidecross} (66.12,47.36)| |Z|942| |NPC|148870|
A Covering Our Masts |QID|54723| |N|(npc:148870) in {Tidecross} (66.12,47.36)| |Z|942| |NPC|148870|
A The Deep Ones |QID|54725| |N|(npc:148870) in {Tidecross} (66.12,47.36)| |Z|942| |NPC|148870|
C Southern Fog Ward Placed |QID|54723.1| |N|Click on (npc:148918) in {Port Fogtide} (66.91,44.68)| |Z|942| |NPC|148918|
C Western Fog Ward Placed |QID|54723.2| |N|Click on (npc:150593) in {Port Fogtide} (65.94,43.50)| |Z|942| |NPC|150593|
C Northern Fog Ward Placed |QID|54723.3| |N|Click on (npc:150594) in {Port Fogtide} (67.95,41.97)| |Z|942| |NPC|150594|
C The Deep Ones |QID|54725| |N|Kill 12 drowned forces in {Port Fogtide} (67.61.42.00)| |Z|942|
T Covering Our Masts |QID|54723| |N|(npc:148870) in {Tidecross} (66.12,47.36)| |Z|942| |NPC|148870|
T The Deep Ones |QID|54725| |N|(npc:148870) in {Tidecross} (66.12,47.36)| |Z|942| |NPC|148870|
A Frame Work |QID|54726| |N|(npc:148870) in {Tidecross} (66.12,47.36)| |Z|942| |NPC|148870|

R Hatherford |QID|54726| |N|Travel to {Hatherford} (66.91,23.13)| |Z|895|
C Frame Work |QID|54726| |N|Follow the road (67.77,23.12)<br/>Enter the building (68.89,20.43) in {Algerson Lumber Yard}| |Z|895|
T Frame Work |QID|54726| |N|(npc:148870) in {Algerson Lumber Yard} (68.95,20.55)| |Z|895| |NPC|148870|
A Team Carry |QID|54727| |N|(npc:148870) in {Algerson Lumber Yard} (68.95,20.55)| |Z|895| |NPC|148870|
C Heavy Lumber Collected |QID|54727.1| |N|Collect 4 Heavy Lumber around {Algerson Lumber Yard} (68.16,18.36)| |Z|895|
C Follow Dorian to the Drop Point |QID|54727.2| |N|Follow the road up (68.04,16.96)<br/>Continue following the road (67.11,15.21)<br/>Continue following the road (67.87,13.87) (67.10,12.33)| |Z|895|
T Team Carry |QID|54727| |N|(npc:148870) in {Evergreen Grove} (67.10,12.33)| |Z|895| |NPC|148870|
A This Lumber is Haunted |QID|54728| |N|(npc:148870) in {Evergreen Grove} (67.10,12.33)| |Z|895| |NPC|148870|
A The Bleak Hills |QID|54729| |N|(npc:148870) in {Evergreen Grove} (67.10,12.33)| |Z|895| |NPC|148870|

R Fletcher's Hollow |QID|54728| |N|Travel to {Fletcher's Hollow} (70.17,60.41)| |Z|896|
C Seek out Thornspeaker Birchgrove |QID|54728| |N|Cross the bridge (69.46,59.30)<br/>Follow the path (67.12,55.63)<br/>Follow the road up (64.17,57.09) (61.88,59.33)| |Z|896|
T This Lumber is Haunted |QID|54728| |N|(npc:139926) in {Gol Koval} (61.88,59.33)| |Z|896| |NPC|139926|
A Gorak Tul's Influence |QID|54730| |N|(npc:139926) in {Gol Koval} (61.88,59.33)| |Z|896| |NPC|139926|
C Fill the Drust Vessel |QID|54730| |N|Kill enemies around this area until bar fills (61.30,62.10)| |Z|896|
T Gorak Tul's Influence |QID|54730| |N|(npc:139926) in {Gol Koval} (61.88,59.33)| |Z|896| |NPC|139926|
A Balance in All Things |QID|54731| |N|(npc:139926) in {Gol Koval} (61.88,59.33)| |Z|896| |NPC|139926|
C Ride with Arthur Tradewind |QID|54731.1| |N|Speak to (npc:149293) ask him "Can you take me to the High Thornspeaker?" and then click (npc:149293) in {Gol Koval} (61.85,59.37)| |Z|896| |NPC|149293| |V|
C Speak to Ulfar |QID|54731.2| |N|Speak to (npc:141159) and tell him "Tell me how I can help." in {Ulfar's Den} (45.20,45.79)| |Z|896| |NPC|141159|
C Begin the Ritual |QID|54731.3| |N|Click Ancient Seedling in {Ulfar's Den} (44.97,45.83)| |Z|896|
C Balance Restored |QID|54731.4| |N|Run over green orbs on the ground around the pile of wood in {Ulfar's Den} (44.97,45.84)| |Z|896|
T Balance in All Things |QID|54731| |N|(npc:141159) in {Ulfar's Den} (45.21,45.84)| |Z|896| |NPC|141159|
C The Bleak Hills |QID|54729| |N|Find (npc:150884) in {Watchman's Rise} (33.16,30.38)| |Z|896| |NPC|150884|
T The Bleak Hills |QID|54729| |N|(npc:150884) in {Watchman's Rise} (33.17,30.37)| |Z|896| |NPC|150884|
A Drop It |QID|54732| |N|(npc:150884) in {Watchman's Rise} (33.17,30.37)| |Z|896| |NPC|150884|
C Collect Storehouse Key |QID|54732| |N|Follow the path (34.13,30.45)<br/>Continue up the path (35.22,29.27)<br/>Continue up the path (35.83,30.29)<br/>Run up the stairs (36.50,30.74)<br/>Follow the path up (37.00,31.26)<br/>Cross the bridge (36.32,29.25)<br/>Enter the cave (36.32,29.25)<br/>Click Storeroom Keys (36.60,28.88)| |Z|896|
T Drop It |QID|54732| |N|(npc:150885) in {Wicker Hoval} (36.62,28.84) |Z|896| |NPC|150885|
A Her Dog Days Are Over |QID|55136| |N|(npc:150885) in {Wicker Hoval} (36.62,28.84)| |Z|896| |NPC|150885|
C Collect Gnawed Bone |QID|55136.3| |N|Jump down here (36.15,29.26)<br/>Click Gnawed Bone (35.31,28.91)| |Z|896| |L|167174|
C Collect Worn Collar |QID|55136.1| |N|Click Worn Collar (36.46,29.08)| |Z|896| |L|167172|
C Collect Squeaky Toy |QID|55136.2| |N|Run up the stairs (34.14,30.82)<br/>Enter the building (34.39,30.74)<br/>Click Squeaky Toy (36.46,29.08)| |Z|896| |L|167173|
T Her Dog Days Are Over |QID|55136| |N|(npc:150884) in {Watchman's Rise} (33.17,30.37)| |Z|896| |NPC|150884|
A Make it Wright |QID|54733| |N|(npc:150884) in {Watchman's Rise} (33.17,30.37)| |Z|896| |NPC|150884|
T Make it Wright |QID|54733| |N|Click Storage Crate in {Watchman's Rise} (33.11,30.30)| |Z|896|
A Summons from Dorian |QID|54734| |N|(npc:149252) in {Watchman's Rise} (33.04,30.39)| |Z|896| |NPC|149252|

R Tidecross |QID|54734| |N|Travel to {Tidecross} (65.52,47.99)| |Z|942|
T Summons from Dorian |QID|54734| |N|(npc:148870) in {Tidecross} (66.51,44.24)| |Z|942| |NPC|148870|
A A Worthy Crew |QID|54735| |N|(npc:148798) in {Tidecross} (66.50,44.29)| |Z|942| |NPC|148798|
C Speak to Tandred Proudmoore |QID|54735.1| |N|Run up the stairs (48.69,62.59)<br/>Run up the stairs (44.30,57.89)<br/>Speak to (npc:149474) tell him "Jaina sent me to speak with you." (42.99,56.31)| |Z|1161| |NPC|149474|
N (npc:149481) |QID|54735.2| |N|Speak to (npc:149481) ask him "Tandred Proudmoore is outting together a crew. he needs a tidesage. Are you interested?" (75.97,22.98)| |Z|1161| |NPC|149481|
N (npc:151040) |QID|54735.3| |N|Speak to (npc:151040) ask him "Tandred Proudmoore is putting together a crew. He needs a master gunner. Are you interested?" (56.68,61.18)| |Z|895| |NPC|151040|
N (npc:149486) |QID|54735.4| |N|Speak to (npc:149486) ask him "Tandred Proudmoore is putting together a crew. He needs a first mate. Are you interested?" (35.26,24.15)| |Z|895| |NPC|149486|
N (npc:148870) |QID|54735.5| |N|Speak to (npc:148870) tell her "Well, you heard the man." (67.63,44.89)| |Z|942| |NPC|148870|
T A Worthy Crew |QID|54735| |N|(npc:148798) in {Tidecross} (67.62,44.67)| |Z|942| |NPC|148798|
A Blessing of the Tides |QID|54851| |N|(npc:148798) in {Tidecross} (67.62,44.67)| |Z|942| |NPC|148798|
C Name the Vessel |QID|54851.1| |N|Choose any of the names you like (67.62,44.67)| |Z|942| 
C Bless the Vessel |QID|54851.2| |N|Click the Rowboat (68.14,45.68)| |Z|942| 
T Blessing of the Tides |QID|54851| |N|(nps:148798) (71.13,44.02)| |Z|942| |NPC|148798|
A Allegiance of Kul Tiras |QID|53720| |N|(npc:148798) (71.13,44.02)| |Z|942| |NPC|148798|
C Allegiance of Kul Tiras |QID|53720| |N|Sail to Stormwind Harbor (71.17,44.02) |Z|942|
T Allegiance of kul Tiras |QID|53720| |N|(npc:149518) in {Stormwind Embassy} (22.53,18.39)| |Z|84| |NPC|149518|

N Guide Complete |N|Congratulations! You Unlocked "Kul Trian Human" Allied Race|

]]
end, {description = [[This guide will show you how to unlock (aid:13163)]]}) end

    function Guide:Unload()
    end
end
