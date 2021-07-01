-- AutoFarm CBRO Fatto da Firo ( Non bypassa il limite di Players per ogni team) combinate con AntiAfk così non venite kickati


if game.PointsService:FindFirstChild("Switch") then

Switch = game.PointsService.Switch
Executed = game.PointsService.Executed

else

Switch = Instance.new("BoolValue") -- EXECUTE 1 TIME
Switch.Name = "Switch"                   -- ESEGUIRE 1 VOLTA
Switch.Parent = game.PointsService
Switch.Value = true
Executed = Instance.new("BoolValue")
Executed.Name = "Executed"
Executed.Parent = game.PointsService
Executed.Value = false
-- Eseguire la stringa 7 per spegnere lo script
-- Do the string below to turn the script off
-- game.PointsService.Switch.Value = false
end
if Executed.Value == false then
Executed.Value = true
while wait(10) do

local CTScore = game.Players.LocalPlayer.PlayerGui.GUI.UpperInfo.CTScore.Text -- Mettete il nome roblox al posto di STOCAZZO per tutte
local TScore = game.Players.LocalPlayer.PlayerGui.GUI.UpperInfo.TScore.Text  -- Put your roblox name instead of STOCAZZO for all
local CurrentTeam = game.Players.LocalPlayer.Status.Team.Value

if Switch.Value == true then

if CTScore > TScore and CurrentTeam == "CT" then

print("Caso 1")    
    
elseif CTScore > TScore and CurrentTeam == "T" then
    
    local args = {
        [1] = "CT"
    }

    game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(unpack(args))
    
print("Caso 2")

elseif TScore > CTScore and CurrentTeam == "T" then

print("Caso 3")    
    
elseif TScore > CTScore and CurrentTeam == "CT" then
    

    local args = {
        [1] = "T"
    }

        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(unpack(args))
        
print("Caso 4")

elseif CurrentTeam == "Spectator" then                                                                                                                       -- Fatto da Firo

    local args = {
        [1] = "T"
    }

        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(unpack(args))

wait(3)
    local args = {
        [1] = "CT"
    }

print("Caso 5")

        game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(unpack(args))

elseif TScore == CTScore then

print("Caso 6")

end
end
end
end
