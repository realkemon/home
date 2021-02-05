--[[
	a vec3 {number x, number y, number z}
--]]
local vec3 = {}

function vec3.null()
	return {0,0,0}
end

function vec3.add(a, b)
	return { a[1]+b[1], a[2]+b[2], a[3]+b[3] }
end

function vec3.sub(a, b)
	return { a[1]-b[1], a[2]-b[2], a[3]-b[3] }
end

function vec3.scale(a, scale)
	return { a[1]*scale, a[2]*scale, a[3]*scale }
end

function vec3.dot(a, b)
	return (a[1]*b[1] + a[2]*b[2] + a[3]*b[3])
end

function vec3.cross(a, b)
	return { a[2]*b[3]-a[3]*b[2], a[3]*b[1]-a[1]*b[3], a[1]*b[2]-a[2]*b[1] }
end

function vec3.length(v)
	return math.sqrt(vec3.dot(v, v))
end

function vec3.normalizeLen(v, len)
	if len == 0 then
		return vec3.null()
	else
		local rlen = 1 / len
		return vec3.scale(v, rlen)
	end
end

function vec3.normalize(v)
	return vec3.normalizeLen(v, vec3.length(v))
end

return vec3