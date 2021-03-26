Citizen.CreateThread(function()
    while true do
        local pCoords = GetEntityCoords(GetPlayerPed(-1))        
            local distance1 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, 4840.571, -5174.425, 2.0, false)
            if distance1 < 2000.0 then
            Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", true)  -- Charger cayo et décharger los santos
            Citizen.InvokeNative("0x5E1460624D194A38", true) -- Charger mini map cayo et décharger mini map los santos
            else
            Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", false) -- Décharger cayo et charger los santos
            Citizen.InvokeNative("0x5E1460624D194A38", false) --Décharger mini map cayo et charger mini map los santos
            end
        Citizen.Wait(5000)
    end
end)