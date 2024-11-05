local RSGCore = exports['rsg-core']:GetCoreObject()

Citizen.CreateThread(function()
    for job, stash in pairs(Config.Stashes) do
        exports['ox_target']:addBoxZone({
            coords = stash.location,
            size = vector3(1, 1, 1), -- Adjust size as needed
            name = 'stash_' .. job,
            debugPoly = true,
            options = {
                {
                    event = 'rsg-stash:client:openstorage',
                    icon = 'fas fa-box',
                    label = 'Open ' .. job .. ' Stash',
                    job = job -- Restrict access to specific job
                }
            }
        })
    end
end)

RegisterNetEvent('rsg-stash:client:openstorage')
AddEventHandler('rsg-stash:client:openstorage', function()
    RSGCore.Functions.GetPlayerData(function(PlayerData)
        if Config.Stashes[PlayerData.job.name] then
            local jobname = PlayerData.job.name
            TriggerServerEvent('rsg-stash:server:openStorage', jobname)
        else
            TriggerEvent('rsg-core:notify', "You don't have access to this stash.")
        end
    end)
end)

-- Adding public counters that can be accessed by anyone
Citizen.CreateThread(function()
    for counterName, counter in pairs(Config.Counters) do
        exports['ox_target']:addBoxZone({
            coords = counter.location,
            size = vector3(1, 1, 1),
            name = 'counter_' .. counterName,
            debugPoly = true,
            options = {
                {
                    event = 'rsg-stash:client:openCounter',
                    icon = 'fas fa-box-open',
                    label = 'Open ' .. counter.name
                }
            }
        })
    end
end)

-- Event to open the public counter storage without job check
RegisterNetEvent('rsg-stash:client:openCounter')
AddEventHandler('rsg-stash:client:openCounter', function()
    local closestCounter = nil
    for name, counter in pairs(Config.Counters) do
        if #(GetEntityCoords(PlayerPedId()) - counter.location) < 1.5 then
            closestCounter = name
            break
        end
    end

    if closestCounter then
        --print("Attempting to open counter:", closestCounter) -- Client-side debug log
        TriggerServerEvent('rsg-stash:server:openCounterStorage', closestCounter)
    else
        --print("No counter nearby to open.")
    end
end)
