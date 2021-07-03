ItemValue = ItemValue or 0
if game.PointsService:FindFirstChild("Check") then

Check = game.PointsService.Check

else

Check = Instance.new("BoolValue")
Check.Name = "Check"
Check.Parent = game.PointsService
Check.Value = true
end

if Check.Value == true then
game:GetService("Players").WaterWarrior20161.PlayerGui.Gui.Frames.Inventory.SubInventory.Holder.List.ChildAdded:Connect(function(Item)
SellingThing = Item.Name
SellingThis = Item.ItemValue.Text
ValueChanger = string.gsub(SellingThis, "%$", "")
ItemValue = tonumber(ValueChanger)
if ItemValue == nil then
ValueChangerr = string.gsub(ValueChanger, "K", "")
ValueChangerrr = tonumber(ValueChangerr)
ItemValue = ValueChangerrr * 1000
end
if ValueChangerrr == nil then
ValueChangerrrrr = string.gsub(ValueChangerr, "M", "")
ValueChangerrrrrr = tonumber(ValueChangerrrrr)
ItemValue = ValueChangerrrrrr * 1000000
end
print(ItemValue)
print(SellingThing)
end)
Check.Value = false
end
------
if game.PointsService:FindFirstChild("AutoSell") then

AutoSell = game.PointsService.AutoSell

else

AutoSell = Instance.new("BoolValue")
AutoSell.Name = "AutoSell"
AutoSell.Parent = game.PointsService
AutoSell.Value = true
end

while wait(4) do
if AutoSell.Value == true then

if ItemValue < 50000 then

local args = {
    [1] = "QuickSell",
    [2] = SellingThing,
    [3] = 1
}

game:GetService("ReplicatedStorage").Events.InventoryActions:InvokeServer(unpack(args))
end
end
end
