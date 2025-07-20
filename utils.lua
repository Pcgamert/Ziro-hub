function FAO(path, name)
	for _, Find in ipairs(path:GetDescendants()) do
		if Find.Name:Find(name) then
	        return Find:GetFullName()
		end
	end
end

function SA(path, attribute, value)
if path[attribute] then
path[attribute] = value
elseif not path.attribute then
path:SetAttribute(attribute, value)
	end
end
