local market = {}

function market.get_items()
	local items = {
		{price = {}, offer = {type = 'nothing', effect_description = 'Deposit Fish'}},
		{price = {}, offer = {type = 'nothing', effect_description = 'Withdraw Fish - 1% Bank Fee'}},
		{price = {}, offer = {type = 'nothing', effect_description = 'Show Account Balance'}},
	
		{price = {{"raw-fish", 150}}, offer = {type = 'give-item', item = 'burner-omnitractor'}},
	
		{price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'rail', count = 4}},
		{price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'rail-signal', count = 2}},
		{price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'rail-chain-signal', count = 2}},
		{price = {{"raw-fish", 10}}, offer = {type = 'give-item', item = 'train-stop'}},
		{price = {{"raw-fish", 94}}, offer = {type = 'give-item', item = 'locomotive'}},
		{price = {{"raw-fish", 35}}, offer = {type = 'give-item', item = 'cargo-wagon'}},
		{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'red-wire', count = 1}},
		{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'green-wire', count = 1}},
		{price = {{"raw-fish", 4}}, offer = {type = 'give-item', item = 'decider-combinator'}},
		{price = {{"raw-fish", 4}}, offer = {type = 'give-item', item = 'arithmetic-combinator'}},
		{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'constant-combinator'}},
		{price = {{"raw-fish", 4}}, offer = {type = 'give-item', item = 'programmable-speaker'}},
		{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'small-lamp'}},
		{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'firearm-magazine'}},
		{price = {{"raw-fish", 4}}, offer = {type = 'give-item', item = 'piercing-rounds-magazine'}},
		{price = {{"raw-fish", 3}}, offer = {type = 'give-item', item = 'grenade'}},
		{price = {{"raw-fish", 2}}, offer = {type = 'give-item', item = 'land-mine'}},
		{price = {{"raw-fish", 1}}, offer = {type = 'give-item', item = 'explosives', count = 2}},	
		{price = {{"raw-fish", 40}}, offer = {type = 'give-item', item = 'cliff-explosives'}},
		
		{price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'raw-wood', count = 25}},
		-- {price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'iron-ore', count = 25}},
		-- {price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'copper-ore', count = 25}},
		{price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'stone', count = 25}},
		-- {price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'coal', count = 25}},	
		-- {price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'uranium-ore', count = 20}},
		{price = {{"raw-fish", 5}}, offer = {type = 'give-item', item = 'omnite', count = 25}},
	
		{price = {{'raw-wood', 25}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},
		-- {price = {{'iron-ore', 25}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},
		-- {price = {{'copper-ore', 25}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},
		{price = {{'stone', 25}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},
		-- {price = {{'coal', 25}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},	
		-- {price = {{'uranium-ore', 20}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},
		{price = {{'omnite', 25}}, offer = {type = 'give-item', item = "raw-fish", count = 2}},
	}

	return items
end

function market.get_secret_ammo_items()
	local items = {
		-- Vanilla items
		{price = {{"raw-fish", math.random(1,3)}}, offer = {type = 'give-item', item = 'land-mine'}},

		{price = {{"raw-fish", math.random(2,4)}}, offer = {type = 'give-item', item = 'piercing-rounds-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'uranium-rounds-magazine'}},

		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'piercing-shotgun-shell'}},

		{price = {{"raw-fish", math.random(15,30)}}, offer = {type = 'give-item', item = 'explosive-cannon-shell'}},
		{price = {{"raw-fish", math.random(25,35)}}, offer = {type = 'give-item', item = 'explosive-uranium-cannon-shell'}},

		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'explosive-rocket'}},
		
		{price = {{"raw-fish", math.random(2,4)}}, offer = {type = 'give-item', item = 'railgun-dart'}},
		{price = {{"raw-fish", math.random(6,12)}}, offer = {type = 'give-item', item = 'flamethrower-ammo'}},
		
		{price = {{"raw-fish", math.random(20,40)}}, offer = {type = 'give-item', item = 'cluster-grenade'}},

		-- Modded items
		{price = {{"raw-fish", math.random(4,6)}}, offer = {type = 'give-item', item = 'bullet-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'acid-bullet-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'ap-bullet-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'electric-bullet-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'flame-bullet-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'he-bullet-magazine'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'poison-bullet-magazine'}},

		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'better-shotgun-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-acid-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-ap-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-electric-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-explosive-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-flame-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-poison-shell'}},
		{price = {{"raw-fish", math.random(8,16)}}, offer = {type = 'give-item', item = 'shotgun-uranium-shell'}},

		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-piercing-rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-electric-rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-explosive-rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-flame-rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-poison-rocket'}},
		{price = {{"raw-fish", math.random(10,20)}}, offer = {type = 'give-item', item = 'bob-acid-rocket'}},

		{price = {{"raw-fish", math.random(6,8)}}, offer = {type = 'give-item', item = 'laser-rifle-battery'}},
		{price = {{"raw-fish", math.random(8,10)}}, offer = {type = 'give-item', item = 'laser-rifle-battery-ruby'}},
		{price = {{"raw-fish", math.random(10,12)}}, offer = {type = 'give-item', item = 'laser-rifle-battery-sapphire'}},
		{price = {{"raw-fish", math.random(12,14)}}, offer = {type = 'give-item', item = 'laser-rifle-battery-emerald'}},
		{price = {{"raw-fish", math.random(14,16)}}, offer = {type = 'give-item', item = 'laser-rifle-battery-amethyst'}},
		{price = {{"raw-fish", math.random(16,18)}}, offer = {type = 'give-item', item = 'laser-rifle-battery-topaz'}},
		{price = {{"raw-fish", math.random(18,20)}}, offer = {type = 'give-item', item = 'laser-rifle-battery-diamond'}},
	}

	return items
end

function market.get_secret_items()
	local items = {
		-- Vanilla items
		-- {price = {{"raw-fish", math.random(100,175)}}, offer = {type = 'give-item', item = 'loader'}},
		-- {price = {{"raw-fish", math.random(200,350)}}, offer = {type = 'give-item', item = 'fast-loader'}},
		-- {price = {{"raw-fish", math.random(400,600)}}, offer = {type = 'give-item', item = 'express-loader'}},

		{price = {{"raw-fish", math.random(25,50)}}, offer = {type = 'give-item', item = 'construction-robot'}},

		{price = {{"raw-fish", math.random(250,450)}}, offer = {type = 'give-item', item = 'combat-shotgun'}},
		{price = {{"raw-fish", math.random(125,250)}}, offer = {type = 'give-item', item = 'railgun'}},
		{price = {{"raw-fish", math.random(75,125)}}, offer = {type = 'give-item', item = 'rocket-launcher'}},
		{price = {{"raw-fish", math.random(250,450)}}, offer = {type = 'give-item', item = 'flamethrower'}},
		
		{price = {{"raw-fish", math.random(250,500)}}, offer = {type = 'give-item', item = 'modular-armor'}},
		{price = {{"raw-fish", math.random(1500,3000)}}, offer = {type = 'give-item', item = 'power-armor'}},
		{price = {{"raw-fish", math.random(15000,20000)}}, offer = {type = 'give-item', item = 'power-armor-mk2'}},
		
		{price = {{"raw-fish", math.random(400,700)}}, offer = {type = 'give-item', item = 'belt-immunity-equipment'}},
		{price = {{"raw-fish", math.random(4000,7000)}}, offer = {type = 'give-item', item = 'fusion-reactor-equipment'}},
		{price = {{"raw-fish", math.random(250,450)}}, offer = {type = 'give-item', item = 'energy-shield-equipment'}},
		{price = {{"raw-fish", math.random(800,1200)}}, offer = {type = 'give-item', item = 'energy-shield-mk2-equipment'}},
		{price = {{"raw-fish", math.random(50,100)}}, offer = {type = 'give-item', item = 'battery-equipment'}},
		{price = {{"raw-fish", math.random(700,1100)}}, offer = {type = 'give-item', item = 'battery-mk2-equipment'}},
		{price = {{"raw-fish", math.random(350,550)}}, offer = {type = 'give-item', item = 'personal-laser-defense-equipment'}},
		{price = {{"raw-fish", math.random(300,500)}}, offer = {type = 'give-item', item = 'exoskeleton-equipment'}},
		{price = {{"raw-fish", math.random(350,500)}}, offer = {type = 'give-item', item = 'personal-roboport-equipment'}},
		{price = {{"raw-fish", math.random(10000,12000)}}, offer = {type = 'give-item', item = 'night-vision-equipment'}},
		

		-- Modded items
		{price = {{"raw-fish", math.random(100,175)}}, offer = {type = 'give-item', item = 'deadlock-loader-1'}},
		{price = {{"raw-fish", math.random(200,350)}}, offer = {type = 'give-item', item = 'deadlock-loader-2'}},
		{price = {{"raw-fish", math.random(400,600)}}, offer = {type = 'give-item', item = 'deadlock-loader-3'}},
		{price = {{"raw-fish", math.random(800,1200)}}, offer = {type = 'give-item', item = 'deadlock-loader-4'}},
		{price = {{"raw-fish", math.random(1400,2000)}}, offer = {type = 'give-item', item = 'deadlock-loader-5'}},

		{price = {{"raw-fish", math.random(200,400)}}, offer = {type = 'give-item', item = 'bob-construction-robot-2'}},

		{price = {{"raw-fish", math.random(250,450)}}, offer = {type = 'give-item', item = 'rifle'}},
		{price = {{"raw-fish", math.random(800,1000)}}, offer = {type = 'give-item', item = 'sniper-rifle'}},
		{price = {{"raw-fish", math.random(600,800)}}, offer = {type = 'give-item', item = 'laser-rifle'}},
		
		{price = {{"raw-fish", math.random(12000,16000)}}, offer = {type = 'give-item', item = 'fusion-reactor-equipment-2'}},
		{price = {{"raw-fish", math.random(2600,3200)}}, offer = {type = 'give-item', item = 'energy-shield-mk3-equipment'}},
		{price = {{"raw-fish", math.random(2200,2800)}}, offer = {type = 'give-item', item = 'battery-mk3-equipment'}},
		{price = {{"raw-fish", math.random(2400,3000)}}, offer = {type = 'give-item', item = 'personal-laser-defense-equipment-2'}},
		{price = {{"raw-fish", math.random(14000,16000)}}, offer = {type = 'give-item', item = 'night-vision-equipment-2'}},
		{price = {{"raw-fish", math.random(18000,22000)}}, offer = {type = 'give-item', item = 'night-vision-equipment-3'}},
	}

	return items
end

return market
