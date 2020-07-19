
function ToolTipHook(t)
	local link = select(2, t:GetItem())
    if not link then
        return
    end
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
		itemEquipLoc, itemIcon, vendorPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, isCraftingReagent = GetItemInfo(link)
	-- print(link)
	-- print(expacID)
	if expacID == 0 then
		GameTooltip:AddLine("Vanilla")
	elseif expacID == 1 then
		GameTooltip:AddLine("Burning crusade")
	elseif expacID == 2 then
		GameTooltip:AddLine("Wrath of the lich king")
	elseif expacID == 3 then
		GameTooltip:AddLine("Cataclysm")
	elseif expacID == 4 then
		GameTooltip:AddLine("Mist of Pandaria")
	elseif expacID == 5 then
		GameTooltip:AddLine("Warlord of Draenor")
	elseif expacID == 6 then
		GameTooltip:AddLine("Legion")
	elseif expacID == 7 then
		GameTooltip:AddLine("Battle for azeroth")
	end
end

GameTooltip:HookScript("OnTooltipSetItem", ToolTipHook)