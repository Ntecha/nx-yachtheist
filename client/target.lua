local QBCore = exports['qb-core']:GetCoreObject()

-----------------------
--- QB-Target stuff ---
-----------------------

-- start heist
exports['qb-target']:AddBoxZone("nxte-yacht:startheist", vector3(-1117.51, -1488.79, 5.74), 0.7, 1.2, {
	name = "nxte-yacht:startheist",
	heading = 34.87,
	debugPoly = false,
	minZ = 3.8,
	maxZ = 6,
}, {
	options = {
		{
            type = "client",
            event = "nxte-yacht:client:startheist",
			icon = "fas fa-circle",
			label = "Start Heist",
		},
	},
	distance = 2.5
})

-- top deck hack
exports['qb-target']:AddBoxZone("nxte-yacht:hack1", vector3(-2079.45, -1015.91, 6.81), 0.4, 0.4, {
	name = "nxte-yacht:hack1",
	heading = 267.24,
	debugPoly = false,
	minZ = 5.7,
	maxZ = 6,
}, {
	options = {
		{
            type = "client",
            event = "nxte-yacht:client:hack1",
			icon = "fas fa-circle",
			label = "Disable camera\'s",
		},
	},
	distance = 2.5
})

-- top bottom hack
exports['qb-target']:AddBoxZone("nxte-yacht:hack2", vector3(-2056.1, -1027.81, 3.92), 0.4, 0.5, {
	name = "nxte-yacht:hack2",
	heading = 252,
	debugPoly = false,
	minZ = 2.65,
	maxZ = 3.05,
}, {
	options = {
		{
            type = "client",
            event = "nxte-yacht:client:hack2",
			icon = "fas fa-circle",
			label = "Disable security lock",
		},
	},
	distance = 2.5
})

-- loot 1
exports['qb-target']:AddBoxZone("nxte-yacht:loot1", vector3(-2086.35, -1020.28, 9.42), 1, 0.7, {
	name = "nxte-yacht:loot1",
	heading = 252,
	debugPoly = false,
	minZ = 8.2,
	maxZ = 8.8,
}, {
	options = {
		{
            type = "client",
            event = "nxte-yacht:client:loot1",
			icon = "fas fa-circle",
			label = "Search closet",
		},
	},
	distance = 2.5
})

-- loot 2
exports['qb-target']:AddBoxZone("nxte-yacht:loot2", vector3(-2082.49, -1018.28, 13.17), 1, 1, {
	name = "nxte-yacht:loot2",
	heading = 72.42,
	debugPoly = false,
	minZ = 11.8,
	maxZ = 12.5,
}, {
	options = {
		{
            type = "client",
            event = "nxte-yacht:client:loot2",
			icon = "fas fa-circle",
			label = "Search closet",
		},
	},
	distance = 2.5
})