local kmhMultiplier = 3.6
local mphMultiplier = 2.4

function drawSpeedometer(speed)
  if speed < 1 then speed = 0 end
  SetTextFont(1)
  SetTextProportional(0)
  SetTextOutline()
  SetTextScale(1.0, 1.0)
  SetTextEntry("STRING")
  AddTextComponentString(getSpeedColor(speed)..speed.." MPH")
  -- AddTextComponentInteger(speed)
  DrawText(0.45, 0.91)
end

function getSpeedColor(speed)
  if speed < 65 then
    return "~g~"
  end
  if speed >= 65 and speed < 125 then
    return "~y~"
  end
  if speed >= 125 then
    return "~r~"
  end
end

Citizen.CreateThread(function()
  while true do
    if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
      local mph = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false)) * mphMultiplier)
      drawSpeedometer(math.floor( mph ))
    end
    Citizen.Wait(5)
  end
end)