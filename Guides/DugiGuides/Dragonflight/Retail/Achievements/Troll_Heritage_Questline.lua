local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Troll_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Feats of Strength"}, "Troll Heritage Armor", nil, "Horde", nil, "A", "|SG|UnitLevel([[player]])>=50|", function()
return [[

N Level 50+ Required |N|You must be 50+ to use this guide| |PL|50| |R|Troll|
N Troll Only |N|You must be a Troll to use this guide| |R|BloodElf,Dracthyr,Goblin,HighMountain,Maghar,NightBorne,Orc,Pandaren,Tauren,Undead,Vulpera,Zandalari|

R Orgrimmar |QID|77869| |N|Travel to {Orgrimmar} (57.10, 89.81)| |Z|85| |R|Troll|
A Return to the Echo Isles |QID|77869| |N|(npc:213791) in {Valley of Spirits} (32.72, 64.73)| |Z|85| |NPC|213791| |R|Troll|

R Darkspear Isle |QID|77869| |N|Travel to {Darkspear Isle} (45.65, 47.70)| |Z|463| |R|Troll|
T Return to the Echo Isles |QID|77869| |N|(npc:210198) in {Darkspear Hold} (61.12, 65.61)| |Z|463| |NPC|210198| |R|Troll|
A De Old Loa |QID|77871| |N|(npc:210092) in {Darkspear Hold} (61.34, 65.41)| |Z|463| |NPC|210092| |R|Troll|

N Destroy Mueh'zala Offerings |QID|77871.1| |N|Destroy 5 Mueh'zala Offerings in {Darkspear Hold} (61.25, 65.52)| |Z|463| |OBJ|416284| |R|Troll|
N Assist Tzadah with Loa Ritual |QID|77871.2| |N|Click on the Altar of the Loa in {Darkspear Hold} (58.74, 66.12)| |Z|463| |OBJ|408208| |R|Troll|

T De Old Loa |QID|77871| |N|(npc:214839) in {Darkspear Hold} (59.12, 65.66)| |Z|463| |NPC|214839| |R|Troll|
A De Loa of de Past |QID|77874| |N|(npc:214839) in {Darkspear Hold} (59.12, 65.66)| |Z|463| |NPC|214839| |R|Troll|

N Tribute Objects Collected |QID|77874.1| |N|Collect 8 Tribute Objects around {Darkspear Hold} (60.09, 61.87)| |Z|463| |R|Troll|
N Create a Jani Tribute |QID|77874.2| |N|Click on Jani Junkpile in {Darkspear Hold} (58.70, 65.94)| |Z|463| |R|Troll|
N (npc:210120) |QID|77874.3| |N|Speak with (npc:210120) in {Darkspear Hold} (58.45, 65.95)| |Z|463| |NPC|210120| |R|Troll|
N Jani's Junkpile |QID|77874| |N|Click on Jani's Junkpile in {Darkspear Hold} (58.66, 65.96)| |Z|463| |REACH|85.13,40.29,50| |R|Troll|

T De Loa of de Past |QID|77874| |N|(npc:210238) in {Zul'Gurub} (84.62, 40.19)| |Z|50| |NPC|210238| |R|Troll|
A Stalking the Stalker |QID|77879| |N|(npc:210238) in {Zul'Gurub} (84.62, 40.19)| |Z|50| |NPC|210238| |R|Troll|

N 6 (item:211350) |QID|77879.1| |N|Kill (npc:214913) and (npc:210405) loot 6 (item:211350) in {Zul'Gurub} (86.51, 40.21) (86.90, 44.62) (90.34, 44.36)| |Z|50| |NPC|214913,210405| |R|Troll|
N Return to Jani |QID|77879.2| |N|Return to Jani in {Zul'Gurub} (86.89, 44.51) (86.28, 40.11) (83.53, 40.53) (83.46, 45.07) (82.03, 47.83)| |Z|50| |R|Troll|

T Stalking the Stalker |QID|77879| |N|(npc:209891) in {Zul'Gurub} (81.84, 48.05)| |Z|50| |NPC|209891| |R|Troll|
A There is Another |QID|77881| |N|(npc:209891) in {Zul'Gurub} (81.84, 48.05)| |Z|50| |NPC|209891| |R|Troll|

U Jani's Junkpile |QID|77881.1| |N|Click on Jani's Junkpile to travel to Bambala in {Zul'Gurub} (81.82, 47.61)| |Z|50| |R|Troll|

T There is Another |QID|77881| |N|(npc:222657) in {Bambala} (63.58, 41.40)| |Z|50| |NPC|222657| |R|Troll|
A Looking for Lukou |QID|77880| |N|(npc:210091) in {Bambala} (63.49, 41.34)| |Z|50| |NPC|210091| |R|Troll|

N (npc:210259) |QID|77880.1| |N|Speak with (npc:210259) in {Bambala} (66.05, 40.51)| |Z|50| |NPC|210259| |R|Troll|
N (npc:210091) |QID|77880.2| |N|Speak with (npc:210091) in {Bambala} (63.49, 41.33)| |Z|50| |NPC|210091| |R|Troll|
N Find Kevo ya Siti |QID|77880.3| |N|Find (npc:222666) by the Ogre Mound, in {Mosh'Ogg Ogre Mound} (65.15, 47.46)| |Z|50| |NPC|222666| |R|Troll|

T Looking for Lukou |QID|77880| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (65.11, 47.49)| |Z|50| |NPC|210091| |R|Troll|
A One with the Loa |QID|77877| |N|(npc:222666) in {Mosh'Ogg Ogre Mound} (65.07, 47.72)| |Z|50| |NPC|222666| |R|Troll|

N Tell Kevo You're Ready |QID|77877.1| |N|Speak to (npc:222666) in {Mosh'Ogg Ogre Mound} (65.08, 47.72)| |Z|50| |NPC|222666| |R|Troll|

T One with the Loa |QID|77877| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.63, 49.00)| |Z|50| |NPC|210091| |R|Troll|
A Stolen but Not Forgotten |QID|77882| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.63, 49.00)| |Z|50| |NPC|210091| |R|Troll|
A The Unkillable |QID|78875| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.63, 49.00)| |Z|50| |NPC|210091| |R|Troll|

N 8 (item:210592) |QID|77882.1| |N|Kill Moch'Ogg enemies or click on Dusty Bag and collect 8 (item:210592) in {Mosh'Ogg Ogre Mound} (67.54, 48.23)| |Z|50| |POI| |NPC|210254,210253| |R|Troll|
K (npc:210252) |QID|78875.1| |N|Kill (npc:210252) then loot (item:210593) in {Mosh'Ogg Ogre Mound} (69.14, 46.95)| |Z|50| |NPC|210252| |R|Troll|

T Stolen but Not Forgotten |QID|77882| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.65, 48.99)| |Z|50| |NPC|210091| |R|Troll|
T The Unkillable |QID|78875| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.65, 48.99)| |Z|50| |NPC|210091| |R|Troll|
A Heart of Lukou |QID|77894| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.65, 48.99)| |Z|50| |NPC|210091| |R|Troll|

N Repair Destroyed Effigy |QID|77894.1| |N|Click on Altar of Regeneration in {Mosh'Ogg Ogre Mound} (70.67, 48.98)| |Z|50| |OBJ|408208| |R|Troll|
N Calm Lukou |QID|77894.2| |N|Speak with (npc:210258) in {Mosh'Ogg Ogre Mound} (70.76, 48.66)| |Z|50| |NPC|210258| |R|Troll|

T Heart of Lukou |QID|77894| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.64, 48.99)| |Z|50| |NPC|210091| |R|Troll|
A Honor and Tribute |QID|77898| |N|(npc:210091) in {Mosh'Ogg Ogre Mound} (70.64, 48.99)| |Z|50| |NPC|210091| |R|Troll|

N Return to Echo Isles Using Jani's Junkpile |QID|77898.1| |N|Click on Jani's Junkpile in {Mosh'Ogg Ogre Mound} (70.39, 49.56)| |Z|50| |R|Troll|
N (npc:210086) |QID|77898.2| |N|Speak with (npc:210086) in {Darkspear Hold} (59.05, 65.86)| |Z|463| |NPC|210086| |R|Troll|
N Kevo ya Siti Offering Placed |QID|77898.3| |N|Click on Kevo ya Siti Offering atop of the Altar of the Loa in {Darkspear Hold} (58.73, 66.07)| |Z|463| |R|Troll|
N Lukou Offering Placed |QID|77898.4| |N|Click on Luku Offering atop of the Altar of the Loa in {Darkspear Hold} (58.73, 66.07)| |Z|463| |R|Troll|
N Last Offering Placed |QID|77898.5| |N|Click onLoa Offering atop of the Altar of the Loa in {Darkspear Hold} (58.73, 66.07)| |Z|463| |R|Troll|

T Honor and Tribute |QID|77898| |N|(npc:210086) in {Darkspear Hold} (59.04, 65.86)| |Z|463| |NPC|210086| |R|Troll|
A The Rush'kah |QID|77899| |N|(npc:210086) in {Darkspear Hold} (59.04, 65.86)| |Z|463| |NPC|210086| |R|Troll|

N Paint Mixed |QID|77899.1| |N|Click on Rush'kah Paint on the table in {Darkspear Hold} (59.32, 61.98)| |Z|463| |R|Troll|
N Prepared Wood |QID|77899.2| |N|Click on Prepared Wood on the table in {Darkspear Hold} (59.29, 62.00)| |Z|463| |R|Troll|
N Rush'kah Mask Created |QID|77899.3| |N|Click Finished Rush'kah on the table in {Darkspear Hold} (60.06, 62.22)| |Z|463| |R|Troll|

T The Rush'kah |QID|77899| |N|(npc:223215) in {Darkspear Hold} (60.08, 62.37)| |Z|463| |NPC|223215| |R|Troll|
A The Loa Trials |QID|77900| |N|(npc:223215) in {Darkspear Hold} (60.08, 62.37)| |Z|463| |NPC|223215| |R|Troll|

N Participate in Trial Ritual |QID|77900.1| |N|Stand in the middle of the circle with purple swirls and click on (spell:427573) ability on the screen in {Darkspear Hold} (58.80, 65.30)| |Z|463| |R|Troll|

T The Loa Trials |QID|77900| |N|(npc:212784) in {Darkspear Hold} (58.52, 65.57)| |Z|463| |NPC|212784| |R|Troll|
A De Power of Death |QID|77903| |N|(npc:212784) in {Darkspear Hold} (58.52, 65.57)| |Z|463| |NPC|212784| |R|Troll|
A Ritual Recovery |QID|77902| |N|(npc:205981) in {Darkspear Hold} (58.45, 66.17)| |Z|463| |NPC|205981| |R|Troll|
A Retraining the Trainees |QID|77901| |N|(npc:210260) in {Darkspear Hold} (59.03, 66.20)| |Z|463| |NPC|210260| |R|Troll|

N As You Go... |AYG|77903| |U|211000| |N|<b>Click on 3 Ritual Circle for (qid:77902)<br/><b>Use (item:211000) on Lost Trainees when they are 50% hp or lower and then use (item:211000) for (qid:77901)<br/><b>Kill 12 Minions of Mueh'zala for (qid:77903) (50.90, 53.23)| |Z|463| |R|Troll|
N Ritual Recovery |QID|77902.1| |N|Click on 3 Ritual Circle in {Darkspear Training Grounds}<br/><b>First Ritual Circle (49.51,60.87,463, "First Ritual Circle")<br/><b>Second Ritual Circle (48.57,47.54,463, "Second Ritual Circle")<br/><b>Third Ritual Circle (59.70,51.65,463, "Third Ritual Circle")| |Z|463| |R|Troll|
N Retraining the Trainees |QID|77901.1| |U|211000| |N|Attack Lost Trainees and bring their hp to 50% hp or lower and then use (item:211000) in {Darkspear Isle} (52.12, 51.65)| |Z|463| |NPC|210375, 210368, 210370, 210369, 210374| |R|Troll|
N De Power of Death |QID|77903.1| |N|Kill 12 Minions of Mueh'zala in {Darkspear Isle} (50.90, 53.23)| |Z|463| |NPC|210329, 210325, 210322, 210324| |R|Troll|

T Retraining the Trainees |QID|77901| |N|(npc:213638) in {Darkspear Training Grounds} (56.92, 56.37)| |Z|463| |NPC|213638| |R|Troll|
T Ritual Recovery |QID|77902| |N|(npc:213638) in {Darkspear Training Grounds} (56.92, 56.37)| |Z|463| |NPC|213638| |R|Troll|
T De Power of Death |QID|77903| |N|(npc:213638) in {Darkspear Training Grounds} (56.92, 56.37)| |Z|463| |NPC|213638| |R|Troll|
A Avatar of Mueh'zala |QID|77905| |N|(npc:213638) in {Darkspear Training Grounds} (56.92, 56.37)| |Z|463| |NPC|213638| |R|Troll|

N Jani's Blessing |QID|77905| |N|Click on Jani's Blessing in {Darkspear Training Grounds} (56.33, 56.49)| |Z|463| |BUFF|210818| |R|Troll|
N Travel with Lukou |QID|77905.2| |N|Stand in the green circle and then click on (spell:421812) ability on the screen in {Darkspear Training Grounds} (56.47, 55.98)| |Z|463| |R|Troll|
N Defeat Tzadah's Protection Totems |QID|77905.3| |N|<b>Kill (npc:213686) and avoid his (spell:446404) ability, otherwise you will be knocked off the platform. (you wont die, it's just a long float to the ground, if this happens, just wait out the 'leave combat' and then mount up and fly back to the platform)<br/><b>Once you killed (npc:213686), click on Tzadah's Empowerment Totem in the centre of the platform.<br/><br/>Once you cleared that platform, step inside the green circle and then click the ability on the screen to switch to the next platform.<br/>You can ignore the green circle and just mount up and fly to the next platform instead.<br/><b>Repeat all these steps until all 4 Tzadah's Empowerment Totems are destroyed. (58.64, 46.62)| |Z|463| |NPC|213686| |R|Troll|

T Avatar of Mueh'zala |QID|77905| |N|(npc:212782) in {Darkspear Hold} (58.52, 65.54)| |Z|463| |NPC|212782| |R|Troll|
A De Darkspear Loa |QID|77906| |N|(npc:212782) in {Darkspear Hold} (58.52, 65.54)| |Z|463| |NPC|212782| |R|Troll|

N Destroy Mueh'zala's Effigy |QID|77906.1| |N|Click on Loa Offering atop of the Altar of the Loa in {Darkspear Hold} (58.74, 66.12)| |Z|463| |R|Troll|
N Replace Mueh'zala's Effigy with Jani's |QID|77906.2| |N|Click on Loa Offering atop of the Altar of the Loa in {Darkspear Hold} (58.73, 66.12)| |Z|463| |R|Troll|

T De Darkspear Loa |QID|77906| |N|(npc:213669) in {Darkspear Hold} (59.02, 65.82)| |Z|463| |NPC|213669| |R|Troll|

N Guide Complete |N|Congratulations you unlocked (spell:429468)| |R|Troll|
N Guide Complete |R|BloodElf,Dracthyr,Goblin,HighMountain,Maghar,NightBorne,Orc,Pandaren,Tauren,Undead,Vulpera,Zandalari|

]]
end, {description = [[This guide will walk you through to unlock (spell:429468)]]})
    end

    function Guide:Unload()
    end
end