local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Prof_En_Northrend_1_75_Enchanting")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Northrend Leveling|r", "Northrend Enchanting (1-75)", nil, nil, nil, "P", nil, function()
return [[

N Trainers |N|The trainers listed are the ones in {Dalaran}. Obviously you can use others as you see fit.| |P|663 1|
N Note! |N|You can put enchants on an (item:38682) if you can't put it on your own armor because its too high level. Enchanting Vellum is sold by General Goods vendors or Enchanting Supply vendors near your trainer.| |P|663 1|
N Note! |N|Blood Elf characters have +10 Enchanting skill because of their passive (spell:28877). An extra 10 Enchanting skill means recipes stay orange for 10 more points, so you can save a lot of gold by doing lower level recipes for 10 more points.| |P|663 1|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Train Northrend Enchanting |N|(npc:28693) in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 1|
N Learn Enchanting Formulas |N|Speak to (npc:28693) and learn all available enchanting formulas in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 2|

N Materials Required |N|Collect materials for level 1-75<br/><b>45 (item:34055)<br/><b>25 (item:34057)<br/><b>370 (item:34054)<br/><b>40 (item:34056)| |P|663 75|
N 1-15 (spell:44506) |ENC| |N|Craft 14 (spell:44505)<br/><b>15 (item:34055)| |P|663 15|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Enchanting Formulas |N|Speak to (npc:28693) and learn all available enchanting formulas in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 16|
N 15-30 (spell:69412) |ENC| |N|Craft 20 (spell:69412)<br/><b>20 (item:34057)| |P|663 30|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Enchanting Formulas |N|Speak to (npc:28693) and learn all available enchanting formulas in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 31|
N 30-40 (spell:44484) |ENC| |N|Craft 10 (spell:44484)<br/><b>120 (item:34054)| |P|663 40|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Enchanting Formulas |N|Speak to (npc:28693) and learn all available enchanting formulas in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 41|
N 40-45 (spell:44488) |ENC| |N|Craft 5 (spell:44498)<br/><b>20 (item:34055)| |P|633 45|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Enchanting Formulas |N|Speak to (npc:28693) and learn all available enchanting formulas in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 46|
N 45-55 (spell:44409) |ENC| |N|Craft 5 (spell:44409)<br/><b>40 (item:34054)<br/><b>40 (item:34056)| |P|663 55|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
N Learn Enchanting Formulas |N|Speak to (npc:28693) and learn all available enchanting formulas in {Simply Enchanting} (39.06, 40.15)| |Z|125| |NPC|28693| |P|663 56|
N 55-60 (spell:60668) |ENC| |N|Craft 5 (spell:60668)<br/><b>75 (item:34054)| |P|663 60|

R Dalaran |N|Travel to {Dalaran} (72.89, 45.57)| |Z|125|
B (item:44471) |N|Speak to (npc:32514) and buy (item:44471) with 4 (item:34052) in {Simply Enchanting} (38.64, 40.58)| |Z|125| |NPC|32514| |L|44471|
B (item:37349) |N|Speak to (npc:32514) and buy (item:37349) with 4 (item:34052) in {Simply Enchanting} (38.64, 40.58)| |Z|125| |NPC|32514| |L|37349|
N 60-65 (spell:47672) |ENC| |N|Craft 5 (spell:47672)<br/><b>75 (item:34054)<br/><b>10 (item:34055)| |P|663 65|
N 65-75 (spell:44631) |ENC| |N|Craft 5 (spell:44631)<br/><b>60 (item:34054)<br/><b>5 (item:34057)| |P|663 75|

N Guide Complete |N|You reach 75 Northrend Enchanting|

]]
end, {description = [[This guide covers how to level the Northrend Enchanting profession from 1-75.]]})
    end

	function Guide:Unload()
	end
end
