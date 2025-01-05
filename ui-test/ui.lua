-- ZiroHub.lua
local ZiroHub = {}

-- Функция для создания GUI
ZiroHub.createGUI = function()
    -- Создаем главный экран и GUI элементы
    local ScreenGUI = Instance.new("ScreenGui")
    ScreenGUI.Parent = game:GetService("CoreGui")  -- используем GetService вместо CoreGui непосредственно

    local Main = Instance.new("Frame")
    Main.Parent = ScreenGUI
    Main.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
    Main.Position = UDim2.new(0.265741736, 0, 0.327073544, 0)
    Main.Size = UDim2.new(0, 449, 0, 252)
    Main.Active = true

    -- Создание вкладок
    local Tabs = {}
    local TabContent = {}

    -- Создаем второй фрейм для кнопок с UIListLayout
    local ButtonFrame = Instance.new("Frame")
    ButtonFrame.Parent = Main
    ButtonFrame.Position = UDim2.new(0.0035741736, 0, 0.133073544, 0)  -- Позиция для второго фрейма
    ButtonFrame.Size = UDim2.new(0, 175, 0, 215.9)
    ButtonFrame.BackgroundTransparency = 1
    ButtonFrame.Active = true

    -- UIListLayout для кнопок
    local buttonLayout = Instance.new("UIListLayout")
    buttonLayout.Parent = ButtonFrame
    buttonLayout.FillDirection = Enum.FillDirection.Vertical
    buttonLayout.SortOrder = Enum.SortOrder.LayoutOrder
    buttonLayout.Padding = UDim.new(0, 10)  -- Устанавливаем отступы между кнопками

    -- Функция для создания вкладки
    local function createTab(name)
        local tab = Instance.new("TextButton")
        tab.Parent = Main
        tab.Text = name
        tab.Size = UDim2.new(0, 100, 0, 40)
        tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        tab.BackgroundColor3 = Color3.fromRGB(0, 1, 0)
        tab.Name = name
        table.insert(Tabs, tab)
        
        local content = Instance.new("Frame")
        content.Parent = Main
        content.Size = UDim2.new(0, 449, 0, 212)
        content.Position = UDim2.new(0, 0, 0, 40)
        content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        content.Visible = false
        table.insert(TabContent, content)

        return tab, content
    end

    -- Создаем вкладки
    local tab1, content1 = createTab("Tab 1")
    local tab2, content2 = createTab("Tab 2")

    -- Функция для переключения вкладок
    local function switchTab(tabIndex)
        for i, tab in ipairs(Tabs) do
            if i == tabIndex then
                TabContent[i].Visible = true
            else
                TabContent[i].Visible = false
            end
        end
    end

    -- Подключение к вкладкам
    tab1.MouseButton1Click:Connect(function()
        switchTab(1)
    end)

    tab2.MouseButton1Click:Connect(function()
        switchTab(2)
    end)

    -- Переключаем первую вкладку по умолчанию
    switchTab(1)
end

-- Функция для создания кнопки
ZiroHub.createButton = function(parent, text, callback)
    local button = Instance.new("TextButton")
    button.Parent = parent
    button.Text = text
    button.Size = UDim2.new(0, 100, 0, 40)  -- Размер кнопки
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = Color3.fromRGB(0, 1, 0)

    -- Правильное использование MouseButton1Click
    button.MouseButton1Click:Connect(callback)
end

return ZiroHub
