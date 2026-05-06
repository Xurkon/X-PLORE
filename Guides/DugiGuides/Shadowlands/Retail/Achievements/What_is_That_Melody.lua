local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_What_is_That_Melody")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "What is That Melody", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement is to be affected by each of the Hymns in Bastion's temples.<br/><b>The respawn time for the scrolls is unknown.<br/><br/><br/>Tick this step|

C (spell:338911) |AID|14768| |N|Click on (spell:338911), it looks like a scroll floating on a concrete pillar in {Citadel of Loyalty} (42.49, 25.58)| |Z|1533| |BUFF|3089628| |AC|1|
C (spell:338912) |AID|14768| |N|Click on (spell:338912), it looks like a scroll on the floor in {The Necrotic Wake} Use the Transport Pad to get up (32.55, 57.75)<br/><b>Click to find Transport Pad (39.15, 56.07, 1533, "Transport Pad")| |Z|1533| |BUFF|3095185| |AC|2|
C (spell:338910) |AID|14768| |N|Click on (spell:338910), it looks like a scroll floating behind a wooden bench seat in {Temple of Humility} (66.07, 40.83)| |Z|1533| |BUFF|3155390| |AC|3|
C (spell:338909) |AID|14768| |N|Click on (spell:338909), it looks like a scroll on a wooden bench seat in {Putity's Pinnacle} (63.94, 73.55)| |Z|1533| |BUFF|3079436| |AC|4|

N Guide Complete |N|You earned the (aid:14768) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14768) achievement]]})
	end

	function Guide:Unload()
	end
end