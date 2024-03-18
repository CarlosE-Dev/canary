local positions = dofile(DATA_DIRECTORY .. "/scripts/custom/roulette_system/roulette_positions.lua");
local prizePool = dofile(DATA_DIRECTORY .. "/scripts/custom/roulette_system/prize_pool.lua")
local config = dofile(DATA_DIRECTORY .. "/scripts/custom/roulette_system/roulette_config.lua")
local roulettePositions = positions.getRoulettePositions("3")
local actionId = 18573

local chancedItems = {}

local function resetLever(position)
    local lever = Tile(position):getItemById(config.lever.right)
    lever:transform(config.lever.left)
end

local function updateRoulette(newItemInfo)
    local positions = roulettePositions
    for i = #positions, 1, -1 do
        local item = Tile(positions[i]):getTopVisibleThing()
        if item and item:getId() ~= Tile(positions[i]):getGround():getId() and not table.contains(config.rouletteOptions.ignoredItems, item:getId()) then
            if i ~= 9 then
                item:moveTo(positions[i + 1])
            else
                item:remove()
            end
        end
    end
    if ItemType(newItemInfo.itemId):getCharges() then
        local item = Game.createItem(newItemInfo.itemId, 1, positions[1])
        item:setAttribute("charges", newItemInfo.count)
    else
        Game.createItem(newItemInfo.itemId, newItemInfo.count, positions[1])
    end
end

local function clearRoulette(newItemInfo)
    local positions = roulettePositions
    for i = #positions, 1, -1 do
        local item = Tile(positions[i]):getTopVisibleThing()
        if item and item:getId() ~= Tile(positions[i]):getGround():getId() and not table.contains(config.rouletteOptions.ignoredItems, item:getId()) then
            item:remove()
        end
        if newItemInfo == nil then
            positions[i]:sendMagicEffect(CONST_ME_POFF)
        else
            if ItemType(newItemInfo.itemId):getCharges() then
                local item = Game.createItem(newItemInfo.itemId, 1, positions[i])
                item:setAttribute("charges", newItemInfo.count)
            else
                Game.createItem(newItemInfo.itemId, newItemInfo.count, positions[i])
            end
        end
    end
end

local function chanceNewReward()
    local newItemInfo = {itemId = 0, count = 0}
    
    local rewardTable = {}
    while #rewardTable < 1 do
        for i = 1, #prizePool do
            if prizePool[i].chance >= math.random(10000) then
                rewardTable[#rewardTable + 1] = i
            end
        end
    end
    
    local rand = math.random(#rewardTable)
    newItemInfo.itemId = prizePool[rewardTable[rand]].itemId
    newItemInfo.count = math.random(prizePool[rewardTable[rand]].count[1], prizePool[rewardTable[rand]].count[2])
    chancedItems[#chancedItems + 1] = prizePool[rewardTable[rand]].chance
    
    return newItemInfo
end

local function initiateReward(leverPosition, effectCounter)
    if effectCounter < #config.rouletteOptions.winEffects then
        effectCounter = effectCounter + 1
        if effectCounter == 1 then
            roulettePositions[1]:sendDistanceEffect(roulettePositions[5], config.rouletteOptions.winEffects[1])
            roulettePositions[9]:sendDistanceEffect(roulettePositions[5], config.rouletteOptions.winEffects[1])
        else
            for i = 1, #roulettePositions do
                roulettePositions[i]:sendMagicEffect(config.rouletteOptions.winEffects[effectCounter])
            end
        end
        if effectCounter == 2 then
            local item = Tile(roulettePositions[5]):getTopVisibleThing()
            local newItemInfo = {itemId = item:getId(), count = item:getCount()}
            clearRoulette(newItemInfo)
        end
        addEvent(initiateReward, config.rouletteOptions.effectDelay, leverPosition, effectCounter)
        return
    end
end

local function rewardPlayer(playerId, leverPosition)
    local player = Player(playerId)
    if not player then
        return
    end
    
    local item = Tile(roulettePositions[5]):getTopVisibleThing()
    
    if ItemType(item:getId()):getCharges() then
        local addedItem = player:addItem(item:getId(), 1, true)
        addedItem:setAttribute("charges", item:getCharges())
    else
        player:addItem(item:getId(), item:getCount(), true)
    end

		Game.broadcastMessage("The player " .. player:getName() .. " has won " .. item:getName() .. " from the roulette!", MESSAGE_GAME_HIGHLIGHT)
		player:setStorageValue(config.rouletteOptions.rouletteStorage, -1)
		resetLever(leverPosition)
end

local function roulette(playerId, leverPosition, spinTimeRemaining, spinDelay)
    local player = Player(playerId)
    if not player then
        resetLever(leverPosition)
        return
    end
    
    local newItemInfo = chanceNewReward()
    updateRoulette(newItemInfo)
    
    if spinTimeRemaining > 0 then
        spinDelay = spinDelay + config.rouletteOptions.spinSlowdownRamping
        addEvent(roulette, spinDelay, playerId, leverPosition, spinTimeRemaining - (spinDelay - config.rouletteOptions.spinSlowdownRamping), spinDelay)
        return
    end

		addEvent(initiateReward, 500, leverPosition, 0)
		addEvent(rewardPlayer, 500, playerId, leverPosition)
end

local casinoRoulette = Action()

function casinoRoulette.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if item:getId() == config.lever.right then
        player:sendTextMessage(MESSAGE_STATUS, "Casino Roulette is currently in progress. Please wait.")
        return true
    end

		if player:getStorageValue(config.rouletteOptions.rouletteStorage) >= 1 then
				player:sendTextMessage(MESSAGE_STATUS, "You already have a casino roulette in progress. Please wait.")
				return true
		end
    
    if player:getItemCount(config.playItem.itemId) < config.playItem.count then
        if player:getStorageValue(config.rouletteOptions.rouletteStorage) < 1 then
            player:sendTextMessage(MESSAGE_STATUS, "Casino Roulette requires " .. config.playItem.count .. " " .. (ItemType(config.playItem.itemId):getName()) .. " to use.")
            return true
        end
    end

		if not checkWeightAndBackpackRoom(player, 200, "You tried to pull the lever") then
			return true
		end

    
    item:transform(config.lever.right)
    clearRoulette()
    chancedItems = {}
    
    player:removeItem(config.playItem.itemId, config.playItem.count)
    player:setStorageValue(config.rouletteOptions.rouletteStorage, 1)
    
    local spinTimeRemaining = math.random((config.rouletteOptions.spinTime.min * 1000), (config.rouletteOptions.spinTime.max * 1000))
    roulette(player:getId(), toPosition, spinTimeRemaining, 150)
    return true
end

casinoRoulette:aid(actionId)
casinoRoulette:register()

-- PREVENT LOGOUT WHEN ROULETTE ACTIVE
local rouletteLogout = CreatureEvent("Roulette Logout")

function rouletteLogout.onLogout(player)
    if player:getStorageValue(config.rouletteOptions.rouletteStorage) == 1 then
        player:sendTextMessage(MESSAGE_FAILURE, "You cannot disconnect while using roulette!")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
				addEvent(rouletteLogout.onLogout, config.rouletteOptions.effectDelay, leverPosition, effectCounter)
        return false
    end
    return true
end

rouletteLogout:register()


-- PREVENT THROW ANY ITEMS ON ROULETTE SQM'S
local preventDropItemsOnSpecificPosition = EventCallback()

preventDropItemsOnSpecificPosition.playerOnMoveItem = function(self, item, count, fromPosition, toPosition, fromCylinder, toCylinder)
    for v, k in pairs(roulettePositions) do
        if toPosition == k then
            return false
        end
    end
    return true
end

preventDropItemsOnSpecificPosition:register()
