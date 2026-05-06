local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Outland_1_75_Herbalism")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Outland Leveling|r", "Outland Herbalism (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Shattrath City}. Obviously you can use others as you see fit.| |P|1042 1|
N Note! |N|If you have the (item:95416) mount, you should use it while leveling herbalism because you can pick herbs without dismounting.<br/><b>Tick this step| |P|1044 1|
N Note! |N|Tauren characters have +15 Herbalism skill because of their passive (spell:20552). An extra 15 Herbalism skill means herb nodes stay orange 15 points longer, so you can herb the same herb node longer. Tauren characters also get the ability to gather herbs faster than normal herbalists.| |P|1042 1|

R Shattrath City |N|Travel to {Shattrath City} (63.94, 41.31)| |Z|111|
N Train Outland Herbalism |N|(npc:33616) in {The Seer's Library} (43.65, 90.92)| |Z|111| |NPC|33616| |P|1042 1| |REP|934, 2|
N Train Outland Herbalism |N|(npc:33678) in {Aldor Rise} (38.20, 29.94)| |Z|111| |NPC|33678| |P|1042 1| |REP|932, 2|

N 1-50 (map:100) |HE| |LOOP| |N|<b>(item:22785)<br/><b>(item:22786) (73.7, 48.7)(70.2, 58.0)(64.5, 68.5)(56.7, 73.9)(44.3, 67.9)(34.1, 60.1)(14.6, 60.0)(11.6, 47.1)(12.4, 34.9)(28.8, 38.4)(43.2, 41.7)(49.3, 27.5)(66.7, 27.7)| |Z|100| |P|1042 50|
N 1-50 (map:102) |HE| |LOOP| |N|<b>(item:22785)<br/><b>(item:22786) (81.7, 62.9)(83.0, 51.2)(88.4, 41.7)(85.2, 31.6)(77.5, 34.7)(68.1, 42.5)(60.3, 34.5)(46.7, 29.5)(37.4, 36.5)(35.6, 23.4)(20.0, 18.2)(16.4, 36.5)(18.9, 48.9)(25.2, 53.2)(41.0, 62.7)(52.2, 65.8)(64.5, 66.2)| |Z|102| |P|1042 50| |O|
N 1-50 (map:108) |HE| |LOOP| |N|<b>(item:22786)<br/><b>(item:22789) (37.4, 27.1)(29.5, 37.0)(31.0, 46.6)(23.4, 56.6)(25.7, 66.0)(29.6, 67.1)(28.7, 77.8)(35.7, 80.0)(43.9, 82.3)(51.6, 82.7)(54.7, 67.3)(64.1, 71.0)(61.3, 83.4)(70.2, 87.7)(76.1, 81.3)(68.6, 52.6)(74.4, 33.3)(70.8, 27.9)(59.8, 21.7)(43.2, 08.7)(31.3, 07.1)| |Z|108| |P|1042 50| |O|
N 1-75 (map:109) |HE| |LOOP| |N|<b>(item:22791) (36, 70)(37, 79)(48, 87)(60, 86)(60, 78)(51, 75)(50, 69)(56, 66)(67, 60)(57, 58)(50, 54)(46, 47)(40, 52)(47, 64)| |Z|109| |P|1042 75|
N 1-75 (map:104) |HE| |LOOP| |N|<b>(item:22792) (20.3, 31.6)(26.9, 36.5)(28.4, 52.2)(31.8, 54.3)(41.5, 60.7)(46.6, 72.0)(49.8, 63.1)(53.2, 68.7)(58.1, 57.2)(72.5, 44.2)(65.5, 30.0)(61.5, 21.9)(47.4, 21.9)(30.9, 35.1)(25.7, 29.5)| |Z|104| |P|1042 75| |O|

N Guide Complete |N|You have reach level 75 Outland Herbalism|

]]
end, {description = [[This guide covers how to level the Outland Herbalism profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
