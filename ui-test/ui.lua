-- ZiroHubLibrary.lua

local ZiroHub = {}

-- Функция для создания основного UI
ZiroHub.createUI = function()
    -- Создаём объекты UI
    local ScreenGUI = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local Main2 = Instance.new("ScrollingFrame")
    local Main3 = Instance.new("ScrollingFrame")
    local title = Instance.new("TextLabel")
    local close = Instance.new("TextButton")
    local UIcOrner = Instance.new("UICorner")
    local c = Instance.new("UICorner")

    -- Родитель для GUI
    ScreenGUI.Parent = game.CoreGui

    -- Основной Frame
    Main.Name = "Main"
    Main.Parent = ScreenGUI
    Main.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    Main.Position = UDim2.new(0.265741736, 0, 0.327073544, 0)
    Main.Size = UDim2.new(0, 449, 0, 252)
    Main.Active = true

    -- Scrollable Frame 1
    Main2.Name = "Main2"
    Main2.Parent = Main
    Main2.BackgroundTransparency = 1
    Main2.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    Main2.Position = UDim2.new(0.0035741736, 0, 0.133073544, 0)
    Main2.Size = UDim2.new(0, 175, 0, 215.9)
    Main2.Active = true

    -- Scrollable Frame 2
    Main3.Name = "Main3"
    Main3.Parent = Main
    Main3.BackgroundTransparency = 1
    Main3.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    Main3.Position = UDim2.new(0.0035741736, 178, 0.133073544, 0)
    Main3.Size = UDim2.new(0, 269, 0, 215.9)
    Main3.Active = true

    -- Заголовок
    title.Parent = Main
    title.BackgroundTransparency = 1
    title.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    title.Position = UDim2.new(0.0011667981, 0, -0.00229153037, 0)
    title.Size = UDim2.new(0, 449, 0, 34)
    title.Font = Enum.Font.SourceSans
    title.Text = "Ziro Hub v2 | kocmoc_"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 14.000
    title.Draggable = true

    -- UI Corner для Tab
    UIcOrner.CornerRadius = UDim.new(1, 5)

    -- UI Corner для кнопки
    c.Parent = Main
    c.CornerRadius = UDim.new(0, 20)

    -- Кнопка закрытия
    close.Name = "close"
    close.Parent = Main
    close.BackgroundTransparency = 1
    close.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    close.Position = UDim2.new(0.92602824, 0, -0.00319522619, 0)
    close.Size = UDim2.new(0, 34, 0, 33)
    close.Font = Enum.Font.SourceSans
    close.Text = "X"
    close.TextColor3 = Color3.fromRGB(255, 255, 255)
    close.TextSize = 18.000
    close.MouseButton1Down:Connect(function()
        ScreenGUI:Destroy()
    end)

    -- Возвращаем объект UI для дальнейшей настройки
    return ScreenGUI
end

-- Функция для создания кнопки
ZiroHub.createButton = function(parent, text, position, size, callback)
    local Button = Instance.new("TextButton")
    Button.Parent = parent
    Button.Text = text
    Button.Position = position
    Button.Size = size
    Button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    Button.Font = Enum.Font.SourceSans
    Button.TextSize = 20
    Button.MouseButton1Click:Connect(callback)
    
    return Button
end

-- Функция для создания слайдера
ZiroHub.createSlider = function(parent, text, position, size, minValue, maxValue, defaultValue, callback)
    local sliderFrame = Instance.new("Frame")
    sliderFrame.Parent = parent
    sliderFrame.Position = position
    sliderFrame.Size = size
    sliderFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    
    local slider = Instance.new("Frame")
    slider.Parent = sliderFrame
    slider.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    slider.Size = UDim2.new(0, (defaultValue - minValue) / (maxValue - minValue), 0, 20)
    
    local label = Instance.new("TextLabel")
    label.Parent = sliderFrame
    label.Text = text
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Size = UDim2.new(1, 0, 0, 20)

    sliderFrame.MouseMove:Connect(function()
        local mouseX = game:GetService("Players").LocalPlayer:GetMouse().X
        local newSliderSize = math.clamp(mouseX - sliderFrame.AbsolutePosition.X, 0, sliderFrame.AbsoluteSize.X)
        slider.Size = UDim2.new(0, newSliderSize, 0, 20)

        -- Расчёт значения слайдера
        local value = math.floor(minValue + (newSliderSize / sliderFrame.AbsoluteSize.X) * (maxValue - minValue))
        callback(value)
    end)

    return sliderFrame
end

return ZiroHub
