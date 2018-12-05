local treasure = {}

local loot_chance = {
	basic_ammo = 3
}

function treasure.get_chest_loot()
    local loot = {
		-- Vanilla items
		
		-- Logistics
		{{name = "wooden-chest", count = math.random(4,8)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "iron-chest", count = math.random(4,8)}, weight = 3, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "steel-chest", count = math.random(4,8)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		
		{{name = "storage-tank", count = math.random(1,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.4},
		
		--{{name = "loader", count = math.random(1,3)}, weight = 1, evolution_min = 0.0, evolution_max = 0.5},
		--{{name = "fast-loader", count = math.random(1,3)}, weight = 1, evolution_min = 0.2, evolution_max = 0.7},
		--{{name = "express-loader", count = math.random(1,3)}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		
		-- {{name = "burner-inserter", count = math.random(8,16)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "inserter", count = math.random(8,16)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		-- {{name = "long-handed-inserter", count = math.random(8,16)}, weight = 3, evolution_min = 0.0, evolution_max = 0.4},
		{{name = "filter-inserter", count = math.random(8,16)}, weight = 1, evolution_min = 0.1, evolution_max = 0.9},
		{{name = "fast-inserter", count = math.random(8,16)}, weight = 3, evolution_min = 0.1, evolution_max = 0.9},
		{{name = "stack-inserter", count = math.random(4,8)}, weight = 3, evolution_min = 0.2, evolution_max = 0.9},
		{{name = "stack-filter-inserter", count = math.random(4,8)}, weight = 1, evolution_min = 0.4, evolution_max = 0.9},
		
		{{name = "small-electric-pole", count = math.random(8,16)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "medium-electric-pole", count = math.random(8,16)}, weight = 3, evolution_min = 0.1, evolution_max = 0.6},
		{{name = "big-electric-pole", count = math.random(4,8)}, weight = 3, evolution_min = 0.2, evolution_max = 1},
		{{name = "substation", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},

		{{name = "pump", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 0.8},

		{{name = "rail", count = math.random(25,75)}, weight = 3, evolution_min = 0.1, evolution_max = 1},
		{{name = "train-stop", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		{{name = "rail-signal", count = math.random(8,16)}, weight = 2, evolution_min = 0.2, evolution_max = 1},
		{{name = "rail-chain-signal", count = math.random(8,16)}, weight = 2, evolution_min = 0.2, evolution_max = 1},
		-- car
		-- tank
		-- locomotive
		-- cargo-wagon
		-- fluid-wagon

		-- logistic-chest-active-provider
		-- logistic-chest-buffer
		-- logistic-chest-passive-provider
		-- logistic-chest-requester
		-- logistic-chest-storage

		{{name = "small-lamp", count = math.random(16,32)}, weight = 3, evolution_min = 0.1, evolution_max = 1},
		{{name = "red-wire", count = math.random(50,99)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		{{name = "green-wire", count = math.random(50,99)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		{{name = "arithmetic-combinator", count = math.random(8,16)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		{{name = "decider-combinator", count = math.random(8,16)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		{{name = "constant-combinator", count = math.random(8,16)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		-- {{name = "power-switch", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		-- {{name = "programmable-speaker", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 1},

		-- stone-brick
		-- concrete
		-- hazard-concrete
		-- refined-concrete
		-- refined-hazard-concrete
		-- landfill
		-- cliff-explosives
		
		{{name = "transport-belt", count = math.random(25,75)}, weight = 3, evolution_min = 0, evolution_max = 0.3},
		{{name = "underground-belt", count = math.random(4,8)}, weight = 3, evolution_min = 0, evolution_max = 0.3},
		{{name = "splitter", count = math.random(2,4)}, weight = 3, evolution_min = 0, evolution_max = 0.3},
		{{name = "fast-transport-belt", count = math.random(25,75)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "fast-underground-belt", count = math.random(4,8)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "fast-splitter", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "express-transport-belt", count = math.random(25,75)}, weight = 3, evolution_min = 0.5, evolution_max = 0.9},
		{{name = "express-underground-belt", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 0.9},
		{{name = "express-splitter", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 0.9},

		{{name = "pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		{{name = "pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},

		-- logistic-robot
		-- construction-robot
		--{{name = "roboport", count = math.random(2,4)}, weight = 2, evolution_min = 0.6, evolution_max = 1},


		-- Production
		-- iron-axe
		{{name = "steel-axe", count = math.random(1,3)}, weight = 2, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "repair-pack", count = math.random(8,16)}, weight = 2, evolution_min = 0.0, evolution_max = 1},

		--{{name = "nuclear-reactor", count = 1}, weight = 1, evolution_min = 0.6, evolution_max = 1},
		{{name = "heat-pipe", count = math.random(4,8)}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		{{name = "boiler", count = math.random(1,2)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "heat-exchanger", count = math.random(2,4)}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		{{name = "steam-engine", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "steam-turbine", count = math.random(1,2)}, weight = 2, evolution_min = 0.6, evolution_max = 1},

		--{{name = "solar-panel", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		{{name = "accumulator", count = math.random(4,8)}, weight = 3, evolution_min = 0.3, evolution_max = 5},

		-- {{name = "burner-mining-drill", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "electric-mining-drill", count = math.random(2,4)}, weight = 3, evolution_min = 0, evolution_max = 0.2},

		{{name = "offshore-pump", count = math.random(1,3)}, weight = 2, evolution_min = 0.0, evolution_max = 0.1},
		-- {{name = "pumpjack", count = math.random(1,3)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},

		{{name = "stone-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "steel-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "electric-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.4, evolution_max = 1},

		{{name = "centrifuge", count = math.random(1,2)}, weight = 1, evolution_min = 0.6, evolution_max = 1},

		{{name = "lab", count = math.random(1,2)}, weight = 2, evolution_min = 0.0, evolution_max = 0.1},

		{{name = "assembling-machine-1", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "assembling-machine-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "assembling-machine-3", count = math.random(1,2)}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},
		
		{{name = "chemical-plant", count = math.random(1,3)}, weight = 3, evolution_min = 0.3, evolution_max = 0.6},
		--{{name = "oil-refinery", count = math.random(2,4)}, weight = 2, evolution_min = 0.3, evolution_max = 1},

		{{name = "beacon", count = math.random(1,2)}, weight = 3, evolution_min = 0.7, evolution_max = 1},


		-- Intermediate Products
		{{name = "steel-plate", count = math.random(25,75)}, weight = 2, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "battery", count = math.random(50,150)}, weight = 2, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "explosives", count = math.random(40,50)}, weight = 10, evolution_min = 0.0, evolution_max = 1},
		{{name = "copper-cable", count = math.random(100,200)}, weight = 3, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "iron-gear-wheel", count = math.random(80,100)}, weight = 3, evolution_min = 0.0, evolution_max = 0.4},

		{{name = "electronic-circuit", count = math.random(50,150)}, weight = 3, evolution_min = 0.0, evolution_max = 1},
		{{name = "advanced-circuit", count = math.random(50,150)}, weight = 3, evolution_min = 0.4, evolution_max = 1},
		{{name = "processing-unit", count = math.random(50,150)}, weight = 3, evolution_min = 0.7, evolution_max = 1},

		{{name = "engine-unit", count = math.random(16,32)}, weight = 2, evolution_min = 0.1, evolution_max = 0.5},
		{{name = "electric-engine-unit", count = math.random(16,32)}, weight = 2, evolution_min = 0.4, evolution_max = 0.8},

		{{name = "rocket-fuel", count = math.random(4,10)}, weight = 2, evolution_min = 0.2, evolution_max = 0.8},
		{{name = "nuclear-fuel", count = 1}, weight = 2, evolution_min = 0.7, evolution_max = 1},

		{{name = "lubricant-barrel", count = math.random(4,10)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},


		-- Combat
		{{name = "submachine-gun", count = 1}, weight = 3, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "shotgun", count = 1}, weight = 2, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "combat-shotgun", count = 1}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "railgun", count = 1}, weight = 1, evolution_min = 0.2, evolution_max = 0.9},
		{{name = "rocket-launcher", count = 1}, weight = 3, evolution_min = 0.2, evolution_max = 0.8},
		{{name = "flamethrower", count = 1}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},

		{{name = "land-mine", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.0, evolution_max = 0.6},
		
		{{name = "firearm-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "piercing-rounds-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.1, evolution_max = 0.8},
		{{name = "uranium-rounds-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		
		{{name = "shotgun-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "piercing-shotgun-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.1, evolution_max = 0.4},
		
		{{name = "cannon-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 0.6},
		{{name = "explosive-cannon-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 0.8},
		{{name = "uranium-cannon-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "explosive-uranium-cannon-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},

		{{name = "rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.1, evolution_max = 0.3},
		{{name = "explosive-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.3, evolution_max = 0.6},
		--{{name = "atomic-bomb", count = math.random(8,16)}, weight = 1, evolution_min = 0.3, evolution_max = 1},

		{{name = "railgun-dart", count = math.random(16,32)}, weight = 3, evolution_min = 0.2, evolution_max = 0.9},
		{{name = "flamethrower-ammo", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.2, evolution_max = 1},

		{{name = "grenade", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.0, evolution_max = 0.5},
		{{name = "cluster-grenade", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "poison-capsule", count = math.random(16,32)}, weight = 3, evolution_min = 0.2, evolution_max = 0.8},
		{{name = "slowdown-capsule", count = math.random(16,32)}, weight = 1, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "defender-capsule", count = math.random(8,16)}, weight = 2, evolution_min = 0.0, evolution_max = 0.4},
		{{name = "distractor-capsule", count = math.random(8,16)}, weight = 2, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "destroyer-capsule", count = math.random(8,16)}, weight = 2, evolution_min = 0.4, evolution_max = 0.8},

		{{name = "light-armor", count = 1}, weight = 3, evolution_min = 0, evolution_max = 0.1},
		{{name = "heavy-armor", count = 1}, weight = 3, evolution_min = 0.1, evolution_max = 0.2},
		{{name = "modular-armor", count = 1}, weight = 2, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "power-armor", count = 1}, weight = 2, evolution_min = 0.4, evolution_max = 1},
		--{{name = "power-armor-mk2", count = 1}, weight = 1, evolution_min = 0.9, evolution_max = 1},

		{{name = "belt-immunity-equipment", count = 1}, weight = 1, evolution_min = 0.3, evolution_max = 1},
		--{{name = "solar-panel-equipment", count = math.random(1,4)}, weight = 5, evolution_min = 0.3, evolution_max = 0.8},
		{{name = "fusion-reactor-equipment", count = 1}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		{{name = "energy-shield-equipment", count = 1}, weight = 2, evolution_min = 0.3, evolution_max = 0.8},
		{{name = "energy-shield-mk2-equipment", count = 1}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		{{name = "battery-equipment", count = 1}, weight = 2, evolution_min = 0.3, evolution_max = 0.7},
		{{name = "battery-mk2-equipment", count = 1}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		{{name = "personal-laser-defense-equipment", count = 1}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		{{name = "discharge-defense-equipment", count = 1}, weight = 1, evolution_min = 0.5, evolution_max = 0.8},
		{{name = "exoskeleton-equipment", count = 2}, weight = 1, evolution_min = 0.3, evolution_max = 1},
		-- personal-roboport-equipment
		-- personal-roboport-mk2-equipment
		--{{name = "night-vision-equipment", count = 1}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},

		{{name = "stone-wall", count = math.random(25,75)}, weight = 1, evolution_min = 0.1, evolution_max = 0.5},
		{{name = "gate", count = math.random(4,8)}, weight = 1, evolution_min = 0.1, evolution_max = 0.5},

		{{name = "gun-turret", count = math.random(2,6)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		--{{name = "laser-turret", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		--{{name = "flamethrower-turret", count = math.random(1,3)}, weight = 3, evolution_min = 0.5, evolution_max = 1},

		{{name = "radar", count = math.random(1,2)}, weight = 1, evolution_min = 0.1, evolution_max = 0.4},


		-- Modded items
		
		-- Logistics
		{{name = "brass-chest", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		{{name = "titanium-chest", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		
		{{name = "storage-tank-2", count = math.random(1,4)}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},
		-- {{name = "storage-tank-3", count = math.random(1,4)}, weight = 3, evolution_min = 0.6, evolution_max = 0.8},
		-- {{name = "storage-tank-4", count = math.random(1,4)}, weight = 3, evolution_min = 0.3, evolution_max = 0.6},
		
		-- {{name = "deadlock-loader-1", count = math.random(1,3)}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "deadlock-loader-2", count = math.random(1,3)}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "deadlock-loader-3", count = math.random(1,3)}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "deadlock-loader-4", count = math.random(1,3)}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "deadlock-loader-5", count = math.random(1,3)}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		
		{{name = "express-inserter", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		{{name = "express-filter-inserter", count = math.random(4,8)}, weight = 1, evolution_min = 0.8, evolution_max = 1},
		{{name = "express-stack-inserter", count = math.random(4,8)}, weight = 3, evolution_min = 0.9, evolution_max = 1},
		{{name = "express-stack-filter-inserter", count = math.random(4,8)}, weight = 1, evolution_min = 0.9, evolution_max = 1},

		{{name = "medium-electric-pole-2", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},
		{{name = "medium-electric-pole-3", count = math.random(8,16)}, weight = 3, evolution_min = 0.6, evolution_max = 0.9},
		{{name = "medium-electric-pole-4", count = math.random(8,16)}, weight = 3, evolution_min = 0.9, evolution_max = 1},
		{{name = "big-electric-pole-2", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		-- {{name = "big-electric-pole-3", count = math.random(4,8)}, weight = 3, evolution_min = 0.3, evolution_max = 1},
		-- {{name = "big-electric-pole-4", count = math.random(4,8)}, weight = 3, evolution_min = 0.3, evolution_max = 1},
		{{name = "substation-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		-- {{name = "substation-3", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "substation-4", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},

		{{name = "bob-valve", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 1},
		{{name = "bob-pump-2", count = math.random(1,2)}, weight = 1, evolution_min = 0.8, evolution_max = 1},
		-- {{name = "bob-pump-3", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "bob-pump-4", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},

		-- {{name = "logistic-train-stop", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 0.7},
		-- bob-tank-2
		-- bob-tank-3
		-- bob-locomotive-2
		-- bob-locomotive-3
		-- bob-armoured-locomotive
		-- bob-armoured-locomotive-2
		-- bob-cargo-wagon-2
		-- bob-cargo-wagon-3
		-- bob-armoured-cargo-wagon
		-- bob-armoured-cargo-wagon-2
		-- bob-fluid-wagon-2
		-- bob-fluid-wagon-3
		-- bob-armoured-fluid-wagon
		-- bob-armoured-fluid-wagon-2

		-- logistic-chest-active-provider-2
		-- logistic-chest-buffer-2
		-- logistic-chest-passive-provider-2
		-- logistic-chest-requester-2
		-- logistic-chest-storage-2
		-- logistic-chest-active-provider-3
		-- logistic-chest-buffer-3
		-- logistic-chest-passive-provider-3
		-- logistic-chest-requester-3
		-- logistic-chest-storage-3

		{{name = "turbo-transport-belt", count = math.random(25,75)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		{{name = "turbo-underground-belt", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		{{name = "turbo-splitter", count = math.random(2,4)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		{{name = "ultimate-transport-belt", count = math.random(25,75)}, weight = 3, evolution_min = 0.9, evolution_max = 1},
		{{name = "ultimate-underground-belt", count = math.random(4,8)}, weight = 3, evolution_min = 0.9, evolution_max = 1},
		{{name = "ultimate-splitter", count = math.random(2,4)}, weight = 3, evolution_min = 0.9, evolution_max = 1},
		
		-- {{name = "copper-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "stone-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "bronze-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		{{name = "steel-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.2, evolution_max = 0.9},
		-- {{name = "plastic-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "brass-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "titanium-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "ceramic-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		{{name = "tungsten-pipe", count = math.random(30,50)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		-- {{name = "copper-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		-- {{name = "stone-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		-- {{name = "bronze-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		{{name = "steel-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.4, evolution_max = 0.9},
		-- {{name = "plastic-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		-- {{name = "brass-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		-- {{name = "titanium-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		-- {{name = "ceramic-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		{{name = "tungsten-pipe-to-ground", count = math.random(4,8)}, weight = 1, evolution_min = 0.9, evolution_max = 1},

		-- bob-logistic-robot-2
		-- bob-logistic-robot-3
		-- bob-logistic-robot-4
		-- bob-logistic-robot-5
		-- bob-construction-robot-2
		-- bob-construction-robot-3
		-- bob-construction-robot-4
		-- bob-construction-robot-5
		--{{name = "bob-roboport-2", count = math.random(2,4)}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		--{{name = "bob-roboport-3", count = math.random(2,4)}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		--{{name = "bob-roboport-4", count = math.random(2,4)}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		-- bob-logistic-zone-interface
		-- bob-logistic-zone-expander
		-- bob-logistic-zone-expander-2
		-- bob-logistic-zone-expander-3
		-- bob-logistic-zone-expander-4
		-- bob-robochest
		-- bob-robochest-2
		-- bob-robochest-3
		-- bob-robochest-4
		-- bob-robo-charge-port
		-- bob-robo-charge-port-2
		-- bob-robo-charge-port-3
		-- bob-robo-charge-port-4
		-- bob-robo-charge-port-large
		-- bob-robo-charge-port-large-2
		-- bob-robo-charge-port-large-3
		-- bob-robo-charge-port-large-4--


		-- Production
		{{name = "brass-axe", count = math.random(1,3)}, weight = 2, evolution_min = 0.2, evolution_max = 0.4},
		{{name = "cobalt-axe", count = math.random(1,3)}, weight = 2, evolution_min = 0.4, evolution_max = 0.6},
		{{name = "titanium-axe", count = math.random(1,3)}, weight = 2, evolution_min = 0.6, evolution_max = 0.8},
		{{name = "tungsten-axe", count = math.random(1,3)}, weight = 2, evolution_min = 0.8, evolution_max = 0.9},
		-- {{name = "diamond-axe", count = math.random(1,3)}, weight = 2, evolution_min = 0.0, evolution_max = 0.5},

		{{name = "boiler-2", count = math.random(1,2)}, weight = 3, evolution_min = 0.1, evolution_max = 0.2},
		{{name = "boiler-3", count = math.random(1,2)}, weight = 3, evolution_min = 0.2, evolution_max = 0.3},
		-- {{name = "boiler-4", count = math.random(4,8)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "boiler-5", count = math.random(4,8)}, weight = 3, evolution_min = 0.0, evolution_max = 0.3},
		-- {{name = "heat-exchanger-2", count = math.random(2,4)}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "heat-exchanger-3", count = math.random(2,4)}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		{{name = "steam-engine-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.2},
		{{name = "steam-engine-3", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.3},
		-- {{name = "steam-engine-4", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.5},
		-- {{name = "steam-engine-5", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.5},
		-- {{name = "steam-turbine-2", count = math.random(1,2)}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		-- {{name = "steam-turbine-3", count = math.random(1,2)}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		{{name = "fluid-generator", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.5},
		-- {{name = "fluid-generator-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.5},
		-- {{name = "fluid-generator-3", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.5},
		-- {{name = "hydrazine-generator", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.5},

		--{{name = "solar-panel-small", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-large", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-small-2", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-2", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-large-2", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-small-3", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-3", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		--{{name = "solar-panel-large-3", count = math.random(8,16)}, weight = 3, evolution_min = 0.4, evolution_max = 0.9},
		{{name = "fast-accumulator", count = math.random(4,8)}, weight = 3, evolution_min = 0.3, evolution_max = 0.5},
		{{name = "large-accumulator", count = math.random(4,8)}, weight = 3, evolution_min = 0.3, evolution_max = 0.5},
		{{name = "slow-accumulator", count = math.random(4,8)}, weight = 3, evolution_min = 0.3, evolution_max = 0.5},
		{{name = "fast-accumulator-2", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		{{name = "large-accumulator-2", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		{{name = "slow-accumulator-2", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		{{name = "fast-accumulator-3", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		{{name = "large-accumulator-3", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		{{name = "slow-accumulator-3", count = math.random(4,8)}, weight = 3, evolution_min = 0.8, evolution_max = 1},

		{{name = "bob-mining-drill-1", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.5},
		{{name = "bob-mining-drill-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		-- {{name = "bob-mining-drill-3", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		-- {{name = "bob-mining-drill-4", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "bob-area-mining-drill-1", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.5},
		{{name = "bob-area-mining-drill-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		-- {{name = "bob-area-mining-drill-3", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		-- {{name = "bob-area-mining-drill-4", count = math.random(2,4)}, weight = 3, evolution_min = 0.2, evolution_max = 0.6},
		
		-- {{name = "bob-pumpjack-1", count = math.random(1,3)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "bob-pumpjack-2", count = math.random(1,3)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "bob-pumpjack-3", count = math.random(1,3)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "bob-pumpjack-4", count = math.random(1,3)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- water-miner-1
		-- water-miner-2
		-- water-miner-3
		-- water-miner-4
		-- water-miner-5
		{{name = "air-pump", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 0.5},
		{{name = "air-pump-2", count = math.random(1,2)}, weight = 1, evolution_min = 0.5, evolution_max = 0.8},
		-- {{name = "air-pump-3", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "air-pump-4", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "water-pump", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "water-pump-2", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "water-pump-3", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		-- {{name = "water-pump-4", count = math.random(1,2)}, weight = 1, evolution_min = 0.3, evolution_max = 0.8},
		{{name = "void-pump", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 0.6},

		-- {{name = "electric-furnace-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "electric-furnace-3", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		{{name = "chemical-boiler", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "chemical-steel-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "mixing-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "mixing-steel-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "chemical-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.4, evolution_max = 1},
		{{name = "electric-mixing-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.4, evolution_max = 1},
		-- {{name = "electric-chemical-mixing-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "electric-chemical-mixing-furnace-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.5, evolution_max = 1},

		{{name = "bob-distillery", count = math.random(1,2)}, weight = 1, evolution_min = 0.2, evolution_max = 0.6},
		
		-- {{name = "lab-2", count = math.random(1,2)}, weight = 2, evolution_min = 0.0, evolution_max = 0.1},
		-- {{name = "lab-module", count = math.random(1,2)}, weight = 2, evolution_min = 0.0, evolution_max = 0.1},

		{{name = "assembling-machine-4", count = math.random(1,2)}, weight = 3, evolution_min = 0.8, evolution_max = 1},
		-- {{name = "assembling-machine-5", count = math.random(1,2)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "assembling-machine-6", count = math.random(1,2)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		{{name = "electronics-machine-1", count = math.random(1,2)}, weight = 3, evolution_min = 0.2, evolution_max = 1},
		-- {{name = "electronics-machine-2", count = math.random(1,2)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "electronics-machine-3", count = math.random(1,2)}, weight = 3, evolution_min = 0.5, evolution_max = 1},

		{{name = "chemical-plant-2", count = math.random(1,3)}, weight = 3, evolution_min = 0.6, evolution_max = 1},
		-- {{name = "chemical-plant-3", count = math.random(1,3)}, weight = 3, evolution_min = 0.3, evolution_max = 1},
		-- {{name = "chemical-plant-4", count = math.random(1,3)}, weight = 3, evolution_min = 0.3, evolution_max = 1},
		{{name = "electrolyser", count = math.random(1,2)}, weight = 2, evolution_min = 0.3, evolution_max = 0.6},
		{{name = "electrolyser-2", count = math.random(1,2)}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		-- {{name = "electrolyser-3", count = math.random(1,3)}, weight = 3, evolution_min = 0.3, evolution_max = 1},
		-- {{name = "electrolyser-4", count = math.random(1,3)}, weight = 3, evolution_min = 0.3, evolution_max = 1},
		--{{name = "oil-refinery-2", count = math.random(2,4)}, weight = 2, evolution_min = 0.3, evolution_max = 1},
		--{{name = "oil-refinery-3", count = math.random(2,4)}, weight = 2, evolution_min = 0.3, evolution_max = 1},
		--{{name = "oil-refinery-4", count = math.random(2,4)}, weight = 2, evolution_min = 0.3, evolution_max = 1},
		
		-- {{name = "beacon-2", count = math.random(1,2)}, weight = 3, evolution_min = 0.7, evolution_max = 1},
		-- {{name = "beacon-3", count = math.random(1,2)}, weight = 3, evolution_min = 0.7, evolution_max = 1},


		-- Intermediate Products
		{{name = "burner-omni-furnace", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},

		{{name = "lithium-ion-battery", count = math.random(20,60)}, weight = 2, evolution_min = 0.4, evolution_max = 0.9},
		{{name = "silver-zinc-battery", count = math.random(20,60)}, weight = 2, evolution_min = 0.8, evolution_max = 1},
		
		{{name = "omnicium-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.0, evolution_max = 0.2},
		{{name = "steel-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.1, evolution_max = 0.3},
		{{name = "brass-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.2, evolution_max = 0.5},
		{{name = "cobalt-steel-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.5, evolution_max = 0.6},
		{{name = "titanium-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.6, evolution_max = 0.8},
		{{name = "tungsten-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.8, evolution_max = 0.9},
		{{name = "nitinol-gear-wheel", count = math.random(10,20)}, weight = 3, evolution_min = 0.9, evolution_max = 1},
		
		{{name = "steel-bearing", count = math.random(10,20)}, weight = 3, evolution_min = 0.1, evolution_max = 0.3},
		{{name = "cobalt-steel-bearing", count = math.random(10,20)}, weight = 3, evolution_min = 0.5, evolution_max = 0.6},
		{{name = "titanium-bearing", count = math.random(10,20)}, weight = 3, evolution_min = 0.6, evolution_max = 0.8},
		{{name = "ceramic-bearing", count = math.random(10,20)}, weight = 3, evolution_min = 0.8, evolution_max = 0.9},
		{{name = "nitinol-bearing", count = math.random(10,20)}, weight = 3, evolution_min = 0.9, evolution_max = 1},

		{{name = "advanced-processing-unit", count = math.random(10,100)}, weight = 3, evolution_min = 0.9, evolution_max = 1},

		{{name = "enriched-fuel", count = math.random(4,10)}, weight = 2, evolution_min = 0.2, evolution_max = 0.8},


		-- Combat
		{{name = "rifle", count = 1}, weight = 3, evolution_min = 0.2, evolution_max = 0.8},
		{{name = "sniper-rifle", count = 1}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},
		{{name = "laser-rifle", count = 1}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},

		{{name = "bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "acid-bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "ap-bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "electric-bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "flame-bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "he-bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "poison-bullet-magazine", count = math.random(32,128)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},

		{{name = "better-shotgun-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.2, evolution_max = 0.6},
		{{name = "shotgun-acid-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "shotgun-ap-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "shotgun-electric-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "shotgun-explosive-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "shotgun-flame-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "shotgun-poison-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},
		{{name = "shotgun-uranium-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 1},

		{{name = "scatter-cannon-shell", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 0.8},
		
		{{name = "bob-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "bob-piercing-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "bob-electric-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "bob-explosive-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "bob-flame-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "bob-poison-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		{{name = "bob-acid-rocket", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 1},
		
		{{name = "laser-rifle-battery", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.2, evolution_max = 0.4},
		{{name = "laser-rifle-battery-ruby", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.3, evolution_max = 0.5},
		{{name = "laser-rifle-battery-sapphire", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.4, evolution_max = 0.6},
		{{name = "laser-rifle-battery-emerald", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.5, evolution_max = 0.7},
		{{name = "laser-rifle-battery-amethyst", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.6, evolution_max = 0.8},
		{{name = "laser-rifle-battery-topaz", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.7, evolution_max = 0.9},
		{{name = "laser-rifle-battery-diamond", count = math.random(16,32)}, weight = loot_chance.basic_ammo, evolution_min = 0.8, evolution_max = 1},

		{{name = "bob-laser-robot-capsule", count = math.random(8,16)}, weight = 2, evolution_min = 0.7, evolution_max = 1},
		-- bob-robot-tank

		{{name = "heavy-armor-2", count = 1}, weight = 3, evolution_min = 0.2, evolution_max = 0.4},
		{{name = "heavy-armor-3", count = 1}, weight = 3, evolution_min = 0.4, evolution_max = 0.6},
		-- bob-power-armor-mk3
		-- bob-power-armor-mk4
		-- bob-power-armor-mk5

		-- solar-panel-equipment-2
		-- solar-panel-equipment-3
		-- solar-panel-equipment-4
		-- {{name = "fusion-reactor-equipment-2", count = 1}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "fusion-reactor-equipment-3", count = 1}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "fusion-reactor-equipment-4", count = 1}, weight = 1, evolution_min = 0.5, evolution_max = 1},
		{{name = "energy-shield-mk3-equipment", count = 1}, weight = 1, evolution_min = 0.9, evolution_max = 1},
		-- {{name = "energy-shield-mk4-equipment", count = 1}, weight = 2, evolution_min = 0.7, evolution_max = 1},
		-- {{name = "energy-shield-mk5-equipment", count = 1}, weight = 2, evolution_min = 0.7, evolution_max = 1},
		-- {{name = "energy-shield-mk6-equipment", count = 1}, weight = 2, evolution_min = 0.7, evolution_max = 1},
		{{name = "battery-mk3-equipment", count = 1}, weight = 1, evolution_min = 0.9, evolution_max = 1},
		-- {{name = "battery-mk4-equipment", count = 1}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		-- {{name = "battery-mk5-equipment", count = 1}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		-- {{name = "battery-mk6-equipment", count = 1}, weight = 2, evolution_min = 0.6, evolution_max = 1},
		{{name = "personal-laser-defense-equipment-2", count = 1}, weight = 1, evolution_min = 0.9, evolution_max = 1},
		-- {{name = "personal-laser-defense-equipment-3", count = 1}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "personal-laser-defense-equipment-4", count = 1}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "personal-laser-defense-equipment-5", count = 1}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "personal-laser-defense-equipment-6", count = 1}, weight = 2, evolution_min = 0.5, evolution_max = 1},
		-- {{name = "exoskeleton-equipment-2", count = 1}, weight = 1, evolution_min = 0.3, evolution_max = 1},
		-- {{name = "exoskeleton-equipment-3", count = 1}, weight = 1, evolution_min = 0.3, evolution_max = 1},
		-- night-vision-equipment-2
		-- night-vision-equipment-3

		{{name = "reinforced-wall", count = math.random(25,75)}, weight = 1, evolution_min = 0.4, evolution_max = 1},
		{{name = "reinforced-gate", count = math.random(4,8)}, weight = 1, evolution_min = 0.4, evolution_max = 1},

		{{name = "bob-gun-turret-2", count = math.random(2,6)}, weight = 3, evolution_min = 0.3, evolution_max = 0.6},
		{{name = "bob-gun-turret-3", count = math.random(2,6)}, weight = 3, evolution_min = 0.5, evolution_max = 0.8},
		-- {{name = "bob-gun-turret-4", count = math.random(2,6)}, weight = 3, evolution_min = 0.2, evolution_max = 0.9},
		-- {{name = "bob-gun-turret-5", count = math.random(2,6)}, weight = 3, evolution_min = 0.2, evolution_max = 0.9},
		--{{name = "bob-laser-turret-2", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		--{{name = "bob-laser-turret-3", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		--{{name = "bob-laser-turret-4", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		--{{name = "bob-laser-turret-5", count = math.random(4,8)}, weight = 3, evolution_min = 0.5, evolution_max = 1},
		-- bob-sniper-turret-1
		-- bob-sniper-turret-2
		-- bob-sniper-turret-3

		{{name = "radar-2", count = math.random(1,2)}, weight = 1, evolution_min = 0.4, evolution_max = 1},
		-- {{name = "radar-3", count = math.random(1,2)}, weight = 1, evolution_min = 0.1, evolution_max = 0.3},
		-- {{name = "radar-4", count = math.random(1,2)}, weight = 1, evolution_min = 0.1, evolution_max = 0.3},
		-- {{name = "radar-5", count = math.random(1,2)}, weight = 1, evolution_min = 0.1, evolution_max = 0.3},---


		-- Omnimatter
		{{name = "burner-omnitractor", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "omnitractor-1", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "omnitractor-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},
		-- omnitractor-3
		-- omnitractor-4
		-- omnitractor-5
		{{name = "burner-omniphlog", count = math.random(2,4)}, weight = 3, evolution_min = 0.0, evolution_max = 0.1},
		{{name = "omniphlog-1", count = math.random(2,4)}, weight = 3, evolution_min = 0.1, evolution_max = 0.4},
		{{name = "omniphlog-2", count = math.random(2,4)}, weight = 3, evolution_min = 0.4, evolution_max = 0.8},
		-- omniphlog-3
		-- omniphlog-4
		-- omniphlog-5
    }
    
    return loot
end

function treasure.get_rare_chest_loot()
    loot = {
        -- Vanilla items
		{{name = 'combat-shotgun', count = 1}, 5},
		{{name = 'flamethrower', count = 1}, 5},
		{{name = 'rocket-launcher', count = 1}, 5},
		{{name = 'railgun', count = 1}, 3},
		
		{{name = 'piercing-rounds-magazine', count = math.random(64,128)}, 3},
		{{name = 'uranium-rounds-magazine', count = math.random(16,48)}, 3},

		{{name = 'piercing-shotgun-shell', count = math.random(16,48)}, 3},
		
		{{name = 'rocket', count = math.random(16,32)}, 2},
		{{name = 'explosive-rocket', count = math.random(16,32)}, 2},
		-- {{name = 'atomic-bomb', count = 1}, 1},
		
		{{name = 'railgun-dart', count = math.random(16,48)}, 3},
		{{name = 'flamethrower-ammo', count = math.random(16,48)}, 3},
        
        {{name = 'defender-capsule', count = math.random(8,16)}, 5},
        {{name = 'distractor-capsule', count = math.random(4,8)}, 4},
        {{name = 'destroyer-capsule', count = math.random(4,8)}, 3},
		
		{{name = 'modular-armor', count = 1}, 3},
		{{name = 'power-armor', count = 1}, 1},
		{{name = 'exoskeleton-equipment', count = 1}, 2},

        -- Modded items
		{{name = 'rifle', count = 1}, 5},
		{{name = 'sniper-rifle', count = 1}, 3},
		{{name = 'laser-rifle', count = 1}, 3},

		{{name = 'bullet-magazine', count = math.random(16,48)}, 3},
		{{name = 'acid-bullet-magazine', count = math.random(16,48)}, 3},
		{{name = 'ap-bullet-magazine', count = math.random(16,48)}, 3},
		{{name = 'electric-bullet-magazine', count = math.random(16,48)}, 3},
		{{name = 'flame-bullet-magazine', count = math.random(16,48)}, 3},
		{{name = 'he-bullet-magazine', count = math.random(16,48)}, 3},
		{{name = 'poison-bullet-magazine', count = math.random(16,48)}, 3},

		{{name = 'better-shotgun-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-acid-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-ap-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-electric-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-explosive-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-flame-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-poison-shell', count = math.random(16,48)}, 3},
		{{name = 'shotgun-uranium-shell', count = math.random(16,48)}, 3},

		{{name = 'bob-rocket', count = math.random(16,32)}, 2},
		{{name = 'bob-piercing-rocket', count = math.random(16,32)}, 2},
		{{name = 'bob-electric-rocket', count = math.random(16,32)}, 2},
		{{name = 'bob-explosive-rocket', count = math.random(16,32)}, 2},
		{{name = 'bob-flame-rocket', count = math.random(16,32)}, 2},
		{{name = 'bob-poison-rocket', count = math.random(16,32)}, 2},
		{{name = 'bob-acid-rocket', count = math.random(16,32)}, 2},

		{{name = 'laser-rifle-battery', count = math.random(16,48)}, 3},
		{{name = 'laser-rifle-battery-ruby', count = math.random(16,48)}, 3},
		{{name = 'laser-rifle-battery-sapphire', count = math.random(16,48)}, 3},
		{{name = 'laser-rifle-battery-emerald', count = math.random(16,48)}, 3},
		{{name = 'laser-rifle-battery-amethyst', count = math.random(16,48)}, 3},
		{{name = 'laser-rifle-battery-topaz', count = math.random(16,48)}, 3},
		{{name = 'laser-rifle-battery-diamond', count = math.random(16,48)}, 3},

		{{name = 'bob-laser-robot-capsule', count = math.random(4,8)}, 3},

		{{name = 'heavy-armor-3', count = 1}, 3},
    }

    return loot
end

return treasure
