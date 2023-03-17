-- Global locals.
ItemExpansion_G = {}

function ToolTipHook(t, data)
	-- Ignore vendor items.
	if t["GetItem"] == nil then
		return
	end
	local link = select(2, t:GetItem())

	-- Item 'data["hyperlink"]' exists (not nil) on the first item load only,
	-- so no double show happens.
	if not link or data["hyperlink"] then
		return
	end

	-- Zero indexed to lua standard one indexed (also used by 'EJ_GetTierInfo').
	local expacID = select(15, GetItemInfo(link)) + 1

	-- Classic or info missing.
	if expacID == 1 then
		local itemID = GetItemInfoFromHyperlink(link)
		expacID = ItemExpansion_G.exceptions[itemID]
		if expacID == nil then
			return
		end
	end

	local expacName = EJ_GetTierInfo(expacID)
	GameTooltip:AddLine(expacName, 0, 1, 1)
end

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, ToolTipHook)
