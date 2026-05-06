local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Hunt_for_ the_Harbringer")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Dragonflight|r", "Hunt for the Harbringer (70+ Storyline)", nil, nil, nil, "L", "|SG|UnitLevel([[player]])>=70|", function()
return [[

A The Harbinger |QID|79009| |N|Auto quest in {Orgrimmar} (36.10,48.80)| |Z|85| |FAC|Alliance|
A The Harbinger |QID|79009| |N|Auto quest in {Stormwind City} (36.10,48.80)| |Z|84| |FAC|Horde|
N Approach the Chamber of the Guardian |QID|79009.1| |N|Approach the Chamber of the Guardian in {Dalaran}<br/><b> onto the teleporter and enter the inner chamber. (36.10,48.80)| |Z|629|
N  (npc:214615) |QID|79009.2| |N|speak to (npc:214615) in {Chamber of the Guardian} (36.10,48.80)| |Z|629| |NPC|214615|
T The Harbinger |QID|79009| |N| (npc:214615) in {Chamber of the Guardian} (28.34,36.87)| |Z|629| |NPC|214615|
A Door to the Ren'dorei |QID|79010| |N|(npc:215013) in {Chamber of the Guardian} (31.45,41.68)| |Z|629| |NPC|214615|
N Follow (npc:215013) |QID|79010.1| |N|Follow (npc:215013)<br/><b> Down in the Chamber of the Guardian<br/><b> If this does not complete, try relogging<br/><b> A purple and black portal should appear. (35.77,74.92)| |Z|629|
N Click Rift to Telogrus |QID|79010.2| |N|Use the Void Rift to Enter Telogrus Rift in {Chamber of the Guardian} (33.61,78.90)| |Z|629|
T Door to the Ren'dorei |QID|79010| |N|(npc:214701) in {Telogrus Rift} (27.26,27.86)| |Z|971| |NPC|214701|

A Riftwalker Reports |QID|79011| |N|(npc:214702) in {Telogrus Rift} (27.22,27.70)| |Z|971| |NPC|214702|
A Cracks in the Void |QID|79012| |N|(npc:214702) in {Telogrus Rift} (27.22,27.70)| |Z|971| |NPC|214702|
N Click Rift to Fathom's Edge |QID|79011| |N|Take the Rift to Fathom's Edge  (27.90,28.63)| |Z|971|  |V|
N Arrive at Fathom's Edge |QID|79011| |N|Arrive at Fathom's Edge (29.27,38.29)| |Z|971|
N As you go... |AYG|79012| |QID|79012| |N|Close the Unstable Void Rift<br/><b>Run away once you are tethered to it to close it  (29.54,41.35) (37.80,50.03) (38.40,52.93) (40.71,57.22) (42.03,59.88)| |Z|971|
N (npc:215142)  |QID|79011.1| |N|speak to (npc:215142) to Hear the Report from Aberrus (30.10,43.36)| |Z|971| |NPC|215142|
N (npc:215157)  |QID|79011.2| |N|speak to (npc:215142) to Hear the Report from Kalimdor (37.70,51.73)| |Z|971| |NPC|215157|
N (npc:215158)  |QID|79011.3| |N|speak to (npc:215158) to Hear the Report from Eastern Kingdoms (39.93,53.72)| |Z|971| |NPC|215158|
N Click Unstable Void Rift |QID|79012.1| |N|Close the Unstable Void Rift<br/><b>Run away once you are tethered to it to close it<br/><b> Avoid the areas on the ground where the orbs land or you will take damage (29.54,41.35) (37.80,50.03) (38.40,52.93) (40.71,57.22) (42.03,59.88)| |Z|971|
T Riftwalker Reports |QID|79011| |N|(npc:214699) in {Telogrus Rift} (40.84,60.90)| |Z|971| |NPC|214699|
T Cracks in the Void |QID|79012| |N|(npc:214699) in {Telogrus Rift} (40.84,60.90)| |Z|971| |NPC|214699|

A Galakrond's Unrest |QID|79013| |N|(npc:214698) in {Telogrus Rift} (40.67,60.87)| |Z|971| |NPC|214698|
N Click Rift to Northrend |QID|79013.1| |N|Take the Rift from Telogrus Rift to Northrend (39.66,60.62)| |Z|971| 

T Galakrond's Unrest |QID|79013| |N|(npc:214634) in {Dragonblight} (56.68,39.00)| |Z|115|
A Walk a Mile in Her Shadows |QID|79014| |N|(npc:214634) in {Dragonblight} (56.68,39.00)| |Z|115|
N Inspect the Void Presence |QID|79014.1| |N|Use (spell:434210) to Inspect the Void Presence (55.97,37.43)| |Z|115|
N Clear the Shadow |QID|79014.2| |N|Use (spell:434210) to Clear the Shadow (56.21,35.35) (55.69,35.16) (54.91,34.78) (54.83,33.18)| |Z|115|

T Walk a Mile in Her Shadows |QID|79014| |N|(npc:214759) in {The Storm Peaks} (41.50,22.70)| |Z|120|
A Dark Descension |QID|79015| |N|(npc:214759) in {The Storm Peaks} (41.50,22.70)| |Z|120|
K (npc:214644) |QID|79015.1| |N|Kill (npc:214644) (41.52,21.31)| |Z|120| |NPC|214644|
T Dark Descension |QID|79015| |N|(npc:221539), next to you (41.52,21.31)| |Z|120| |NPC|221539|
A Legacy of the Void |QID|79016| |N|(npc:221539), next to you (41.52,21.31)| |Z|120| |NPC|221539|
N Click Void Portal to Eredath |QID|79016.1| |N|Use the Void Portal to Eredath (41.54,20.29)| |Z|120|
T Legacy of the Void |QID|79016| |N|(npc:214645) in {Eredath} (22.51,53.46)| |Z|882| |NPC|214645|
A The Path Taken |QID|79017| |N|(npc:214645) in {Eredath} (22.51,53.46)| |Z|882| |NPC|214645|
C The Path Taken |QID|79017| |N|Observe the Memory in each waypoint<br/><b> Spam any AoE attacks you can or group to tag mobs in this spot<br/><b> You will get credit when you tag them (20.91,50.49) (21.92,48.32) (24.66,49.05)| |Z|882|
T The Path Taken |QID|79017| |N|(npc:215597), next to you (23.05,50.56)| |Z|882| |NPC|215597|
A And Be One Traveler, Long I Stood |QID|79018| |N|(npc:215597), next to you (23.05,50.56)| |Z|882| |NPC|215597|
N Confront the Memory of Turalyon |QID|79018.1| |N|Watch the dialogue (24.23,42.99)| |Z|882|
C Click Call of the Void|QID|79018.2| |N|Click Call of the Void and follow Turalyon to Telogrus (24.24,42.74)| |Z|882|

T And Be One Traveler, Long I Stood |QID|79018| |N|(npc:214660) in {Telogrus Rift} (28.64,23.97)| |Z|971| |NPC|214660|
A Defend Telogrus Rift |QID|79019| |N|(npc:214660) in {Telogrus Rift} (28.64,23.97)| |Z|971| |NPC|214660|
C Click Rift to Fathom's Edge |QID|79019| |N|Take the Rift to the Fathom's Edge then take Void Rift (27.90,28.62)| |V| |Z|971| |REACH|29.27,38.29| |QID|79019|
C Click Void Rift  |QID|79019| |N|Take the Rift to the Cosmic Horizon (30.05,44.13)| |Z|971| |V| |REACH|39.62,49.25| 
C Defend Telogrus Rift |QID|79019.1| |N|Kill enemies around this area, click Unstable Void Rift and (npc:214659)  (40.49,59.03)| | |Z|971|
T Defend Telogrus Rift |QID|79019| |N|(npc:216264) in {Telogrus Rift } (43.55,63.79)| |Z|971| |NPC|216264|
A Null and Void |QID|79020| |N|(npc:216264) in {Telogrus Rift } (43.55,63.79)| |Z|971| |NPC|216264|
N Click Void Rift |QID|79020.1| |N|Take the Rift to Equinox Reach  (43.95,63.74)| |Z|971| |REACH|49.07,72.53|

K (npc:214616) |QID|79020.2| |N|Kill (npc:214616) <br/><b> Weaken it enough for it to flee (49.10,76.87)| |Z|971| |NPC|214616|

T Null and Void |QID|79020| |N|(npc:216618) in {Equinox Reach} (50.18,75.24)| |Z|971| |NPC|216618|
A Radiant Warnings |QID|79021| |N|(npc:214657) in {Equinox Reach} (50.40,75.29)| |Z|971| |NPC|214657|
N (npc:214657) |QID|79021.1| |N|speak to (npc:214657) (50.40,75.29)| |Z|971| |NPC|214657|
C Click Void Rift |QID|79021| |N|Take the Rift to the Cosmic Horizon (48.94,72.01)| |V| |Z|971| |REACH|43.67,63.28|
C Click Void Rift |QID|79021| |N|Take the Rift to the Fathom's Edge  (40.04,49.32)| |V| |Z|971| |REACH|29.82,43.68|
C Click Void Rift |QID|79021| |N|Take the Rift to the Telogrus Rift (29.45,37.79)| |V| |Z|971| |REACH|27.87,28.11|
C Click Void Rift |QID|79021| |N|Take the Rift to the Dalaran (24.95,27.90)| |V| |Z|971| |F|629|
C Return to Khadgar in Dalaran |QID|79021.2| |N|Return to (npc:214972) in the {Chamber of the Guardian} (28.38,36.91)| |Z|629| |NPC|214972|
T Radiant Warnings |QID|79021| |N|(npc:214972) in the {Chamber of the Guardian}  (28.38,36.91)| |Z|629| |NPC|214972|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end