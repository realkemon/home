--[[
	LUA script for a script_mover that can be steered around..
	It should work for 1 map only. This LUA script must not be active on other maps.

	Bind 4 keys to control the car:
		bind KP_UPARROW "+vstr etcars_w_in etcars_w_out"
		bind KP_LEFTARROW "+vstr etcars_a_in etcars_a_out"
		bind KP_RIGHTARROW "+vstr etcars_d_in etcars_d_out"
		bind KP_DOWNARROW "+vstr etcars_s_in etcars_s_out"
		seta etcars_w_out "etcar_w_out"
		seta etcars_w_in "etcar_w_in"
		seta etcars_a_out "etcar_a_out"
		seta etcars_a_in "etcar_a_in"
		seta etcars_d_out "etcar_d_out"
		seta etcars_d_in "etcar_d_in"
		seta etcars_s_out "etcar_s_out"
		seta etcars_s_in "etcar_s_in"
		
--]]
local vec3 = require "luamods/etcar/libvec3"
local classCar = require "luamods/etcar/classCar"

MAXCLIENTS = tonumber(et.trap_Cvar_Get("sv_maxClients"))	-- the max clients on the server
SVFPS = tonumber(et.trap_Cvar_Get("sv_fps"))				-- serverframes per second
SVFMS = 1000 / SVFPS	 			-- serverframe duration in milliseconds

--*** You can adjust the following values
S_COLOR_BLUE = "^$"					-- the Lua message color
S_MAPNAME = "etcar"					-- the mapname must have this value
S_LUA_SCRIPTNAME = "etcar"			-- the name of this LUA script/module
S_MOVER_NAME = "etcar"				-- the scriptname/targetname of the script_mover
S_WLEFT_NAME = "etcar_wfrontl"
S_WRIGHT_NAME = "etcar_wfrontr"
S_WBACK_NAME = "etcar_wback"
--***

lua_active = true					-- true, if script running is validated
driver_entnum = nil					-- the player who is driving
wleft_entnum = nil					-- the left wheel entity number
wright_entnum = nil					-- the right wheel entity number
wback_entnum = nil					-- the backwheels entity number
etcar_entnum = nil					-- entity-number of the etcar
etcar_steerangle = 0				-- the steering(left/right) angle of the wheels
etcar_radyaw = 0					-- the heading of the car
etcar_wheelspin = 0					-- how fast the wheels are rolling over the terrain
key_forward = false					-- true if forward key is being pressed
key_back = false					--
key_left = false					--
key_right = false					--

car = nil							-- the classCar instance

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

-- check the etcar entity
function checkETcar()
	etcar_entnum = findEntity("script_mover", S_MOVER_NAME)
	if etcar_entnum == nil then
		-- if not found, report an error message
		et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Error. script_mover \"".. S_MOVER_NAME .."\" not found!\n")
		return false
	end
	-- get the current position of the etcar
	etcar_pos = et.gentity_get(etcar_entnum, "s.origin")	-- {x,y,z}
	return true
end

-- check the wheels
function checkWheels()
	wright_entnum = findEntity("misc_gamemodel", S_WRIGHT_NAME)
	if wright_entnum == nil then
		-- if not found, report an error message
		et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Error. misc_gamemodel \"".. S_WRIGHT_NAME .."\" not found!\n")
		return false
	end
	wleft_entnum = findEntity("misc_gamemodel", S_WLEFT_NAME)
	if wleft_entnum == nil then
		-- if not found, report an error message
		et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Error. misc_gamemodel \"".. S_WLEFT_NAME .."\" not found!\n")
		return false
	end
	wback_entnum = findEntity("misc_gamemodel", S_WBACK_NAME)
	if wback_entnum == nil then
		-- if not found, report an error message
		et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Error. misc_gamemodel \"".. S_WBACK_NAME .."\" not found!\n")
		return false
	end
	return true
end


--[[ movement stuff (happens every serverframe: usually at 20 Hz)--]]

-- check all players, and find out who is driving
function getDriver()
	local entnum
	for entnum = 0, MAXCLIENTS-1, 1 do
		local eflags = et.gentity_get(entnum, "ps.eFlags")
		local mounted = (eflags % 65536) - (eflags % 32768)	-- bitwise and 32768
		--local mounted = et.isBitSet(15, eflags)
		if mounted ~= 0 then
			return entnum
		end
	end
	return nil
end

-- move the mover
function moveMover()
	-- no one driving?
	driver_entnum = getDriver()
	if driver_entnum == nil then
		return				-- no movement
	end

	-- check accelerate and deccelerate for all gears
	if key_forward and key_back then	-- check forward + back pressed at the same time
		-- do nothing
	elseif key_forward then				-- only the forward key is pressed?
		car:checkGears(1)				-- see if we can switch gears to drive forward
		car:throttleOrBrake(true)		-- true means key_forward is pressed
	elseif key_back then				-- only the back key is pressed?
		car:checkGears(-1)				-- check if we can switch gears to drive in reverse
		car:throttleOrBrake(false)		-- false means key_back is pressed
	else -- !key_forward && !key_back	-- no key is pressed (if one was pressed, it's released now)
		car:checkGears(0)				-- check if we are allowed to switch gears
		-- if we do not accel/deccel/brake, the etcar should slowly reduce speed..
		car:freeRolling()
	end
	-- check left/right steering
	if key_left and key_right then		-- check left + right pressed at the same time
		-- do nothing
	elseif key_left then
		car:steerLeft()
	elseif key_right then
		car:steerRight()
	else
		-- if we are not steering, the wheels want to go straight again.
		-- (the faster you drive, the quicker they do it)
		car:steerStraight()
	end

	car:doPhysics()

	-- positioning the car (interpolate during one serverframe)
	local position = car:getPosition()
	tr = {trType = 1, trTime = leveltime, trDuration = SVFMS, trBase = position, trDelta = vec3.null()}
	et.gentity_set(etcar_entnum, "s.pos", nil, tr)
	-- rotate the car
	local angles = car:getAngles()
--et.G_Say(0, et.SAY_ALL, "angles={".. angles[1] ..",".. angles[2] ..",".. angles[3] .."}")
	tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = angles, trDelta = {0,100,0}}	-- speed 100
	et.gentity_set(etcar_entnum, "s.apos", nil, tr)
	-- rotate the wheels
	etcar_wheelspin = 0 --(etcar_wheelspin + speedUPF) % 360
	etcar_steerangle = car:getSteerAngle()
--	tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = {0,-etcar_steerangle,etcar_wheelspin}, trDelta = {0,100,0}}	-- speed 100
tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = {angles[3],-etcar_steerangle,etcar_wheelspin}, trDelta = {0,100,0}}	-- banked
	et.gentity_set(wright_entnum, "s.apos", nil, tr)
--	tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = {0,-etcar_steerangle,-etcar_wheelspin}, trDelta = {0,100,0}}	-- speed 100
tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = {-angles[3],-etcar_steerangle,-etcar_wheelspin}, trDelta = {0,100,0}}	-- banked
	et.gentity_set(wleft_entnum, "s.apos", nil, tr)
	tr = {trType = 0, trTime = leveltime, trDuration = 0, trBase = {etcar_wheelspin,0,0}, trDelta = {0,100,0}}	-- speed 100
	et.gentity_set(wback_entnum, "s.apos", nil, tr)
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
	
	-- check the etcar entity
	lua_active = checkETcar()
	if not lua_active then
		return
	end
	
	-- check the wheels entities
	lua_active = checkWheels()
	if not lua_active then
		return
	end
	
	-- create the class instance
	car = classCar:new()
	car:setSVFPS(SVFPS)
	car:setPosition(etcar_pos)
	car:setYaw(etcar_radyaw)
	
	-- if we get to here, we found the map, and all needed entities are found.
	et.G_Print("Lua ".. S_LUA_SCRIPTNAME ..": ".. S_COLOR_BLUE .."Running..\n")

	--et.G_Say(0, et.SAY_ALL, "LUA etmover demo")
end


-- et_RunFrame: Called when qagame runs a server frame.
--	levelTime is the current level time in milliseconds.
function et_RunFrame( levelTime )
	if not lua_active then
		return
	end
	moveMover()
end

-- called for every clientcommand
-- return 1 if intercepted, 0 if passthrough
function et_ClientCommand( clientNum, cmd )
	if not lua_active then
		return 0
	end
	if driver_entnum == nil then
		return 0
	end
	if clientNum ~= driver_entnum then
		return 0
	end
	if cmd == "etcar_w_in" then
		key_forward = true
		return 1	-- intercept
	elseif cmd == "etcar_w_out" then
		key_forward = false
		return 1
	elseif cmd == "etcar_s_in" then
		key_back = true
		return 1
	elseif cmd == "etcar_s_out" then
		key_back = false
		return 1
	elseif cmd == "etcar_a_in" then
		key_left = true
		return 1
	elseif cmd == "etcar_a_out" then
		key_left = false
		return 1
	elseif cmd == "etcar_d_in" then
		key_right = true
		return 1
	elseif cmd == "etcar_d_out" then
		key_right = false
		return 1
	end
	return 0
end