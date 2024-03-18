local softBootsRecharger = Action()

function softBootsRecharger.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local price = 10000
	local newSoftBootsId = 6529
	local wornSoftBootsId = 6530
	local playerMoney = player:getMoney()
	local mainContainer = player:getSlotItem(CONST_SLOT_BACKPACK)
	local playerHasItemOnBackpack = player:getItemCount(wornSoftBootsId) >= 1
	local playerHasEnoughMoney = playerMoney >= price

	if not playerHasItemOnBackpack then
		player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
	elseif not playerHasEnoughMoney then
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:sendCancelMessage(string.format("You do not have enough money. You need %i gold to repair your soft boots!", price))
	else
		player:removeItem(wornSoftBootsId, 1)
		player:removeMoney(price)
		player:addItem(newSoftBootsId, mainContainer)
		player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
	end
	return true
end

softBootsRecharger:id(6530)
softBootsRecharger:register()
