local RSGCore = exports['rsg-core']:GetCoreObject()

RegisterServerEvent('rsg-stash:server:openStorage')
AddEventHandler('rsg-stash:server:openStorage', function(stashName)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    if not Player then return end

    local stash = Config.Stashes[stashName]
    if stash then
        local data = { label = stash.name, maxweight = stash.size, slots = stash.slots }
        local uniqueStashName = 'jobstorage_' .. stashName -- Use the config key as a unique identifier

        exports['rsg-inventory']:OpenInventory(src, uniqueStashName, data)
    else
        TriggerClientEvent('rsg-core:notify', src, "Stash configuration not found for this job.")
    end
end)

-- Server-side event to open public counter storage
RegisterServerEvent('rsg-stash:server:openCounterStorage')
AddEventHandler('rsg-stash:server:openCounterStorage', function(counterName)
    local src = source
    local counterConfig = Config.Counters[counterName]
    print('Received openCounterStorage event for:', counterName) -- Server-side debug log
    if counterConfig then
        local data = { label = counterConfig.name, maxweight = counterConfig.size, slots = counterConfig.slots }
        local stashName = 'public_counter_' .. counterName

        print("Opening inventory for:", stashName) -- Additional server-side debug log
        exports['rsg-inventory']:OpenInventory(src, stashName, data)
    else
        TriggerClientEvent('rsg-core:notify', src, "Counter configuration not found.")
    end
end)