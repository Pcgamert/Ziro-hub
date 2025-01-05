-- ZiroHubLibrary.lua

local ZiroHub = {}

-- Функция для создания GUI
function ZiroHub.CreateGUI()
    -- GUI элементы
    local ScreenGUI = Instance.new("ScreenGui")
    ScreenGUI.Parent = game.CoreGui

    local Main = Instance.new("Frame")
    Main.Parent = ScreenGUI
    Main.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    Main.Position = UDim2.new(0.265, 0, 0.327, 0)
    Main.Size = UDim2.new(0, 449, 0, 252)
    Main.Active = true

    -- Панель для кнопок табов
    local TabContainer = Instance.new("Frame")
    TabContainer.Parent = Main
    TabContainer.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    TabContainer.Size = UDim2.new(0, 449, 0, 50)
    TabContainer.Position = UDim2.new(0, 0, 0, 0)

    -- Основные элементы (Main2 и Main3)
    local Main2 = Instance.new("ScrollingFrame")
    Main2.Parent = Main
    Main2.BackgroundTransparency = 1
    Main2.Size = UDim2.new(0, 175, 0, 215.9)
    Main2.Position = UDim2.new(0.0035, 0, 0.133, 0)
    Main2.Active = true

    local Main3 = Instance.new("ScrollingFrame")
    Main3.Parent = Main
    Main3.BackgroundTransparency = 1
    Main3.Size = UDim2.new(0, 269, 0, 215.9)
    Main3.Position = UDim2.new(0.0035, 178, 0.133, 0)
    Main3.Active = true

    -- Заголовок
    local title = Instance.new("TextLabel")
    title.Parent = Main
    title.BackgroundTransparency = 1
    title.Size = UDim2.new(0, 449, 0, 34)
    title.Font = Enum.Font.SourceSans
    title.Text = "Ziro Hub v2 | kocmoc_"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 14
    title.Draggable = true

    -- Кнопка закрытия
    local close = Instance.new("TextButton")
    close.Parent = Main
    close.BackgroundTransparency = 1
    close.Size = UDim2.new(0, 34, 0, 33)
    close.Position = UDim2.new(0.926, 0, -0.003, 0)
    close.Text = "X"
    close.TextColor3 = Color3.fromRGB(255, 255, 255)
    close.TextSize = 18
    close.MouseButton1Click:Connect(function()
        ScreenGUI:Destroy()
    end)

    return ScreenGUI
end

-- Функция для создания кнопки
function ZiroHub.createButton(parent, text, position, size, onClick)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Text = text
    button.Position = position
    button.Size = size
    button.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    button.Font = Enum.Font.SourceSans
    button.TextSize = 14
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.MouseButton1Click:Connect(onClick)
    return button
end

-- Функция для создания слайдера
function ZiroHub.createSlider(parent, text, position, size, min, max, defaultValue, onChanged)
    local slider = Instance.new("Frame")
    slider.Parent = parent
    slider.Size = size
    slider.Position = position
    slider.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

    local sliderLabel = Instance.new("TextLabel")
    sliderLabel.Parent = slider
    sliderLabel.Text = text
    sliderLabel.Size = UDim2.new(1, 0, 0, 20)
    sliderLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    local sliderBar = Instance.new("Frame")
    sliderBar.Parent = slider
    sliderBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    sliderBar.Size = UDim2.new(0, (defaultValue - min) / (max - min) * size.X.Offset, 0, 10)

    local sliderButton = Instance.new("Frame")
    sliderButton.Parent = sliderBar
    sliderButton.Size = UDim2.new(0, 10, 1, 0)
    sliderButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    sliderButton.Draggable = true

    sliderButton.MouseMoved:Connect(function(_, y)
        -- Получаем новое положение слайдера
        local newX = math.clamp(sliderButton.Position.X.Offset + _, 0, size.X.Offset)
        sliderButton.Position = UDim2.new(0, newX, 0, 0)
        sliderBar.Size = UDim2.new(0, newX, 0, 10)
        local value = min + (newX / size.X.Offset) * (max - min)
        onChanged(value)
    end)

    return slider
end

-- Функция для создания выпадающего списка
function ZiroHub.createDropdown(parent, text, position, size, options, onSelected)
    local dropdown = Instance.new("Frame")
    dropdown.Parent = parent
    dropdown.Size = size
    dropdown.Position = position
    dropdown.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

    local dropdownLabel = Instance.new("TextLabel")
    dropdownLabel.Parent = dropdown
    dropdownLabel.Text = text
    dropdownLabel.Size = UDim2.new(1, 0, 0, 20)
    dropdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    local dropdownButton = Instance.new("TextButton")
    dropdownButton.Parent = dropdown
    dropdownButton.Size = UDim2.new(1, 0, 0, 30)
    dropdownButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    dropdownButton.Text = "Select"
    dropdownButton.TextColor3 = Color3.fromRGB(255, 255, 255)

    local optionsList = Instance.new("Frame")
    optionsList.Parent = dropdown
    optionsList.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    optionsList.Position = UDim2.new(0, 0, 0, 30)
    optionsList.Size = UDim2.new(0, 0, 0, 0)

    for _, option in ipairs(options) do
        local optionButton = Instance.new("TextButton")
        optionButton.Parent = optionsList
        optionButton.Size = UDim2.new(1, 0, 0, 30)
        optionButton.Text = option
        optionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        optionButton.BackgroundColor3 = Color3.fromRGB(0, 150, 0)
        optionButton.MouseButton1Click:Connect(function()
            onSelected(option)
            optionsList.Size = UDim2.new(0, 0, 0, 0)
            dropdownButton.Text = option
        end)
    end

    return dropdown
end

-- Функция для отображения текстовой линии
function ZiroHub.createLineText(parent, text, position)
    local lineText = Instance.new("TextLabel")
    lineText.Parent = parent
    lineText.Text = text
    lineText.Position = position
    lineText.Size = UDim2.new(1, 0, 0, 20)
    lineText.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineText.BackgroundTransparency = 1
    lineText.Font = Enum.Font.SourceSans
    lineText.TextSize = 14
end

return ZiroHub
