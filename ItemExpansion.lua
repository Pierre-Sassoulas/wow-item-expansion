-- Global locals.
ItemExpansion_G = {}

ItemExpansion_G.TBCItems = {
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
ItemExpansion_G.WLKItems = {
	["Tabard of the Explorer"] = {color=4}
}
ItemExpansion_G.CATItems = {
	["Volatile Earth"] = {color=1}
}
ItemExpansion_G.PANItems = {
	["Spirit of Harmony"] = {color=3},
	["Mote of Harmony"] = {color=1}
}
ItemExpansion_G.WODItems = {
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
ItemExpansion_G.LEGItems = {
	["Leyblood"] = {color=1},
	["Shal'dorei Silk"] = {color=1},
	["Restored Artifact"] = {color=1}
}
ItemExpansion_G.BFAItems = {}
ItemExpansion_G.SHLItems = {}

function ToolTipHook(t)
	-- Ignore vendor items.
    if t["GetItem"] == nil then
        return
    end
	local link = select(2, t:GetItem())
    
	if not link then
        return
    end
	
	-- Zero indexed to lua standard one indexed (also used by 'EJ_GetTierInfo').
    local expacID = select(15, GetItemInfo(link)) + 1
    
	local expacName = EJ_GetTierInfo(expacID)
    GameTooltip:AddLine(expacName, 0, 1, 1)
end

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, ToolTipHook)
