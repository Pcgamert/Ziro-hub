loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/utils.lua"))()
local plr  = game.Players
local ws = game.Workspace

-- Функция для визуализации через стены
local function MakeVisibleThroughWalls(part, color)
    for _, face in pairs(Enum.NormalId:GetEnumItems()) do
        local gui = Instance.new("SurfaceGui")
        gui.Face = face
        gui.AlwaysOnTop = true
        gui.LightInfluence = 0
        gui.Adornee = part
        gui.ResetOnSpawn = false
        gui.Parent = part

        local frame = Instance.new("Frame")
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundColor3 = color
        frame.BackgroundTransparency = 0.8
        frame.BorderSizePixel = 0
        frame.Parent = gui
    end
end

local inn = Instance.new("Part")
inn.Name = "Innocent" 
inn.Size = Vector3.new(3.5,5.5,1)
inn.Transparency = 0.8
inn.Material = Enum.Material.Plastic
inn.Color = Color3.fromRGB(0,255,0)
inn.Anchored = false
inn.CanCollide = false
MakeVisibleThroughWalls(inn, inn.Color)

local sh = Instance.new("Part")
sh.Name = "Sheriff" 
sh.Size = Vector3.new(3.5,5.5,1)
sh.Transparency = 0.8
sh.Material = Enum.Material.Plastic
sh.Color = Color3.fromRGB(0,0,255)
sh.Anchored = false
sh.CanCollide = false
MakeVisibleThroughWalls(sh, sh.Color)

local mur = Instance.new("Part")
mur.Name = "Murderer" 
mur.Size = Vector3.new(3.5,5.5,1)
mur.Transparency = 0.8
mur.Material = Enum.Material.Plastic
mur.Color = Color3.fromRGB(255,0,0)
mur.Anchored = false
mur.CanCollide = false
MakeVisibleThroughWalls(mur, mur.Color)

for _, aplr in ipairs(plr:GetPlayers()) do
    if aplr.Character and aplr.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = aplr.Character.HumanoidRootPart

        if aplr.Backpack:FindFirstChild("Knife") or aplr.Character:FindFirstChild("Knife") then
            mur.CFrame = hrp.CFrame - Vector3.new(0,1,0)
            mur.Parent = aplr.Character

            local weld1 = Instance.new("WeldConstraint")
            weld1.Part0 = hrp
            weld1.Part1 = mur
            weld1.Parent = mur

        elseif aplr.Backpack:FindFirstChild("Gun") or aplr.Character:FindFirstChild("Gun") then
            sh.CFrame = hrp.CFrame - Vector3.new(0,1,0)
            sh.Parent = aplr.Character

            local weld2 = Instance.new("WeldConstraint")
            weld2.Part0 = hrp
            weld2.Part1 = sh
            weld2.Parent = sh

        else
            local innClone = CAO(inn, aplr.Character)
            innClone.CFrame = hrp.CFrame - Vector3.new(0,1,0)
            innClone.Parent = aplr.Character

            local weld3 = Instance.new("WeldConstraint")
            weld3.Part0 = hrp
            weld3.Part1 = innClone
            weld3.Parent = innClone

            MakeVisibleThroughWalls(innClone, innClone.Color)
        end
    end
end
