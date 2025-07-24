local plr = game.Players.LocalPlayer
local character = plr.Character or plr.CharacterAdded:Wait()
local cfr = character:WaitForChild("HumanoidRootPart")

local npcFolder = game.Workspace:WaitForChild("NPCs")

local hitbox = Instance.new("Part")
hitbox.Name = "Hitbox"
hitbox.Size = Vector3.new(15, 15, 15)
hitbox.Transparency = 1
hitbox.Anchored = false
hitbox.CanCollide = false
hitbox.Massless = true
hitbox.CFrame = cfr.CFrame
hitbox.Parent = character

local weld = Instance.new("WeldConstraint")
weld.Part0 = cfr
weld.Part1 = hitbox
weld.Parent = hitbox

local npcsInHitbox = {}

local damage = 15
local damageInterval = 0.2

hitbox.Touched:Connect(function(part)
	local npcModel = part:FindFirstAncestorOfClass("Model")
	if npcModel and npcModel.Parent == npcFolder then
		npcsInHitbox[npcModel] = true
	end
end)

hitbox.TouchEnded:Connect(function(part)
	local npcModel = part:FindFirstAncestorOfClass("Model")
	if npcModel and npcModel.Parent == npcFolder then
		npcsInHitbox[npcModel] = nil
	end
end)

while true do
	for npcModel, _ in pairs(npcsInHitbox) do
		local humanoid = npcModel:FindFirstChildOfClass("Humanoid")
		if humanoid and humanoid.Health > 0 then
			humanoid:TakeDamage(damage)
		end
	end
	task.wait(damageInterval)
end
