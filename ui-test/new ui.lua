loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/utils.lua"))()


local scrg = Instance.new("ScreenGui")
scrg.Name = "ScreenGui"
scrg.Parent = game.CoreGui

 local main = Instance.new("Frame")
 main.Name = "Main"
 main.Size = UDim2.new(0,650,0,450)
 main.Position = UDim2.new(0.300,0,0,150)
 main.BackgroundColor3 = Color3.fromRGB(39, 40, 41)
 main.Parent = scrg

 local x = Instance.new("TextButton")
 x.Name = "Close"
 x.Size = UDim2.new(0,23,0,23)
 x.Position = UDim2.new(0,626,0,1)
 x.Parent = main
 x.Text = 'X'
 x.TextColor3 = Color3.fromRGB(255,255,255)
 x.BackgroundColor3 = Color3.fromRGB(39, 40, 41)
 x.AutoButtonColor = false

 local line = Instance.new("Frame")
 line.Name = "Line"
 line.Size = UDim2.new(0,648,0,5)
 line.Position = UDim2.new(0,1,0,25)
 line.BackgroundColor3 = Color3.fromRGB(53, 54, 55)
 line.Parent = main

 local corner = Instance.new("UICorner")
 corner.CornerRadius = UDim.new(0, 15)
 corner.Parent = main

 local corner1 = Instance.new("UICorner")
 corner1.CornerRadius = UDim.new(0, 15)
 corner1.Parent = x


    x.MouseButton1Click:Connect(function()
    scrg:Destroy()
    end)

    x.MouseEnter:Connect(function()
    x.TextColor3 = Color3.fromRGB(255, 0, 0)
    end)

    x.MouseLeave:Connect(function()
    x.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)
