-- 
---- Local Variables
--

local windowLeftFrontState   = true  -- 0 -> LF
local windowRightFrontState  = true  -- 1 -> RF
local windowLeftRearState    = true  -- 2 -> LR
local windowRightRearState   = true  -- 3 -> RR

--
---- Commands
--

RegisterCommand('+opencarcontrols', function()
    openUI()
end)

RegisterKeyMapping('+opencarcontrols', 'Opens Car Controls.', 'keyboard', Config.OpenKey)

--
---- Events
--

RegisterNetEvent('carcontrols:client:openCarControls', function()
    openUI()
end)

--
---- Car Callbacks
--

RegisterNUICallback('toggleEngine', function(data, cb)
    toggleEngine()
    cb({})
end)

RegisterNUICallback('toggleFrontHood', function(data, cb)
    toggleFrontHood()
    cb({})
end)

RegisterNUICallback('toggleTrunk', function(data, cb)
    toggleTrunk()
    cb({})
end)

RegisterNUICallback('toggleHeadlights', function(data, cb)
    toggleHeadlights()
    cb({})
end)

RegisterNUICallback('openDoor', function(data, cb)
    openDoor(data.doorIndex)
    cb({})
end)

RegisterNUICallback('openWindow', function(data, cb)
    openWindow(data.windowIndex)
    cb({})
end)

RegisterNUICallback('sitAtSeat', function(data, cb)
    sitAtSeat(data.seatIndex)
    cb({})
end)

--
---- UI Callbacks
--

RegisterNUICallback('hide', function(data, cb)
    toggleUI(false)
    cb({})
end)

--
---- UI Functions
--

openUI = function ()
    local ped = PlayerPedId()
    if (IsPedInAnyVehicle(ped, false)) then
        toggleUI(true)
    end
end

toggleUI = function (bool)
    if (bool) then
        SendNUIMessage({
            type = 'show'
        })
        SetNuiFocus(true, true)
    else
        SendNUIMessage({
            type = 'hide'
        })
        SetNuiFocus(false, false)
    end
end

--
---- Car Functions
--

toggleEngine = function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
        SetVehicleEngineOn(vehicle, (not GetIsVehicleEngineRunning(vehicle)), false, true)
    end
end

toggleFrontHood = function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
        if (GetVehicleDoorAngleRatio(vehicle, 4) > 0) then
            SetVehicleDoorShut(vehicle, 4, false)
        else
            SetVehicleDoorOpen(vehicle, 4, false, false)
        end
    end
end

toggleTrunk = function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= nil and vehicle ~= 0 and GetPedInVehicleSeat(vehicle, 0) then
        if (GetVehicleDoorAngleRatio(vehicle, 5) > 0) then
            SetVehicleDoorShut(vehicle, 5, false)
        else
            SetVehicleDoorOpen(vehicle, 5, false, false)
        end
    end
end

toggleHeadlights = function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle ~= nil and vehicle ~= 0 then
        if (IsVehicleInteriorLightOn(vehicle)) then
            SetVehicleInteriorlight(vehicle, false)
        else
            SetVehicleInteriorlight(vehicle, true)
        end
    end
end

openDoor = function(index)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= nil and vehicle ~= 0 then
        if (GetVehicleDoorAngleRatio(vehicle, index) > 0) then
            SetVehicleDoorShut(vehicle, index, false)
        else
            SetVehicleDoorOpen(vehicle, index, false, false)
        end
    end
end

openWindow = function(index)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= nil and vehicle ~= 0 then
        if (index == 0) then
            if (windowLeftFrontState) then
                RollDownWindow(vehicle, 0)
                windowLeftFrontState = not windowLeftFrontState
            else
                RollUpWindow(vehicle, 0)
                windowLeftFrontState = not windowLeftFrontState
            end
        elseif (index == 1) then
            if (windowRightFrontState) then
                RollDownWindow(vehicle, 1)
                windowRightFrontState = not windowRightFrontState
            else
                RollUpWindow(vehicle, 1)
                windowRightFrontState = not windowRightFrontState
            end
        elseif (index == 2) then
            if (windowLeftRearState) then
                RollDownWindow(vehicle, 2)
                windowLeftRearState = not windowLeftRearState
            else
                RollUpWindow(vehicle, 2)
                windowLeftRearState = not windowLeftRearState
            end
        elseif (index == 3) then
            if (windowRightRearState) then
                RollDownWindow(vehicle, 3)
                windowRightRearState = not windowRightRearState
            else
                RollUpWindow(vehicle, 3)
                windowRightRearState = not windowRightRearState
            end
        end
    end
end

sitAtSeat = function(index)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)
    if vehicle ~= nil and vehicle ~= 0 then
        if (IsVehicleSeatFree(vehicle, index)) then
            SetPedIntoVehicle(ped, vehicle, index)
        end
    end
end