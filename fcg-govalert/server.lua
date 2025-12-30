local QBCore = exports['qb-core']:GetCoreObject()

-- /govalert 15 THIS IS A TEST MESSAGE
QBCore.Commands.Add('govalert', 'Broadcast a government alert overlay', {
    { name = 'seconds', help = 'How long to display (5-120)' },
    { name = 'message', help = 'Message text' },
}, true, function(source, args)
    local src = source

    -- Admin only (console allowed)
    if src ~= 0 and not QBCore.Functions.HasPermission(src, 'admin') and not QBCore.Functions.HasPermission(src, 'god') then
        TriggerClientEvent('QBCore:Notify', src, 'No permission', 'error')
        return
    end

    local seconds = tonumber(args[1]) or 15
    seconds = math.max(5, math.min(120, seconds))

    table.remove(args, 1)
    local msg = table.concat(args, ' ')
    if msg == '' then
        TriggerClientEvent('QBCore:Notify', src, 'Usage: /govalert <seconds> <message>', 'error')
        return
    end

    TriggerClientEvent('yh:govalert:show', -1, msg, seconds)
    print(('[YH-GOVALERT] %ss: %s'):format(seconds, msg))
end, 'admin', 'god')

-- /govclear
QBCore.Commands.Add('govclear', 'Force clear government alert overlay', {}, false, function(source)
    local src = source
    if src ~= 0 and not QBCore.Functions.HasPermission(src, 'admin') and not QBCore.Functions.HasPermission(src, 'god') then
        TriggerClientEvent('QBCore:Notify', src, 'No permission', 'error')
        return
    end

    TriggerClientEvent('yh:govalert:clear', -1)
    print('[YH-GOVALERT] Cleared')
end, 'admin', 'god')
