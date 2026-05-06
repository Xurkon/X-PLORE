local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_BFA_The_Final_Seal_H.lua")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Battle for Azeroth|r", "|cffffd200Quests|r"}, "The Final Seal", nil, "Horde", nil, "A", nil, function()
return [[

N Required |N|Earn the Achievement: (aid:11861)<br/><br/><b>Complete the (guide:"862(10-50)#862(10-50)#862(10-50)") guide.| |AID|11861|
N Required |N|Earn the Achievement: (aid:11868)<br/><br/><b>Complete the (guide:"863(10-50)#863(10-50)#863(10-50)") guide.| |AID|11868|
N Optional |N|Earn the Achievement: (aid:12478)<br/>This achievement is optional but it is recommended to complete this achievement.<br/><br/><b>Complete the (guide:"864(10-50)#864(10-50)#864(10-50)") guide.| |AID|12478|

A Zandalar Forever! |QID|50954| |N|(npc:135890) in {Blood Gate} (60.07, 22.25)| |Z|862| |NPC|135890|
C Zandalar Forever! |QID|50954| |N|Speak to (npc:135890) to start the Scenario (60.07, 22.25)| |Z|862| |NPC|135890|

- Scenario
C Prepare the Assult |QID|50954| |SID|0|1| |N|Mount (npc:134460)| |V| |NPC|134460| - Old K'zlotec
C Battle of the Silver |QID|50954| |SID|0|2| |N|Kill 200 foes using the action bar|
C Secure the Bridge |QID|50954| |SID|0|3| |N|Head to end of the bridge, you will automatically dismount|
C Threat from the West |QID|50954| |SID|0|4| |N|Mount (npc:134493)| |V| |NPC|134493| - Pa'ku
C Liberate the Zocalo |QID|50954| |SID|0|5| |N|Kill 10 Sethrak and rescue 10 Civilians|
C Follow the Pack |QID|50954| |SID|0|6| |N|Follow Kimbul|
C Meet with King Rastakhan |QID|50954| |SID|0|7| |N|Find King Rastakhan at the entrance to Dazar'alor|
C Reach Zul |QID|50954| |SID|0|8| |N|Follow King Rastakhan and kill mobs as you go up stairs. Kill (npc:142765)| |NPC|142765| - Ma'da Renkala

T Zandalar Forever! |QID|50954| |N|(npc:135887) in {The Golden Throne} (57.95,44.54)| |Z|1165| |NPC|135887|

N Guide Complete |N|Congratulations! you completed the (aid:12481) and (aid:12479) achievements|

]]
end, {description = [[This guide will show you how to earn the (aid:12481) and (aid:12479) achievements]]}) end

	function Guide:Unload()
	end
end
