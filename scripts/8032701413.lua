loadstring(game:HttpGet("https://raw.githubusercontent.com/Pcgamert/Ziro-hub/refs/heads/Scripts/utils.lua"))()
local correct = workspace.GameRunningService.GlassBridges.CorrectGlass


local folder = Instance.new("Folder")
folder.Name = 'esp'
folder.Parent = game.ReplicatedStorage


local esp = Instance.new("Part")
esp.Name = 'Esp'
esp.Transparency = 0
esp.Color = Color3.fromRGB(0,255,0)
esp.Anchored = true
esp.Size = Vector3.new(5.800000190734863, 0.10000000149011612, 8)
esp.Parent = folder
for _, glass in ipairs(correct:GetChildren()) do
   esp.Position = glass.Position
    CAO(esp, glass)
end
