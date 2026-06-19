--!strict

--[[
	Author : evxry_ll
	
	@Name: Utilities
	
	@Description:
	This module is part of `Bitstream` module. It contains some utility functions used internally.

]]

const Types = require("./Types")

-- Luau Imports:
-- math lib
const abs = math.abs const floor = math.floor const log = math.log
const ceil = math.ceil const modf = math.modf const clamp = math.clamp

const Utilities = {}
Utilities.__index = Utilities

--[[
	Return `table(bits,bytes,isUnsigned)` required depending on the number.
	
	@example :
	```luau
	local bytesData = Utilities.GetEquivalentBytesInfoFromNumber(65_535) -- this will return 2 cause it will required 2 bytes to write 65_535
	```
	
	@return : {bits : number, bytes : number, isUnsigned : boolean }
]]
Utilities.GetEquivalentBytesInfoFromNumber = function(n : number) : Types.BytesData
	if n < 0 then
		-- signed
		local bits = 1
		local value = abs(n)
		while value > 0 do
			value = floor(value / 2)
			bits = bits + 1
		end
		return { bits = bits, bytes = ceil(bits / 8), isUnsigned = false }
	else
		-- unsigned
		if n == 0 then
			return { bits = 1, bytes = 1, isUnsigned = true }
		end
		local bits = ceil(log(n + 1, 2))
		return { bits = bits, bytes = ceil(bits / 8), isUnsigned = true }
	end
end

--[[
	Return a `boolean` to check if the value is a valid bool8 (i.e. 8 packed booleans).
	
	@example :
	```luau
	local result = Utilities.IsBool8({true, false, true, false, true, false, true, false}) -- this will return true
	
	local result2 = Utilities.IsBool8({true, false, true, false, true, false, true}) -- 
			-- this will return false because the table doesn't have 8 elements
	```
	
	@return : boolean
]]
Utilities.IsBool8 = function(value : {boolean}) : boolean
	assert(typeof(value) == "table", "value must be a table")
	if(#value < 8) then return false end
	local count = 1
	for i = 1,#value do
		if(typeof(value[i]) == "boolean") then
			count += 1
		end
	end
	return count >= 8
end

--[[
	Return a `boolean` to check if the value is a valid array (i.e. array with no nil values).
	
	@example :
	```luau
	local A = Utilities.IsArray({10, 20, 30, 40, 50}) -- this will return true
	local B = Utilities.IsArray({10, 20, 30, 40, key = 50}) -- this will return false
	```
	
	@return : boolean
]]
Utilities.IsArray = function(value : {any}) : boolean
	assert(typeof(value) == "table", "value must be a table")
	local count = 0
	for i = 1,#value do
		if(typeof(value[i]) ~= "nil") then
			count += 1
		end
	end
	return count >= #value
end

return Utilities
