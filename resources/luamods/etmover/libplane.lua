--[[
	a plane {vec3 normal, number distance}
--]]
local vec3 = require "luamods/etmover/libvec3"

local plane = {}

-- calculate the plane normal from 3 given points
-- arguments:	vec3 a, vec3 b, vec3 c
function plane.normal(a, b, c)
	return vec3.normalize(vec3.cross(vec3.sub(c,b), vec3.sub(a,b)))
end

-- calculate the origin of the plane
-- arguments:	vec3 normal, number distanceToOrigin
function plane.origin(normal, distanceToOrigin)
  return vec3.scale(normal, distanceToOrigin)
end

-- calculate the distance of the plane  to the origin of the world
-- arguments:	vec3 normal, vec3 pointOnPlane
function plane.distance(normal, pointOnPlane)
  return -vec3.dot(normal, pointOnPlane)
end

-- create a plane from 3 given points
-- arguments:	vec3 a, vec3 b, vec3 c
function plane.fromPoints(a, b, c)
	local normal = plane.normal(a, b, c);
	local distance = plane.distance(normal, a)
	return {normal, distance}
end

-- test if a given point is:
--	>0		in front of the plane
--	==0		on the plane
--	<0		behind the plane
-- arguments:	plane p, vec3 point
function plane.halfSpace(p, point)
	local normal = p[1]
	local distance = p[2]
	return vec3.dot(normal, point) + distance
end

-- is the point behind the plane?
-- arguments:	plane p, vec3 point
function plane.pointBack(p, point)
	return plane.halfSpace(p, point) < 0
end

-- is the point in front of the plane?
-- arguments:	plane p, vec3 point
function plane.pointFront(p, point)
	return plane.halfSpace(p, point) > 0
end

-- is the point on the plane?
-- arguments:	plane p, vec3 point
function plane.pointOnPlane(p, point)
	return plane.halfSpace(p, point) == 0
end

return plane