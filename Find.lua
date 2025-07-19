function FAO(path, name)
local part = path:GetDescendants(name)
print(part:GetFullPath())
end
