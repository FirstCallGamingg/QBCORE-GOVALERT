local showing = false
local hideTimer = nil

RegisterNetEvent('yh:govalert:show', function(message, seconds)
    seconds = tonumber(seconds) or 15

    showing = true
    SendNUIMessage({
        action = 'show',
        message = message,
        seconds = seconds,
        sound = true -- set false if you don't want audio
    })

    if hideTimer then
        ClearTimeout(hideTimer)
        hideTimer = nil
    end

    hideTimer = SetTimeout(seconds * 1000, function()
        if showing then
            SendNUIMessage({ action = 'hide' })
            showing = false
        end
    end)
end)

RegisterNetEvent('yh:govalert:clear', function()
    showing = false
    if hideTimer then
        ClearTimeout(hideTimer)
        hideTimer = nil
    end
    SendNUIMessage({ action = 'hide' })
end)
