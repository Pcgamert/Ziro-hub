local rns = game:GetService("RunService")
rns.RenderStepped:Connect(function()
if game.Players.LocalPlayer.Character.Humnaoid then
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end
end)
