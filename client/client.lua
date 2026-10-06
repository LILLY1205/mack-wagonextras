local CurrentWagon = nil
local MenuOpen = false

-- ============================================================================
-- HELPER FUNCTIONS
-- ============================================================================

local function DebugPrint(...)
    if Config.Debug then
        print('[mack-wagonextras]', ...)
    end
end

local function GetWagonModelName(vehicle)
    local model = GetEntityModel(vehicle)
    for modelName, _ in pairs(Config.Wagons) do
        if GetHashKey(modelName) == model then
            return modelName
        end
    end
    return nil
end

local function IsVehicleAWagon(vehicle)
    if not DoesEntityExist(vehicle) then return false end
    return GetWagonModelName(vehicle) ~= nil
end

local function IsPlayerInOrNearWagon(vehicle)
    local ped = PlayerPedId()

    if IsPedInVehicle(ped, vehicle, false) then
        return true
    end

    local wagonCoords = GetEntityCoords(vehicle)
    local playerCoords = GetEntityCoords(ped)
    local dist = #(wagonCoords - playerCoords)
    return dist <= Config.TargetDistance
end

local function GetWagonState(vehicle, modelName)
    local wagonData = Config.Wagons[modelName]
    if not wagonData then return nil end

    local state = {
        extras = {},
        livery = GetVehicleLivery(vehicle),
        propset = nil,
        lantern = nil,
    }

    if wagonData.extras then
        for extraId, _ in pairs(wagonData.extras) do
            state.extras[extraId] = IsVehicleExtraTurnedOn(vehicle, extraId) == 1
        end
    end

    return state
end

-- ============================================================================
-- NUI OPEN / CLOSE
-- ============================================================================

local function OpenWagonMenu(vehicle)
    if MenuOpen then return end

    local modelName = GetWagonModelName(vehicle)
    if not modelName then return end

    local wagonData = Config.Wagons[modelName]
    if not wagonData then return end

    CurrentWagon = vehicle
    MenuOpen = true

    local state = GetWagonState(vehicle, modelName)

    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'openWagonMenu',
        wagonId = NetworkGetNetworkIdFromEntity(vehicle),
        modelName = modelName,
        label = wagonData.label,
        extras = wagonData.extras or {},
        extrasState = state.extras,
        liveries = wagonData.liveries or {},
        currentLivery = state.livery,
        propsets = wagonData.propsets or {},
        lanterns = wagonData.lanterns or {},
    })

    DebugPrint('Opened menu for:', wagonData.label, '(' .. modelName .. ')')
end

local function CloseWagonMenu()
    if not MenuOpen then return end

    MenuOpen = false
    CurrentWagon = nil
    SetNuiFocus(false, false)
    SendNUIMessage({ action = 'closeMenu' })
end

-- ============================================================================
-- OX_TARGET SETUP
-- ============================================================================

CreateThread(function()
    Wait(1000)

    for modelName, _ in pairs(Config.Wagons) do
        local modelHash = GetHashKey(modelName)

        exports.ox_target:addModel(modelHash, {
            {
                name = 'wagon_extras_' .. modelName,
                label = 'Wagon Options',
                icon = 'fas fa-wrench',
                distance = Config.TargetDistance,
                canInteract = function(entity)
                    if not DoesEntityExist(entity) then return false end
                    if not IsPlayerInOrNearWagon(entity) then return false end
                    return true
                end,
                onSelect = function(data)
                    if data.entity and DoesEntityExist(data.entity) then
                        OpenWagonMenu(data.entity)
                    end
                end,
            },
        })
    end

    DebugPrint('ox_target registered for all wagon models')
end)

-- ============================================================================
-- AUTO-CLOSE THREAD
-- ============================================================================

CreateThread(function()
    while true do
        if MenuOpen and CurrentWagon then
            if not DoesEntityExist(CurrentWagon) then
                CloseWagonMenu()
            else
                local ped = PlayerPedId()
                if IsPedInVehicle(ped, CurrentWagon, false) then
                    CloseWagonMenu()
                else
                    local wagonCoords = GetEntityCoords(CurrentWagon)
                    local playerCoords = GetEntityCoords(ped)
                    local dist = #(wagonCoords - playerCoords)
                    if dist > (Config.TargetDistance + 2.0) then
                        CloseWagonMenu()
                    end
                end
            end
            Wait(500)
        else
            Wait(1000)
        end
    end
end)

-- ============================================================================
-- NUI CALLBACKS
-- ============================================================================

RegisterNUICallback('toggleExtra', function(data, cb)
    local wagonId = tonumber(data.wagonId)
    local extraId = tonumber(data.extraId)
    local enabled = data.enabled

    if not wagonId or not extraId then cb('error'); return end

    local vehicle = NetworkGetEntityFromNetworkId(wagonId)
    if not DoesEntityExist(vehicle) then cb('error'); return end

    if enabled then
        SetVehicleExtra(vehicle, extraId, 0)
    else
        SetVehicleExtra(vehicle, extraId, 1)
    end

    DebugPrint('Toggle extra', extraId, enabled and 'ON' or 'OFF')
    cb('ok')
end)

RegisterNUICallback('setLivery', function(data, cb)
    local wagonId = tonumber(data.wagonId)
    local liveryId = tonumber(data.liveryId)

    if not wagonId or not liveryId then cb('error'); return end

    local vehicle = NetworkGetEntityFromNetworkId(wagonId)
    if not DoesEntityExist(vehicle) then cb('error'); return end

    SetVehicleLivery(vehicle, liveryId)
    DebugPrint('Set livery', liveryId)
    cb('ok')
end)

RegisterNUICallback('setPropset', function(data, cb)
    local wagonId = tonumber(data.wagonId)
    local propsetName = data.propsetName

    if not wagonId or not propsetName then cb('error'); return end

    local vehicle = NetworkGetEntityFromNetworkId(wagonId)
    if not DoesEntityExist(vehicle) then cb('error'); return end

    Citizen.InvokeNative(0xE31C0CB1C3186D40, vehicle)

    local propsetHash = GetHashKey(propsetName)
    Citizen.InvokeNative(0x75F90E4051CC084C, vehicle, propsetHash)
    DebugPrint('Applied propset:', propsetName)
    cb('ok')
end)

RegisterNUICallback('setLantern', function(data, cb)
    local wagonId = tonumber(data.wagonId)
    local lanternHash = data.lanternHash

    if not wagonId then cb('error'); return end

    local vehicle = NetworkGetEntityFromNetworkId(wagonId)
    if not DoesEntityExist(vehicle) then cb('error'); return end

    Citizen.InvokeNative(0xE31C0CB1C3186D40, vehicle)

    if lanternHash and lanternHash ~= '' then
        local hash = GetHashKey(lanternHash)
        Citizen.InvokeNative(0xC0F0417A90402742, vehicle, hash)
        DebugPrint('Applied lantern:', lanternHash)
    else
        DebugPrint('Removed all lanterns')
    end
    cb('ok')
end)

RegisterNUICallback('resetAll', function(data, cb)
    local wagonId = tonumber(data.wagonId)
    local modelName = data.modelName

    if not wagonId or not modelName then cb('error'); return end

    local vehicle = NetworkGetEntityFromNetworkId(wagonId)
    if not DoesEntityExist(vehicle) then cb('error'); return end

    local wagonData = Config.Wagons[modelName]
    if not wagonData then cb('error'); return end

    if wagonData.extras then
        for extraId, _ in pairs(wagonData.extras) do
            SetVehicleExtra(vehicle, extraId, 1)
        end
    end

    SetVehicleLivery(vehicle, 0)

    Citizen.InvokeNative(0xE31C0CB1C3186D40, vehicle)

    DebugPrint('Reset all customizations for', wagonData.label)
    cb('ok')
end)

RegisterNUICallback('closeMenu', function(data, cb)
    CloseWagonMenu()
    cb('ok')
end)
