 local Guide = DugisGuideViewer:RegisterModule("DugisGuide_Dragonflight_Ach_Seeing_Blue")
function Guide:Initialize()
	function Guide:Load()DugisGuideViewer:RegisterGuide({"|cffffd200Dragonflight|r", "|cffffd200Exploration|r"}, "Seeing Blue", nil, nil, nil, "A", "nil", function()
return [[

N Please Read! |N|This is a pretty easy achievement. If you haven't done so already, it is recommended to get a lot of Glyphs to further train Dragonriding, The more Vigor regen the better. Use (sepll:372610) once or twice, when using it always look under the mount i.e boost upwards, this wil maintain the speed boost, once at final height proceed to change screen view to normal. This may take a while to get used to.<br/>If you angle the mount slightly downwards you should get a white glow, this speed is okay to get this achievement, it would be better if you can achieve blue glow, hence the name of achievement.<br/> Tick this step|

R Start |N|Start atop of {Azure Archives} (39.86,61.36)| |Z|2024| |AID|16581| |AC|1| |REACH|
R End |N|End at the {Cobalt Assembly} (46.13,25.03)| |Z|2024| |AID|16581| |AC|1| |REACH|

N Guide Complete

]]
end)
    end

    function Guide:Unload()
    end
end