local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_BFA_1_150_Tailoring_A")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth Leveling|r", "BFA Tailoring (1-175)", nil, "Alliance", nil, "P", nil, function()
return [[

N Train Kul Tiran Tailoring |N|Speak to (npc:136071) and Train Kul Tiran Tailoring (76.93,11.16)| |Z|1161| |P|942 1| |NPC|136071|
N 380 (item:152576) |N|Collect 380 (item:152576) for level 1-75 with farming or purchase from the auction house| |L|152576 380| |P|942 75| 
N 1-70 (spell:267201) |N|Craft 150 (spell:267201)<br/><b>300 (item:152576) (76.93,11.16)| |Z|1161| |P|942 70| |NPC|136071|
N 1-75 (spell:257104) |N|Craft 5 (spell:257104)<br/><b>80 (item:152576) (76.93,11.16)| |Z|1161| |P|942 75| |NPC|136071|
N Materials Required |N|Colllect materials for level 75-150<br/><b>150 (item:152577)<br/><b>150 (item:152576)| |P|942 150| |L|152577 150|
N Materials Required |N|Colllect materials for level 75-150<br/><b>150 (item:152577)<br/><b>150 (item:152576)| |P|942 150| |L|152576 150|
B 750 (item:159959) |N|Speak to (npc:142095) and buy 750 (item:159959) (73.22,11.36)| |Z|1161| |P|942 150| |L|159959 750| |NPC|142095|
N 75-150 (spell:272440) |N|Craft 150 (spell:272440)<br/><b>150 (item:152577)<br/><b>150 (item:152576)<br/><b>750 (item:159959) (76.93,11.16)| |Z|1161| |P|942 150| |NPC|136071|
N Switch Guide |QID|54972| |N|Switch to (guide:"1355(50+)#1355(50+)#1355(50+)") and complete (qid:54972) quest|
N 150-162 (spell:301403) |N|Craft 2 (spell:301403), learn the skill from (npc:153817)<br/><b>20 (item:158378)<br/><b>50 (item:167738)<br/><b>40 (item:159959) (38.01,53.59)| |Z|1355| |P|942 162| |NPC|153817|
N 162-170 (spell:301409) |N|Craft 12 (spell:301409), learn the skill from (npc:153817)<br/><b>120 (item:158378)<br/><b>600 (item:167738)<br/><b>240 (item:159959) (38.01,53.59)| |Z|1355| |P|942 162| |NPC|153817|
N 6 (item:137642) |N|Collect 6 (item:137642)<br/><b>You can get these from completing Battlegrounds and various PvP quests<br/><b>You can also continue making the previous item, it will cost more materials| |Z|1355| |P|942 175| 
N 170-175 (spell:294837) |N|Craft 5 (spell:294837), buy the recipe from (npc:154652)<br/><b>75 (item:167738)<br/><b>25 (item:152577)<br/><b>100 (item:159959)<br/><b>5 (item:152668) (38.11,55.37)| |Z|1355| |P|942 175| |NPC|154652|

N Guide Complete |N|You have reach level 175 Kul Tiran Tailoring|
]]
end) end
 
 function Guide:Unload()
 end
end