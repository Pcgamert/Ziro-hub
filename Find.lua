function FAO(path, name)
	for _, Find in ipairs(path:GetDescendants()) do
		if Find.Name:Find(name) then
	        return Find:GetFullName()
		end
	end
end

function SA(path, attribute, value)

end
