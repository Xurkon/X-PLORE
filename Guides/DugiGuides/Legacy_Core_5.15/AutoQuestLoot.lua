local DGV = DugisGuideViewer
local AutoQuestLoot = DGV:RegisterModule("AutoQuestLoot")
AutoQuestLoot.essential = true
local _
function AutoQuestLoot:Initialize()
	function DGV:LOOT_OPENED ()
		if GetCVar("AutoLootDefault") == "1" or not DGV:UserSetting(DGV_AUTOQUESTITEMLOOT) then return end
		for slot=1,GetNumLootItems() do
		end--GetQuestLogItemLink
		
		for lootIndex = 1,GetNumLootItems() do
			local isQuestItem = select( 7, GetLootSlotInfo(lootIndex))
			if isQuestItem then
				LootSlot(lootIndex)
			end
		end -- Just pick up all quest items
		
		--[[
		for questIndex = 1,GetNumQuestLogEntries() do
			for boardIndex = 1,GetNumQuestLeaderBoards(questIndex) do
				local leaderboardTxt, boardItemType, isDone = 
					GetQuestLogLeaderBoard(boardIndex,questIndex)
				if not isDone and boardItemType=="item" then
					local i, j,itemName, numItems, numNeeded  =  string.find(leaderboardTxt, "([^%d]*)%s*([%d]+)%s*/%s*([%d]+)%s*")

					itemName = itemName:gsub(":", "")
					itemName = LuaUtils:trim(itemName)
					
					if itemName then
						for lootIndex = 1,GetNumLootItems() do
							local _, lootName = GetLootSlotInfo(lootIndex)
							if lootName==itemName then
								LootSlot(lootIndex)
							end
						end
					end
				end
			end
		end ]] --GetNumQuestLeaderBoards returns 0 value if you just accept the quest and havent open the worldmap or questlog
		
		for lootIndex = 1,GetNumLootItems() do
			local lootIcon, lootName = GetLootSlotInfo(lootIndex)
			if  LuaUtils:isInTable(lootIcon, {133789, 133788, 133787, 133786, 133785, 133784}) then
				--local coinMatch = tonumber(lootIcon:match("Interface\\Icons\\INV_Misc_Coin_(%d+)"))
				--if coinMatch and coinMatch<=6 then
					LootSlot(lootIndex)
				--end
			end
		end
	end
	
	function AutoQuestLoot:Load()
		DGV:RegisterEvent('LOOT_OPENED')
	end

	function AutoQuestLoot:Unload()
		DGV:UnregisterEvent('LOOT_OPENED')
	end
end