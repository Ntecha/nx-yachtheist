Config = {}

Config.MinCop = 3 -- amount of cops needed for the heist
Config.HeistPrice = 10000 -- Price to pay to start the mission
Config.TimeOut = 45 -- how long after activationg the heist it can be done again in minuits

-- hack 1
Config.Hack1Item = 'trojan_usb'-- item needed for hack 1 
Config.Hack1Time = 12 -- amount of time player has to do the hack
Config.Hack1Squares = 4 -- amount of squares player has to hack
Config.Hack1Repeat = 3 -- how many times player has to do the hack for success

-- hack 2
Config.Hack2Item = 'electronickit'-- item needed for hack 1 
Config.Hack2Time = 12 -- amount of time player has to do the hack
Config.Hack2Squares = 5 -- amount of squares player has to hack
Config.Hack2Repeat = 2 -- how many times player has to do the hack for success

-- loot 1
Config.Loot1Item = 'weapon_combatpistol'-- item that can be received from loot 1 
Config.Loot1AmountMin = 1 -- Min amount that item can be received
Config.Loot1AmountMax = 3 -- Max amount that item can be received
Config.Loot1RareItem = 'weapon_microsmg' -- rare item that can be received from loot 1 
Config.Loot1RareAmountMin = 1 -- Min amount that rare item can be received
Config.Loot1RareAmountMax = 3 -- Max amount that rare item can be received

-- loot 1
Config.Loot2Item = 'goldbar'-- item that can be received from loot 1 
Config.Loot2AmountMin = 1 -- Min amount that item can be received
Config.Loot2AmountMax = 4 -- Max amount that item can be received
Config.Loot2RareItem = 'weapon_assaultrifle' -- rare item that can be received from loot 1 
Config.Loot2RareAmountMin = 1 -- Min amount that rare item can be received
Config.Loot2RareAmountMax = 2 -- Max amount that rare item can be received

--NPC
Config.PedGun = 'weapon_microsmg' -- weapon NPC's use
Config.PedOnHack1 = true -- you want NPC's to spawn on hack 1 ?
Config.PedOnHack2 = true -- you want NPC's to spawn on hack 2 ?

-- NPC coords
Config.Shooters = {
    ['soldiers'] = {
        locations = {
            [1] = { -- on Hack 1
                peds = {vector3(-2027.38, -1031.69, 5.88),vector3(-2030.0, -1041.68, 5.88),vector3(-2030.64, -1036.29, 5.82),vector3(-2028.89, -1037.03, 2.57),vector3(-2040.98, -1031.06, 2.57),vector3(-2047.27, -1032.88, 2.57)}
            },
            [2] = { -- on Hack 2
                peds = {vector3(-2117.65, -1006.47, 7.88),vector3(-2103.82, -1016.37, 5.88),vector3(-2087.83, -1024.0, 5.88),vector3(-2079.01, -1021.89, 8.97),vector3(-2040.31, -1030.82, 8.97),vector3(-2039.44, -1035.64, 8.97),vector3(-2056.94, -1032.9, 11.91),vector3(-2054.78, -1025.0, 11.91)}   
            }, 
        },
    }
}

-- bag ( depending on the clothing in your city )
Config.BagUseID = 93 -- bag that a player gets after doing an animation?
Config.HideBagID = 0 -- Bag ID is hiding the bag
