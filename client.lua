local hazardsOn = false

-- ustaw sobie klawisz (tutaj F11)
local toggleKey = 344 -- F11

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        
        if IsControlJustPressed(0, toggleKey) then
            local ped = PlayerPedId()
            if IsPedInAnyVehicle(ped, false) then
                local veh = GetVehiclePedIsIn(ped, false)

                hazardsOn = not hazardsOn
                SetVehicleIndicatorLights(veh, 0, hazardsOn) -- lewy
                SetVehicleIndicatorLights(veh, 1, hazardsOn) -- prawy
            end
        end
    end
end)
