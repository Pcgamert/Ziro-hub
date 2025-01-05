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

-- Функции для создания кнопок, слайдеров и других элементов
-- (Далее будут добавлены те же функции createButton, createSlideButton и т.д. из предыдущего кода)

return ZiroHub
