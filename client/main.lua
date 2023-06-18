--
---- Local Variables
--

local leftIndicatorLight  = false -- Index: 1
local rightIndicatorLight = false -- Index: 0

--
---- Commands
--

RegisterCommand("+indicatorlightleft", function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)

    if (rightIndicatorLight) then
        SetVehicleIndicatorLights(veh, 0, false)
        rightIndicatorLight = not rightIndicatorLight
    end
    
    if (leftIndicatorLight) then
        SetVehicleIndicatorLights(veh, 1, false)
        leftIndicatorLight = not leftIndicatorLight
    else
        SetVehicleIndicatorLights(veh, 1, true)
        leftIndicatorLight = not leftIndicatorLight
    end
end)

RegisterCommand("+indicatorlightright", function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)

    if (leftIndicatorLight) then
        SetVehicleIndicatorLights(veh, 1, false)
        leftIndicatorLight = not leftIndicatorLight
    end

    if (rightIndicatorLight) then
        SetVehicleIndicatorLights(veh, 0, false)
        rightIndicatorLight = not rightIndicatorLight
    else
        SetVehicleIndicatorLights(veh, 0, true)
        rightIndicatorLight = not rightIndicatorLight
    end
end)

RegisterCommand("+indicatorlightall", function()
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)

    SetVehicleIndicatorLights(veh, 0, true)
    SetVehicleIndicatorLights(veh, 1, true)
    leftIndicatorLight = true
    rightIndicatorLight = true
end)

--
---- Key Mappings
--

RegisterKeyMapping('+indicatorlightleft', 'Toggle Left Indicator Light.', 'keyboard', 'LEFT')
RegisterKeyMapping("+indicatorlightright", 'Toggle Right Indicator Light.', 'keyboard', 'RIGHT')
RegisterKeyMapping("+indicatorlightall", 'Toggle All Indicator Lights.', 'keyboard', 'DOWN')