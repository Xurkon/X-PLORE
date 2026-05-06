local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Alliance_En_Childrens_Week_BFA_A")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Children's Week|r ", "Children's Week (110+ BFA)", nil, "Alliance", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_ChildrensWeek]])|", function()
return [[

R Hook Point |QID|53811| |N|Travel to {Hook Point} (48.01, 40.17)| |Z|1161|
A Children's Week |QID|53811| |N|(npc:145291) in {Hook Point} (48.01, 40.17)| |Z|1161| |NPC|145291|
T Children's Week |QID|53811| |N|Use (item:164772) to summon (npc:145394) in {Hook Point} (48.06, 40.30)| |U|164772| |Z|1161| |NPC|145394|
A The Mountain Folk |QID|53859| |N|(npc:145394) in {Hook Point} (48.06, 40.30)| |Z|1161| |NPC|145394|
A Yo Ho, Yo Ho! |QID|53861| |N|(npc:145394) in {Hook Point} (48.06, 40.30)| |Z|1161| |NPC|145394|
A The Squid Shrine |QID|53862| |N|(npc:145394) in {Hook Point} (48.06, 40.30)| |Z|1161| |NPC|145394|

R Roughneck Camp |QID|53859| |N|Travel to {Roughneck Camp} (42.58, 22.56)| |Z|895|
C The Mountain Folk |QID|53859| |N|Take Liam to meet the Roughnecks at the Roughneck Camp in Tiragarde Sound. Make sure to call for him if he is not present when you get there in {Roughneck Camp} (42.58, 22.56)| |Z|895| |U|164772|
T The Mountain Folk |QID|53859| |N|(npc:145394) in {Roughneck Camp} (42.58, 22.56)| |Z|895| |NPC|145394|

R Freehold |QID|53861| |N|Travel to {Freehold} (79.78, 82.54)| |Z|895|
C Yo Ho, Yo Ho! |QID|53861| |N|Take Liam to meet a pirate outside of Freehold in Tiragarde Sound. Make sure to call for him if he is not present when you get there in {Freehold} (79.78, 82.54)| |Z|895| |U|164772|
T Yo Ho, Yo Ho! |QID|53861| |N|(npc:145394) in {Freehold} (79.78, 82.54)| |Z|895| |NPC|145394|

R The Brineworks |QID|53862| |N|Travel to {The Brineworks} (72.67, 50.29)| |Z|942| 
C The Squid Shrine |QID|53862| |N|Take Liam to see Shrine of the Storms from the beach near Mariner's Strand in Stormsong Valley. Make sure to call for him if he is not present when you get there in {The Brineworks} (72.67, 50.29)| |Z|942| |U|164772|
T The Squid Shrine |QID|53862| |N|(npc:145394) in {The Brineworks} (72.64, 50.22)| |Z|942| |NPC|145394|
A Bird Friends |QID|53863| |N|(npc:145394) in {The Brineworks} (72.64, 49.96)| |Z|942| |NPC|145394|
A Shapeshifters! |QID|53864| |N|(npc:145394) in {The Brineworks} (72.64, 49.96)| |Z|942| |NPC|145394|

R Arom's Stand |QID|53863| |N|Travel to {Arom's Stand} (36.11, 51.14)| |Z|896|
C Bird Friends |QID|53863| |N|Take Liam to see the statue of Arom Waycrest at Arom's Stand in Drustvar. Make sure to call for him if he is not present when you get there in {Arom's Stand} (36.11, 51.14)| |Z|896|
T Bird Friends |QID|53863| |N|(npc:145394) in {Arom's Stand} (36.11, 51.14)| |Z|896| |NPC|145394|

R Ulfar's Den |QID|53864| |N|Travel to {Ulfar's Den} (41.70, 41.57) (46.26, 39.03) (46.34, 45.05)| |Z|896|
C Shapeshifters! |QID|53864| |N|Take Liam to meet a druid at Ulfar's Den in Drustvar. Make sure to call for him if he is not present when you get there in {Ulfar's Den} (46.34, 45.05)| |Z|896| |U|164772|
T Shapeshifters! |QID|53864| |N|(npc:145394) in {Ulfar's Den} (46.31, 44.79)| |Z|896| |NPC|145394|
A Return to the Orphanage |QID|53865| |N|(npc:145394) in {Ulfar's Den} (46.31, 44.79)| |Z|896| |NPC|145394|

R Hook Point |QID|53865| |N|Travel to {Hook Point} (48.15, 40.35)| |Z|1161|
C Return to the Orphanage |QID|53865| |N|Bring Liam back to the orphanage in Boralus. Make sure to call for him if he is not present when you get there in {Hook Point} (48.15, 40.35)| |Z|1161| |U|164772|
T Return to the Orphanage |QID|53865| |N|(npc:145394) in {Hook Point} (48.15, 40.35)| |Z|1161| |NPC|145394|

N Guide Complete
]]
end)
	end
	
	function Guide:Unload()
	end
end
