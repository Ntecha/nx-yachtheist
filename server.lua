local QBCore = exports['qb-core']:GetCoreObject()

local CopCount = 0
local isActive = false
local Hack1 = false
local Hack2 = false
local Loot1 = false 
local Loot2 = false
--------------
--- EVENTS ---
--------------

-- getting active cops
RegisterNetEvent('nxte-yacht:server:GetCops', function()
	local amount = 0
    for k, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    CopCount = amount
    TriggerClientEvent('nxte-yacht:client:GetCops', -1, amount)
end)

-- remove money
RegisterNetEvent('nxte-yacht:server:removemoney', function(amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveMoney('cash', tonumber(amount))
end)



-----------------
--- SEND DATA ---
-----------------
RegisterNetEvent('nxte-yacht:server:OnPlayerLoad', function()
    TriggerEvent('nxte-yacht:client:GetActive', -1)
    TriggerEvent('nxte-yacht:client:GetHack1', -1)
    TriggerEvent('nxte-yacht:client:GetHack2', -1)
    TriggerEvent('nxte-yacht:client:GetLoot1', -1)
    TriggerEvent('nxte-yacht:server:GetLoot2', -1)
end)

RegisterNetEvent('nxte-yacht:server:ResetHeist', function()
    isActive = false
    Hack1 = false
    Hack2 = false
    Loot1 = false 
    Loot2 = false
    TriggerClientEvent('nxte-yacht:client:SetActive', -1, false)
    TriggerClientEvent('nxte-yacht:client:SetHack1', -1, false)
    TriggerClientEvent('nxte-yacht:client:SetHack2', -1, false)
    TriggerClientEvent('nxte-yacht:client:SetLoot1', -1, false)
    TriggerClientEvent('nxte-yacht:server:SetLoot2', -1, false)
end)

-- is heist active ?
RegisterNetEvent('nxte-yacht:server:GetActive', function()
    if isActive == true then 
        TriggerClientEvent('nxte-yacht:client:SetActive', -1, true)
    else 
        TriggerClientEvent('nxte-yacht:client:SetActive', -1, false)
    end
end)

-- set heist status
RegisterNetEvent('nxte-yacht:server:SetActive', function(status)
    isActive = status
    TriggerClientEvent('nxte-yacht:client:SetActive', -1, status)
end)


-- is hack1 done ?
RegisterNetEvent('nxte-yacht:server:GetHack1', function()
    if Hack1 == true then 
        TriggerClientEvent('nxte-yacht:client:SetHack1', -1, true)
    else 
        TriggerClientEvent('nxte-yacht:client:SetHack1', -1, false)
    end
end)

-- set hack1 status
RegisterNetEvent('nxte-yacht:server:SetHack1', function(status)
    Hack1 = status
    TriggerClientEvent('nxte-yacht:client:SetHack1', -1, status)
end)

-- is hack2 done ?
RegisterNetEvent('nxte-yacht:server:GetHack2', function()
    if Hack2 == true then 
        TriggerClientEvent('nxte-yacht:client:SetHack2', -1, true)
    else 
        TriggerClientEvent('nxte-yacht:client:SetHack2', -1, false)
    end
end)

-- set hack2 status
RegisterNetEvent('nxte-yacht:server:SetHack2', function(status)
    Hack2 = status
    TriggerClientEvent('nxte-yacht:client:SetHack2', -1, status)
end)

-- is loot1 done ?
RegisterNetEvent('nxte-yacht:server:GetLoot1', function()
    if Loot1 == true then 
        TriggerClientEvent('nxte-yacht:client:SetLoot1', -1, true)
    else 
        TriggerClientEvent('nxte-yacht:client:SetLoot1', -1, false)
    end
end)

-- set loot1 status
RegisterNetEvent('nxte-yacht:server:SetLoot1', function(status)
    Loot1 = status
    TriggerClientEvent('nxte-yacht:client:SetLoot1', -1, status)
end)

-- is loot2 done ?
RegisterNetEvent('nxte-yacht:server:GetLoot2', function()
    if Loot2 == true then 
        TriggerClientEvent('nxte-yacht:client:SetLoot2', -1, true)
    else 
        TriggerClientEvent('nxte-yacht:client:SetLoot2', -1, false)
    end
end)

-- set loot2 status
RegisterNetEvent('nxte-yacht:server:SetLoot2', function(status)
    Loot2 = status
    TriggerClientEvent('nxte-yacht:client:SetLoot2', -1, status)
end)


-- NPC 
local peds = { 
    `mp_m_securoguard_01`,
    `s_m_m_security_01`,
    `s_m_m_highsec_01`,
    `s_m_m_highsec_02`,
    `s_m_m_marine_01`,
    `s_m_m_prisguard_01`,
    `s_m_m_strpreach_01`,
    `s_m_y_armymech_01`,
}

local getRandomNPC = function()
    return peds[math.random(#peds)]
end

QBCore.Functions.CreateCallback('nxte-yacht:server:SpawnNPC', function(source, cb, loc)
    local netIds = {}
    local netId
    local npc
    for i=1, #Config.Shooters['soldiers'].locations[loc].peds, 1 do
        npc = CreatePed(30, getRandomNPC(), Config.Shooters['soldiers'].locations[loc].peds[i], true, false)
        while not DoesEntityExist(npc) do Wait(10) end
        netId = NetworkGetNetworkIdFromEntity(npc)
        netIds[#netIds+1] = netId
    end
    cb(netIds)
end)


RegisterNetEvent('nx-yacht:server:RemoveItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item,amount)
end)

RegisterNetEvent('nx-yacht:server:AddItem', function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item,amount)
end)