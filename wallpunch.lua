local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/main/Gui.lua"))()

local Window = Library.CreateLib("Ziro hub", "RJTheme3")

local Tab = Window:NewTab("Main")
Section:NewDropdown("DropdownText", "DropdownInf", {"Option 1", "Option 2", "Option 3"}, function(currentOption)
    print(currentOption)
end)
