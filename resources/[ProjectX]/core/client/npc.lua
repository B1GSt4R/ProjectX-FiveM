Citizen.CreateThread(function ()
  while true do
    Citizen.Wait(0)

    -- if GetPlayerWantedLevel(PlayerId()) ~= 0 then
    --   SetPlayerWantedLevel(PlayerId(), 0, false)
    --   SetPlayerWantedLevelNow(PlayerId(), false)
    -- end

    SetCreateRandomCops(false)
		SetCreateRandomCopsNotOnScenarios(false)
		SetCreateRandomCopsOnScenarios(false)
		SetGarbageTrucks(false)
		SetRandomBoats(false)

    --PEDS
    SetPedDensityMultiplierThisFrame(Config.PedDensity)
    SetScenarioPedDensityMultiplierThisFrame(Config.PedDensity, Config.PedDensity)

    --VEHICLES
    SetVehicleDensityMultiplierThisFrame(Config.VehicleDensity)
    SetParkedVehicleDensityMultiplierThisFrame(Config.VehicleDensity)
    SetRandomVehicleDensityMultiplierThisFrame(Config.VehicleDensity)

    -- Clear NPC
		-- local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		-- ClearAreaOfVehicles(x, y, z, 1000, false, false, false, false, false)
		-- RemoveVehiclesFromGeneratorsInArea(x - 500.0, y - 500.0, z - 500.0, x + 500.0, y + 500.0, z + 500.0);
  end
end)