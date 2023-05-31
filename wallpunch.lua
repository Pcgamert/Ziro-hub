local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/main/Gui.lua"))()

local Window = Library.CreateLib("Ziro hub", "RJTheme3")

local Tab = Window:NewTab("Main")
local Section = Tab:NewSection("Main")

Section:NewDropdown("DropdownText", "DropdownInf", {"Arena 1", "Arena 2", "Arena 3"}, function(Option)
    if Option == "Arena 1" then
    while wait() do 
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.111298, 12.1337366, -28.1476345, -0.0360010304, 0.107806444, 0.993519843, 0.0088555878, 0.994159698, -0.107554987, -0.99931252, 0.00492611201, -0.0367454626)
wait(2)
end
end)

