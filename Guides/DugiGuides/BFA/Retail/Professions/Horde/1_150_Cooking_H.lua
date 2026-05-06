local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_BFA_1_150_Cooking_H")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth Leveling|r", "BFA Cooking (1-175)", nil, "Horde", nil, "P", nil, function()
return [[

N Train Zandalari Cooking (npc:141549) |CO| |N|Speak to (npc:141549) in {Terrace of Crafters} and Train Zandalari Cooking (28.45,50.0)| |Z|1164| |P|1118 1| |NPC|141549|
N 98 (item:160711) |N|Collect 98 (item:160711), these are gathered from using fish caught in Zandalar and Kul Tiras or purchase them from the Auction House| |L|160711 98| |P|1118 50|
B 245 (item:160400) |N|Speak to (npc:142325) and buy 245 (item:160400) in {Terrace of Crafters} (52.6,86.0)| |Z|1165| |P|1118 50| |L|160400 245| |NPC|142325|
B 196 (item:160712) |N|Speak to (npc:142325) and buy 245 (item:160712) in {Terrace of Crafters} (52.6,86.0)| |Z|1165| |P|1118 50| |L|160712 196| |NPC|142325|
B 490 (item:160399) |N|Speak to (npc:142325) and buy 245 (item:160399) in {Terrace of Crafters} (52.6,86.0)| |Z|1165| |P|1118 50| |L|160399 490| |NPC|142325|

N 1-35 (spell:259442) |CO| |N|Cook 34 (spell:259442)<br/><b>340 (item:160399)<br/><b>170 (item:160400)<br/><b>64 (item:160711)<br/><b>136 (item:160712)<br/><br/>Save any (spell:259442) you craft.| |P|1118 35|
N 35-50 (spell:259443) |CO| |N|Learn the Rank 2 Recipe from (npc:141549) and cook 15 (spell:259443)<br/><b>150 (item:160399)<br/><b>75 (item:160400)<br/><b>30 (item:160711)<br/><b>60 (item:160712) (28.45,50.0)| |Z|1165| |P|1118 50|
N 600 (item:154898) |N|Collect (item:154898) by farming or purchase from the Auction House<br/><br/>Use (guide:"Tradeskill Farming") guide for farming| |Z|1165| |P|1118 110|
B 300 (item:160398) |N|Speak to (npc:142325) and buy 300 (item:160398) in {Terrace of Crafters} (52.6,86.0)| |Z|1165| |P|1118 110| |L|160398 300| |NPC|142325|
N 50-90 (spell:259414) |CO| |N|Learn recipe from (npc:141549) and cook 40 (spell:259414)<br/><b>400 (item:154898)<br/><b>200 (item:160398) (28.45,50.0)| |Z|1164| |P|1118 90|
N 90-110 (spell:259415) |CO| |N|Learn Rank 2 recipe from (npc:141549) and cook 20 (spell:259415)<br/><b>200 (item:154898)<br/><b>100 (item:160398) (28.45,50.0)| |Z|1164| |P|1118 110|
N 110-140 (spell:259416) |CO| |N|Rank 3 recipe can be obtain randomly from Cooking World quests and cook 40 (spell:259416)<br/><b>400 (item:154898)<br/><b>200 (item:160398) (28.45,50.0)| |Z|1165| |P|1118 140|
N Switch Guide |QID|55053| |N|Switch to (guide:"1355(50+)#1355(50+)#1355(50+)") and complete (qid:54972) quest| |QID|55053|
B 129 (item:160400) |N|Buy 120(item:160400) from (npc:154408) (49.30,61.88)| |L|160400 120| |Z|1355| |NPC|154408|
B 200 (item:160399) |N|Buy 200 (item:160399) from (npc:154408) (49.30,61.88)| |L|160399 200| |Z|1355| |NPC|154408|
N 140-155 (spell:297084) |CO| |N|Craft 15 rank 1 (spell:297084), learn the recipe from (npc:154408)<br/><b>120 (item:168645)<br/><b>45 (item:160400)<br/><b>75 (item:160399)| |Z|1355| |P|1118 155| |NPC|154408| 
N 155-175 (spell:297085) |CO| |N|Craft 15 rank 2 (spell:297085), learn the recipe from (npc:154408)<br/><b>200 (item:168645)<br/><b>75 (item:160400)<br/><b>125 (item:160399)| |Z|1355| |P|1118 175| |NPC|154408| 

N Guide Complete |N|Congratulation! You reached level 175 with the Zandalari Cooking profession|
]]
end) end
 
 function Guide:Unload()
 end
end