local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Draenei_Heritage_Questline")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Feats of Strength"}, "Draenei Heritage Armor", nil, "Alliance", nil, "A", "|SG|UnitLevel([[player]])>=50|", function()
return [[

N Level 50+ Required |N|You must be 50+ to use this guide| |PL|50| |R|Draenei|
N Draenei Only |N|You must be a Draenei to use this guide| |R|DarkIron,Dracthyr,Dwarf,Gnome,Human,KulTiran,LightForged,Mecha,NightElf,Pandaren,Void,Worgen|

R Stormwind Embassy |QID|78068| |N|Travel to {Stormwind Embassy} (55.95, 19.26)| |Z|84| |R|Draenei|
A An Artificer's Appeal |QID|78068| |N|(npc:415303) in {Stormwind Embassy} (53.09, 15.58)| |Z|84| |NPC|415303| |R|Draenei|

U (item:210454) |QID|78068| |U|210454| |N|Use (item:210454) in {Stormwind Embassy} (53.09, 15.58)| |Z|84| |REACH|56.36,81.68,103| |R|Draenei|
N Meet Romuul in the Exodar |QID|78068.2| |N|Approach (npc:210340) in {Trader's Tier} (55.85, 81.12)| |Z|103| |NPC|210340| |R|Draenei|

T An Artificer's Appeal |QID|78068| |N|(npc:210340) in {Trader's Tier} (54.86, 79.74)| |Z|103| |NPC|210340| |R|Draenei|
A Reviving Tradition |QID|78069| |N|(npc:210340) in {Trader's Tier} (54.86, 79.74)| |Z|103| |NPC|210340| |R|Draenei|

N Empyrium Filament |QID|78069.1| |N|Click on Artificing Tools in {Trader's Tier} (57.82, 79.94)| |Z|103| |OBJ|420018| |R|Draenei|
N Hyperthermal Soldering Tool |QID|78069.2| |N|Click on Artificing Tools in {Trader's Tier} (51.44, 74.91)| |Z|103| |OBJ|420018| |R|Draenei|
N Materials Brought to Romuul |QID|78069.3| |N|Speak with (npc:210340) in {Trader's Tier} (54.73, 79.80)| |Z|103| |NPC|210340| |R|Draenei|
N Arkonite Array Connected |QID|78069.4| |N|Click on two crystals then the centre then repeat for the other side (53.93, 79.41)| |Z|103| |R|Draenei|

T Reviving Tradition |QID|78069| |N|(npc:210340) in {Trader's Tier} (54.76, 79.73)| |Z|103| |NPC|210340| |R|Draenei|
A Pressing Deadlines |QID|78070| |N|(npc:210340) in {Trader's Tier} (54.76, 79.73)| |Z|103| |NPC|210340| |R|Draenei|

U (item:210454) |QID|78070| |U|210454| |N|Use (item:210454) in {Trader's Tier} (54.76, 79.73)| |Z|103| |REACH|34.39,45.80,111| |R|Draenei|
N (npc:208494) |QID|78070.2| |N|Speak to (npc:208494) in {Aldor Rise} (38.89, 46.89)| |Z|111| |NPC|208494| |R|Draenei|

T Pressing Deadlines |QID|78070| |N|(npc:208494), in {Aldor Rise} (38.89, 46.89)| |Z|111| |NPC|208494| |R|Draenei|
A Rush Order |QID|78071| |N|(npc:208494) in {Aldor Rise} (38.89, 46.89)| |Z|111| |NPC|208494| |R|Draenei|

N (npc:208496) |QID|78071.1| |N|Speak with (npc:208496) in {Aldor Rise} (38.03, 46.91)| |Z|111| |NPC|208496| |R|Draenei|
N Draenite Miners Located |QID|78071.2| |N|Locate the Draenite miners in (map:108) (40.43, 25.09)| |Z|108| |R|Draenei|
N 3 Draenite Crates Loaded |QID|78071.3| |N|Click on 3 Draenite Crates in (map:108) (40.63, 25.24)| |Z|108| |OBJ|420018| |R|Draenei|
N Draenite Fragments Gathered |QID|78071.4| |N|Kill (npc:212100)'s that spawn and then click on Draenite Fragments in (map:108) (40.64, 25.20)| |Z|108| |NPC|210098, 212100| |R|Draenei|
N Signed Work Orders |QID|78071.6| |N|Speak with (npc:212120) in {Lower City} (75.94, 47.53)| |Z|111| |NPC|212120| |R|Draenei|
N Draenite Delivered to Crystalsmiths |QID|78071.5| |N|Speak with (npc:212120) in {Lower City} (75.94, 47.53)| |Z|111| |NPC|121120| |R|Draenei|
N Work Orders Brought to Ataanya |QID|78071.7| |N|Speak with (npc:208494) in {Aldor Rise} (38.83, 46.89)| |Z|111| |NPC|208494| |R|Draenei|

T Rush Order |QID|78071| |N|(npc:208496) in {Aldor Rise} (38.04, 46.88)| |Z|111| |NPC|208496| |R|Draenei|
A An Old Wound |QID|78072| |N|(npc:208496) in {Aldor Rise} (38.04, 46.88)| |Z|111| |NPC|208496| |R|Draenei|

N (npc:210575) |QID|78072.1| |N|Speak to (npc:210575) in {Ring of Observance} (37.52, 64.23)| |Z|108| |NPC|210575| |R|Draenei|

T An Old Wound |QID|78072| |N|(npc:210578) in {Ring of Observance} (37.52, 64.30)| |Z|108| |NPC|210578| |R|Draenei|
A Lingering Scars |QID|78073| |N|(npc:210578) in {Ring of Observance} (37.52, 64.30)| |Z|108| |NPC|210578| |R|Draenei|

N Auchenai Translocator |QID|78073| |N|Use the Auchenai Translocator in {Ring of Observance} (37.38, 64.73)| |Z|108| |REACH|38.27,69.47| |R|Draenei|
N Commune with Exarch Larohir |QID|78073.2| |N|Stand in the middle of the glowing circle on the ground and then click on (spell:424689) ability on screen in {Auchindoun} (38.17, 69.71)| |Z|108| |R|Draenei|
N Shattrath Victims Returned to Rest |QID|78073.3| |N|Click on 8 (npc:210583) in {Auchindoun} (38.32, 69.76)| |Z|108| |NPC|210583| |R|Draenei|
N Exarch Larohir Calmed |QID|78073.4| |N|Click on Larohir's Ashes in {Auchindoun} (38.11, 69.69)| |Z|108| |R|Draenei|
N Auchenai Translocator |QID|78073| |N|Use the Auchenai Translocator in {Auchindoun} (38.29,69.37)| |Z|108| |REACH|42.12,67.64| |R|Draenei|
N Commune with Exarch Kelios |QID|78073.5| |N|Stand in the middle of the glowing circle on the ground and then click on (spell:427396) ability on the screen in {Auchindoun} (42.36, 67.80)| |Z|108| |R|Draenei|
N Light all Karabor Prayer Candles at Once |QID|78073.6| |N|Click on big Karabor Prayer Candles tehn medium ones then small ones, need to be quick in {Auchindoun} (42.30, 67.88)<br/><b>You can click on Auchenai Brazier but this will have a long cast (106 seconds or so) (42.70,67.82,108, "Auchenai Brazier")| |Z|108| |NPC|211529, 211530, 211533, 211534, 211536, 211538| |R|Draenei|
N Exarch Kelios Clamed |QID|78073.7| |N|Click on Exarch Kelios's Ashes in {Auchindoun} (42.34, 67.92)| |Z|108| |R|Draenei|
N Auchenai Translocator |QID|78073| |N|Use the Auchenai Translocator in {Auchindoun} (42.15, 67.61)| |Z|108| |REACH|41.46,62.23| |R|Draenei|
N Commune with Exarch Restalaan |QID|78073.8| |N|Stand in the middle of the glowing circle on the ground and then click on (spell:430931) abiulity on the screen in {Auchindoun} (41.53, 61.89)| |Z|108| |R|Draenei|
K (npc:211623) |QID|78073.9| |N|Kill 2 (npc:211623) in {Auchindoun} (41.48, 61.97)| |Z|108| |NPC|211623| |R|Draenei|
N Restalaan Calmed |QID|78073.10| |N|Click on Restalaan's Ashes in {Auchindoun} (41.45, 61.82)| |Z|108| |R|Draenei|

T Lingering Scars |QID|78073| |N|(npc:210581) in {Auchindoun} (41.61, 61.63)| |Z|108| |NPC|210581| |R|Draenei|
A To See Clearly |QID|78074| |N|(npc:210581) in {Auchindoun} (41.61, 61.63)| |Z|108| |NPC|210581| |R|Draenei|

N Auchenai Translocator |QID|78074| |N|Use the Auchenai Translocator in {Auchindoun} (41.43, 62.23)| |Z|108| |REACH|37.36,62.88| |R|Draenei|
N Request Spoken to Hataaru's Ashes |QID|78074.2| |N|Click on Hataaru's Ashes in {Auchindoun} (37.10, 62.88)| |Z|108| |R|Draenei|
N Exarch Hataaru's Artificing Lens |QID|78074.3| |N|Click on Artificer's Lockbox in {Auchindoun} (36.85, 62.64)| |Z|108| |R|Draenei|
N Lens Taken to Ataanya in Shattrath |QID|78074.4| |N|Speak with (npc:210569) in {Aldor Rise} (39.03, 46.26)| |Z|111| |NPC|210569| |R|Draenei|

T To See Clearly |QID|78074| |N|(npc:210569) in {Aldor Rise} (39.02, 46.27)| |Z|111| |NPC|210569| |R|Draenei|
A Moving Past |QID|78075| |N|(npc:210569) in {Aldor Rise} (39.02, 46.27)| |Z|111| |NPC|210569| |R|Draenei|

U (item:210454) |QID|78075| |U|210454| |N|Use (item:210454) in {Aldor Rise} (39.02, 46.27)| |Z|111| |REACH|56.36,81.68,103| |R|Draenei|
N Return to Romuul in the Exodar |QID|78075.2| |N|Approach (npc:210340) in {Trader's Tier} (55.99, 80.75)| |Z|103| |NPC|210340|

T Moving Past |QID|78075| |N|(npc:210562) in {Trader's Tier} (55.40, 79.23)| |Z|103| |NPC|210562| |R|Draenei|
A Emergency Efforts |QID|78076| |N|(npc:210563) in {Trader's Tier} (54.12, 76.63)| |Z|103| |NPC|210563| |R|Draenei|
N Argussian Mana Ray Mounted |QID|78076.1| |V| |N|Click on (npc:211689) in {Trader's Tier} (53.83, 75.91)| |Z|103| |NPC|211689| |R|Draenei|

T Emergency Efforts |QID|78076| |N|(npc:210390) in {Middenvale} (52.02, 75.57)| |Z|106| |NPC|210390| |R|Draenei|
A Assessing the Enemy |QID|78078| |N|(npc:210588) in {Middenvale} (51.93, 75.64)| |Z|106| |NPC|210588| |R|Draenei|
A Beneath the Skin |QID|78077| |N|(npc:210391) in {Middenvale} (51.91, 75.53)| |Z|106| |NPC|210391| |R|Draenei|

N As You Go... |AYG|78078| |N|Collect 8 (item:210239) from corrupted wildlife for (qid:78077) and collect 6 (item:210238) for (qid:78078)| |NPC|210395, 210397| |R|Draenei|
N Assessing the Enemy |QID|78078.1| |N|Collect 6 (item:210238) in {Middenvale} (56.38, 72.28)| |Z|106| |R|Draenei|
N Beneath the Skin |QID|78077.1| |N|Collect 8 (item:210239) from corrupted wildlife in {Middenvale} (51.86, 74.38)| |Z|106| |NPC|210395, 210397| |R|Draenei|

T Assessing the Enemy |QID|78078| |N|(npc:210588) in {Middenvale} (51.91, 75.65)| |Z|106| |NPC|210588| |R|Draenei|
T Beneath the Skin |QID|78077| |N|(npc:210391) in {Middenvale} (51.90, 75.53)| |Z|106| |NPC|210391| |R|Draenei|
A Excision |QID|78079| |N|(npc:210390) in {Middenvale} (52.00, 75.58)| |Z|106| |NPC|210390| |R|Draenei|

R Nazzivian |N|Travel to {Nazzivian} (44.46, 77.12)| |Z|106| |R|Draenei|
N Meet Velen and Hatuun |QID|78079.1| |N|Approach Valen and Hauun in {Nazzivian} (43.85, 77.58)| |Z|106| |R|Draenei|
N Man'ari Evidence Found |QID|78079.2| |N|Find 3 Man'ari Evidence in {Nazzivian} (41.60, 77.87)<br/><b>1. (npc:211836) (41.60,77.87,106, "(npc:211836)")<br/><b>2. (npc:211835) (36.54,71.94,106, "(npc:211835)")<br/><b>3. (npc:213500) (35.73,80.92,106, "(npc:213500)")| |Z|106| |NPC|211836, 211835, 213500| |R|Draenei|

R Axxarien |QID|78079| |N|Travel to {Axxarien} (42.34, 37.01)| |Z|106| |R|Draenei|
T Excision |QID|78079| |N|(npc:210600) in {Axxarien} (42.25, 36.79)| |Z|106| |NPC|210600| |R|Draenei|

R Axxarien |QID|78080| |N|Travel to {Axxarien} (42.34, 37.01)| |Z|106| |R|Draenei|
A At the Source |QID|78080| |N|(npc:210598) in {Axxarien} (42.25, 36.61)| |Z|106| |NPC|210598| |R|Draenei|

N Source of Fel Revealed |QID|78080.1| |N|Find the source of fel in {Axxarien} (41.51, 32.88)| |Z|106| |R|Draenei|
N Romuul Called For Aid |QID|78080.2| |N|Stand in the circle on the groound and then click on (spell:428008) ability on the screen in {Axxarien} (41.62, 32.76)| |Z|106| |R|Draenei|
N (npc:210605) |QID|78080.3| |N|Speak with (npc:210605) in {Axxarien} (41.47, 33.00)| |Z|106| |NPC|210605| |R|Draenei|
N Generator Defended |QID|78080.4| |N|Kill waves of mobs and then slay (npc:210604) in {Axxarien} (41.40, 32.80)| |Z|106| |NPC|210602, 210603, 210604| |R|Draenei|

T At the Source |QID|78080| |N|(npc:210605) in {Axxarien} (41.47, 33.01)| |Z|106| |NPC|210605| |R|Draenei|
A Pain Recedes |QID|78081| |N|(npc:210605) in {Axxarien} (41.47, 33.01)| |Z|106| |NPC|210605| |R|Draenei|

U (item:210454) |QID|78081| |U|210454| |N|Use (item:210454) in {Axxarien} (41.46, 32.94)| |Z|106| |REACH|56.36,81.68,103| |R|Draenei|
N Return to Valen  |QID|78081.2| |N|Approach (npc:214021) in {Trader's Tier} (56.07, 81.13)| |Z|103| |NPC|214021| |R|Draenei|

T Pain Recedes |QID|78081| |N|(npc:214021) in {Trader's Tier} (54.82, 80.72)| |Z|103| |NPC|214021| |R|Draenei|
A A Burden Shared |QID|78082| |N|(npc:214021) in {Trader's Tier} (54.82, 80.72)| |Z|103| |NPC|214021| |R|Draenei|

N 10 Memory Stones Collected |QID|78082.1| |N|Collect 10 Memory Stones in {Trader's Tier} (47.78, 81.85)<br/><b>1. (item:210538) (53.87,83.95,103, "(npc:210670)")<br/><b>2. (item:210575) (53.73,84.12,103, "(npc:210671)")<br/><b>3. (item:210576) (55.87,79.87,103, "(npc:210565)")<br/><b>4. (item:210577) (57.87,79.63,103, "(npc:210673)")<br/><b>5. (item:210578) (57.11,93.12,103, "(npc:210672)")<br/><b>6. (item:210579) (57.17,92.98)<br/><b>7. (item:210580) (68.32,80.15,103, "(npc:212343)")<br/><b>8. (item:210581) (47.78,81.85,103, "(npc:212344)")<br/><b>9. (item:210584) (57.35,69.99,103, "(npc:212347)")<br/><b>10. (item:210586) (67.75,84.85,103, "(npc:212349)")| |Z|103|| |Z|103| |R|Draenei|
N Personal Memory Stone Created |QID|78082.2| |N|Speak with (npc:212387) in {Trader's Tier} (64.47, 87.26)<br/><b>Any choice will work| |Z|103| |NPC|212387| |R|Draenei|
N Memory Stones Dissolved |QID|78082.3| |N|Stand in the circle on the ground and then click on (spell:426960) ability on the screen in {Trader's Tier} (65.15, 87.60)| |Z|103| |R|Draenei|

T A Burden Shared |QID|78082| |N|(npc:212387) in {Trader's Tier} (64.46, 87.23)| |Z|103| |NPC|212387| |R|Draenei|
A Our Path Forward |QID|78083| |N|(npc:212387) in {Trader's Tier} (64.46, 87.23)| |Z|103| |NPC|212387| |R|Draenei|

N Ask Velen to Begin the Ceremony |QID|78083.1| |N|Speak with (npc:212402) in {Trader's Tier} (54.81, 80.72)| |Z|103| |NPC|212402| |R|Draenei|

T Our Path Forward |QID|78083| |N|(npc:212402) in {Trader's Tier} (54.81, 80.72)| |Z|103| |NPC|212402| |R|Draenei|

N Guide Complete |N|Congratulations you unlocked (spell:428734)| |R|Draenei|
N Guide Complete |R|DarkIron,Dracthyr,Dwarf,Gnome,Human,KulTiran,LightForged,Mecha,NightElf,Pandaren,Void,Worgen|

]]
end, {description = [[This guide will walk you through to unlock (spell:428734)]]})
    end

    function Guide:Unload()
    end
end