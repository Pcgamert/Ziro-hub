local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/build-a-boat-for-treashure-script/main/Gui.lua"))()

local Window = Library.CreateLib("Ziro hub", "RJTheme3")

local Tab = Window:NewTab("Other")

local Section = Tab:NewSection("Other")

Section:NewSlider("Speed", "SliderInfo", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewButton("ShiftLock", "", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MiniNoobie/ShiftLockx/main/Shiftlock-MiniNoobie",true))()
end)

Section:NewButton("Fly", "ButtonInfo", function()
loadstring(game:HttpGet("https://pastebin.com/raw/FNJwpa33"))()  
end)

Section:NewButton("Esp", "Buttoninfo", function()
while wait(0.5) do
    for i, parent in ipairs(workspace:GetDescendants()) do
        if parent:FindFirstChild("Humanoid") then
            if not parent:FindFirstChild("EspBox") then
                if parent ~= game.Players.LocalPlayer.Character then
                    local esp = Instance.new("BoxHandleAdornment", parent)
                    esp.Adornee = parent
                    esp.ZIndex = 0
                    esp.Size = Vector3.new(4, 4, 1)
                    esp.Transparency = 0.65
                    esp.Color3 = Color3.fromRGB(255,48,48)
                    esp.AlwaysOnTop = true
                    esp.Name = "EspBox"
                end
            end
        end
    end
end
end)

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")


Section:NewToggle("ToggleText", "ToggleInfo", function(AFK)
    if AFK then
 while wait() do
game.Workspace.Gravity = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-41.9544487, 35.7701721, 1369.04651, -0.00287247682, 0.0048801424, 0.999983966, 0.0487096235, 0.998801768, -0.00473445328, -0.998808861, 0.0486952439, -0.00310674496)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-59.6969261, 15.9832945, 2142.04004, -0.00682245847, -0.00930342078, 0.999933422, 0.0481809117, 0.998792291, 0.00962153822, -0.998815298, 0.0482433476, -0.00636597117)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.769886, 19.0507336, 2912.35474, -0.0222547371, 0.0305471048, 0.999285519, 0.0485921837, 0.998384833, -0.0294373911, -0.99857074, 0.0479023457, -0.0237031411)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-54.8302536, 42.9623604, 3677.35352, -0.0411250331, -0.137526467, 0.989643991, -0.0324802361, 0.990142465, 0.136246011, -0.998625934, -0.0265407488, -0.0451865345)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.0657883, 8.34311676, 4451.00879, -0.0141364168, 0.037075229, 0.999212503, -0.0449226089, 0.99827975, -0.0376761667, -0.99889046, -0.0454198383, -0.0124465832)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-72.8094559, 8.15697384, 5218.09766, 0.0141165601, 0.236092806, 0.971627951, -7.71364341e-08, 0.971724808, -0.23611632, -0.999900341, 0.0033330752, 0.0137174297)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.0685349, 15.0278578, 5989.43604, 0.013620208, 0.0769864619, 0.996939123, 0.0367702432, 0.996318638, -0.0774409026, -0.999230921, 0.0377124548, 0.0107392566)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-47.1191139, 26.4391365, 6759.07568, -0.00916664768, 0.123972222, 0.99224335, 0.0151471859, 0.992188394, -0.123825423, -0.99984324, 0.0138946306, -0.0109728724)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-57.918808, 38.2458191, 7531.89355, 0.0173130035, 0.0759143308, 0.996964037, 1.3112961e-07, 0.997113466, -0.0759257078, -0.999850094, 0.00131463271, 0.0172630176)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-71.2110519, 39.7349358, 8299.96582, 0.105259441, 0.189898446, 0.976144969, -0.03890232, 0.981632888, -0.186771154, -0.993683577, -0.0183148794, 0.110713616)
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-55.0149765, -322.744934, 9484.82129, -0.997964144, -0.0192918815, 0.0607900396, 1.13142548e-07, 0.953153312, 0.302487612, -0.063777782, 0.301871777, -0.951212823)
wait(15)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-41.9544487, 35.7701721, 1369.04651, -0.00287247682, 0.0048801424, 0.999983966, 0.0487096235, 0.998801768, -0.00473445328, -0.998808861, 0.0486952439, -0.00310674496)
end

    else
        
    end
end)

end)


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

Section:NewButton("Yellow", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-576.394958, -13.1000061, 610.19989, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)
