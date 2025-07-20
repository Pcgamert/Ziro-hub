function FAO(path, name)
	for _, Find in ipairs(path:GetDescendants()) do
		if Find.Name:Find(name) then
	        return Find:GetFullName()
		end
	end
end

function SA(path, attribute, value)
if path[attribute] ~= nil then
path[attribute] = value
else
path:SetAttribute(attribute, value)
return attribute, value
	end
end

function CAO(obj, new)
local clone = obj:Clone()
clone.Parent = new
return clone
end
