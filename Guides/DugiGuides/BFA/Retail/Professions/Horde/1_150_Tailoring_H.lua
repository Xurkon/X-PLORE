local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_BFA_1_150_Tailoring_H")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth Leveling|r", "BFA Tailoring (1-175)", nil, "Horde", nil, "P", nil, function()
return [[

N Train Zandalari Tailoring |N|Speak to (npc:122700) and Train Zandalari Tailoring (76.93,11.16)| |Z|1161| |P|942 1| |NPC|122700|
N 380 (item:152576) |N|Collect 380 (item:152576) for level 1-75 with farming or purchase from the auction house| |L|152576 380| |P|942 75| 
N 1-70 (spell:267201) |N|Craft 150 (spell:267201)<br/><b>300 (item:152576) (76.93,11.16)| |Z|1161| |P|942 70| |NPC|122700|
N 1-75 (spell:257104) |N|Craft 5 (spell:257104)<br/><b>80 (item:152576) (76.93,11.16)| |Z|1161| |P|942 75| |NPC|122700|
N Materials Required |N|Colllect materials for level 75-150<br/><b>150 (item:152577)<br/><b>150 (item:152576)| |P|942 150| |L|152577 150|
N Materials Required |N|Colllect materials for level 75-150<br/><b>150 (item:152577)<br/><b>150 (item:152576)| |P|942 150| |L|152576 150|
B 750 (item:159959) |N|Speak to (npc:141609) and buy 750 (item:159959)  (43.96,33.50)| |Z|1161| |P|942 150| |L|159959 750| |NPC|141609|
N 75-150 (spell:272440) |N|Craft 150 (spell:272440)<br/><b>150 (item:152577)<br/><b>150 (item:152576)<br/><b>750 (item:159959) (76.93,11.16)| |Z|1161| |P|942 150| |NPC|122700|
N Switch Guide |QID|55053| |N|Switch to (guide:"1355(50+)#1355(50+)#1355(50+)") and complete (qid:55053) quest|
N 150-162 (spell:301403) |N|Craft 2 (spell:301403), learn the skill from (npc:154321)<br/><b>20 (item:158378)<br/><b>50 (item:167738)<br/><b>40 (item:159959) (49.09,61.52)| |Z|1355| |P|942 162| |NPC|154321|
N 162-170 (spell:301409) |N|Craft 12 (spell:301409), learn the skill from (npc:154321)<br/><b>120 (item:158378)<br/><b>600 (item:167738)<br/><b>240 (item:159959) (49.09,61.52)| |Z|1355| |P|942 162| |NPC|154321|
N 6 (item:137642) |N|Collect 6 (item:137642)<br/><b>You can get these from completing Battlegrounds and various PvP quests<br/><b>You can also continue making the previous item, it will cost more materials| |Z|1355| |P|942 175| 
N 170-175 (spell:294837) |N|Craft 5 (spell:294837), buy the recipe from (npc:154652)<br/><b>75 (item:167738)<br/><b>25 (item:152577)<br/><b>100 (item:159959)<br/><b>5 (item:152668) (48.81,60.70)| |Z|1355| |P|942 175| |NPC|154652|

N Guide Complete |N|You have reach level 175 Zandalari Tailoring|

]]
end) end
 
 function Guide:Unload()
 end
end