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

    local scf1 = Instance.new("ScrollingFrame")
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

    local scf2 = Instance.new("ScrollingFrame")
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

    local scf3 = Instance.new("ScrollingFrame")
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
    list.Padding = UDim.new(0, 5)
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.HorizontalAlignment = Enum.HorizontalAlignment.Center

    local list1 = Instance.new("UIListLayout")
    list1.Parent = scf2
    list1.Padding = UDim.new(0, 5)
    list1.SortOrder = Enum.SortOrder.LayoutOrder
    list1.HorizontalAlignment = Enum.HorizontalAlignment.Center

    local list2 = Instance.new("UIListLayout")
    list2.Parent = scf3
    list2.Padding = UDim.new(0, 5)
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
    corner6.Parent = mn

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

    local function clearButtons(frame)
        for _, child in pairs(frame:GetChildren()) do
            if child:IsA("TextButton") then
                child:Destroy()
            end
        end
    end

    local function CreateButton(text, parent, callback)
        local b = Instance.new("TextButton")
        b.Name = "Button"
        b.Size = UDim2.new(0, 130, 0, 25)
        b.Text = text
        b.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
        b.TextColor3 = Color3.fromRGB(220, 220, 220)
        b.BorderSizePixel = 0
        b.Parent = parent
        b.AutoButtonColor = true

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 10)
        corner.Parent = b

        if callback then
            b.MouseButton1Click:Connect(callback)
        end

        return b
    end

    -- Структура данных с callback-ами для таб3 кнопок
    local data = {
        Scripts = {
        },
        Utils = {
            DarkDex = {
            {name = "DarkDexV1", callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/Scripts/DarkDexv1.lua"))() end},
            {name = "DarkDexV2", callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/DarkDexV2.lua"))() end},
            {name = "DarkDexV3", callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/DarkDexV3SE.lua"))() end},
            {name = "DarkDexV4(1.1.0)", callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/DarkDexv4(alpha1.1.0).lua"))() end},
            },
            RemoteSpy = {
            {name = "SimpleSpy lite", callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/utils/RemoteSpy/SimpleSpy%20lite.lua"))() end},
            },
        },
        Misc = {

        }
    }

    local currentCategory = nil
    local currentScript = nil

    -- Заполнить первый таб категориями (Scripts, Utils, Misc)
    local function fillTab1()
        clearButtons(scf1)
        for categoryName, _ in pairs(data) do
            CreateButton(categoryName, scf1, function()
                currentCategory = categoryName
                fillTab2(categoryName)
                clearButtons(scf3) -- Очистить 3 таб при выборе категории
            end)
        end
    end

    -- Заполнить второй таб скриптами/утилитами выбранной категории
    function fillTab2(categoryName)
        clearButtons(scf2)
        for scriptName, _ in pairs(data[categoryName]) do
            CreateButton(scriptName, scf2, function()
                currentScript = scriptName
                fillTab3(categoryName, scriptName)
            end)
        end
    end

    -- Заполнить третий таб кнопками действий с callback
    function fillTab3(categoryName, scriptName)
        clearButtons(scf3)
        local actions = data[categoryName][scriptName]
        for _, action in ipairs(actions) do
            CreateButton(action.name, scf3, action.callback)
        end
    end

    -- Запустить заполнение табов
    fillTab1()

    -- Драг за основной фрейм (cs), за весь контейнер
    local UserInputService = game:GetService("UserInputService")
    local dragging = false
    local dragInput, mousePos, framePos

    local draggableFrame = cs
    local dragHandle = main

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

UI()
