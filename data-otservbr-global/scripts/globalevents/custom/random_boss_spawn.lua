-- bosses time to spawn
local bossSpawnSchedule = {
   firstTime = "9:00",
   secondTime = "18:00"
}

-- bosses that can random spawn
local possibleBosses = {
	"Grand Master Oberon"
}

-- first boss spawn position
local firstSpawnPosition = Position(33773, 31504, 14)
-- second boss spawn position
local secondSpawnPosition = Position(33773, 31504, 14)

-- enable/disable global message after boss defeat (true/false)
local enableGlobalDefeatMessage = true
-- the global message will appear after boss defeat (dont remove [BOSSNAME] from the message)
local globalMessageFirstBossDefeat = "The dreaded daily boss [BOSSNAME] has been defeated" ;
local globalMessageSecondBossDefeat = "The dreaded daily boss [BOSSNAME] has been defeated" ;

-- enable/disable global message when boss spawns (true/false)
local enableGlobalSpawnMessage = true
-- the global message will appear when boss spawns (dont remove [BOSSNAME] from the message)
local globalMessageFirstBossSpawn = "Boss [BOSSNAME] spawned" ;
local globalMessageSecondBossSpawn = "Boss [BOSSNAME] spawned" ;

local onBossDeathEvent = CreatureEvent("onBossDeathEvent")

function onBossDeathEvent.onDeath(creature)
	local firstBossStorage = Game.getStorageValue(GlobalStorage.firstCustomBoss)
	local secondBossStorage = Game.getStorageValue(GlobalStorage.secondCustomBoss)

	if firstBossStorage == 1 then
		local firstBossName = creature:getName()
		print(firstBossName)
		Game.setStorageValue(GlobalStorage.firstCustomBoss, 2)
		if enableGlobalDefeatMessage then
			local firstBossMessage = string.gsub(globalMessageFirstBossDefeat, "%[BOSSNAME%]", firstBossName)
			Game.broadcastMessage(firstBossMessage, MESSAGE_GAME_HIGHLIGHT)
		end
	end

	if secondBossStorage == 1 then
		local secondBossName = creature:getName()
		Game.setStorageValue(GlobalStorage.secondCustomBoss, 2)
		if enableGlobalDefeatMessage then
			local secondBossMessage = string.gsub(globalMessageSecondBossDefeat, "%[BOSSNAME%]", secondBossName)
			Game.broadcastMessage(secondBossMessage, MESSAGE_GAME_HIGHLIGHT)
		end
	end
	return true
end

onBossDeathEvent:register()

local randomBossSpawn = GlobalEvent("randomBossSpawn")

function randomBossSpawn.onThink(interval, lastExecution, thinkInterval)
	local realTime = getRealTime()
	local randomIndex = math.random(1, #possibleBosses)
	local randomBoss = possibleBosses[randomIndex]
	local firstTime = bossSpawnSchedule.firstTime
	local secondTime = bossSpawnSchedule.secondTime
	local realTimeString = tostring(realTime)
	local realTimeSubstring = string.sub(realTimeString, 1, 2)
	local firstTimeSubstring = string.sub(firstTime, 1, 2)
	local secondTimeSubstring = string.sub(secondTime, 1, 2)
	local firstBossStorage = Game.getStorageValue(GlobalStorage.firstCustomBoss)
	local secondBossStorage = Game.getStorageValue(GlobalStorage.secondCustomBoss)

	if(firstBossStorage == 2 and secondBossStorage == 2) then
		return true
	end

	if(firstBossStorage < 1) then
			if firstTimeSubstring == realTimeSubstring then
				local firstBoss = Game.createMonster(randomBoss, firstSpawnPosition)
				Game.setStorageValue(GlobalStorage.firstCustomBoss, 1)
				firstBoss:registerEvent("onBossDeathEvent")

				if enableGlobalSpawnMessage then
					local firstBossMessage = string.gsub(globalMessageFirstBossSpawn, "%[BOSSNAME%]", randomBoss)
					Game.broadcastMessage(firstBossMessage, MESSAGE_GAME_HIGHLIGHT)
				end
				return true
			end
			return true
	end

	if(secondBossStorage < 1 and firstBossStorage == 2) then
		if secondTimeSubstring == realTimeSubstring then
			local secondBoss = Game.createMonster(randomBoss, secondSpawnPosition)
			Game.setStorageValue(GlobalStorage.secondCustomBoss, 1)
			secondBoss:registerEvent("onBossDeathEvent")
			if enableGlobalSpawnMessage then
				local secondBossMessage = string.gsub(globalMessageSecondBossSpawn, "%[BOSSNAME%]", randomBoss)
				Game.broadcastMessage(secondBossMessage, MESSAGE_GAME_HIGHLIGHT)
			end
			return true
		end
		return true
	end

	return true
end

randomBossSpawn:interval(60000)
randomBossSpawn:register()
