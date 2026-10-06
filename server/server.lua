-- ============================================================================
-- mack-wagonextras - Server
-- Minimal server-side validation. All customization is client-side and
-- session-only, so the server just acts as a health check.
-- ============================================================================

RegisterNetEvent('mack-wagonextras:server:validateAction', function(wagonId)
    local src = source

    if not wagonId or type(wagonId) ~= 'number' then
        DebugPrint('Invalid wagonId from player', src)
        return
    end

    local vehicle = NetworkGetEntityFromNetworkId(wagonId)
    if not vehicle or not DoesEntityExist(vehicle) then
        DebugPrint('Vehicle does not exist for wagonId', wagonId, 'from player', src)
        return
    end

    TriggerClientEvent('mack-wagonextras:client:actionValidated', src, wagonId)
end)

local function DebugPrint(...)
    print('[mack-wagonextras:server]', ...)
end
