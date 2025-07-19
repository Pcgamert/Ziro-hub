function FAO(path, name)
	for _, descendant in ipairs(path:GetDescendants()) do
		if descendant.Name == name then
			print(descendant:GetFullName())
		end
	end
end
