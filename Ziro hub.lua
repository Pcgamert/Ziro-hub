local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/build-a-boat-for-treashure-script/main/Gui.lua"))()

local Window = Library.CreateLib("Ziro hub", "RJTheme3")

local Tab = Window:NewTab("Other")

local Section = Tab:NewSection("Other")

Section:NewSlider("Speed", "SliderInfo", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("Fly", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/FNJwpa33"))()  
end)

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewButton("Chest", "", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.4428215, -360.396698, 9395.61328, -0.999882996, -1.53612278e-09, -0.015298591, 2.61689563e-12, 1, -1.00580465e-07, 0.015298591, -1.00568741e-07, -0.999882996)
end)

local Tab = Window:NewTab("Teleport")
local Section = Tab:NewSection("Teleport")

Section:NewButton("Black", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.BlackTeam.Spawns.SpawnLocation.CFrame
end)

Section:NewButton("White", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.WhiteTeam.Spawns.SpawnLocation.CFrame
end)

Section:NewButton("Green", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.CamoTeam.Spawns.SpawnLocation.CFrame
end)

Section:NewButton("Magenta", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.MagentaTeam.Spawns.SpawnLocation.CFrame
end)

Section:NewButton("Red", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484.459839, -9.69246006, -75.7483749, -0.977502048, -1.69424688e-08, 0.210925981, -8.24833979e-09, 1, 4.20986552e-08, -0.210925981, 3.94117308e-08, -0.977502048)
end)

Section:NewButton("Blue", "", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(484.498322, -9.69246006, 289.558777, -0.95287931, 3.57582373e-08, 0.303349674, 2.60836708e-09, 1, -1.09684564e-07, -0.303349674, -1.03724901e-07, -0.95287931)
end)

Section:NewButton("Yellow", "", function()
        game.Players.LocalPlayers.Character.HumanoidRootPart.CFrame = CFrame.new(-576.394958, -13.1000061, 610.19989, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
