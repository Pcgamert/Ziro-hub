local Players = game.Players
for _, player1 in ipairs(Players:GetPlayers()) do
    local character = game.Workspace:FindFirstChild(player1.Name)
local obj = Instance.new("Part")
obj.Name = "Aimpoint"
obj.parent = character.Head
obj.Size = Vector3.new(2,1,1)

local weld = Instance.new("Weld")
weld.Part0 = character.Head
weld.Part1 = obj
weld.C0 = CFrame.new(0, 0, 0)
weld.C1 = CFrame.new(0, 0, 0)
weld.Parent = character.Head
end
