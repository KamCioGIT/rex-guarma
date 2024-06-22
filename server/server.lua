local RSGCore = exports['rsg-core']:GetCoreObject()

-----------------------------------------------------------------------
-- buy ticket
-----------------------------------------------------------------------
RegisterServerEvent('rex-guarma:server:buyticket')
AddEventHandler('rex-guarma:server:buyticket', function(amount)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    local totalcost = amount * Config.TicketCost
    local cashBalance = Player.PlayerData.money["cash"]

    if cashBalance >= totalcost then
        Player.Functions.RemoveMoney("cash", totalcost, "purchase-ticket")
        Player.Functions.AddItem('boatticket', amount)
        TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items['boatticket'], "add")
        TriggerClientEvent('ox_lib:notify', src, {title = Lang:t('server.lang_1'), type = 'success', duration = 7000 })
    else 
        TriggerClientEvent('ox_lib:notify', src, {title = Lang:t('server.lang_2'), type = 'error', duration = 7000 })
    end
end)

-----------------------------------------------------------------------
-- remove ticket
-----------------------------------------------------------------------
RegisterNetEvent('rex-guarma:server:removeItem', function(item, amount)
    local src = source
    local Player = RSGCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(item, amount)
    TriggerClientEvent("inventory:client:ItemBox", src, RSGCore.Shared.Items[item], "remove")
end)
