local Players = game.Players
local lcpl = Players.LocalPlayer
local camera = workspace.CurrentCamera
local rns = game:GetService("RunService")
local chr = lcpl.Character or lcpl.CharacterAdded:Wait()
local hrp, hmn = chr:WaitForChild("HumanoidRootPart"), chr:WaitForChild("Humanoid")

local plrs = {}
local vplr = {}
local tplr = {}

-- создание aimpoint
local function amp(he)
    local obj = Instance.new("Part")
    obj.Name = "Aimpoint"
    obj.Parent = he
    obj.Size = Vector3.new(1,1,1)
    obj.Transparency = 1
    obj.Anchored = false
    obj.CanCollide = false
    return obj
end

-- вэлд для aimpoint
local function wel(a,b)
    local weld = Instance.new("Weld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new(0, 0, 0)
    weld.C1 = CFrame.new(0, 0, 0)
    weld.Parent = a
end

-- добавляем игроков в список
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

-- новый aimpoint при спавне
local function ChrAd(character)
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

local function vp()
    for _, n in ipairs(plrs) do
        local c = workspace:FindFirstChild(n)
        if c and c:FindFirstChild("Head") and c.Head:FindFirstChild("Aimpoint") then
            local _, on = camera:WorldToViewportPoint(c.Head.Aimpoint.Position)
            if on and not table.find(vplr, n) then table.insert(vplr, n) end
            if not on then
                for i = #vplr,1,-1 do
                    if vplr[i] == n then table.remove(vplr,i) end
                end
            end
        end
    end
end

local function tp()
for i = 1, #vplr do
local ri = math.random(1, #vplr)
local tn = vplr[ri]
if #tplr >= 1 and workspace:FindFirstChild(tn).Humanoid.Health > 0 then return end
if #tplr == 0 then
    table.insert(tplr, tn)
end
local ch = workspace:FindFirstChild(tplr[1])
if ch.Humanoid then
if #tplr >= 1 and(not ch.Humanoid or ch.Humanoid.Health <= 0) then
table.remove(tplr, 1)
end
end
end
rns.RenderStepped:Connect(function()
        -- очистка если цель пропала
        local targetChar = workspace:FindFirstChild(tn)
        if #tplr >= 1 and (not targetChar or targetChar:FindFirstChild("Humanoid").Health <= 0) then
            table.remove(tplr, 1)
        end
    end
end)
