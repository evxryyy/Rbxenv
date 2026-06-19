--[[
	Big thanks to LucasW962 on github. 
	
	repos : https://github.com/LucasW962/TypeFunctions/blob/main
]]

export type function Partial(object: type)
	local tag = object.tag

	if tag == "union" or tag == "intersection" then
		local result

		for _, component in object:components() do
			if component.tag == "nil" then
				continue
			end
			if result == nil then
				result = component
				continue
			end

			result = types.unionof(result, component)
		end

		return types.optional(result :: type)
	elseif tag == "table" then
		local result = types.newtable()

		for key, prop in object:properties() do
			local partialRead = Partial(prop.read)
			if prop.read ~= prop.write then
				result:setreadproperty(key, partialRead)
				result:setwriteproperty(key, prop.write)
			else
				result:setproperty(key, partialRead)
			end
		end

		return result
	end

	return types.optional(object)
end

export type function Dissolve(object: type)
	local tag = object.tag

	if tag == "union" then
		local non_nil = {}
		for _, component in object:components() do
			if component.tag == "nil" then
				continue
			end
			table.insert(non_nil, component)
		end

		if #non_nil <= 1 then
			return non_nil[1] or types.never
		else
			return types.unionof(unpack(non_nil))
		end
	elseif tag == "table" then
		local result = types.newtable()

		for key, prop in object:properties() do
			local unpartialedType = Dissolve(prop.read)
			result:setproperty(key, unpartialedType)
		end

		return result
	end

	return object
end

export type function Required(object: type)
	local tag = object.tag

	if tag == "union" then
		local components = {}
		for _, component in object:components() do
			if component.tag == "nil" then
				continue
			end
			table.insert(components, Required(component))
		end

		if #components == 0 then
			return types.never
		elseif #components == 1 then
			return components[1]
		else
			return types.unionof(unpack(components))
		end
	elseif tag == "table" then
		local result = types.newtable()

		for key, prop in object:properties() do
			if prop.read ~= prop.write then
				continue
			end
			local requiredType = Required(prop.read)
			result:setproperty(key, requiredType)
		end

		return result
	end

	if tag == "union" then
		local non_nil = {}
		for _, component in object:components() do
			if component.tag == "nil" then
				continue
			end
			table.insert(non_nil, component)
		end

		if #non_nil == 1 then
			return non_nil[1]
		end
	end

	return object
end

export type function Record(keyType: type, valueType: type)
	local result = types.newtable()
	result:setindexer(keyType, valueType)
	return result
end

export type function Readonly(object: type)
	if object.tag ~= "table" then
		return object
	end

	local result = types.newtable()

	for key, prop in object:properties() do
		result:setreadproperty(key, prop.read)
		result:setwriteproperty(key, types.never)
	end

	return result
end

export type function NonNullable(object: type)
	return Exclude(object, types.singleton(nil))
end

export type function Exclude(unionType: type, excludeType: type)
	if unionType.tag == "table" then
		local result = types.newtable()

		for key, prop in unionType:properties() do
			local shouldExclude = false

			if excludeType:is("singleton") and typeof(excludeType:value()) == "string" then
				if key == excludeType:value() then
					shouldExclude = true
				end
			elseif prop.read == excludeType then
				shouldExclude = true
			end
			if not shouldExclude then
				if prop.read ~= prop.write then
					result:setreadproperty(key, prop.read)
					result:setwriteproperty(key, prop.write)
				else
					result:setproperty(key, prop.read)
				end
			end
		end

		return result
	end

	if unionType.tag ~= "union" then
		return unionType == excludeType and types.never or unionType
	end

	local remaining = {}
	for _, component in unionType:components() do
		if component ~= excludeType then
			table.insert(remaining, component)
		end
	end

	if #remaining == 0 then
		return types.never
	elseif #remaining == 1 then
		return remaining[1]
	else
		return types.unionof(unpack(remaining))
	end
end

export type function Extract(unionType: type, extractType: type)
	if unionType.tag == "table" then
		local result = types.newtable()

		for key, prop in unionType:properties() do
			local shouldInclude = false

			if extractType:is("singleton") and typeof(extractType:value()) == "string" then
				if key == extractType:value() then
					shouldInclude = true
				end
			elseif prop.read == extractType then
				shouldInclude = true
			end

			if shouldInclude then
				if prop.read ~= prop.write then
					result:setreadproperty(key, prop.read)
					result:setwriteproperty(key, prop.write)
				else
					result:setproperty(key, prop.read)
				end
			end
		end

		return result
	end

	if unionType.tag ~= "union" then
		return unionType == extractType and unionType or types.never
	end

	local matching = {}
	for _, component in unionType:components() do
		if component == extractType then
			table.insert(matching, component)
		end
	end

	if #matching == 0 then
		return types.never
	elseif #matching == 1 then
		return matching[1]
	else
		return types.unionof(unpack(matching))
	end
end

export type function IsOptional(object: type)
	if object.tag ~= "union" then
		return types.singleton(false)
	end

	for _, component in object:components() do
		if component.tag == "nil" then
			return types.singleton(true)
		end
	end

	return types.singleton(false)
end

export type function DeepReadonly(object: type)
	local tag = object.tag

	if tag == "table" then
		local result = types.newtable()

		for key, prop in object:properties() do
			local readonlyProp = DeepReadonly(prop.read)
			result:setreadproperty(key, readonlyProp)
			result:setwriteproperty(key, types.never)
		end

		return result
	elseif tag == "union" then
		local components = {}
		for _, component in object:components() do
			table.insert(components, DeepReadonly(component))
		end

		if #components == 1 then
			return components[1]
		else
			return types.unionof(unpack(components))
		end
	end

	return object
end

--// this is a troll LOL
type function ToCamelCase(s: type)
	if not s:is("singleton") or typeof(s:value()) ~= "string" then
		error("expected string singleton")
	end

	local raw_string = s:value() :: string
	local lowercased = string.gsub(raw_string, "[-. ]", "_")

	local elements = {}
	for part in string.gmatch(lowercased, "[^_]+") do
		table.insert(elements, part)
	end

	if #elements == 0 then
		return types.singleton("")
	end

	local result = {}
	result[1] = string.lower(table.remove(elements, 1) :: string)

	for i = 1, #elements do
		local str = elements[i]
		local first = string.upper(string.sub(str, 1, 1))
		local rest = string.lower(string.sub(str, 2, -1))

		result[i + 1] = first .. rest
	end

	return types.singleton(table.concat(result, ""))
end

type function ToKebabCase(s: type)
	if not s:is("singleton") or typeof(s:value()) ~= "string" then
		error("expected string singleton")
	end

	local raw_string = s:value() :: string
	local kebab = string.gsub(raw_string, "(%u)", function(c)
		return "-" .. string.lower(c)
	end)

	if string.sub(kebab, 1, 1) == "-" then
		kebab = string.sub(kebab, 2)
	end

	return types.singleton(kebab)
end


-- varags dont work for type functions right now :( ignore for now
export type function Pick(object: type, ...: type)
	if object.tag ~= "table" then
		return object
	end

	local result = types.newtable()
	local keys = { ... }

	for key, prop in object:properties() do
		for _, pickKey in keys do
			if pickKey:is("singleton") and typeof(pickKey:value()) == "string" then
				if key == pickKey:value() then
					if prop.read ~= prop.write then
						result:setreadproperty(key, prop.read)
						result:setwriteproperty(key, prop.write)
					else
						result:setproperty(key, prop.read)
					end
					break
				end
			end
		end
	end

	return result
end

-- Merges two table types, b will override and a types
export type function Merge(a: type, b: type)
	if not a:is("table") or not b:is("table") then
		return types.newtable()
	end

	local result = types.newtable()

	local indexer = b:indexer()
	if indexer ~= nil then
		result:setreadindexer(indexer.index, indexer.readresult)
		result:setwriteindexer(indexer.index, indexer.writeresult)
	end

	for key, prop in a:properties() do
		if prop.read ~= prop.write then
			result:setreadproperty(key, prop.read)
			result:setwriteproperty(key, prop.write)
		else
			result:setproperty(key, prop.read)
		end
	end

	for key, prop in b:properties() do
		if prop.read ~= prop.write then
			result:setreadproperty(key, prop.read)
			result:setwriteproperty(key, prop.write)
		else
			result:setproperty(key, prop.read)
		end
	end

	return result
end

export type function ValuesOf(object: type)
	if object.tag ~= "table" then
		return types.never
	end

	local values = {}
	for _, prop in object:properties() do
		table.insert(values, prop.read)
	end

	if #values == 0 then
		return types.never
	elseif #values == 1 then
		return values[1]
	else
		return types.unionof(unpack(values))
	end
end

return 1
