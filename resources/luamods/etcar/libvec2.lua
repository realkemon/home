--[[
	a vec2 {number x, number y}
--]]
local vec2 = {}

function vec2.null()
	return {0,0}
end

function vec2.add(a, b)
	return { a[1]+b[1], a[2]+b[2] }
end

function vec2.sub(a, b)
	return { a[1]-b[1], a[2]-b[2] }
end

function vec2.scale(a, scale)
	return { a[1]*scale, a[2]*scale }
end

function vec2.dot(a, b)
	return (a[1]*b[1] + a[2]*b[2])
end

function vec2.neg(v)
	return {-v[1], -v[2]}
end

function vec2.length(v)
	return math.sqrt(vec2.dot(v, v))
end

function vec2.normalizeLen(v, len)
	if len == 0 then
		return vec2.null()
	else
		local rlen = 1 / len
		return vec2.scale(v, rlen)
	end
end

function vec2.normalize(v)
	return vec2.normalizeLen(v, vec2.length(v))
end

function vec2.rotate(v, rad)
	local c = math.cos(rad)
	local s = math.sin(rad)
	return {v[1] * c - v[2] * s, v[1] * s + v[2] * c}
end

function vec2.abs(v)
	return {math.abs(v[1]), math.abs(v[2])}
end

function vec2.mul(a, b)
	return {a[1] * b[1], a[2] * b[2]}
end

return vec2