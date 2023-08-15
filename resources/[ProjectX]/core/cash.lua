local accountmoney = 0;

Citizen.CreateThread(function ()
RegisterCommand("money", function()
  accountmoney = accountmoney + 500
  UpdateMoneyHud(accountmoney)
end)
end)

function UpdateMoneyHud(money)
  SendNUIMessage({money = money});
end

RegisterNetEvent("nMoneyHud:UpdateMoney")
AddEventHandler("nMoneyHud:UpdateMoney", function(money)
  UpdateMoneyHud(money)
end)

UpdateMoneyHud(accountmoney)