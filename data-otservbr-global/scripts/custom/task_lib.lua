taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 0, -- rate bonus reward
	taskBoardPositions = {
		{ x = 32342, y = 32220, z = 7 },
		{ x = 32360, y = 32240, z = 7 },
		{ x = 32683, y = 31685, z = 8 },
		{ x = 32335, y = 31779, z = 7 },
		{ x = 32649, y = 31915, z = 8 },
		{ x = 32914, y = 32074, z = 7 },
		{ x = 33126, y = 32840, z = 7 },
		{ x = 33165, y = 31810, z = 7 },
		{ x = 33208, y = 32460, z = 8 },
		{ x = 32330, y = 32833, z = 7 },
		{ x = 32628, y = 32744, z = 6 },
		{ x = 32260, y = 31139, z = 7 },
		{ x = 32792, y = 31248, z = 5 },
		{ x = 33656, y = 31664, z = 8 },
		{ x = 33625, y = 31891, z = 7 },
		{ x = 33550, y = 32375, z = 6 },
		{ x = 33923, y = 31480, z = 7 },
		{ x = 33490, y = 32221, z = 7 },
		{ x = 33776, y = 32841, z = 7 },
	},
	selectLanguage = 2, -- options: 1 = pt_br or 2 = english
	uniqueTask = true, -- do one task at a time
	uniqueTaskStorage = 65002,
}

task_pt_br = {
	exitButton = "Fechar",
	confirmButton = "Validar",
	cancelButton = "Anular",
	returnButton = "Voltar",
	title = "Quadro De Missões",
	missionError = "Missão esta em andamento ou ela já foi concluida.",
	uniqueMissionError = "Você só pode fazer uma missão por vez.",
	missionErrorTwo = "Você concluiu a missão",
	missionErrorTwoo = "\nAqui estão suas recompensas:",
	choiceText = "- Experiência: ",
	messageAcceptedText = "Você aceitou essa missão!",
	messageDetailsText = "Detalhes da missão:",
	choiceMonsterName = "Missão: ",
	choiceMonsterRace = "Raças: ",
	choiceMonsterKill = "Abates: ",
	choiceEveryDay = "Repetição: Todos os dias",
	choiceRepeatable = "Repetição: Sempre",
	choiceOnce = "Repetição: Apenas uma vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Você já concluiu essa missão.",
	choiceCancelTask = "Você cancelou essa missão",
	choiceCancelTaskError = "Você não pode cancelar essa missão, porque ela já foi concluída ou não foi iniciada.",
	choiceBoardText = "Escolha uma missão e use os botões abaixo:",
	choiceRewardOnHold = "Resgatar Prêmio",
	choiceDailyConclued = "Diária Concluída",
	choiceConclued = "Concluída",
	messageTaskBoardError = "O quadro de missões esta muito longe ou esse não é o quadro de missões correto.",
	messageCompleteTask = "Você terminou essa missão! \nRetorne para o quadro de missões e pegue sua recompensa.",
}

taskConfiguration = {
	{ name = "Rat", color = 40, total = 150, type = "repeatable", storage = 190116, storagecount = 190117, rewards = {
		{ 3043, 2 },
		{ "exp", 2000 },
	}, races = {
		"Rat",
		"Cave Rat",
	} },

	{ name = "Trolls", color = 40, total = 150, type = "repeatable", storage = 190000, storagecount = 190001, rewards = {
		{ 3043, 3 },
		{ "exp", 2500 },
	}, races = {
		"Troll",
		"Swamp Troll",
		"Frost Troll",
		"Island Troll",
	} },

	{
		name = "Orcs",
		color = 40,
		total = 10,
		type = "repeatable",
		storage = 190002,
		storagecount = 190003,
		rewards = {
			{ 3043, 3 },
			{ "exp", 5000 },
			{ "item", {
				id = 3397,
				count = 1,
				chance = 200,
			} },
			{ "item", {
				id = 3396,
				count = 1,
				chance = 200,
			} },
			{ "item", {
				id = 3398,
				count = 1,
				chance = 200,
			} },
		},
		races = {
			"Orc",
			"Orc Spearman",
			"Orc Warrior",
			"Orc Rider",
			"Orc Shaman",
			"Orc Berserker",
			"Orc Leader",
			"Orc Warlord",
		},
	},

	{
		name = "Rotworms",
		color = 40,
		total = 100,
		type = "repeatable",
		storage = 190004,
		storagecount = 190005,
		rewards = {
			{ 3043, 4 },
			{ 37317, 1 }, --roulette
			{ "exp", 3000 },
		},
		races = {
			"Rotworm",
			"Carrion Worm",
		},
	},

	{ name = "Minotaurs", color = 40, total = 500, type = "repeatable", storage = 190006, storagecount = 190007, rewards = {
		{ 3043, 7 },
		{ "exp", 58000 },
		{ "item", {
			id = 5804,
			count = 1,
			chance = 1000,
		} },
	}, races = {
		"Minotaur",
		"Minotaur Archer",
		"Minotaur Guard",
		"Minotaur Mage",
	} },

	{ name = "Dwarfs", color = 40, total = 500, type = "repeatable", storage = 190008, storagecount = 190009, rewards = {
		{ "exp", 7500 },
		{ 3043, 10 },
		{ "item", {
			id = 9598,
			count = 1,
			chance = 1000,
		} },
	}, races = {
		"Dwarf",
		"Dwarf Soldier",
		"Dwarf Guard",
		"Dwarf Geomancer",
	} },

	{
		name = "Cyclops",
		color = 40,
		total = 250,
		type = "repeatable",
		storage = 190010,
		storagecount = 190011,
		rewards = {
			{ 3043, 6 },
			{ 37317, 1 }, --roulette
			{ "exp", 4000 },
		},
		races = {
			"Cyclops",
			"Cyclops Drone",
			"Cyclops Smith",
		},
	},

	{ name = "Stonerefiner", color = 40, total = 300, type = "repeatable", storage = 190012, storagecount = 190013, rewards = {
		{ 3043, 6 },
		{ "exp", 12000 },
	}, races = {
		"Stonerefiner",
	} },

	{
		name = "Pirate",
		color = 40,
		total = 500,
		type = "repeatable",
		storage = 190014,
		storagecount = 190015,
		rewards = {
			{ "exp", 20000 },
			{ 37317, 1 }, --roulette
			{ 3043, 10 },
			{ "item", {
				id = 6101,
				count = 1,
				chance = 1000,
			} },
			{ "item", {
				id = 6102,
				count = 1,
				chance = 1000,
			} },
			{ "item", {
				id = 6100,
				count = 1,
				chance = 1000,
			} },
			{ "item", {
				id = 6099,
				count = 1,
				chance = 1000,
			} },
		},
		races = {
			"Pirate Marauder",
			"Pirate Cutthroat",
			"Pirate Corsair",
			"Pirate Buccaneer",
		},
	},

	{
		name = "Vampire",
		color = 40,
		total = 700,
		type = "repeatable",
		storage = 190016,
		storagecount = 190017,
		rewards = {
			{ "exp", 15000 },
			{ 37317, 1 }, --roulette
			{ 3043, 10 },
		},
		races = {
			"Vampire",
			"Vampire Bride",
			"Vampire Viscount",
		},
	},

	{ name = "Dragons", color = 40, total = 400, type = "repeatable", storage = 190018, storagecount = 190019, rewards = {
		{ 3043, 10 },
		{ "exp", 10000 },
		{ "item", {
			id = 5919,
			count = 1,
			chance = 500,
		} },
	}, races = {
		"Dragon",
		"Dragon Hatchling",
		"Dragon Lord Hatchling",
		"Dragon Lord",
	} },

	{
		name = "Giant Spider",
		color = 40,
		total = 400,
		type = "repeatable",
		storage = 190020,
		storagecount = 190021,
		rewards = {
			{ "exp", 17500 },
			{ 37317, 2 }, --roulette
			{ 3043, 15 },
		},
		races = {
			"Giant Spider",
			"Tarantula",
		},
	},

	{
		name = "Oramond",
		color = 40,
		total = 400,
		type = "repeatable",
		storage = 190022,
		storagecount = 190023,
		rewards = {
			{ 3043, 12 },
			{ 37317, 2 }, --roulette
			{ "exp", 18000 },
		},
		races = {
			"Minotaur Hunter",
			"Mooh'Tah Warrior",
			"Minotaur Amazon",
			"Worm Priestess",
			"Execowtioner",
			"Moohtant",
			"Blood Beast",
		},
	},

	{
		name = "Wereboar",
		color = 40,
		total = 700,
		type = "repeatable",
		storage = 190024,
		storagecount = 190025,
		rewards = {
			{ "exp", 25000 },
			{ 37317, 2 }, --roulette
			{ 3043, 10 },
		},
		races = {
			"Werebadger",
			"Wereboar",
			"Werebear",
			"Werewolf",
		},
	},

	{ name = "Wyrms", color = 40, total = 350, type = "repeatable", storage = 190026, storagecount = 190027, rewards = {
		{ "exp", 31500 },
		{ 3043, 10 },
	}, races = {
		"Wyrm",
		"Elder Wyrm",
	} },

	{ name = "Hero", color = 40, total = 700, type = "repeatable", storage = 190028, storagecount = 190029, rewards = {
		{ "exp", 35000 },
		{ 3043, 10 },
	}, races = {
		"Hero",
		"Vicious Squire",
		"Renegade Knight",
		"Vile Grandmaster",
	} },

	{ name = "Draken", color = 40, total = 700, type = "repeatable", storage = 190030, storagecount = 190031, rewards = {
		{ "exp", 40000 },
		{ 3043, 8 },
		{ "item", {
			id = 12307,
			count = 1,
			chance = 300,
		} },
	}, races = {
		"Draken Abomination",
		"Draken Elite",
		"Draken Spellweaver",
		"Draken Warmaster",
	} },
	{
		name = "Lizard",
		color = 40,
		total = 850,
		type = "repeatable",
		storage = 190032,
		storagecount = 190033,
		rewards = {
			{ "exp", 34000 },
			{ 37317, 2 }, --roulette
			{ 3043, 10 },
		},
		races = {
			"Lizard Chosen",
			"Lizard Dragon Priest",
			"Lizard High Guard",
			"Lizard Legionnaire",
		},
	},

	{ name = "Banuta", color = 40, total = 1600, type = "repeatable", storage = 190034, storagecount = 190035, rewards = {
		{ "exp", 80000 },
		{ 3043, 15 },
	}, races = {
		"Hydra",
		"Medusa",
		"Serpent Spawn",
		"Eternal Guardian",
		"Behemoth",
		"Souleater",
	} },
	{ name = "The Hive", color = 40, total = 900, type = "repeatable", storage = 190036, storagecount = 190037, rewards = {
		{ "exp", 55000 },
		{ 3043, 18 },
		{ "item", {
			id = 14143,
			count = 1,
			chance = 700,
		} },
	}, races = {
		"Waspoid",
		"Crawler",
		"Spitter",
		"Kollos",
		"Spidris",
		"Spidris Elite",
		"Hive Overseer",
	} },

	{
		name = "Glooth",
		color = 40,
		total = 600,
		type = "repeatable",
		storage = 190038,
		storagecount = 190039,
		rewards = {
			{ "exp", 45000 },
			{ 37317, 1 }, --roulette
			{ 3043, 13 },
		},
		races = {
			"Glooth Bandit",
			"Glooth Brigand",
		},
	},

	{ name = "Deathling", color = 40, total = 900, type = "repeatable", storage = 190040, storagecount = 190041, rewards = {
		{ "exp", 120000 },
		{ 3043, 25 },
	}, races = {
		"Deepling Scout",
		"Deepling Warrior",
		"Deepling Guard",
		"Deathling Scout",
		"Deathling Spellsinger",
	} },
	{
		name = "Roshamuul",
		color = 40,
		total = 1200,
		type = "repeatable",
		storage = 190042,
		storagecount = 190043,
		rewards = {
			{ "exp", 95000 },
			{ 37317, 1 }, --roulette
			{ 3043, 15 },
		},
		races = {
			"Guzzlemaw",
			"Frazzlemaw",
			"Silencer",
			"Choking Fear",
			"Retching Horror",
		},
	},

	{ name = "Werelioness", color = 40, total = 800, type = "repeatable", storage = 190044, storagecount = 190045, rewards = {
		{ "exp", 80000 },
		{ 3043, 18 },
	}, races = {
		"Werelion",
		"Werelioness",
	} },

	{
		name = "Issavi",
		color = 40,
		total = 1500,
		type = "repeatable",
		storage = 190046,
		storagecount = 190047,
		rewards = {
			{ "exp", 100000 },
			{ 37317, 2 }, --roulette
			{ 3043, 18 },
			{ "item", {
				id = 44785,
				count = 1,
				chance = 100,
			} },
		},
		races = {
			"Sphinx",
			"Manticore",
			"Lamassu",
			"Young Goanna",
			"Adult Goanna",
			"Feral Sphinx",
			"Crypt Warden",
		},
	},

	{
		name = "Winter & Summer",
		color = 40,
		total = 900,
		type = "repeatable",
		storage = 190048,
		storagecount = 190049,
		rewards = {
			{ "exp", 110000 },
			{ 37317, 1 }, --roulette
			{ 3043, 18 },
		},
		races = {
			"Crazed Summer Rearguard",
			"Crazed Summer Vanguard",
			"Crazed Winter Rearguard",
			"Crazed Winter Vanguard",
			"Insane Siren",
			"Soul-Broken Harbinger",
			"Arachnophobica",
			"Thanatursus",
		},
	},
	{ name = "The Void", color = 40, total = 1200, type = "repeatable", storage = 190050, storagecount = 190051, rewards = {
		{ "exp", 120000 },
		{ 3043, 14 },
		{ "item", {
			id = 23538,
			count = 1,
			chance = 100,
		} },
	}, races = {
		"Breach Brood",
		"Dread Intruder",
		"Sparkion",
		"Reality Reaver",
	} },
	{
		name = "Exotic",
		color = 40,
		total = 750,
		type = "repeatable",
		storage = 190052,
		storagecount = 190053,
		rewards = {
			{ "exp", 55000 },
			{ 37317, 1 }, --roulette
			{ 3043, 12 },
			{ "item", {
				id = 44788,
				count = 1,
				chance = 100,
			} },
		},
		races = {
			"Exotic Cave Spider",
			"Exotic Bat",
		},
	},

	{
		name = "Asuras",
		color = 40,
		total = 1300,
		type = "repeatable",
		storage = 190054,
		storagecount = 190055,
		rewards = {
			{ "exp", 80000 },
			{ 37317, 1 }, --roulette
			{ 3043, 16 },
		},
		races = {
			"Dawnfire Asura",
			"Midnight Asura",
			"Frost Flower Asura",
			"Hellspawn",
		},
	},
	{ name = "Kilmaresh", color = 40, total = 800, type = "repeatable", storage = 190056, storagecount = 190057, rewards = {
		{ "exp", 90000 },
		{ 3043, 19 },
	}, races = {
		"Burning Gladiator",
		"Black Sphinx Acolyte",
		"Priestess Of The Wild Sun",
	} },
	{ name = "Carnivors", color = 40, total = 1000, type = "repeatable", storage = 190058, storagecount = 190059, rewards = {
		{ "exp", 105000 },
		{ 3043, 12 },
	}, races = {
		"Lumbering Carnivor",
		"Spiky Carnivor",
		"Menacing Carnivor",
	} },
	{
		name = "Spectres",
		color = 40,
		total = 800,
		type = "repeatable",
		storage = 190060,
		storagecount = 190061,
		rewards = {
			{ "exp", 70000 },
			{ 37317, 1 }, --roulette
			{ 3043, 15 },
		},
		races = {
			"Gazer Spectre",
			"Burster Spectre",
			"Ripper Spectre",
		},
	},
	{ name = "Grim Reaper", color = 40, total = 1000, type = "repeatable", storage = 190062, storagecount = 190063, rewards = {
		{ "exp", 100000 },
		{ 3043, 20 },
	}, races = {
		"Grim Reaper",
		"Hellspawn",
		"Spectre",
	} },
	{ name = "Naga", color = 40, total = 1200, type = "repeatable", storage = 190064, storagecount = 190065, rewards = {
		{ "exp", 110000 },
		{ 3043, 20 },
		{ "item", {
			id = 44786,
			count = 1,
			chance = 100,
		} },
	}, races = {
		"Makara",
		"Naga Archer",
		"Naga Warrior",
	} },
	{ name = "Ruins of Nuur", color = 40, total = 850, type = "repeatable", storage = 190066, storagecount = 190067, rewards = {
		{ "exp", 120000 },
		{ 3043, 21 },
	}, races = {
		"Girtablilu Warrior",
		"Venerable Girtablilu",
	} },

	{
		name = "Cobra Bastion",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190068,
		storagecount = 190069,
		rewards = {
			{ "exp", 140000 },
			{ 37317, 2 }, --roulette
			{ 3043, 24 },
			{ "item", {
				id = 44784,
				count = 1,
				chance = 100,
			} },
		},
		races = {
			"Cobra Assassin",
			"Cobra Scout",
			"Cobra Vizier",
		},
	},
	{
		name = "Falcon Bastion",
		color = 40,
		total = 800,
		type = "repeatable",
		storage = 190070,
		storagecount = 190071,
		rewards = {
			{ "exp", 130000 },
			{ 37317, 1 }, --roulette
			{ 3043, 20 },
			{ "item", {
				id = 44783,
				count = 1,
				chance = 100,
			} },
		},
		races = {
			"Falcon Knight",
			"Falcon Paladin",
		},
	},
	{ name = "Prison", color = 40, total = 1500, type = "repeatable", storage = 190072, storagecount = 190073, rewards = {
		{ "exp", 160000 },
		{ 3043, 20 },
	}, races = {
		"Demon Outcast",
		"Blightwalker",
		"Plaguesmith",
		"Dark Torturer",
		"Hellhound",
		"Juggernaut",
	} },
	{ name = "Lost Souls", color = 40, total = 1500, type = "repeatable", storage = 190074, storagecount = 190075, rewards = {
		{ "exp", 130000 },
		{ 3043, 25 },
	}, races = {
		"Flimsy Lost Soul",
		"Mean Lost Soul",
		"Freakish Lost Soul",
		"Evil Prospector",
	} },
	{
		name = "Feru Way",
		color = 40,
		total = 900,
		type = "repeatable",
		storage = 190076,
		storagecount = 190077,
		rewards = {
			{ "exp", 160000 },
			{ 37317, 1 }, --roulette
			{ 3043, 25 },
		},
		races = {
			"Vexclaw",
			"Grimeleech",
			"Hellflayer",
			"Demon",
		},
	},
	{ name = "True Asuras", color = 40, total = 1000, type = "repeatable", storage = 190078, storagecount = 190079, rewards = {
		{ "exp", 220000 },
		{ 3043, 28 },
	}, races = {
		"True Dawnfire Asura",
		"True Midnight Asura",
		"True Frost Flower Asura",
		"Hellhound",
	} },
	{
		name = "Warzone 4/5/6",
		color = 40,
		total = 900,
		type = "repeatable",
		storage = 190080,
		storagecount = 190081,
		rewards = {
			{ "exp", 160000 },
			{ 37317, 2 }, --roulette
			{ 3043, 24 },
			{ "item", {
				id = 27648,
				count = 1,
				chance = 10,
			} },
			{ "item", {
				id = 27647,
				count = 1,
				chance = 10,
			} },
			{ "item", {
				id = 27649,
				count = 1,
				chance = 10,
			} },
			{ "item", {
				id = 27650,
				count = 1,
				chance = 10,
			} },
			{ "item", {
				id = 27651,
				count = 1,
				chance = 10,
			} },
		},
		races = {
			"Chasm Spawn",
			"Drillworm",
			"Cave Devourer",
			"Tunnel Tyrant",
			"Deepworm",
			"Diremaw",
			"Elder Wyrm",
		},
	},
	{ name = "Catacombs", color = 40, total = 1000, type = "repeatable", storage = 190082, storagecount = 190083, rewards = {
		{ "exp", 190000 },
		{ 3043, 28 },
	}, races = {
		"Destroyer",
		"Dark Torturer",
		"Demon",
		"Grim Reaper",
		"Hellhound",
		"Hellspawn",
		"Juggernaut",
	} },
	{ name = "Salt Cave", color = 40, total = 850, type = "repeatable", storage = 190084, storagecount = 190085, rewards = {
		{ "exp", 220000 },
		{ 3043, 28 },
	}, races = {
		"Bashmu",
		"Juvenile Bashmu",
	} },
	{
		name = "Deep Desert",
		color = 40,
		total = 900,
		type = "repeatable",
		storage = 190086,
		storagecount = 190087,
		rewards = {
			{ "exp", 200000 },
			{ 37317, 1 }, --roulette
			{ 3043, 24 },
		},
		races = {
			"Skeleton Elite Warrior",
			"Undead Elite Gladiator",
		},
	},
	{
		name = "Warzone 7/8/9",
		color = 40,
		total = 900,
		type = "repeatable",
		storage = 190088,
		storagecount = 190089,
		rewards = {
			{ "exp", 210000 },
			{ 3043, 25 },
			{ "item", {
				id = 44787,
				count = 1,
				chance = 100,
			} },
		},
		races = {
			"Afflicted Strider",
			"Blemished Spawn",
			"Eyeless Devourer",
			"Lavafungus",
			"Lavaworm",
			"Streaked Devourer",
			"Cave Chimera",
			"Tremendous Tyrant",
			"Varnished Diremaw",
		},
	},
	{
		name = "Library",
		color = 40,
		total = 1200,
		type = "repeatable",
		storage = 190090,
		storagecount = 190091,
		rewards = {
			{ "exp", 270000 },
			{ 37317, 2 }, --roulette
			{ 3043, 30 },
		},
		races = {
			"Cursed Book",
			"Ink Blob",
			"Icecold Book",
			"Squid Warden",
			"Animated Feather",
			"Energetic Book",
			"Brain Squid",
			"Energuardian Of Tales",
			"Burning Book",
			"Rage Squid",
			"Guardian Of Tales",
			"Ink Blob",
		},
	},

	{
		name = "Furoius Crater",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190092,
		storagecount = 190093,
		rewards = {
			{ "exp", 350000 },
			{ 37317, 3 }, --roulette
			{ 3043, 25 },
			{ "item", {
				id = 34109,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Cloak Of Terror",
			"Courage Leech",
			"Vibrant Phantom",
		},
	},
	{
		name = "Rotten Westeland",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190094,
		storagecount = 190095,
		rewards = {
			{ "exp", 350000 },
			{ 37317, 3 }, --roulette
			{ 3043, 25 },
			{ "item", {
				id = 34109,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Branchy Crawler",
			"Rotten Golem",
			"Mould Phantom",
		},
	},
	{
		name = "Claustrophobic Inferno",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190096,
		storagecount = 190097,
		rewards = {
			{ "exp", 350000 },
			{ 37317, 3 }, --roulette
			{ 3043, 25 },
			{ "item", {
				id = 34109,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Brachiodemon",
			"Infernal Demon",
			"Infernal Phantom",
		},
	},
	{
		name = "Mirrored Nightmare",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190098,
		storagecount = 190099,
		rewards = {
			{ "exp", 350000 },
			{ 37317, 3 }, --roulette
			{ 3043, 25 },
			{ "item", {
				id = 34109,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Many Faces",
			"Druid's Apparition",
			"Knight's Apparition",
			"Paladin's Apparition",
			"Sorcerer's Apparition",
			"Distorted Phantom",
		},
	},
	{
		name = "Ebb and Flow",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190100,
		storagecount = 190101,
		rewards = {
			{ "exp", 350000 },
			{ 37317, 3 }, --roulette
			{ 3043, 25 },
			{ "item", {
				id = 34109,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Bony Sea Devil",
			"Turbulent Elemental",
			"Capricious Phantom",
		},
	},
	{
		name = "Sparkling Pools",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190102,
		storagecount = 190103,
		rewards = {
			{ "exp", 450000 },
			{ 37317, 3 }, --roulette
			{ 3043, 35 },
			{ "item", {
				id = 39546,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Emerald Tortoise",
			"Gore Horn",
			"Gorerilla",
			"Hulking Prehemoth",
			"Sabretooth",
		},
	},
	{
		name = "Crystal Enigma",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190104,
		storagecount = 190105,
		rewards = {
			{ "exp", 550000 },
			{ 37317, 3 }, --roulette
			{ 3043, 55 },
			{ "item", {
				id = 39546,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Headpecker",
			"Mantosaurus",
			"Mercurial Menace",
			"Noxious Ripptor",
			"Shrieking Cry-Stal",
		},
	},
	{
		name = "Monster Graveyard",
		color = 40,
		total = 1000,
		type = "repeatable",
		storage = 190106,
		storagecount = 190107,
		rewards = {
			{ "exp", 550000 },
			{ 37317, 3 }, --roulette
			{ 3043, 55 },
			{ "item", {
				id = 39546,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Sulphider",
			"Sulphur Spouter",
			"Nighthunter",
			"Stalking Stalk",
			"Undertaker",
		},
	},
	{
		name = "Jaded Roots",
		color = 40,
		total = 1200,
		type = "repeatable",
		storage = 190108,
		storagecount = 190109,
		rewards = {
			{ "exp", 550000 },
			{ 37317, 3 }, --roulette
			{ 3043, 55 },
			{ "item", {
				id = 43860,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Oozing Corpus",
			"Sopping Corpus",
			"Bloated Man-Maggot",
			"Mycobiontic Beetle",
		},
	},
	{
		name = "Putrefactory",
		color = 40,
		total = 1200,
		type = "repeatable",
		storage = 190110,
		storagecount = 190111,
		rewards = {
			{ "exp", 550000 },
			{ 37317, 3 }, --roulette
			{ 3043, 55 },
			{ "item", {
				id = 43860,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Oozing Carcass",
			"Sopping Carcass",
			"Rotten Man-Maggot",
			"Meandering Mushroom",
		},
	},
	{
		name = "Gloom Pillars",
		color = 40,
		total = 1200,
		type = "repeatable",
		storage = 190112,
		storagecount = 190113,
		rewards = {
			{ "exp", 560000 },
			{ 37317, 3 }, --roulette
			{ 3043, 55 },
			{ "item", {
				id = 43860,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Wandering Pillar",
			"Converter",
			"Darklight Emitter",
			"Darklight Construct",
		},
	},
	{
		name = "Darklight Core",
		color = 40,
		total = 1200,
		type = "repeatable",
		storage = 190114,
		storagecount = 190115,
		rewards = {
			{ "exp", 560000 },
			{ 37317, 3 }, --roulette
			{ 3043, 55 },
			{ "item", {
				id = 43860,
				count = 1,
				chance = 20,
			} },
		},
		races = {
			"Walking Pillar",
			"Darklight Source",
			"Darklight Striker",
			"Darklight Matter",
		},
	},
}

squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60

function Player.getCustomActiveTasksName(self)
	local player = self
	if not player then
		return false
	end
	local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
			tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end

function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
		for _, dataList in ipairs(data.races) do
			if dataList:lower() == name:lower() then
				return data
			end
		end
	end
	return false
end

function Player.startTask(self, storage)
	local player = self
	if not player then
		return false
	end
	local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local extraFromPrevious = player:getStorageValue(data.storagecount + 1000)
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	if type(extraFromPrevious) ~= nil and extraFromPrevious > 0 then
		player:setStorageValue(storage, player:getStorageValue(storage) + 1)
		player:setStorageValue(data.storagecount, extraFromPrevious)
		return true
	else
		player:setStorageValue(storage, player:getStorageValue(storage) + 1)
		player:setStorageValue(data.storagecount, 0)
		return true
	end
	return true
end

function Player.canStartCustomTask(self, storage)
	local player = self
	if not player then
		return false
	end
	local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "once" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "repeatable" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely, extraForNext)
	local player = self
	if not player then
		return false
	end
	local data = getTaskByStorage(storage)
	if data == false then
		return false
	end

	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
		end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)
	return true
end

function Player.hasStartedTask(self, storage)
	local player = self
	if not player then
		return false
	end
	local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end

function Player.getTaskKills(self, storage)
	local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
	local player = self
	if not player then
		return false
	end
	local data = getTaskByStorage(storage)
	if data == false then
		return false
	end

	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total * 3 then
		return false
	end

	local totalKilled = kills + count

	if totalKilled >= data.total * 3 then
		totalKilled = data.total * 3
	end

	player:say("Task: " .. data.name .. " - [" .. totalKilled .. "/" .. data.total .. "]", TALKTYPE_MONSTER_SAY)

	if kills + count >= data.total * 3 then
		player:say("[Task System] x3 Task Completed!", TALKTYPE_MONSTER_SAY)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] Completed! You have reached the maximum number of creatures kills. Go back to task board and claim your rewards.")
		return player:setStorageValue(data.storagecount, data.total * 3)
	end

	return player:setStorageValue(data.storagecount, kills + count)
end
