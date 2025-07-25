loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/utils.lua"))()

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

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UpdateClientCoins = ReplicatedStorage:WaitForChild("MiscRemotes"):WaitForChild("UpdateClientCoins")

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

            -- Добавляем или обновляем KillTag
            local killTag = npcModel:FindFirstChild("KillTag")
            if not killTag then
                killTag = Instance.new("ObjectValue")
                killTag.Name = "KillTag"
                killTag.Parent = npcModel
            end

            killTag.Value = plr  -- указываем, кто нанес урон

            -- Устанавливаем свойства через SA
            SA(killTag, "Damage", damage)
            SA(killTag, "WeaponName", "Throwing Knife V2")

            -- Отправляем событие на сервер с позицией
            local leftHand = npcModel:FindFirstChild("LeftHand") or npcModel:FindFirstChild("Left Arm") or npcModel:FindFirstChild("HumanoidRootPart") or npcModel.PrimaryPart
            if leftHand then
                local pos = leftHand.Position
                local coordsString = string.format("%.2f, %.2f, %.2f", pos.X, pos.Y, pos.Z)
                UpdateClientCoins:FireServer(4, coordsString)
            end
        end
    end
    task.wait(damageInterval)
end
