local UIS = game:GetService("UserInputService")
function UI(title)
       local ColorStatus = {
        [1] = Color3.fromRGB(0,255,0),
        [2] = Color3.fromRGB(0,0,255),
        [3] = Color3.fromRGB(121,0,173),
        [4] = Color3.fromRGB(255,0,0),
        [5] = Color3.fromRGB(33,33,33),
}

local scrg = Instance.new("ScreenGui")
scrg.Name = "ScreenGui"
scrg.IgnoreGuiInset = true
scrg.Parent = game.CoreGui

    local toolTip = Instance.new("TextLabel")
    toolTip.Size = UDim2.new(0, 180, 0, 20)
    toolTip.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    toolTip.TextColor3 = Color3.fromRGB(122, 122, 122)
    toolTip.BackgroundTransparency = 0.2
    toolTip.TextScaled = true
    toolTip.Visible = false
    toolTip.BorderSizePixel = 0
    toolTip.ZIndex = 100
    toolTip.Parent = scrg
    game:GetService("RunService").RenderStepped:Connect(function()
	if toolTip.Visible then
		local mouse = game:GetService("UserInputService"):GetMouseLocation()
		toolTip.Position = UDim2.new(0,mouse.X,0, mouse.Y + 10)
	end
    end)

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 6)
corner.Parent = toolTip


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
 text.Position = UDim2.new(0,5,0,148)
 text.Text = " " ..title
 text.TextSize = 15
 text.BackgroundColor3 = Color3.fromRGB(33,33,33)
 text.TextColor3 = Color3.fromRGB(122,122,122)
 text.TextXAlignment = Enum.TextXAlignment.Left
 text.ZIndex = 1

 scf1 = Instance.new("ScrollingFrame")
 scf1.Name = "Tab1"
 scf1.Parent = main
 scf1.Size = UDim2.new(0,199,0,268)
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
 scf2.Size = UDim2.new(0,249,0,268)
 scf2.Position = UDim2.new(0,200,0,31)
 scf2.CanvasSize = UDim2.new(0,0,0,268)
 scf2.AutomaticCanvasSize = Enum.AutomaticSize.Y
 scf2.BackgroundColor3 = Color3.fromRGB(33,33,33)
 scf2.BorderSizePixel = 0
 scf2.ScrollBarThickness = 8
 scf2.ClipsDescendants = true

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
     local Padding = Instance.new("UIPadding")
    Padding.Parent = scf1
    Padding.PaddingRight = UDim.new(0, 5) 
    local Padding2 = Instance.new("UIPadding")
    Padding2.Parent = scf2
    Padding2.PaddingRight = UDim.new(0, 5) 
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

function CreateTab(textImport, callback)
    local b = Instance.new("TextButton")
    b.Name = "Button"
    b.Parent = scf1
    b.Text = textImport
    b.TextSize = 15
    b.BorderSizePixel = 0
    b.TextScaled = true
    b.TextYAlignment = Enum.TextYAlignment.Top
    b.Size = UDim2.new(0, 180, 0, 25)
    b.Position = UDim2.new(0, 0, 0, 0)
    b.BackgroundColor3 = Color3.fromRGB(55,55,55)
    b.TextColor3 = Color3.fromRGB(190, 190, 190)
    b.AutoButtonColor = false

    local corner1 = Instance.new("UICorner")
    corner1.CornerRadius = UDim.new(0, 7)
    corner1.Parent = b
    if callback then
    b.MouseButton1Click:Connect(callback)
    end

    return b
end
function CreateButton(textImport,Index,callback)
    local b = Instance.new("TextButton")
    local c = Instance.new("TextLabel")
    b.Name = "Button"
    b.Parent = scf2
    b.Text = " " .. textImport
    b.TextSize = 15
    b.BorderSizePixel = 0
    b.TextScaled = true
    b.TextYAlignment = Enum.TextYAlignment.Top
    b.TextXAlignment = Enum.TextXAlignment.Left
    b.Size = UDim2.new(0, 230, 0, 25)
    b.Position = UDim2.new(0, 0, 0, 0)
    b.BackgroundColor3 = Color3.fromRGB(55,55,55)
    b.TextColor3 = Color3.fromRGB(190, 190, 190)
    b.AutoButtonColor = false
    c.Name = 'Circle'
    c.Parent = b
    c.Text = ""
    c.Size = UDim2.new(0,12,0,12)
    c.Position = UDim2.new(0,205,0,6)
    c.BackgroundColor3 = ColorStatus[Index] or ColorStatus[5] 
    c.BorderSizePixel = 5

    local corner1 = Instance.new("UICorner")
    corner1.CornerRadius = UDim.new(0, 7)
    corner1.Parent = b
    local corner2 = Instance.new("UICorner")
    corner2.CornerRadius = UDim.new(1,0)
    corner2.Parent = c 

    c.MouseEnter:Connect(function()
    toolTip.Visible = true
	if Index == 1 then
    toolTip.Text = "New"
    elseif Index == 2 then
    toolTip.Text = "Beta"
    elseif Index == 3 then
    toolTip.Text = "Experimental"
    elseif Index == 4 then
    toolTip.Text = "Not Working"
    elseif Index == 5 then
    toolTip.Text = "Working"
    else
    toolTip.Text = "da ya eby shtole"
    end
    end)

    c.MouseLeave:Connect(function()
	toolTip.Visible = false
    end)

    if callback then
    b.MouseButton1Click:Connect(callback)
    end

    return b
end

function CreateSlider(textImport, Index, min, max, callback)
    local bar = Instance.new("TextLabel")
    local s = Instance.new("TextLabel")
    local f = Instance.new("Frame")
    local c = Instance.new("TextLabel")
    local sl = Instance.new('TextLabel')
    local t = Instance.new("TextLabel")
    local dragging = false
    local mi, ma = min, max

    f.Name = "Slider"
    f.Parent = scf2
    f.Size = UDim2.new(0, 230, 0, 25)
    f.Position = UDim2.new(0, 0, 0, 0)
    f.BackgroundColor3 = Color3.fromRGB(33, 33, 33)

    s.Name = "Label"
    s.Parent = f
    s.Text = " " .. textImport
    s.TextSize = 15
    s.BorderSizePixel = 0
    s.TextScaled = true
    s.TextYAlignment = Enum.TextYAlignment.Top
    s.TextXAlignment = Enum.TextXAlignment.Left
    s.Size = UDim2.new(0, 230, 0, 25)
    s.Position = UDim2.new(0, 0, 0, 0)
    s.BackgroundColor3 = Color3.fromRGB(55,55,55)
    s.TextColor3 = Color3.fromRGB(190, 190, 190)

    bar.Name = "Bar"
    bar.Parent = f
    bar.Text = ""
    bar.TextSize = 15
    bar.BorderSizePixel = 0
    bar.Size = UDim2.new(0, 70, 0, 1)
    bar.Position = UDim2.new(0, 130, 0, 12)
    bar.BackgroundColor3 = Color3.new(220, 220, 220)

    sl.Name = "Slider"
    sl.Parent = bar
    sl.Text = ""
    sl.Size = UDim2.new(0, 7, 0, 7)
    sl.Position = UDim2.new(0, -3, 0, -3)
    sl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

    c.Name = 'Circle'
    c.Parent = s
    c.Text = ""
    c.Size = UDim2.new(0,12,0,12)
    c.Position = UDim2.new(0,210,0,3)
    c.BackgroundColor3 = ColorStatus[Index] or ColorStatus[5] 
    c.BorderSizePixel = 5

    t.Name = "Number"
    t.Parent = s
    t.Size = UDim2.new(0,10,0,10)
    t.Position = UDim2.new(0,200,0,15)
    t.TextColor3 = Color3.fromRGB(220,220,220)
    t.Text = "0"
    t.BackgroundTransparency = 1

    c.MouseEnter:Connect(function()
    toolTip.Visible = true
	if Index == 1 then
    toolTip.Text = "New"
    elseif Index == 2 then
    toolTip.Text = "Beta"
    elseif Index == 3 then
    toolTip.Text = "Experimental"
    elseif Index == 4 then
    toolTip.Text = "Not Working"
    elseif Index == 5 then
    toolTip.Text = "Working"
    else
    toolTip.Text = "da ya eby shtole"
    end
    end)

    c.MouseLeave:Connect(function()
	toolTip.Visible = false
    end)
    
    local corner1 = Instance.new("UICorner")
    corner1.CornerRadius = UDim.new(0, 7)
    corner1.Parent = s
    local corner2 = Instance.new("UICorner")
    corner2.CornerRadius = UDim.new(1, 0)
    corner2.Parent = sl
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1,0)
    corner.Parent = c

    sl.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            local mouseX = UIS:GetMouseLocation().X
            local ap = bar.AbsolutePosition.X
            local wh = bar.AbsoluteSize.X
            local nx = math.clamp(mouseX - ap, 0, wh)
            local percent = nx / wh
            local value = math.floor(min + (percent * (max - min)))
            sl.Position = UDim2.new(0, nx - 3, sl.Position.Y.Scale, -3)
            t.Text = value
            if callback then
                callback(value)
            end
        end
    end)

    return f
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
UI("PizdaZalupa")
CreateTab("HUI sobaki")
CreateSlider('zopa',3,0,1000,function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
