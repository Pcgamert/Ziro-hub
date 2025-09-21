local Players = game.Players
local lcpl = Players.LocalPlayer
local camera = workspace.CurrentCamera
local rns = game:GetService("RunService")
local chr = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()
local hrp, hmn = chr:WaitForChild("HumanoidRootPart"), chr:WaitForChild("Humanoid")
local screenCenter = Vector2.new(camera.ViewportSize.X/2, camera.ViewportSize.Y/2)
local plrs = {}
local vplr = {}
function amp(he)
local obj = Instance.new("Part")
obj.Name = "Aimpoint"
obj.Parent = he
obj.Size = Vector3.new(1,1,1)
obj.Transparency = 1
obj.Anchored = false
obj.CanCollide = false
return obj
end

function wel(a,b)
local weld = Instance.new("Weld")
weld.Part0 = a
weld.Part1 = b
weld.C0 = CFrame.new(0, 0, 0)
weld.C1 = CFrame.new(0, 0, 0)
weld.Parent = a
end


for _, plr in ipairs(Players:GetPlayers()) do
if plr.Name ~= lcpl.Name then
if not table.find(plrs, plr.Name) then
table.insert(plrs, plr.Name)
end
local chrctr = workspace:FindFirstChild(plr.Name)
if chrctr and chrctr:FindFirstChild("Head") then
local head = chrctr.Head
if not head:FindFirstChild("Aimpoint") then
local aimPart = amp(head)
wel(head, aimPart)
end
end
end
end


function ChrAd(character)
local player = Players:GetPlayerFromCharacter(character)
if player == lcpl then return end
local head = character:WaitForChild("Head")
if not head:FindFirstChild("Aimpoint") then
local aimPart = amp(head)
wel(head, aimPart)
end
end


local function PA(player)
player.CharacterAdded:Connect(ChrAd)
end


Players.PlayerAdded:Connect(PA)


Players.PlayerRemoving:Connect(function(player)
for i = #plrs, 1, -1 do
if plrs[i] == player.Name then
table.remove(plrs, i)
break
end
end
end)

rns.RenderStepped:Connect(function()
local screenPos, onScreen = camera:WorldToViewportPoint(game.workspace.drachyvsem.Head.Aimpoint.Position)
if game.workspace.drachyvsem.Head.Aimpoint and onScreen then 
camera.CFrame.Position = CFrame.lookAt(camera.Position, game.workspace.drachyvsem.Head.Aimpoint.Position)
end
end)
