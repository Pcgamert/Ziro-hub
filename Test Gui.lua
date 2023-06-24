-- kocmoc_
-- v2.0.0
-- Instances:
local Scripts = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local close = Instance.new("TextButton")
local ScreenGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Main2 = Instance.new("ScrollingFrame")
local Main3 = Instance.new("ScrollingFrame")
-- gui parent
ScreenGUI.Parent = game.CoreGui
-- gui
wait(2)
Main.Name = "Main"
Main.Parent = ScreenGUI
Main.BackgroundColor3 = Color3.fromRGB(0,1,0)
Main.Position = UDim2.new(0.265741736, 0, 0.327073544, 0)
Main.Size = UDim2.new(0, 457, 0, 252)
Main.Active = true
Main.Draggable = true

Main2.Name = "Main2"
Main2.Parent = Main
Main2.BackgroundColor3 = Color3.fromRGB(0,1,0)
Main2.Position = UDim2.new(0.0035741736, 0, 0.133073544, 0)
Main2.Size = UDim2.new(0, 175, 0, 218)
Main2.Active = true
Main2.Draggable = false

Main3.Name = "Main3"
Main3.Parent = Main
Main3.BackgroundColor3 = Color3.fromRGB(0,1,0)
Main3.Position = UDim2.new(0.0035741736, 178, 0.133073544, 0)
Main3.Size = UDim2.new(0, 270, 0, 218)
Main3.Active = true
Main3.Draggable = false

title.Parent = Main
title.BackgroundColor3 = Color3.fromRGB(0,1,0)
title.Position = UDim2.new(-0.00121667981, 0, -0.00229153037, 0)
title.Size = UDim2.new(0, 457, 0, 34)
title.Font = Enum.Font.SourceSans
title.Text = "Ziro Hub v2 | kocmoc_"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextSize = 14.000

Scripts.Name = "Scripts"
Scripts.Parent = Main2
Scripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Scripts.Position = UDim2.new(-0.00121667981, 0, 0.0380807054, 0)
Scripts.Size = UDim2.new(0, 144, 0, 21)
Scripts.Font = Enum.Font.SourceSans
Scripts.Text = "Scripts"
Scripts.TextColor3 = Color3.fromRGB(0, 0, 0)
Scripts.TextSize = 14.000

close.Name = "close"
close.Parent = Main
close.BackgroundColor3 = Color3.fromRGB(0,1,0)
close.Position = UDim2.new(0.928602824, 0, -0.00319522619, 0)
close.Size = UDim2.new(0, 34, 0, 34)
close.Font = Enum.Font.SourceSans
close.Text = "X"
close.TextColor3 = Color3.fromRGB(255,255,255)
close.TextSize = 30.000
close.MouseButton1Down:connect(function()
  ScreenGUI:Destroy()
end)
