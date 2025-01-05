-- main.lua (Ваш основной код, который должен быть вызван через loadstring)

local ZiroHub = {}

-- Создание GUI через loadstring
ZiroHub.createGUI = function()
    -- Создаем главный экран и GUI элементы
    local ScreenGUI = Instance.new("ScreenGui")
    ScreenGUI.Parent = game.CoreGui

    local Main = Instance.new("Frame")
    Main.Parent = ScreenGUI
    Main.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    Main.Position = UDim2.new(0.265741736, 0, 0.327073544, 0)
    Main.Size = UDim2.new(0, 449, 0, 252)
    Main.Active = true

    local Tab1 = Instance.new("TextButton")
    Tab1.Parent = Main
    Tab1.Text = "Tab 1"
    Tab1.Size = UDim2.new(0, 100, 0, 40)
    Tab1.Position = UDim2.new(0, 0, 0, 0)

    local Tab2 = Instance.new("TextButton")
    Tab2.Parent = Main
    Tab2.Text = "Tab 2"
    Tab2.Size = UDim2.new(0, 100, 0, 40)
    Tab2.Position = UDim2.new(0, 100, 0, 0)

    -- Контент для вкладок
    local TabContent1 = Instance.new("Frame")
    TabContent1.Parent = Main
    TabContent1.Size = UDim2.new(0, 449, 0, 212)
    TabContent1.Position = UDim2.new(0, 0, 0, 40)
    TabContent1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContent1.Visible = true

    local TabContent2 = Instance.new("Frame")
    TabContent2.Parent = Main
    TabContent2.Size = UDim2.new(0, 449, 0, 212)
    TabContent2.Position = UDim2.new(0, 0, 0, 40)
    TabContent2.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
    TabContent2.Visible = false

    -- Переключение между вкладками
    Tab1.MouseButton1Click:Connect(function()
        TabContent1.Visible = true
        TabContent2.Visible = false
    end)

    Tab2.MouseButton1Click:Connect(function()
        TabContent1.Visible = false
        TabContent2.Visible = true
    end)
end

-- Создание кнопки
ZiroHub.createButton = function(parent, text, position, size, callback)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Text = text
    button.Size = size
    button.Position = position
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(0, 1, 0)

    button.MouseButton1Click:Connect(callback)
end

return ZiroHub
