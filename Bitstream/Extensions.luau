--[[
	Author : evxry_ll

	@class Extensions
	
	Contains all extensions methods used in `Bitstream`
]]

const Signal = require("./Shared/Zignal")
const Debugger = require("./Debugger")
const Types = require("./Types")
const Enumeration = require("./Enumeration")
const Utilities = require("./Utilities")
const Constants = require("./Constants")
const TypesFunctions = require("./Shared/TypeFunctions")

-- Luau imports:

-- math lib
const huge = math.huge const modf = math.modf const floor = math.floor
const clamp = math.clamp const ceil = math.ceil const log = math.log
const sin = math.sin const cos = math.cos

-- bit32 lib
const arshift = bit32.arshift const band = bit32.band const bnot = bit32.bnot const bor = bit32.bor
const btest = bit32.btest const bxor = bit32.bxor const byteswap = bit32.byteswap const countlz = bit32.countlz
const countrz = bit32.countrz const extract = bit32.extract const replace = bit32.replace const lrotate = bit32.lrotate
const lshift = bit32.lshift const rrotate = bit32.rrotate const rshift = bit32.rshift

-- string lib
const sub = string.sub const char = string.char const byte = string.byte const format = string.format
const len = string.len

-- buffer lib, micro gain but i prefer this way
const create = buffer.create const fromstring = buffer.fromstring const tostring = buffer.tostring
const bufflen = buffer.len const readbits = buffer.readbits const readi8 = buffer.readi8
const readi16 = buffer.readi16 const readi32 = buffer.readi32 const readu8 = buffer.readu8
const readu16 = buffer.readu16 const readu32 = buffer.readu32 const readf32 = buffer.readf32
const readf64 = buffer.readf64 const writebits = buffer.writebits const writei8 = buffer.writei8
const writei16 = buffer.writei16 const writei32 = buffer.writei32 const writeu8 = buffer.writeu8
const writeu16 = buffer.writeu16 const writeu32 = buffer.writeu32 const writef32 = buffer.writef32
const writef64 = buffer.writef64 const readstring = buffer.readstring const writestring = buffer.writestring
const copy = buffer.copy const fill = buffer.fill

-- Fixed numbers (used for big-endian manual packing etc..)
const fNaN = 0x7E00 -- 32_256 (used for NaN in float16)
const fInfinity = 0x7C00 -- 31_744 (used for infinity in float16)
const fSubNormal = 0x3FF -- 1023 (used for subnormals in float16)
const f31bit = 0x1F -- 31 (used for 31 bit fixed numbers)
const f15bit = 0xF -- 15 (used for 15 bit fixed numbers)
const f10bit = 0x0A -- 10 (used for the exponent in f16)

--[[
	@function axisAngleToQuaternion
	@within Extensions
	
	@param axis Vector3
	@param angle number
	
	@returns {X : number, Y : number, Z : number, W : number} -- Quaternion
	Converts an axis-angle representation to a quaternion.
]]
const function axisAngleToQuaternion(axis : Vector3,angle : number) : Types.Quaternion
	local halfAngle = angle / 2
	local s,c = sin(halfAngle),cos(halfAngle)
	return {
		x = axis.X * s,
		y = axis.Y * s,
		z = axis.Z * s,
		w = c
	}
end

--[[
	@function quaternionToCFrame
	@within Extensions
	
	@param pos Vector3
	@param quaternion {X : number, Y : number, Z : number, W : number}
	
	@returns CFrame
	Converts a quaternion to a CFrame with the given position.
]]
const function quaternionToCFrame(pos : Vector3,quaternion : Types.Quaternion)
	local xx,yy,zz = 
		quaternion.x*quaternion.x,
		quaternion.y*quaternion.y,
		quaternion.z*quaternion.z
	local xy,xz,yz = 
		quaternion.x*quaternion.y,
		quaternion.x*quaternion.z,
		quaternion.y*quaternion.z
	local wx,wy,wz = 
		quaternion.w*quaternion.x,
		quaternion.w*quaternion.y,
		quaternion.w*quaternion.z
	return CFrame.new(pos.X,pos.Y,pos.Z,
		1 - 2 * (yy + zz), 2 * (xy - wz), 2 * (xz + wy),
		2 * (xy + wz), 1 - 2 * (xx + zz), 2 * (yz - wx),
		2 * (xz - wy), 2 * (yz + wx), 1 - 2 * (xx + yy)
	)
end

--[[
	@function toFloat16
	@within Extensions

	@param value number
	The float32 value to convert.

	@returns Tuple(
		uint16: number,
		sign: number,
		mantissa: number,
		exponent: number
	)

	Returns the IEEE 754 half-precision floating-point representation.

	- uint16: The encoded 16-bit unsigned integer value.
	- sign: The sign bit (0 = positive, 1 = negative).
	- mantissa: The 10-bit mantissa field.
	- exponent: The 5-bit exponent field.
]]
const function toFloat16(value : number)
	local uint16;
	local sign;
	local mantissa;
	local exponent;
	if (value == 0) then
		uint16 = 0
	elseif(value ~= value) then
		uint16 = fNaN
	elseif(value == huge) then
		uint16 = fInfinity
	elseif(value == -huge) then
		uint16 = fInfinity
	else
		sign = 0
		if(value < 0) then
			sign = 1
			value = -value
		end
		exponent = floor(log(value,2))
		mantissa = value / (2 ^ exponent) - 1
		exponent = exponent + 15
		if(exponent <= 0) then
			mantissa = value / (2 ^ -14)
			exponent = 0
		elseif(exponent >= 31) then
			uint16 = bor(lshift(sign,15),fInfinity)
			return uint16,sign,mantissa,exponent
		end
		uint16 = bor(lshift(sign,f15bit),lshift(exponent,f10bit),band(floor(mantissa * 1024),fSubNormal))
	end
	return uint16,sign,mantissa,exponent
end

--[[
	@function decodeF16
	@within Extensions
	
	@param buff buffer
	The buffer containing the 16-bit float.
	@param offset number
	The offset to start reading from.
	
	@returns number
	Decodes a 16-bit IEEE 754 half-precision floating-point value from the buffer at the specified offset.
]]
const function decodeF16(buff : buffer,offset : number) : number
	local uint16 = readu16(buff,offset)
	local sign = rshift(uint16,f15bit)
	local exponent = band(rshift(uint16,f10bit),f31bit)
	local mantissa = band(uint16,fSubNormal)
	if(exponent == 0) then
		if(mantissa == 0) then
			-- +0 or -0
			return sign == 0 and 0 or -0
		else
			local value = (mantissa / 1024) * (2 ^ -14)
			return sign == 0 and value or -value
		end
	elseif(exponent == 31) then
		if(mantissa == 0) then
			return sign == 0 and huge or -huge
		else
			return fNaN
		end
	end
	local value = (1 + mantissa / 1024) * (2 ^ (exponent - f15bit))
	return sign == 0 and value or -value
end

--[[
	@function bitstreamTypesToLiteralTypes
	@within Extensions
	
	@param : Enumeration.BitstreamTypesName
	The Bitstream type name.
	
	@returns string
	The Luau/Roblox type.

	Converts a Bitstream type name into its corresponding Luau/Roblox type.
]]
const function bitstreamTypesToLiteralTypes(Type : Enumeration.BitstreamTypesName) : string
	if(Type == "UDim" or Type == "UDim2") then return Type end
	-- Enum
	if(Type == "Enum") then return "EnumItem" end
	-- Strings
	if(Type == "PrefixedString" or
		Type == "String") then return "string" end
	-- Color3
	if(Type == "Color3F32" or 
		Type == "Color3F64") then return "Color3" end
	-- Rect
	if(Type == "RectFloat32") then return "Rect" end
	-- CFrame
	if(Type == "CFrameF32" or
		Type == "CFrameQuaternion" or 
		Type == "CFrameQuantized" or 
		Type == "CFrameF64") then return "CFrame" end
	-- Vectors
	if(Type == "Vector3float32" or 
		Type == "Vector3uint16") then return "Vector3" end
	if(Type == "Vector2float32" or 
		Type == "Vector2uint16") then return "Vector2" end
	-- Regions
	if(Type == "Region3CFrameF32" or
		Type == "Region3Quaternion" or 
		Type == "Region3Quantized") then return "Region3" end
	-- NumberRanges
	if(Type == "NumberRangeF16" or
		Type == "NumberRangeF64") then return "NumberRange" end
	-- Get the first letter of the type for numbers
	const symbol = sub(Type,1,1)
	const isOnly3Letters = len(Type) == 3
	if(symbol == "U" or
		symbol == "I" or 
		symbol == "F" and isOnly3Letters) then 
		return "number" 
	elseif(symbol == "B" and isOnly3Letters) then
		return "boolean"
	end
	return Type
end

--[[
	@function literalValueToBitstreamTypes
	@within Extensions
	
	@param : any
	The value to get the Bitstream type of.
	
	@returns : Enumeration.BitstreamTypesName
	The Bitstream type name.
	
	Get the Bitstream type of a value.
]]
const function literalValueToBitstreamTypes<T>(value : T) : Enumeration.BitstreamTypesName
	const valueType = typeof(value)
	if(valueType == "number") then
		local _,floatingPoints = modf((value :: number))
		floatingPoints = ceil(floatingPoints)
		const byteData = Utilities.GetEquivalentBytesInfoFromNumber(value)
		const clampedBits = byteData.bytes * 8
		if(floatingPoints <= 0) then
			if(byteData.isUnsigned) then
				return "U"..clampedBits
			else
				return "I"..clampedBits
			end
		else
			local bits = (byteData.bytes <= 1) and (0 + 2) * 8 or byteData.bytes * 8
			if (bits > 16 and bits < 32) then 
				bits = 32 
			elseif(bits > 32 and bits <= 64) then
				bits = 64
			elseif(bits > 64) then 
				bits = 64
			end
			return "F"..bits
		end
	elseif(valueType == "string") then
		return "String"
	elseif(valueType == "boolean") then
		return "Bool1"
	elseif(valueType == "EnumItem")  then
		return "Enum"
	elseif(valueType == "CFrame") then
		return "CFrameF32"
	end
	if(valueType == "table") then
		if(Utilities.IsBool8(value)) then return "Bool8" end
		if(Utilities.IsArray(value)) then return "Array" end
	end
	return valueType
end

--[[
	@function getBytesFromValueType
	@within Extensions
	
	@param : any
	The value to get the bytes from.
	
	@return : number
	The bytes of the value.
	
	Get the bytes of a value.
]]
const function getBytesFromValueType<T>(value : T)
	const valueType = typeof(value)
	if(valueType == "number") then
		const byteData = Utilities.GetEquivalentBytesInfoFromNumber(value)
		return (byteData.bytes * 8) / 8
	elseif(valueType == "string") then
		return len(value :: string)
	elseif(valueType == "boolean") then
		return 1
	elseif(valueType == "EnumItem")  then
		return 2
	elseif(valueType == "CFrame") then
		return 24
	end
	if(valueType == "table") then
		if(Utilities.IsBool8(value)) then return 1 end
		if(Utilities.IsArray(value)) then
			return getArraySize(value)
		end
	end
	const targetByte : number | (...any) -> () = Constants.REQUIRED_BYTES[valueType]
	if(not targetByte) then
		warn("Couldn't find bytes for type", valueType)
	end
	if(typeof(targetByte) == "function") then
		return targetByte(value)
	end
	return targetByte
end

--[[
	@function getArraySize
	@within Extensions
	
	@param : {any} (i.e : {any})
	The array to get the size of.
	
	@return : number
	The size of the array.
	
	Get the size of an array.
]]
function getArraySize(array : {any}) : number
	local bytes = 2
	for i = 1,#array do
		if(array[i] == nil) then continue end
		bytes += 1 + getBytesFromValueType(array[i])
	end
	return bytes
end

--[[
	@function getStructSize
	@within Extensions
	
	@param : TypesFunctions.Record<string,any> (i.e : {[string] : any})
	The struct to get the size of.
	
	@return : number
	The size of the struct.
	
	Get the size of a struct.
]]
const function getStructSize(struct : TypesFunctions.Record<string,any>) : number
	-- Get keys
	local size = 0
	local keys = {}
	for key in struct do
		table.insert(keys,key)	
	end
	keys = table.concat(keys,",")
	
	const keysLength = len(keys)
	const keysLengthData = Utilities.GetEquivalentBytesInfoFromNumber(keysLength)
		
	-- Increase size for keys length and the byte needed for the keys length
	size += 1 + keysLengthData.bytes + keysLength
	
	-- Increase the size in this format:
	-- 1 byte for the type identifier
	-- n bytes for the value (if string then it uses the length of the string ans the number of bytes required)
	for _,value in pairs(struct) do
		const bitstreamTypes = literalValueToBitstreamTypes(value)
		const typeIdentifier = Enumeration.__enum[bitstreamTypes].Value :: number
		size += 1
		if(typeof(value) == "string") then
			const valueLength = len(value)
			const valueData = Utilities.GetEquivalentBytesInfoFromNumber(valueLength)
			size += valueData.bytes + valueLength
			continue
		elseif(bitstreamTypes == "Array") then
			-- Get the length of the array
			const arrayLength = (#value :: {any})
			const arrayData = Utilities.GetEquivalentBytesInfoFromNumber(arrayLength).bytes * 8
			-- (1 byte for using U[n] bit,n byte for the length of the array)
			size += (1 + arrayData)
			for _,element in pairs(value) do
				-- Increase by 1 (type identifier) + n bytes (value)
				size += 1 + getBytesFromValueType(element)
			end
			continue
		end
		local valueCost = Constants.REQUIRED_BYTES[bitstreamTypes] :: (...any) -> () | number
		if(typeof(valueCost) == "function") then 
			valueCost = valueCost(value) :: number
		end
		size += valueCost
	end	
	
	return size
end

--[[
	@function getEnumTypeFromIdentifier
	@within Extensions
	
	@param : number (i.e : 1)
	The identifier of the enum type to retrieve.
	
	@return : string
	The name of the enum type with the given identifier.
]]
const function getEnumTypeFromIdentifier(typeIdentifier : number) : Enumeration.BitstreamTypesName
	for enumName,enumValue in pairs(Enumeration.__enum) do
		if(enumValue.Value == typeIdentifier) then
			return enumName :: Enumeration.BitstreamTypesName
		end
	end
end

--[[
	@function getOffsetFromValueType
	@within Extensions
	
	@note : This function is similar to `getBytesFromValueType` but here it return the offset (i.e. the number of bytes required to write the value)
				also need an extra parameter containing the value to correctly read.
	
	@param : valueType (i.e : "U8")
	The value type to get the offset from.
	
	@param : value (i.e : 10) -- must match with the type and sometimes its optional
	The value to get the offset from.
	
	@return : number
	The offset of the value type.
]]
const function getOffsetFromValueType(valueType : Enumeration.BitstreamTypesName,value : any) : number
	if(Constants.REQUIRED_BYTES[valueType] and typeof(Constants.REQUIRED_BYTES[valueType]) ~= "function")  then
		return Constants.REQUIRED_BYTES[valueType] :: number
	end
	-- Strings
	if(valueType == "String") then
		return Constants.REQUIRED_BYTES.String(value)
	elseif(valueType == "PrefixedString") then
		return Constants.REQUIRED_BYTES.PrefixedString(value)
	end
	-- RotationCurveKeys
	if(valueType == "RotationCurveKey") then
		return Constants.REQUIRED_BYTES.RotationCurveKey(value)
	elseif(valueType == "RotationCurveKeyQuantized") then
		return Constants.REQUIRED_BYTES.RotationCurveKey(value,"Quantized")
	elseif(valueType == "RotationCurveKeyCFrameF32") then
		return Constants.REQUIRED_BYTES.RotationCurveKey(value,"CFrameF32")
	elseif(valueType == "RotationCurveKeyQuaternion") then
		return Constants.REQUIRED_BYTES.RotationCurveKey(value,"Quaternion")
	end
	-- FloatCurveKey
	if(valueType == "FloatCurveKey") then
		return Constants.REQUIRED_BYTES.FloatCurveKey(value)
	elseif(valueType == "FloatCurveKeyF16") then
		return Constants.REQUIRED_BYTES.FloatCurveKey(value,"F16")
	elseif(valueType == "FloatCurveKeyF32") then
		return Constants.REQUIRED_BYTES.FloatCurveKey(value,"F32")
	end
	-- ColorSequence
	if(valueType == "ColorSequence") then
		return Constants.REQUIRED_BYTES.ColorSequence(value)
	elseif(valueType == "ColorSequenceF32") then
		return Constants.REQUIRED_BYTES.ColorSequence(value,"F32")
	elseif(valueType == "ColorSequenceF64") then
		return Constants.REQUIRED_BYTES.ColorSequence(value,"F64")
	end
	-- NumberSequence
	if(valueType == "NumberSequence") then
		return Constants.REQUIRED_BYTES.NumberSequence(value)
	elseif(valueType == "NumberSequenceF16") then
		return Constants.REQUIRED_BYTES.NumberSequence(value,"F32")
	elseif(valueType == "NumberSequenceF64") then
		return Constants.REQUIRED_BYTES.NumberSequence(value,"F64")
	end
	-- -1 on error
	return -1
end

return {
	
	axisAngleToQuaternion = axisAngleToQuaternion,
	quaternionToCFrame = quaternionToCFrame,
	toFloat16 = toFloat16,
	bitstreamTypesToLiteralTypes = bitstreamTypesToLiteralTypes,
	literalValueToBitstreamTypes = literalValueToBitstreamTypes,
	getBytesFromValueType = getBytesFromValueType,
	getStructSize = getStructSize,
	decodeF16 = decodeF16,
	getEnumTypeFromIdentifier = getEnumTypeFromIdentifier,
	getOffsetFromValueType = getOffsetFromValueType,
	getArraySize = getArraySize,
	
}
