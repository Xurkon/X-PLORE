if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then return end
local DGV = DugisGuideViewer
local TA = DGV:RegisterModule("TalentAdvisor")
if TA then
    function TA:Initialize()
		--this can be removed when all versions of classic move to C_SpecializationInfo.GetTalentInfo
		local GetTalentInfo =  GetTalentInfo or function(tabIndex, talentIndex, isInspect, isPet, groupIndex)
			-- Note: tabIndex, talentIndex, and isPet are not supported parameters in 5.5.x and onward.
			local numColumns = 3;
			local talentInfoQuery = {};
			talentInfoQuery.tier = math.ceil(talentIndex / numColumns);
			talentInfoQuery.column = talentIndex % numColumns;
			talentInfoQuery.groupIndex = groupIndex;
			talentInfoQuery.isInspect = isInspect;
			talentInfoQuery.target = nil;
			local talentInfo = C_SpecializationInfo.GetTalentInfo(talentInfoQuery);
			if not talentInfo then
				return nil;
			end
	
			-- Note: rank, maxRank, meetsPrereq, previewRank, meetsPreviewPrereq, isExceptional, and hasGoldBorder are not supported outputs in 5.5.x and onward.
			-- They have default values not reflective of actual system state.
			-- selected, available, spellID, isPVPTalentUnlocked, known, and grantedByAura are new supported outputs in 5.5.x and onward.
			return talentInfo.name, talentInfo.icon, talentInfo.tier, talentInfo.column, talentInfo.rank,
				talentInfo.maxRank, talentInfo.meetsPrereq, talentInfo.previewRank,
				talentInfo.meetsPreviewPrereq, talentInfo.isExceptional, talentInfo.hasGoldBorder,
				talentInfo.talentID;
		end

        function TA.UpdateSuggestions(force)
            local LoadFunction = PlayerTalentFrame_LoadUI or TalentFrame_LoadUI
            if not LoadFunction then return end
            local normalBorderorW, normalBorderorH=20,20
            local longBorderW, longBorderH = 38, 20

            LoadFunction()
            local templateName = DugisGuideViewer:GetDB(DGV_TALENT_PROFILE)
            local playerClass = select(2, UnitClass("player"))

            local classTemplates = DGV.TalentTemplates[playerClass]

            if classTemplates then
                local template = classTemplates[templateName]

                if template or force then
                    for i = 1, 3 do
                    local buttonIndices = DGV.TalentAdvisorButtonMap[playerClass][i] 
                        if buttonIndices then
                            for talentName, buttonIndex in pairs(buttonIndices) do
                                local suggestedVal
                                
                                if template then 
                                    suggestedVal = template[talentName]
                                end 
                                
                                local buttonName1 = "PlayerTalentFramePanel"..i.."Talent"..buttonIndex
                                local button = _G[buttonName1] 
                                local text = _G[buttonName1.."Rank"]
                                local border = _G[buttonName1.."RankBorder"]

                                local name, _, _, _, rank, maxrank, available, wtfrank = GetTalentInfo(i, buttonIndex, false, pet)

                                if suggestedVal then
                                    if button then
                                        if rank and wtfrank and rank > wtfrank then
                                            text:SetText("" .. rank .. "/" .. suggestedVal)
                                        elseif wtfrank and wtfrank > -1 then
                                            text:SetText("" .. wtfrank .. "/" .. suggestedVal)
                                        end 
                                        if rank == maxrank or wtfrank == maxrank then 
                                            text:SetTextColor(0.9, 0.76, 0)
                                            border:SetVertexColor(0.9, 0.76, 0)
                                        else 
                                            text:SetTextColor(0.1, 1, 0.1)
                                            border:SetVertexColor(0.1, 1, 0.1)
                                        end
                                        text:Show()
                                        border:Show()
                                        border:SetSize(longBorderW, longBorderH)
                                    end
                                else
                                    if button then
                                        border:SetSize(normalBorderorW, normalBorderorH)
                                        if rank == 0 and wtfrank == 0 then
                                            text:Hide()
                                            border:Hide()
                                        else
                                            if rank and wtfrank and rank > wtfrank then
                                            text:SetText(rank)
                                            elseif wtfrank and wtfrank then
                                            text:SetText(wtfrank)
                                            end 
                                            border:Show()
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end

        function TA:Load()
            hooksecurefunc("ToggleTalentFrame",function()
                LuaUtils:Delay(0.1, TA.UpdateSuggestions)
                LuaUtils:Delay(1,TA.UpdateSuggestions)
            end)
                    
            hooksecurefunc("PanelTemplates_SetTab",function()
                LuaUtils:Delay(0.1, TA.UpdateSuggestions)
                LuaUtils:Delay(1, TA.UpdateSuggestions)
            end)
			
			hooksecurefunc("TalentFrame_Update",function()
				TA.UpdateSuggestions()
            end)
        end

        function TA:Unload()
        end
    end
end
--[[
--/run DugisGuideViewer:ExportTalent()	
	function DGV:ExportTalent()	
		
		local playerClass, engPlayerClass = UnitClass("player")
		if not TalentData then TalentData = {} end
		TalentData[engPlayerClass] = {}
		TalentData[engPlayerClass][1] = {}
		TalentData[engPlayerClass][2] = {}
		TalentData[engPlayerClass][3] = {}
		for i = 1, GetNumTalents(1) do 
			TalentData[engPlayerClass][1][i] = {}
			TalentData[engPlayerClass][1][i] = GetTalentInfo(1, i)
			TalentData[engPlayerClass][2][i] = {}
			TalentData[engPlayerClass][2][i] = GetTalentInfo(2, i)
			TalentData[engPlayerClass][3][i] = {}
			TalentData[engPlayerClass][3][i] = GetTalentInfo(3, i)						
		end
		print("done")
	end
]]