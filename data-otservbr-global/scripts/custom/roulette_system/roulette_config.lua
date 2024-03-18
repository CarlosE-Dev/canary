return {
    lever = {
        left = 8911,
        right = 8912
    },
    playItem = {
        itemId = 3035, -- ROULETTE TOKEN - ALTERAR
        count = 1
    },
    rouletteOptions = {
        rareItemChance_broadcastThreshold = 500,
        ignoredItems = {16293, 40323, 25717, 16293, 16292, 40309, 1898, 40476, 17816, 40469, 40312, 40450, 40312},
        winEffects = {CONST_ANI_FIRE, CONST_ME_SOUND_YELLOW, CONST_ME_SOUND_PURPLE, CONST_ME_SOUND_BLUE, CONST_ME_SOUND_WHITE},
        effectDelay = 333,
        spinTime = {min = 8, max = 13}, -- seconds
        spinSlowdownRamping = 5,
        rouletteStorage = 48552 -- required storage to avoid player abuse
    }
}
