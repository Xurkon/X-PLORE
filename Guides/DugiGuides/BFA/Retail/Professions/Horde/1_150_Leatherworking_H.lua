local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_BFA_1_150_Leatherworking_H")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth Leveling|r", "BFA Leatherworking (1-175)", nil, "Horde", nil, "P", nil, function()
return [[

N Train Zandalari Leatherworking |N|Speak to (npc:122698) and Train Zandalari Leatherworking (44.07,34.63)| |Z|1165| |P|871 1| |NPC|122698|
N Materials Required |N|Collect materials for level 1-50 by skinning or purchase from the auction house<br/><b>350 (item:152541)<br/><b>250 (item:154164)| |P|871 50| |L|152541 350|
N Materials Required |N|Collect materials for level 1-50 by skinning or purchase from the auction house<br/><b>350 (item:152541)<br/><b>250 (item:154164)| |P|871 50| |L|154164 250|
N 1-25 (spell:256756) |LE| |N|Craft 25 (spell:256756)<br/><b>150 (item:152541)<br/><b>100 (item:154164) (44.07,34.63)| |Z|1165| |P|871 25| |NPC|122698|
N 25-50 (spell:256754) |LE| |N|Craft 25 (spell:256754)<br/><b>200 (item:152541)<br/><b>150 (item:154164) (44.07,34.63)| |Z|1165| |P|871 50| |NPC|122698|
B 50 (item:160059) |N|Speak to (npc:141609) and buy 50 (item:160059) (43.8,33.6)| |Z|1165| |P|871 70| |L|160059 50| |NPC|141609|
N Materials Required |N|Collect materials for level 50-70 by skinning or purchase from the auction house<br/><b>50 (item:154722)| |P|871 70| |L|154722 50|
N 50-70 (spell:272278) |LE| |N|Craft 50 (spell:272278)<br/><b>50 (item:154722)<br/><b>50 (item:160059) (44.07,34.63)| |Z|1165| |P|871 70| |NPC|122698|
N Materials Required |N|Collect materials for level 70-85 by skinning or purchase from the auction house<br/><b>375 (item:152541)| |P|871 85| |L|152541 375|
N 70-120 (spell:256790) |LE| |N|Craft 15 (spell:256790)<br/><b>375 (item:152541) (44.07,34.63)| |Z|1165| |P|871 70| |NPC|122698|
N Materials Required |N|Collect materials for level 85-120 by skinning or purchase from the auction house<br/><b>900 (item:152541)| |P|871 120| |L|152541 900|
N 85-120 (spell:286019) |LE| |N|Craft 45 (spell:286019), you can train rank 2 from the trainer<br/><b>375 (item:152541) (44.07,34.63)| |Z|1165| |P|871 120| |NPC|122698|
N Materials Required |N|Collect materials for level 50-150 by skinning or purchase from the auction house<br/><b>750 (item:152541)<br/><b>300 (item:154164)| |P|871 150| |L|152541 750|
N Materials Required |N|Collect materials for level 50-150 by skinning or purchase from the auction house<br/><b>750 (item:152541)<br/><b>300 (item:154164)| |P|871 150| |L|154164 300|
N 120-150 (spell:256791) |LE| |N|Craft 30 (spell:256791)<br/><b>750(item:152541)<br/><b>300 (item:154164) (44.07,34.63)| |Z|1165| |P|871 150| |NPC|122698|
N Switch Guide |QID|55053| |N|Switch to (guide:"1355(50+)#1355(50+)#1355(50+)") and complete (qid:55053) quest|
N 350 (item:168649) |SK| |N|Collect 350 (item:168649), Skin them from Beast mobs in Nazjatar with Skinning or purchase them from the Auction House| |L|168649 350| |P|871 175|
N 150-175 (spell:301405) |LE| |N|Craft 35 (spell:301405), train the skill from (npc:154321)<br/><b>175 (item:159959)<br/><b>350 (item:168649) (38.01,53.60)| |Z|1355| |P|871 175| |NPC|154321|

N Guide Complete |N|You have reach level 175 Zandalari Leatherworking|
]]
end) end
 
 function Guide:Unload()
 end
end