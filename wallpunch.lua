local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/main/Gui.lua"))()

local Window = Library.CreateLib("Ziro hub", "RJTheme3")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewDropdown("DropdownText", "DropdownInf", {"Arena 1", "Arena 2", "Arena 3"}, function(Option)
    if Option == "Arena 1" then
    while time() do 
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-111.481918, 1.22658122, -29.0489521, 0.00292778015, 0, 0.999995708, 0, 1, 0, -0.999995708, 0, 0.00292778015)
end
end)

