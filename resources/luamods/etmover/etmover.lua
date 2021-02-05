--[[
	LUA script for a script_mover that follows one controlling player..
	It should work for 1 map only. This LUA script must not be active on other maps.
	You should use the "trilist" tool to generate the tri_array value from a .map.
	
	A triangle has 3 corner points: A, B & C.
	Each line of the list has this format:
		{planeAB, planeBC, planeCA, planeABC, pointOnPlaneABC, crossABtoTri, crossBCtoTri, crossCAtoTri}
	Each plane has this format:
		{normal, distance}
	Each normal & point have this format:
		{x,y,z}
	Each cross_toTri has this format/value:
		number	(can cross the edge to tri #),  or else
		nil		(can not cross the edge)
--]]
local vec3 = require "luamods/etmover/libvec3"
local plane = require "luamods/etmover/libplane"

MAXCLIENTS = tonumber(et.trap_Cvar_Get("sv_maxClients"))	-- the max clients on the server
SVFPS = tonumber(et.trap_Cvar_Get("sv_fps"))				-- serverframes per second
SVFMS = 1.0 / SVFPS * 1000			-- serverframe duration in milliseconds
N_SMALL = -10000000					-- a small number
N_BIG = 10000000					-- a big number

--*** You can adjust the following values
S_COLOR_BLUE = "^$"					-- the Lua message color
S_MAPNAME = "etmover"				-- the mapname must have this value
S_LUA_SCRIPTNAME = "etmover"		-- the name of this LUA script/module
S_CVAR_NAME = "etmover"				-- the name of the cvar used to pass data from LUA to mapscript
S_CONTROLLER_NAME = "etmover_controller"	-- this is the name of the team_CTF_redflag
S_MOVER_NAME = "etmover"			-- the scriptname/targetname of the script_mover
MOVER_MIN_DISTANCE = 128			-- controlling player must be at least this distance away
MOVER_MAX_DISTANCE = 1024			-- controlling player must be closer than this distance
MOVER_OFFSET_ORIGIN = {0,0,36}		-- to adjust the origin of the mover (offset from the ground)
MOVER_SPEED = 100					-- mover speed (in units per second)
--***

MOVER_SPEED_UPF = MOVER_SPEED / SVFPS	-- mover speed (in units per frame)
lua_active = true					-- true, if script running is validated
etmover_entnum = nil				-- entity-number of the etmover
etmover_angles = {0,0,0}			-- current angles (vec3)
controller_entnum = nil				-- the team_CTF_redflag entity

--[[ tool copy/paste stuff --]]

etmover_tri = 2

etmover_pos = {405.333,74.6667,4}

tri_array = {
{{{-0.707107,0.707107,-0},588.313},{{0.986394,0.164399,0},-599.728},{{-0,-1,-0},192},{{0.205076,-0.205076,-0.95702},-170.623},{1024,192,0},nil,2,4},
{{{-0.986394,-0.164399,-0},599.728},{{0.707107,-0.707107,0},-271.529},{{0.371391,0.928477,0},-59.4225},{{0.102945,0.257361,0.960816},-16.4711},{640,-192,-0},1,3,nil},
{{{0.351123,-0.936329,-0},-22.4719},{{-0.707107,0.707107,-0},271.529},{{1,0,0},-320},{{-0.351123,0,-0.936329},112.359},{320,96,-0},nil,2,nil},
{{{0,1,0},-192},{{-0.624695,-0.780869,-0},789.615},{{0.936329,0.351123,0},-606.741},{{-0.202692,-0.253365,0.945897},256.203},{576,192,-96},1,5,nil},
{{{-1,0,-0},1024},{{0.624695,0.780869,0},-789.615},{{-0.514496,-0.857493,-0},801.241},{{0,0,-1},-0},{1024,320,-0},nil,4,6},
{{{-1,-0,-0},1024},{{0,-1,0},704},{{0.514496,0.857493,0},-801.241},{{0,0,1},-0},{1024,320,0},7,nil,5},
{{{1,-0,0},-1024},{{-0.83205,0.5547,0},674.516},{{0,-1,0},704},{{-0.447214,0,0.894427},457.947},{1024,704,0},6,8,nil},
{{{-1,0,-0},1280},{{-0,1,-0},-320},{{0.83205,-0.5547,-0},-674.516},{{0.447214,0,-0.894427},-457.947},{1280,704,128},15,nil,7},
{{{0,1,0},256},{{-0.961524,-0.274721,-0},1160.42},{{1,-0,0},-1152},{{0,0,1},-128},{1152,-256,128},nil,10,nil},
{{{-0,-1,-0},192},{{-1,0,-0},1280},{{0.961524,0.274721,0},-1160.42},{{-0,-0,-1},128},{1152,192,128},nil,11,9},
{{{-0,1,-0},256},{{1,0,0},-1280},{{-0.961524,-0.274721,-0},1283.5},{{0,0,-1},128},{1408,-256,128},nil,10,12},
{{{0,-1,0},192},{{0.961524,0.274721,0},-1283.5},{{-1,-0,-0},1408},{{-0,0,1},-128},{1408,192,128},13,11,nil},
{{{-0,1,-0},-192},{{1,0,0},-1280},{{-0.707107,-0.707107,-0},1131.37},{{0,0,-1},128},{1408,192,128},12,nil,14},
{{{0.948683,-0.316228,0},-1113.12},{{0.707107,0.707107,0},-1131.37},{{-1,-0,-0},1408},{{-0,0,1},-128},{1408,704,128},15,13,nil},
{{{-0.948683,0.316228,0},1113.12},{{0,-1,0},704},{{1,-0,0},-1280},{{0,0,1},-128},{1280,320,128},14,nil,8}
}


--[[ init stuff (happens only once at mapload) --]]

-- find an entity
function findEntity(classname, scriptname)
	local entnum
	for entnum = 64, 1023, 1 do
		if et.gentity_get(entnum, "classname") == classname then
			if et.gentity_get(entnum, "scriptName") == scriptname then
				return entnum	-- found it
			end
		end
	end
	return nil	-- not found
end

-- check the mapname
function checkMapname()
	return (string.lower(et.trap_Cvar_Get("mapname")) == S_MAPNAME)
end

-- check the etmover entity
function checkETmover()
	etmover_entnum = findEntity("script_mover", S_MOVER_NAME)
	if etmover_entnum == nil then
		-- if not found, report an error message
		et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Error. script_mover \"".. S_MOVER_NAME .."\" not found!\n")
		return false
	end
	return true
end

-- check the controller (to let only 1 player control the mover)
function checkController()
	controller_entnum = findEntity("team_CTF_redflag", S_CONTROLLER_NAME)
	if controller_entnum == nil then
		-- if not found, report an error message
		et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Error. team_CTF_redflag \"".. S_CONTROLLER_NAME .."\" not found!\n")
		return false
	end
	return true
end


--[[ movement stuff (happens every serverframe: usually at 20 Hz)--]]

-- return t if point is inside the triangle.
-- otherwise return the possible adjecent triangle it moves into, nil if crossing an invalid edge.
-- Note: it is possible that 2 edges are crossed in one movement. In that case, cancel the move.
function pointMovesToTriangle(point, t)
	local tri = tri_array[t]
	local planeAB = tri[1]
	local planeBC = tri[2]
	local planeCA = tri[3]
	local crossed = 0
	local pAB = plane.pointBack(planeAB, point)	-- outside edge AB?
	local pBC = plane.pointBack(planeBC, point)	-- outside edge BC?
	local pCA = plane.pointBack(planeCA, point)	-- outside edge CA?
	if pAB then
		crossed = crossed + 1
	end
	if pBC then
		crossed = crossed + 1
	end
	if pCA then
		crossed = crossed + 1
	end
	if crossed == 0 then
		return t			-- still inside triangle t
	elseif crossed == 1 then
		if pAB then
			return tri[6]	-- cross over valid edge (AB) to adjecent triangle? (or nil otherwise)
		end
		if pBC then
			return tri[7]
		end
		if pCA then
			return tri[8]
		end
	end
	return nil	-- cancel this movement (crossed >1)
end

-- intersect a line with a triangle plane ABC
-- return the point of intersection, or nil otherwise
-- arguments: line = {vec3,vec3}, plane = {vec3,number}
function intersectLineTriangle(line, t)
	local tri = tri_array[t]
	local triPlane = tri[4]
	local planeNormal = triPlane[1]
	local pointOnPlane = tri[5]
	local lineDir = vec3.normalize(vec3.sub(line[2],line[1]))
	local dot = vec3.dot(planeNormal,lineDir)
	if dot == 0 then	-- parallel?
		return nil
	end
	local v = vec3.sub(pointOnPlane,line[1])
	local si = vec3.dot(planeNormal,v) / dot
	return vec3.add(line[1], vec3.scale(lineDir,si))
end

-- clip the z (height) of the point to the plane of the triangle
-- the given point must be over the triangle (or else nothing is clipped to a surface)
function putPointOnTriangle(point, t)
	-- a vertical line, through the triangle, through the mover-position
	local line = {{point[1],point[2],N_BIG},{point[1],point[2],N_SMALL}}
	-- intersect the line with the plane
	local i = intersectLineTriangle(line,t)
	if i ~= nil then
		return i
	else
		return point	-- no point of intersection => just return the given unclipped point
	end
end

-- vec3_to_angles (as in ET)
function vectorToAngles(v)
	local yaw
	if v[2] == 0 and v[1] == 0 then
		yaw = 0
	elseif v[1] ~= 0 then
		yaw = math.deg(math.atan(v[2], v[1]))	-- this is actually: math.atan2(y,x) --old way
		if yaw < 0 then
			yaw = yaw + 360
		end
	elseif v[2] > 0 then
		yaw = 90
	else
		yaw = 270
	end
	return {0,yaw,0}
end

-- make the model of the etmover start an animation (we have just 2: idle,walk)
function startAnimation(a)
	if a == 1 then
		et.trap_Cvar_Set(S_CVAR_NAME, 1)	-- walk
	else	-- anything else reverts to the idle anim
		et.trap_Cvar_Set(S_CVAR_NAME, 0)	-- idle
	end
end

-- check all players, and find out who has the controller
function getControllerPlayerPos()
	for entnum = 0, MAXCLIENTS-1, 1 do
		local powerups = et.gentity_get(entnum, "ps.powerups", et.PW_REDFLAG)	-- 5 is redflag
		if tonumber(powerups) ~= 0 then
			return et.gentity_get(entnum, "ps.origin")
		end
	end
--[[
	local dropped = et.gentity_get(controller_entnum, "flags")
--et.G_Say(0, et.SAY_ALL, "flags=".. dropped)
if (dropped and 4096) ~= 0 then
et.G_Say(0, et.SAY_ALL, "dropped ".. dropped)
	local ent = et.gentity_get(controller_entnum, "s.modelindex2")
	et.gentity_set(ent, "s.origin", nil, etmover_pos)
end
]]--
	return nil
end

-- move the mover
function moveMover()
	-- no one controlling?
	local controller_player_pos = getControllerPlayerPos()
	if controller_player_pos == nil then
		startAnimation(0)	-- start idle animation
		return				-- no movement
	end
	-- get the vector from etmover_pos to controller_player_pos
	local v = vec3.sub(controller_player_pos, etmover_pos)
	-- controller at far enough distance?.. and not too far away?
	local len = vec3.length(v)
	if (len < MOVER_MIN_DISTANCE) or (len > MOVER_MAX_DISTANCE) then
		startAnimation(0)	-- start idle animation
		return				-- no movement
	end
	-- normalize the vector (make it have a length of 1, while retaining the same direction)
	v = vec3.normalizeLen(v, len)
	-- scale it to the length of the mover's speed (per frame)
	local delta = vec3.scale(v, MOVER_SPEED_UPF)	-- this is the movement
	local endpos = vec3.add(etmover_pos, delta)		-- the mover will end here
	-- check if the mover is still inside the triangle, or moves onto another adjecent triangle
	local etmover_next_tri = pointMovesToTriangle(endpos, etmover_tri)
	if etmover_next_tri == nil then					-- can not cross the edge?
		startAnimation(0)	-- start idle animation
		return				-- no movement
	end
	if etmover_next_tri ~= etmover_tri then			-- moved to another triangle?
		etmover_tri = etmover_next_tri				-- cross over to the next triangle
	end
	-- clip the movers origin to the triangle.. like glued to the triangle plane ABC
	etmover_pos = putPointOnTriangle(endpos, etmover_tri)
	-- correction:    if you make the models tag(s) correctly, you wouldn't need this next statement..
	-- adjust the height of the origin (in case the models origin is not at ground level)
	etmover_pos = vec3.add(etmover_pos, MOVER_OFFSET_ORIGIN)
	--
	local leveltime = et.trap_Milliseconds()
	-- move the mover (interpolate during one serverframe)
	tr = {trType = 1, trTime = leveltime, trDuration = SVFMS, trBase = etmover_pos, trDelta = vec3.null()}
	et.gentity_set(etmover_entnum, "s.pos", nil, tr)
	-- rotate the mover (stationary), with speed 100
	tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = vectorToAngles(v), trDelta = {0,100,0}}	-- speed 100
	et.gentity_set(etmover_entnum, "s.apos", nil, tr)
	-- start walking animation
	startAnimation(1)
end


--[[ game callbacks (happens whenever the situation occurs) --]]

-- et_InitGame: Called when qagame initializes.
--	levelTime is the current level time in milliseconds.
--	randomSeed is a number that can be used to seed random number generators.
--	restart indicates if et_InitGame() is being called due to a map_restart (1) or not (0).
function et_InitGame( levelTime, randomSeed, restart )
	-- Registering the modname.
	et.RegisterModname(S_LUA_SCRIPTNAME)

	-- checking for the correct mapname
	lua_active = checkMapname()
	if not lua_active then
		return
	end
	
	-- check the etmover entity
	lua_active = checkETmover()
	if not lua_active then
		return
	end
	
	-- check the controller (to let only 1 player control the mover)
	lua_active = checkController()
	if not lua_active then
		return
	end
	
	-- if we get to here, we found the map, and all needed entities are found.
	et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Running..\n")

--[[
	-- move the mover to the starting point
	etmover_pos = putPointOnTriangle(etmover_pos, etmover_tri)
	etmover_pos = vec3.add(etmover_pos, MOVER_OFFSET_ORIGIN)
	tr = {trType = 0, trTime = et.trap_Milliseconds(), trDuration = 0, trBase = etmover_pos, trDelta = vec3.null()}
	et.gentity_set(etmover_entnum, "s.pos", nil, tr)
--]]
	--et.G_Say(0, et.SAY_ALL, "LUA etmover demo")
end


-- et_ShutdownGame: Called when qagame shuts down.
--	restart indicates if the shutdown is being called due to a map_restart (1) or not (0).
function et_ShutdownGame( restart )
	if not lua_active then
		return
	end
end


-- et_Quit: Called when Legacy unloads the mod.
function et_Quit()
	if not lua_active then
		return
	end
end


-- et_RunFrame: Called when qagame runs a server frame.
--	levelTime is the current level time in milliseconds.
function et_RunFrame( levelTime )
	if not lua_active then
		return
	end
	moveMover()
end
