local scrg = Instance.new("ScreenGui")
scrg.Name = "ScreenGui"
scrg.Parent = game.CoreGui

 local main = Instance.new("Frame")
 main.Name = "Main"
 main.Size = UDim2.new(0,450,0,300)
 main.Position = UDim2.new(0.300,0,0,150)
 main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
 main.Parent = scrg

 local x = Instance.new("TextButton")
 x.Name = "Close"
 x.Size = UDim2.new(0,23,0,23)
 x.Position = UDim2.new(0,426,0,1)
 x.Parent = main
 x.Text = 'X'
 x.TextColor3 = Color3.fromRGB(255,255,255)
 x.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
 x.AutoButtonColor = false

 local line = Instance.new("Frame")
 line.Name = "Line"
 line.Size = UDim2.new(0,448,0,5)
 line.Position = UDim2.new(0,1,0,25)
 line.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
 line.BorderSizePixel = 0
 line.Parent = main
 
 local text = Instance.new("TextLabel")
 text.Name = "Title"
 text.Parent = main
 text.Size = UDim2.new(0,401,0,25)
 text.Position = UDim2.new(0,1,0,0)
 text.Text = " UI Library from larett"
 text.TextSize = 15
 text.BackgroundColor3 = Color3.fromRGB(33,33,33)
 text.TextColor3 = Color3.fromRGB(88,88,88)
 text.TextXAlignment = Enum.TextXAlignment.Left
 local scf1 = Instance.new("ScrollingFrame")
 scf1.Name = "Tab1"
 scf1.Parent = main
 scf1.Size = UDim2.new(0,150,0,268)
 scf1.Position = UDim2.new(0,1,0,31)
 scf1.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf1.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf1.BorderSizePixel = 0
 scf1.ScrollBarThickness = 8
 scf1.ClipsDescendants = true
 
 local scf2 = Instance.new("ScrollingFrame")
 scf2.Name = "Tab2"
 scf2.Parent = main
 scf2.Size = UDim2.new(0,150,0,268)
 scf2.Position = UDim2.new(0,151,0,31)
 scf2.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf2.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf2.BorderSizePixel = 0
 scf2.ScrollBarThickness = 8
 scf2.ClipsDescendants = true
 
 local scf3 = Instance.new("ScrollingFrame")
 scf3.Name = "Tab3"
 scf3.Parent = main
 scf3.Size = UDim2.new(0,147,0,268)
 scf3.Position = UDim2.new(0,302,0,31)
 scf3.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf3.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf3.BorderSizePixel = 0
 scf3.ScrollBarThickness = 8
 scf3.ClipsDescendants = true


 local corner = Instance.new("UICorner")
 corner.CornerRadius = UDim.new(0, 15)
 corner.Parent = main
 local corner1 = Instance.new("UICorner")
 corner1.CornerRadius = UDim.new(0, 15)
 corner1.Parent = x
 local corner2 = Instance.new("UICorner")
 corner2.CornerRadius = UDim.new(0, 21)
 corner2.Parent = scf1
 local corner3 = Instance.new("UICorner")
 corner3.CornerRadius = UDim.new(0, 21)
 corner3.Parent = scf2
 local corner4 = Instance.new("UICorner")
 corner4.CornerRadius = UDim.new(0, 21)
 corner4.Parent = scf3
 local corner5 = Instance.new("UICorner")
 corner5.CornerRadius = UDim.new(0, 21)
 corner5.Parent = text

    x.MouseButton1Click:Connect(function()
    scrg:Destroy()
    end)

    x.MouseEnter:Connect(function()
    x.TextColor3 = Color3.fromRGB(255, 0, 0)
    end)

    x.MouseLeave:Connect(function()
    x.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)
