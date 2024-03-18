local enchantWithSilverTokens = Action()

local items = {
	[29429] = { ChargedItemId = 30344, Price = 2 }, -- pendulet
	[29428] = { ChargedItemId = 30342, Price = 2 }, -- sleep shawl
	[31621] = { ChargedItemId = 31557, Price = 2 }, -- blister ring
	[30401] = { ChargedItemId = 30403, Price = 2 }, -- theurgic amulet
	[32636] = { ChargedItemId = 32621, Price = 2 }, -- ring of souls
	[39179] = { ChargedItemId = 39177, Price = 5 }, -- spiritthorn ring
	[39182] = { ChargedItemId = 39180, Price = 5 }, -- alicorn ring
	[39185] = { ChargedItemId = 39183, Price = 5 }, -- arcanomancer sigil
	[39188] = { ChargedItemId = 39187, Price = 5 }, -- arboreal ring
	[39235] = { ChargedItemId = 39233, Price = 2 }, -- turtle amulet
}

function enchantWithSilverTokens.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local mainContainer = player:getSlotItem(CONST_SLOT_BACKPACK)
	local itemId = item:getId()
	local chargedItemId = items[itemId].ChargedItemId
	local chargePrice = items[itemId].Price
	local silverTokenId = 22516
	local playerSilverTokenCount = player:getItemCount(silverTokenId)
	local playerHasItemOnBackpack = player:getItemCount(itemId) >= 1
	local playerHasEnoughTokens = playerSilverTokenCount >= chargePrice

	if not playerHasEnoughTokens then
		player:sendCancelMessage("You don't have enough silver tokens. You need " .. chargePrice .. " silver tokens to recharge your item!")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	elseif not playerHasItemOnBackpack then
		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	else
		player:removeItem(silverTokenId, chargePrice)
		player:removeItem(itemId, 1)
		player:addItem(chargedItemId, mainContainer, 1)
		player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
	end
	return true
end

enchantWithSilverTokens:id(29429, 29428, 31621, 30401, 32636, 39179, 39182, 39185, 39188, 39235)

enchantWithSilverTokens:register()
