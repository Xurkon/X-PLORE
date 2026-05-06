local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Ach_Shadowlands_Nine_Afterlives")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Shadowlands|r", "|cffffd200Exploration|r"}, "Rallying Cry of the Ascended", nil, nil, nil, "A", nil, function()
return [[

N Note |N|<b>Objective of this achievement you have to find and use 5 vespers around (map:1533)<br/><b>The bell will be inactive if someone on the same server used it before you, it's available for all players.<br/><b>All bells respawn at the same time, approx 1-2 hours<br/><b>All bells become inactive for 5 minutes after pressing them.<br/><b>If all bells have been presed within 5 minutes, it triggers "Ascended Council" a rare fight for the (aid:14307)<br/><br/>Tick this step|

N Vesper of Courage |AID|14734| |AC|1| |N|Broken bell south of the {The Necrotic Wake} in {Temple of Courage} (33.38, 59.77)| |Z|1533|
N Vesper of Humility |AID|14734| |AC|3| |N|On the platform in the sky in {Temple of Humility} (71.87, 38.87)<br/><b>Click to find the Anima Gateway Location (69.35, 40.32, 1533, "Anima Gateway Location")| |Z|1533|
N Vesper of Purity |AID|14734| |AC|5| |N|On the platform in the sky in {Purity's Pinnacle} (64.32, 69.80)<br/><b>Transport Pad (63.52, 72.34, 1533, "Transport Pad Location")| |Z|1533|
N Vesper of Wisdom |AID|14734| |AC|2| |N|North of {Sagehaven} Flight Master, on the platform in {The Eonian Archives} (39.13, 20.40)<br/>Transport Pad (41.70, 23.30, 1533, "Transport Pad")| |Z|1533|
N Vesper of Loyalty |AID|14734| |AC|4| |N|Northwest of {Sagehaven} Flight Master, in an area with 3 bells in {Exaltion Rise} (32.16, 17.82)| |Z|1533|

N Guide Complete |N|You earned the (aid:14734) achievement|

]]
end, {description = [[This guide will walk you through completing the (aid:14734) achievement]]})
    end

    function Guide:Unload()
    end
end