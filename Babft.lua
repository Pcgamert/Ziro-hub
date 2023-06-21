local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/main/Gui.lua"))()

local Main = library:CreateWindow("Main","Crimson")

local tab = Main:CreateTab("Main")
tab:CreateButton("Autofarm", "ToggleInfo", function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/main/autofarm/autofarmbabft.lua"))()
tab:CreateButton("Chest", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.4428215, -360.396698, 9395.61328, -0.999882996, -1.53612278e-09, -0.015298591, 2.61689563e-12, 1, -1.00580465e-07, 0.015298591, -1.00568741e-07, -0.999882996)
end)

local tab2 = Main:CreateTab("Teleport")

Section:NewButton("Black", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BlackTeam.Spawns.SpawnLocation.CFrame
end)

tab:CreateButton("White", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.WhiteTeam.Spawns.SpawnLocation.CFrame
end)

tab:CreateButton("Green", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CamoTeam.Spawns.SpawnLocation.CFrame
end)

tab:CreateButton("Magenta", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.MagentaTeam.Spawns.SpawnLocation.CFrame
end)

tab:CreateButton("Red", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484.459839, -9.69246006, -75.7483749, -0.977502048, -1.69424688e-08, 0.210925981, -8.24833979e-09, 1, 4.20986552e-08, -0.210925981, 3.94117308e-08, -0.977502048)
end)

Section:NewButton("Blue", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484.498322, -9.69246006, 289.558777, -0.95287931, 3.57582373e-08, 0.303349674, 2.60836708e-09, 1, -1.09684564e-07, -0.303349674, -1.03724901e-07, -0.95287931)
end)

tab:CreateButton("Yellow", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.394958, -13.1000061, 610.19989, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
