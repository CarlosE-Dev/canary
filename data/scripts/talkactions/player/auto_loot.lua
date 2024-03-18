local feature = TalkAction("!autoloot")

local validValues = {
	"on",
	"off",
	"on all",
}

function feature.onSay(player, words, param)
	local playerHasLootPouch = player:checkIfPlayerHasLootPouch()

	if not playerHasLootPouch then
		player:sendCancelMessage("You need a loot pouch to perform this action.")
		return true
	end

	if not configManager.getBoolean(configKeys.AUTOLOOT) then
		return true
	end
	if configManager.getBoolean(configKeys.VIP_SYSTEM_ENABLED) and configManager.getBoolean(configKeys.VIP_AUTOLOOT_VIP_ONLY) and not player:isVip() then
		player:sendCancelMessage("You need to be VIP to use this command!")
		return true
	end
	if not table.contains(validValues, param) then
		local validValuesStr = table.concat(validValues, "/")
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Invalid param specified. Usage: !feature [" .. validValuesStr .. "]")
		return true
	end

	if param == "on all" then
		player:setFeature(Features.AutoLoot, 2)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "AutoLoot is now enabled for all kills (including bosses).")
	elseif param == "on" then
		player:setFeature(Features.AutoLoot, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "AutoLoot is now enabled for all regular kills (no bosses).")
	elseif param == "off" then
		player:setFeature(Features.AutoLoot, 0)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "AutoLoot is now disabled.")
	end
	return true
end

feature:separator(" ")
feature:groupType("normal")
feature:register()
