local accountmoney = 0;
local dirty = 0;
local health = 1;

Citizen.CreateThread(function ()
-- RegisterCommand("money", function()
--   accountmoney = accountmoney + 500
--   UpdateMoneyHud(accountmoney)
-- end)
-- RegisterCommand("dirtymoney", function()
--   dirty = dirty + 50
--   UpdateMoneyHud(dirty)
-- end)
-- RegisterCommand("health", function()
--   health = health + 10
--   UpdateMoneyHud(health)
-- end)
end)

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