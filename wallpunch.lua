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
elseif option == "Arena 2" then 
while wait() do 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-198.366608, 13.2265539, -98.447052, -0.0213577077, 0.12479949, 0.991952062, 9.29600503e-08, 0.99217838, -0.124827966, -0.999771893, -0.00266594696, -0.0211906675)

end
elseif option == "Arena 3" then 
while wait() do 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.67897, 18.1804104, -164.518539, 0.0418192372, -0.285094917, 0.957586586, -1.03103162e-07, 0.958424985, 0.285344541, -0.999125183, -0.0119329896, 0.0400805734)
end


end)

