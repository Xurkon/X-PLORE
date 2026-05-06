local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Cataclysm_1_75_Herbalism")
function Guide:Initialize()
    function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Cataclysm Leveling|r", "Cataclysm Herbalism (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Stormwind City}. Obviously you can use others as you see fit.| |P|1038 1| |FAC|Alliance|
N Trainers |N|The trainers listed are the ones in {Orgrimmar}. Obviously you can use others as you see fit.| |P|1038 1| |FAC|Horde|
N Note! |N|If you have the (item:95416) mount, you should use it while leveling herbalism because you can pick herbs without dismounting.<br/><b>Tick this step| |P|1038 1|
N Note! |N|Tauren characters have +15 Herbalism skill because of their passive (spell:20552). An extra 15 Herbalism skill means herb nodes stay orange 15 points longer, so you can herb the same herb node longer. Tauren characters also get the ability to gather herbs faster than normal herbalists.| |P|1038 1|

R Stormwind City |N|Travel to {Stormwind City} (60.4, 75.3)| |Z|84| |FAC|Alliance|
N Train Cataclysm Herbalism |N|(npc:5566) in {Mage Quarter} (54.41, 84.17)| |Z|84| |NPC|5566| |P|1038 1| |FAC|Alliance|
R Orgrimmar |N|Travel to {Orgrimmar} (76.4, 34.6)| |Z|85| |FAC|Horde|
N Train Cataclysm Herbalism |N|(npc:46741) in {The Aboretum} (54.92, 50.55)| |Z|85| |NPC|46741| |P|1038 1| |FAC|Horde|

R Uldum |N|Travel to {Uldum} (54.90, 34.25)| |Z|249|
N 1-75 (map:249) |HE| |LOOP| |N|<b>(item:52983)<br/><b>(item:52988) (56.49, 34.09)(57.40, 30.66)(55.57, 24.65)(55.97, 19.80)(57.60, 14.75)(61.16, 14.48)(58.62, 17.96)(57.34, 23.44)(59.44, 30.92)(59.48, 38.96)(57.40, 44.63)(59.43, 52.67)(60.63, 59.04)(62.43, 63.80)(66.58, 70.05)(70.61, 75.34)(70.77, 78.09)(65.67, 78.16)(60.94, 83.15)(58.16, 83.96)(57.82, 72.87)(58.33, 61.49)(57.32, 54.32)(53.96, 48.00)(47.99, 40.25)(47.43, 30.91)(42.96, 27.48)(43.29, 26.33)(48.30, 28.25)(50.93, 31.10)| |Z|249| |P|1038 75|

N Guide Complete |N|You have reach 75 Cataclysm Herbalism|

]]
end, {description = [[This guide covers how to level the Cataclysm Herbalism profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
