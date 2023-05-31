local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/main/Gui.lua"))()

local Window = Library.CreateLib("Ziro hub", "RJTheme3")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewDropdown("DropdownText", "DropdownInf", {"Arena 1", "Option 2", "Option 3"}, function(option)
    if option == Arena 1 then print(option) end
end)
