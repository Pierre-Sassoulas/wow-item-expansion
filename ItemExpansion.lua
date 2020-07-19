
function split(s, sep)
    local fields = {}

    local sep = sep or " "
    local pattern = string.format("([^%s]+)", sep)
    string.gsub(s, pattern, function(c) fields[#fields + 1] = c end)

    return fields
end



function ToolTipHook(t)
	local link = select(2, t:GetItem())
    if not link then
        return
    end
	local itemID = nil
	for i,j in pairs(split(link,":")) do
		if i==2 then
			itemID = j
		end
	end
	if not itemID then
		return
	end
	itemID = tonumber(itemID)
	-- print("itemID for ".. link .. " : " .. itemID)
	if itemID < 20000 then
		GameTooltip:AddLine("Vanilla")
	elseif itemID < 40000 then
		GameTooltip:AddLine("Burning crusade")
	elseif itemID < 60000 then
		GameTooltip:AddLine("Wrath of the lich king")
	elseif itemID < 80000 then
		GameTooltip:AddLine("Cataclysm")
	elseif itemID < 100000 then
		GameTooltip:AddLine("Mist of Pandaria")
	elseif itemID < 120000 then
		GameTooltip:AddLine("Warlord of Draenor")
	elseif itemID < 140000 then
		GameTooltip:AddLine("Legion")
	else
		GameTooltip:AddLine("Battle for azeroth")
	end
end

GameTooltip:HookScript("OnTooltipSetItem", ToolTipHook)