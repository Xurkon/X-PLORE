local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dailies_Alliance_En_Alliance_Vanguard")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("WOTLK Reputation Dailies", "Alliance Vanguard/Valliance Expedition (2500 +Rep)", nil, "Alliance", nil, "D", nil, function()
return [[

R The Skybreaker |N|This is the Alliance Ship that flies around {Icecrown} (57, 37), (60, 46), (64.4, 56)| |Z|118| |WR|
A Capture More Dispatches |N|(npc:30344) on {The Skybreaker}| |QID|13333| |Z|118| |D| |NPC|30344|
A Blood of the Chosen |N|(npc:32302) on {The Skybreaker}| |QID|13336| |Z|118| |D| |NPC|32302|

C Capture More Dispatches |N|Use (item:13333) to capture 6 (npc:32201) around (48, 54)| |U|44222| |QID|13333| |Z|118| |D| |NPC|32201|

A Assault by Ground |N|(npc:31737) (62.7, 51)| |QID|13284| |Z|118| |D| |NPC|31737|
C Assault by Ground |N|Escort the Skybreaker troops| |QID|13284| |Z|118| |D|
C Blood of the Chosen |N|Kill 20 (npc:31258) at {Ymirheim} (59,54)| |QID|13336| |Z|118| |D| |NPC|31258, 31267, 31262|
T Assault by Ground |N|(npc:31808) (62.6, 51.3)| |QID|13284| |Z|118| |D| |NPC|31808|

A Assault by Air |N|(npc:31808) (62.6, 51.3)| |QID|13309| |Z|118| |D| |NPC|31808|
C Assault by Air |N|Go to (59.6, 46.0) and mount the Airplane, make sure there are infiltrators in the plane before you go| |QID|13309| |Z|118| |D|
T Assault by Air |N|(npc:31808) (62.6, 51.3)| |QID|13309| |Z|118| |D| |NPC|31808|

A King of the Mountain |N|(npc:31776) (57, 62.5)| |QID|13280| |Z|118| |D| |NPC|31776|
C King of the Mountain |N|Mount (npc:31770) next to you and jump your way up to the pile of bones (54, 59)| |QID|13280| |Z|118| |D| |NPC|31770|
T King of the Mountain |N|(npc:31776) (57, 62.5)| |QID|13280| |Z|118| |D| |NPC|31776|

R The Skybreaker |N|This is the Alliance Ship that flies around {Icecrown} (57, 37), (60, 46), (64.4, 56)| |Z|118| |WR|
T Capture More Dispatches |N|(npc:30344) on {The Skybreaker}| |QID|13333| |Z|118| |D| |NPC|30344|
T Blood of the Chosen |N|(npc:32302) on {The Skybreaker}| |QID|13336| |Z|118| |D| |NPC|32302|

R Amberpine Lodge |N|Travel to {Amberpine Lodge} in {Grizzly Hills} (30, 59.8)| |D| |Z|116|

A Blackriver Skirmish |N|(npc:27783) (30, 59.8)| |QID|12444| |Z|116| |D| |NPC|27783|
C Blackriver Skirmish |N|Kill 10 (npc:27121) or Players in {Blackriver Logging Camp} (28.5, 62.6)| |QID|12444| |Z|116| |D| |NPC|27118|
T Blackriver Skirmish |N|(npc:27783) (30, 59.8)| |QID|12444| |Z|116| |D| |NPC|27783|

A Kick 'Em While They're Down |N|(npc:27468) (39.4, 43.8)| |QID|12289| |Z|116| |D| |NPC|27468|
A Shredder Repair |N|(npc:27371) (39.5, 43.6)| |QID|12244| |Z|116| |D| |NPC|27371|
A Pieces Parts |N|(npc:27416) (39.6, 43.4)| |QID|12268| |Z|116| |D| |NPC|27416|
A Life or Death |N|(npc:27484) (40.5, 42.6)| |QID|12296| |Z|116| |D| |NPC|27484|

C Life or Death |N|Find the (npc:27466) (35, 40) and use the (item:37576) on them| |U|37576| |QID|12296| |Z|116| |D| |NPC|27482|
C Pieces Parts |N|Collect 4 (item:37412), 3 (item:37413) and 2 (item:37116) around (35, 40)| |QID|12268| |Z|116| |D| |OBJ|451, 7000, 6681|
C Shredder Repair |N|Accept a (npc:27354) (35, 40) and bring it back Synipus (39.5, 43.6)| |QID|12244| |Z|116| |D| |NPC|27354|
C Kick 'Em While They're Down |N|Kill 15 (npc:27453) or Players in {Blue Sky Logging Grounds} (35, 40)| |QID|12289| |Z|116| |D| |NPC|27475, 27463, 27456|

T Shredder Repair |N|(npc:27371) (39.5, 43.6)| |QID|12244| |Z|116| |D| |NPC|27371|
T Pieces Parts |N|(npc:27416) (39.6, 43.4)| |QID|12268| |Z|116| |D| |NPC|27416|
T Life or Death |N|(npc:27484) (40.5, 42.6)| |QID|12296| |Z|116| |D| |NPC|27484|
T Kick 'Em While They're Down |N|(npc:27468) (39.4, 43.8)| |QID|12289| |Z|116| |D| |NPC|27468|

N Guide Complete
]]
end)
	end
	
	function Guide:Unload()
	end
end