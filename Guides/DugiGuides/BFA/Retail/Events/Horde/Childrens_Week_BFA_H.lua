local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Events_Horde_En_Childrens_Week_BFA_H")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide("|cffffd200Children's Week|r ", "Children's Week (110+ BFA)", nil, "Horde", nil, "E", "|SG|DugisGuideViewer.SuggestCurrentHolidayPredicate([[Calendar_ChildrensWeek]])|", function()
return [[

R Grand Bazaar |QID|53965| |N|Travel to {Grand Bazaar} (53.67, 84.79)| |Z|1165| 
A Children's Week |QID|53965| |N|(npc:131346) in {Grand Bazaar} (53.67, 84.79)| |Z|1165| |NPC|131346|
T Children's Week |QID|53965| |N|Use (item:164965) to summon (npc:145463) in {Grand Bazaar} (53.67, 84.79)| |Z|1165| |U|164965| |NPC|145463|
A The Shifting Pack |QID|53968| |N|(npc:145463) in {Grand Bazaar} (53.67, 84.79)| |Z|1165| |NPC|145463|
A The Frogmarsh |QID|53967| |N|(npc:145463) in {Grand Bazaar} (53.67, 84.79)| |Z|1165| |NPC|145463|
A Loa of Winds |QID|53966| |N|(npc:145463) in {Grand Bazaar} (53.67, 84.79)| |Z|1165| |NPC|145463|

R Pterror Rise |QID|53966| |N|Follow the road to travel to {Pterror Rise} (66.06, 46.18) (67.14, 47.58) (70.63, 49.14)| |Z|862|
C Loa of Winds |QID|53966| |N|Take Azala to Pterror Rise in Zuldazar. Make sure to call for her if she is not present when you get there in {Pterror Rise} (70.63, 49.14)| |Z|862| |U|164965|
T Loa of Winds |QID|53966| |N|(npc:145463) in {Pterror Rise} (70.63, 49.14)| |Z|862| |NPC|145463|

R Garden of the Loa |QID|53968| |N|Travel to {Garden of the Loa} (48.75, 31.69)| |Z|862|
C The Shifting Pack |QID|53968| |N|Take Azala to {Garden of the Loa}. Make sure to call for her if she is not present when you get there (48.75, 31.69)| |Z|862| |U|164965|
T The Shifting Pack |QID|53968| |N|(npc:145463) in {Garden of the Loa} (48.72, 31.75)| |Z|862| |NPC|145463|

R The Frogmarsh |QID|53967| |N|Travel to {The Frogmarsh} (73.31, 53.51)| |Z|863|
C The Frogmarsh |QID|53967| |N|Take Azala to {The Frogmarsh}. Make sure to call for her if she is not present when you get there (73.31, 53.51)| |Z|863| |U|164965|
T The Frogmarsh |QID|53967| |N|(npc:145463) in {The Frogmarsh} (73.50, 53.25)| |Z|863| |NPC|145463|
A The Sethrak Queen |QID|53970| |N|(npc:145463) in {The Frogmarsh} (73.50, 53.25)| |Z|863| |NPC|145463|
A Hunting for Gold |QID|53969| |N|(npc:145463) in {The Frogmarsh} (73.33, 53.41)| |Z|863| |NPC|145463|

R Sanctuary of the Devoted |QID|53970| |N|Travel to {Sanctuary of the Devoted} (27.22, 52.62)| |Z|864|
C The Sethrak Queen |QID|53970| |N|Take Azala to the Terrace of the Devoted in Vol'dun. Make sure to call for her if she is not present when you get there in {Sanctuary of the Devoted} (27.22, 52.62)| |Z|864| |U|164965|
T The Sethrak Queen |QID|53970| |N|(npc:145463) in {Sanctuary of the Devoted} (27.16, 52.58)| |Z|864| |NPC|145463|

R The Golden Isle |QID|53969| |N|Travel to {The Golden Isle} (28.83, 88.78)| |Z|864|
C Hunting for Gold |QID|53969| |N|Take Azala to The Golden Isle in Vol'dun. Make sure to call for her if she is not present when you get there in {The Golden Isle} (28.83, 88.78)| |Z|864| |U|164965|
T Hunting for Gold |QID|53969| |N|(npc:145463) in {The Golden Isle} (28.64, 89.08)| |Z|864| |NPC|145463|
A Return to the Hall of Castes |QID|53971| |N|(npc:145463) in {The Golden Isle} (28.64, 89.08)| |Z|864| |NPC|145463|

R Hall of Castes |QID|53971| |N|Travel to {Hall of Castes} (54.05, 84.79)| |Z|1165|
C Return to the Hall of Castes |QID|53971| |N|Take Azala back to the Hall of Castes in Zuldazar. Make sure to call for her if she is not present when you get there in {Hall of Castes} (54.05, 84.79)| |Z|1165| |U|164965|
T Return to the Hall of Castes |QID|53971| |N|(npc:145463) in {Hall of Castes} (54.05, 84.79)| |Z|1165| |NPC|145463|

N Guide Complete
]]
end)
	end
	
	function Guide:Unload()
	end
end
