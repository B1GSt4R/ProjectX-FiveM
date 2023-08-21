RegisterCommand('veh', function(src, args, raw)
  local vehicle = args[1]
  local x,y,z = table.unpack(GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 2.5, 0.5))
  vehiclehash = GetHashKey(vehicle)
  RequestModel(vehiclehash)
  Citizen.CreateThread(function()
    while not HasModelLoaded(vehiclehash) do
      Citizen.Wait(10)
    end

    local spawned = CreateVehicle(vehiclehash, x, y, z, GetEntityHeading(PlayerPedId()+90, 1, 0))
    SetVehicleNumberPlateText(spawned, "B1GSt4R")
    notify("~g~Vehicle Spawned")
  end)
end, false)

function notify(msg)
  SetNotificationTextEntry("STRING")
  AddTextComponentSubstringPlayerName(msg)
  DrawNotification(false, false)
end