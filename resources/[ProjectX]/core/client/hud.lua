local accountmoney = 0;
local dirty = 0;
local health = 1;

function UpdateMoneyHud(money, dirty, health)
  data = {cash = money, dirtycash = dirty, health = health}
  SendNUIMessage(data);
end

RegisterNetEvent("nMoneyHud:UpdateMoney")
AddEventHandler("nMoneyHud:UpdateMoney", function(money)
  data = {cash = money, dirtycash = dirty, health = health}
  UpdateMoneyHud(money)
end)

UpdateMoneyHud({cash = accountmoney, dirtycash = dirty, health = health})