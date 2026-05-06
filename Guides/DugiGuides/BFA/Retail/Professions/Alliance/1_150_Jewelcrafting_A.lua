local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_BFA_1_150_Jewelcrafting_A")
function Guide:Initialize()
 function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Battle for Azeroth Leveling|r", "BFA Jewelcrafting (1-175)", nil, "Alliance", nil, "P", nil, function()
return [[

N Train Kul Tiran Jewelcrafting |N|Speak to (npc:130368) and train Kul Tiran Jewelcrafting<br/><br/>Come back to this trainer to learn new recipes for later levels (75.21,9.87)| |Z|1161| |P|805 1| |NPC|136059|
N (item:20815) |N|Speak to (npc:130368) and purchase (item:20815) (75.21,9.87)| |Z|1161| |P|805 75| |L|20815| |NPC|130368|
N 1-75 Any Common Gems |N|Craft around 130-150 from any of these: <br/><b>(spell:256689)<br/><b>(spell:256693)<br/><b>(spell:256692)<br/><b>(spell:256694)<br/><b>(spell:256691) (75.21,9.87)| |Z|1161| |P|805 75| |NPC|130368|
N 75-140 Any Rare Gems |N|Craft around 100 from any of these: <br/><b>(spell:256696)<br/><b>(spell:256698)<br/><b>(spell:256699)<br/><b>(spell:256695) (75.21,9.87)| |Z|1161| |P|805 140| |NPC|130368|
N 140-150 Any Epic Gems |N|Craft 10 from these: <br/><b>(spell:256701)<br/><b>(spell:256702)<br/><b>(spell:256700)<br/><br/>Require 10 (item:153706), you can prospect this randomly from BFA ores (75.21,9.87)| |Z|1161| |P|805 150| |NPC|130368|

N Switch Guide |QID|54972| |N|Switch to (guide:"1355(50+)#1355(50+)#1355(50+)") and complete (qid:54972) quest|
N 150-170 Any Osmenite Ore  |N|Craft 20 of any gems prospected from (item:168185), save (item:168635) for level 170-175 <br/><b>train the skill from (npc:153811) (37.93,53.18)| |Z|1355| |P|805 155| |NPC|153811|
N 170-175 (item:168635) |N|Craft 5 gems using (item:168635), train the skill from (npc:153811) (37.93,53.18)| |Z|1355| |P|805 175| |NPC|153811|

N Guide Complete |N|You have reach level 175 Kul Tiran Jewelcrafting|
]]
end) end
 
 function Guide:Unload()
 end
end