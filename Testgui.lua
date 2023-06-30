-- kocmoc_
-- v2.0.0
-- locals
local Player = game.Players.LocalPlayer.Character.Humanoid
-- Instances:
local c = Instance.new("UICorner")
local Tab = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local ScreenGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Main2 = Instance.new("ScrollingFrame")
local Main3 = Instance.new("ScrollingFrame")
local UIcorner = Instance.new("UICorner")
-- gui parent
ScreenGUI.Parent = game.CoreGui
-- gui
wait(2)

Main.Name = "Main"
Main.Parent = ScreenGUI
Main.BackgroundColor3 = Color3.fromRGB(0,1,0)
Main.Position = UDim2.new(0.265741736, 0, 0.327073544, 0)
Main.Size = UDim2.new(0, 449, 0, 252)
Main.Active = true
Main.Draggable = true

Main2.Name = "Main2"
Main2.Parent = Main
Main2.BackgroundTransparency = 1
Main2.BackgroundColor3 = Color3.fromRGB(0,1,0)
Main2.Position = UDim2.new(0.0035741736, 0, 0.133073544, 0)
Main2.Size = UDim2.new(0, 175, 0, 215.9)
Main2.Active = true
Main2.Draggable = false

Main3.Name = "Main3"
Main3.Parent = Main
Main3.BackgroundTransparency = 1
Main3.BackgroundColor3 = Color3.fromRGB(0,1,0)
Main3.Position = UDim2.new(0.0035741736, 178, 0.133073544, 0)
Main3.Size = UDim2.new(0, 269, 0, 215.9)
Main3.Active = true
Main3.Draggable = false

function NewTab(TabName)
Tab.Name = "Tab"
Tab.Parent = Main2
Tab.BackgroundColor3 = Color3.fromRGB(163, 173, 166)
Tab.Position = UDim2.new(0.141667981, 0, 0.0380807054, 0)
Tab.Size = UDim2.new(0, 115, 0, 21)
Tab.Text = TabName
Tab.TextColor3 =  Color3.fromRGB(0,0,0)
Tab.TextSize = 8.000
end

title.Parent = Main
title.BackgroundTransparency = 1
title.BackgroundColor3 = Color3.fromRGB(0,1,0)
title.Position = UDim2.new(0.0011667981, 0, -0.00229153037, 0)
title.Size = UDim2.new(0, 449, 0, 34)
title.Font = Enum.Font.SourceSans
title.Text = "Ziro Hub v2 | kocmoc_"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextSize = 14.000

UIcorner.CornerRadius = UDim.new(1, 5)
UIcorner.Parent = Tab

c.Parent = Main
c.CornerRadius = UDim.new(0,20)

close.Name = "close"
close.Parent = Main
close.BackgroundTransparency = 1
close.BackgroundColor3 = Color3.fromRGB(0,1,0)
close.Position = UDim2.new(0.92602824, 0, -0.00319522619, 0)
close.Size = UDim2.new(0, 34, 0, 33)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255,255,255)
close.TextSize = 18.000
close.MouseButton1Down:connect(function()
  ScreenGUI:Destroy()
end)
