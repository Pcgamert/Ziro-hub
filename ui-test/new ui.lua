function UI()
local scrg = Instance.new("ScreenGui")
scrg.Name = "ScreenGui"
scrg.Parent = game.CoreGui

 local cs = Instance.new('Frame')
 cs.Name = "Collapse"
 cs.Parent = scrg

 local main = Instance.new("Frame")
 main.Name = "Main"
 main.Size = UDim2.new(0,450,0,300)
 main.Position = UDim2.new(0,3,0,150)
 main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
 main.Parent = cs
 main.Visible = true

 local x = Instance.new("TextButton")
 x.Name = "Close"
 x.Size = UDim2.new(0,23,0,23)
 x.Position = UDim2.new(0,429,0,154)
 x.Parent = cs
 x.Text = 'X'
 x.TextColor3 = Color3.fromRGB(255,255,255)
 x.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
 x.ZIndex = 2
 x.AutoButtonColor = false
 
 local mn = Instance.new("TextButton")
 mn.Name = "Minimize"
 mn.Size = UDim2.new(0,23,0,23)
 mn.Position = UDim2.new(0,406,0,153)
 mn.Parent = cs
 mn.Text = "▂"
 mn.TextSize = 6
 mn.TextColor3 = Color3.fromRGB(255,255,255)
 mn.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
 mn.ZIndex = 2
 mn.AutoButtonColor = false

 local line = Instance.new("Frame")
 line.Name = "Line"
 line.Size = UDim2.new(0,448,0,5)
 line.Position = UDim2.new(0,1,0,25)
 line.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
 line.BorderSizePixel = 0
 line.ZIndex = 3
 line.Parent = main
 
 local text = Instance.new("TextLabel")
 text.Name = "Title"
 text.Parent = cs
 text.Size = UDim2.new(0,448,0,31)
 text.Position = UDim2.new(0,5,0,150)
 text.Text = " UI Library from larett"
 text.TextSize = 15
 text.BackgroundColor3 = Color3.fromRGB(33,33,33)
 text.TextColor3 = Color3.fromRGB(88,88,88)
 text.TextXAlignment = Enum.TextXAlignment.Left
 text.ZIndex = 1

 scf1 = Instance.new("ScrollingFrame")
 scf1.Name = "Tab1"
 scf1.Parent = main
 scf1.Size = UDim2.new(0,150,0,268)
 scf1.Position = UDim2.new(0,1,0,31)
 scf1.CanvasSize = UDim2.new(0,0,0,268) 
 scf1.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf1.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf1.BorderSizePixel = 0
 scf1.ScrollBarThickness = 8
 scf1.ClipsDescendants = true
 
 scf2 = Instance.new("ScrollingFrame")
 scf2.Name = "Tab2"
 scf2.Parent = main
 scf2.Size = UDim2.new(0,150,0,268)
 scf2.Position = UDim2.new(0,151,0,31)
 scf2.CanvasSize = UDim2.new(0,0,0,268)
 scf2.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf2.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf2.BorderSizePixel = 0
 scf2.ScrollBarThickness = 8
 scf2.ClipsDescendants = true
 
 scf3 = Instance.new("ScrollingFrame")
 scf3.Name = "Tab3"
 scf3.Parent = main
 scf3.Size = UDim2.new(0,147,0,268)
 scf3.Position = UDim2.new(0,302,0,31)
 scf3.CanvasSize = UDim2.new(0,0,0,268)
 scf3.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf3.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf3.BorderSizePixel = 0
 scf3.ScrollBarThickness = 8
 scf3.ClipsDescendants = true

local list = Instance.new("UIListLayout")
list.Parent = scf1
list.Padding = UDim.new(0, 7)
list.SortOrder = Enum.SortOrder.LayoutOrder
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

local list1 = Instance.new("UIListLayout")
list1.Parent = scf2
list1.Padding = UDim.new(0, 7)
list1.SortOrder = Enum.SortOrder.LayoutOrder
list1.HorizontalAlignment = Enum.HorizontalAlignment.Center

local list2 = Instance.new("UIListLayout")
list2.Parent = scf3
list2.Padding = UDim.new(0, 7)
list2.SortOrder = Enum.SortOrder.LayoutOrder
list2.HorizontalAlignment = Enum.HorizontalAlignment.Center

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
 local corner6 = Instance.new("UICorner")
 corner6.CornerRadius = UDim.new(0, 21)
 corner6.Parent =  mn

    x.MouseButton1Click:Connect(function()
    scrg:Destroy()
    end)

    x.MouseEnter:Connect(function()
    x.TextColor3 = Color3.fromRGB(255, 0, 0)
    end)

    x.MouseLeave:Connect(function()
    x.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)
    local toggle = false

    mn.MouseButton1Click:Connect(function()
    toggle = not toggle
    main.Visible = not toggle
    end)
    mn.MouseEnter:Connect(function()
    mn.TextColor3 = Color3.fromRGB(255, 255, 0)
    end)

    mn.MouseLeave:Connect(function()
    mn.TextColor3 = Color3.fromRGB(255, 255, 255)
    end)

function CreateButton(textImport, parent, callback)
    local b = Instance.new("TextButton")
    b.Name = "Button"
    b.Parent = parent
    b.Text = textImport
    b.TextSize = 15
    b.BorderSizePixel = 0
    b.TextScaled = true
    b.TextYAlignment = Enum.TextYAlignment.Top
    b.Size = UDim2.new(0, 130, 0, 25)
    b.Position = UDim2.new(0, 0, 0, 0)
    b.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
    b.TextColor3 = Color3.fromRGB(220, 220, 220)
    b.AutoButtonColor = true

    local corner1 = Instance.new("UICorner")
    corner1.CornerRadius = UDim.new(0, 10)
    corner1.Parent = b

    if callback then
        b.MouseButton1Click:Connect(callback)
    end

    return b
end
local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragInput, mousePos, framePos

-- Фрейм, который тащим
local draggableFrame = cs -- заменяешь на свой main или другой

-- Область, за которую тащим (можно сам draggableFrame)
local dragHandle = text -- например: text, line, etc.

dragHandle.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mousePos = input.Position
		framePos = draggableFrame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local delta = input.Position - mousePos
		draggableFrame.Position = UDim2.new(
			framePos.X.Scale, framePos.X.Offset + delta.X,
			framePos.Y.Scale, framePos.Y.Offset + delta.Y)
	end
end)
end
