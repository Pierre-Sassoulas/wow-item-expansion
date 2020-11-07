
TBCItems = {
	["Field Repair Bot 110G"] = {color=1},
	["Arcane Tome"] = {color=2},
	["Fel Armament"] = {color=2},
	["Mark of Sargeras"] = {color=1},
	["Netherweb Spider Silk"] = {color=1},
	["Netherweave Cloth"] = {color=1},
	["Soul Essence"] = {color=1},
	["Mote of Mana"] = {color=1},
	["Primal Mana"] = {color=2}
}
WLKItems = {
	["Tabard of the Explorer"] = {color=4}
}
CATItems = {
	["Volatile Earth"] = {color=1}
}
PANItems = {
	["Spirit of Harmony"] = {color=3},
	["Mote of Harmony"] = {color=1}
}
WODItems = {
	["Raw Beast Hide"] = {color=1},
	["Primal Spirit"] = {color=2},
	["Draenic Dust"] = {color=1},
	["Aged Yolk"] = {color=1},
	["Big Crate of Salvage"] = {color=2},
	["Large Crate of Salvage"] = {color=2},
	["Iron Horde Scraps"] = {color=1},
	["Miner's Coffee"] = {color=2},
	["Comprehensive Outpost Construction Guide"] = {color=3},
	["Outpost Building Assembly Notes"] = {color=3},
	["Rush Order: Shipyard"] = {color=1},
	["Hearthstone Strategy Guide"] = {color=3},
	["Supreme Manual of Dance"] = {color=3},
	["War Ravaged Weaponry"] = {color=2},
	["Weapon Enhancement Token"] = {color=2},
	["Balanced Weapon Enhancement"] = {color=2},
	["Braced Armor Enhancement"] = {color=2},
	["Arakkoa Cipher"] = {color=2},
	["Xelganak's Stinger"] = {color=4},
	["Greater Draenic Agility Flask"] = {color=1},
	["War Paints"] = {color=2},
	["Alchemical Catalyst"] = {color=2},
	["Draenic Seeds"] = {color=1},
	["Rylak Egg"] = {color=1},
	["True Iron Ore"] = {color=1},
	["Blackrock Ore"] = {color=1},
	["Draenic Stone"] = {color=1}
}
LEGItems = {
	["Leyblood"] = {color=1},
	["Shal'dorei Silk"] = {color=1},
	["Restored Artifact"] = {color=1}
}
BFAItems = {}
SHLItems = {}

function ToolTipHook(t)
	local link = select(2, t:GetItem())
    if not link then
        return
    end
	local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount,
		itemEquipLoc, itemIcon, vendorPrice, itemClassID, itemSubClassID, bindType, expacID, itemSetID, isCraftingReagent = GetItemInfo(link)
	-- GameTooltip:AddLine("Item Rarity: " .. tostring(itemRarity), 1, 0, 1)
	if expacID == 1 or TBCItems[itemName] and TBCItems[itemName].color == itemRarity then
		GameTooltip:AddLine("The Burning Crusade", 0, 1, 1)
	elseif expacID == 2 or WLKItems[itemName] and WLKItems[itemName].color == itemRarity then
		GameTooltip:AddLine("Wrath Of The Lich King", 0, 1, 1)
	elseif expacID == 3 or CATItems[itemName] and CATItems[itemName].color == itemRarity then
		GameTooltip:AddLine("Cataclysm", 0, 1, 1)
	elseif expacID == 4 or PANItems[itemName] and PANItems[itemName].color == itemRarity then
		GameTooltip:AddLine("Mist Of Pandaria", 0, 1, 1)
	elseif expacID == 5 or WODItems[itemName] and WODItems[itemName].color == itemRarity then
		GameTooltip:AddLine("Warlords Of Draenor", 0, 1, 1)
	elseif expacID == 6 or LEGItems[itemName] and LEGItems[itemName].color == itemRarity then
		GameTooltip:AddLine("Legion", 0, 1, 1)
	elseif expacID == 7 then
		GameTooltip:AddLine("Battle For Azeroth", 0, 1, 1)
	elseif expacID == 8 then
		GameTooltip:AddLine("Shadowlands", 0, 1, 1)
	end
end

GameTooltip:HookScript("OnTooltipSetItem", ToolTipHook)
