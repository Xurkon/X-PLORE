local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dungeons_Alliance_En_24_29_Gnomeregan")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cfff0c502Azeroth 1-60|r", "226(24-29)", "431(26-31)", "Alliance", nil, "I", nil, function()
return [[

R Gnomeregan Instance |N|Queue/Zone into {Gnomeregan} in {Dun Morogh} (31.33, 38.04)(25.30, 36.88)(30.00, 37.90)| |I| |QID|26939| |Z|27| |F|226| |WR|
A The G-Team (Part 1) |N|(npc:44556) (63.2, 32.8)| |QID|26939| |Z|226| |NPC|44556|
N (item:60680) |N|Get a (item:60680) from the box (55.57, 40.44)| |L|60680| |QID|26942| |T|
C The G-Team (Part 1) |N|Use the (item:60680) to jump down into the Hall of Gears. Then kill the (npc:7079) (77.0, 45.0)| |QID|26939| |U|60680| |Z|227| |NPC|7079|
T The G-Team (Part 1) |N|(npc:44560) (65.8, 47.6)| |QID|26939| |Z|227| |NPC|44560|

A The G-Team (Part 2) |N|(npc:44560) (65.8, 47.6)| |QID|26941| |Z|227| |NPC|44560|
C The G-Team (Part 2) |N|Kill the (npc:6235) (56.47, 49.30) (53.69, 67.87) (38.28, 70.79) (23.69, 86.65) (12.11, 65.47) (24.6, 67.4), it's a robotic spider tank| |QID|26941| |U|60680| |Z|227| |NPC|6235|
N (item:60680) |N|Get a (item:60680) from the box (24.50, 70.32)| |L|60680| |QID|26942| |T| |Z|227|
T The G-Team (Part 2) |N|(npc:44561) (24.5, 39.5) Use the parachute to jump down| |QID|26941| |Z|228|| |NPC|44561|

A The G-Team (Part 3) |N|(npc:44561) (24.5, 39.5)| |QID|26942| |Z|228|| |NPC|44561|
R Tinkers' Court |N|Go down to {Tinkers' Court} (23.21, 48.48)| |QID|26942| |Z|229|
C The G-Team (Part 3) |N|Kill (npc:7800) the final boss, he moves around tinker's court (41.55, 68.43) (27.69, 62.83) (31.6, 32.2)| |QID|26942| |Z|229| |NPC|7800|
T The G-Team (Part 3) |N|(npc:44563) (34.8, 19.7)| |QID|26942| |Z|229| |NPC|44563|

N Guide Complete 

]]
end)

	end
	
	function Guide:Unload()
	end
end
