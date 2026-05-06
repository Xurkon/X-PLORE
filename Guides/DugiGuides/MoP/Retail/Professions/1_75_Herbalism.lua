local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Pandaria_1_75_Herbalism")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Pandaria Leveling|r", "Pandaria Herbalism (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Note! |N|If you have the (item:95416) mount, you should use it while leveling herbalism because you can pick herbs without dismounting.<br/><b>Tick this step| |P|1036 1|
N Note! |N|Tauren characters have +15 Herbalism skill because of their passive (spell:20552). An extra 15 Herbalism skill means herb nodes stay orange 15 points longer, so you can herb the same herb node longer. Tauren characters also get the ability to gather herbs faster than normal herbalists.| |P|1036 1|

R Halfhill |N|Travel to {Halfhill} (55.90, 49.43)| |Z|376| |P|1036 1|
N Train Pandaria Herbalism |N|(npc:65877) in {Half Hill Market} (53.71, 51.22)| |Z|376| |NPC|65877| |P|1036 1|

R Valley of the Four Winds |N|Travel to {Valley of the Four Winds} (84.94, 23.01)| |Z|376| |P|1036 45|
N 1-45 (map:376) |HE| |LOOP| |N|<b>(item:72235)<br/><b>(item:72238) (87.48, 23.15)(87.27, 30.73)(83.27, 36.24)(78.30, 40.36)(75.29, 43.98)(66.61, 63.37)(57.79, 72.58)(47.80, 69.51)(36.34, 74.09)(32.96, 78.49)(30.41, 72.05)(29.48, 67.61)(34.44, 58.29)(34.98, 54.08)(35.66, 36.95)(37.58, 32.19)(43.25, 42.91)(44.95, 34.35)(51.61, 27.25)(52.21, 31.73)(58.36, 43.97)(60.33, 40.47)(57.11, 28.34)(61.21, 27.41)(63.14, 29.61)(66.08, 25.72)(82.05, 17.23)(84.24, 11.63)(86.91, 19.27)| |Z|376| |OBJ|209349, 209350| |P|1036 45|

R Winter's Blossom |N|Travel to {Winter's Blossom} (34.56, 59.10)| |Z|379| |P|1036 46|
N 45-75 (map:379) |HE| |LOOP| |N|<b>(item:79010) (33.08, 57.28)(35.07, 50.56)(39.20, 53.31)(40.30, 40.55)(43.34, 44.00)(40.49, 46.72)(45.74, 48.38)(50.06, 50.80)(56.43, 43.26)(58.77, 48.47)(61.33, 55.85)(55.03, 52.81)(52.29, 54.65)(54.28, 62.10)(50.68, 59.42)(44.16, 55.99)(45.27, 64.30)(45.51, 73.85)(40.61, 77.82)(37.63, 81.22)(36.14, 78.62)(39.46, 71.21)(36.30, 66.91)(42.11, 59.71)| |Z|379| |P|1036 75|

N Guide Complete |N|You have reach level 75 Pandaria Herbalism|

]]
end, {description = [[This guide covers how to level the Pandaria Herbalism profession from 1-75.]]})
    end

    function Guide:Unload()
    end
end
