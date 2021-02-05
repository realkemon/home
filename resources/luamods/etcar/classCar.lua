
-- http://www.asawicki.info/Mirror/Car%20Physics%20for%20Games/Car%20Physics%20for%20Games.html
-- http://mojolabs.nz/posts.php?topic=207815
-- https://codea.io/talk/discussion/6648/port-of-marco-monsters-2d-car-physics-now-with-video

local vec2 = require "luamods/etcar/libvec2"

local classCar = {}

classCar.svfps = 20 -- must never be 0
classCar.frametime = 1.0 / classCar.svfps
classCar.throttle = 0 -- range 0 to 100
classCar.throttleDelta = 1
classCar.throttleForce = 8000
classCar.brake = 0 -- range 0 to 100
classCar.brakeDelta = 3
classCar.brakeForce = 12000
classCar.ebrake = 0
classCar.ebrakeForce = classCar.brakeForce / 2.5
classCar.gear = 0 -- value <-1,0,1>
classCar.canSwitchGear = true
classCar.gravity = 9.8 -- m/s^2
classCar.mass = 1000 -- must never be 0
classCar.inertia = classCar.mass -- must never be 0
classCar.CGtoAxleFront = 1.5 --84 --1.50 -- in m    distance from CG to front axle -- 50
classCar.CGtoAxleBack = 1.5 --84 --1.50 -- in m    distance from CG to rear axle -- 118
classCar.wheelBase = classCar.CGtoAxleFront + classCar.CGtoAxleBack -- 168
classCar.CGtoFront = 2.0 --112 --2.00 -- in m (must be > CGtoAxleFront)
classCar.CGtoBack = 2.0 --112 --2.00 -- in m (must be > CGtoAxleBack)
classCar.CGheight = 0.0 -- in m    height of the center of gravity
classCar.weightRatioFront = classCar.CGtoAxleBack / classCar.wheelBase
classCar.weightRatioBack = classCar.CGtoAxleFront / classCar.wheelBase
classCar.weightTransfer = 0.2 -- How much weight is transferred during acceleration/braking
classCar.wheelRadius = 0.22
classCar.heading = 0 -- angle in rad the car is facing
classCar.acc = {0,0}
classCar.accWorld = {0,0}
classCar.yawRate = 0 -- angular velocity in radians
classCar.yawSpeedFront = 0
classCar.yawSpeedBack = 0
classCar.yawSpeed = 0
classCar.slipAngleFront = 0
classCar.slipAngleBack = 0
classCar.steerAngle = 0 -- rad
classCar.maxSteerAngle = 45 -- degrees
classCar.maxSteerAngleRad = math.rad(classCar.maxSteerAngle)
classCar.frameSteerAngle = classCar.maxSteerAngleRad * classCar.frametime
classCar.tyreGrip = 2.0 -- How much grip tires have
classCar.tyreGripFront = 0
classCar.tyreGripBack = 0
classCar.tyreGripLock = 0.7 -- % of grip available when wheel is locked
classCar.frictionFront = 0
classCar.frictionBack = 0
classCar.cornerStiffnessFront = 5.0
classCar.cornerStiffnessBack = 5.2
classCar.traction = {0,0}
classCar.drag = {0,0}
classCar.airResist = 2.5
classCar.rollResist = 8.0
classCar.force = {0,0}
classCar.angularTorque = 0
classCar.angularAcc = 0
classCar.pos = {0,0}
classCar.vel = {0,0}
classCar.velWorld = {0,0}
classCar.speed = 0

classCar.angularVelocity = 0

classCar.yaw = 0
classCar.angVelCar = 0
classCar.angVelDriver = 0
classCar.velUnit = {0,0}


-- example:  car = classCar:new({svfps=20, pos3World={100,20,4}})
function classCar.new(self)
	obj = {}
	setmetatable(obj, self)
	self.__index = self
	self:init()
	return obj
end	

function classCar.init(self)
	self.frametime = 1.0 / self.svfps
	self.maxSteerAngleRad = math.rad(self.maxSteerAngle)
	self.frameSteerAngle = self.maxSteerAngleRad * self.frametime
	self.wheelBase = self.CGtoAxleFront + self.CGtoAxleBack
	self.weightRatioFront = self.CGtoAxleBack / self.wheelBase
	self.weightRatioBack = self.CGtoAxleFront / self.wheelBase
end

function classCar.sign(x)
	return (x<0 and -1) or 1
end

function classCar.clamp(x, _min, _max)
	return math.min(math.max(x,_min), _max)
end

function classCar.setSVFPS(self, fps)
	self.svfps = fps
	self.frametime = 1.0 / self.svfps
	self.frameSteerAngle = self.maxSteerAngleRad * self.frametime
end

function classCar.setPosition(self, position)
	self.pos3World = position -- vec3, we need the car's map startpoint Z too
	self.pos[1] = position[1]
	self.pos[2] = position[2]
end

function classCar.getPosition(self)
	-- pos3World[3] stays fixed for a flat terrain. posWorld is calculated
	return {self.pos[1], self.pos[2], self.pos3World[3]}
end

function classCar.getAngles(self)
	-- ET needs degrees {pitch, yaw, roll}
	return {0, math.deg(-self.heading), 0}
end

function classCar.setYaw(self, yaw)
	self.heading = math.rad(-yaw)
end

function classCar.getSteerAngle(self)
	return math.deg(self.steerAngle)
end

function classCar.steerLeft(self)
	local angle = self.steerAngle -	self.frameSteerAngle
	self.steerAngle = math.max(-self.maxSteerAngleRad, angle)
end

function classCar.steerRight(self)
	local angle = self.steerAngle +	self.frameSteerAngle
	self.steerAngle = math.min(angle, self.maxSteerAngleRad)
end

function classCar.doThrottle(self)
	if self.gear == 0 then
		return
	elseif self.gear == 1 then
		local t = self.throttle + self.throttleDelta
		self.throttle = math.min(t, 100)
	elseif self.gear == -1 then
		local t = self.throttle - self.throttleDelta
		self.throttle = math.max(-40, t)
	end
end

function classCar.doBrake(self)
	if self.gear == 0 then
		return
	elseif self.gear == 1 then
		local b = self.throttle - self.brakeDelta
		if b <= 0 then
			b = 0
			self.gear = 0
		end
		self.throttle = b
	elseif self.gear == -1 then
		local b = self.throttle + self.brakeDelta
		if b >= 0 then
			b = 0
			self.gear = 0
		end
		self.throttle = b
	end
end

function classCar.throttleOrBrake(self, forward)
	if self.gear ~= 0 then
		if (forward and self.gear == 1) or (not forward and self.gear == -1) then
			self:doThrottle()
		else
			self:doBrake()
		end
	end
end

function classCar.checkGears(self, g)
	if g == 0 then
		if self.gear == 0 then
			self.canSwitchGear = true
		end
	elseif self.canSwitchGear then
		self.gear = g
		self.canSwitchGear = false
	end
--et.G_Say(0, et.SAY_ALL, "throttle=".. self.throttle ..", gear=".. self.gear)
end

function classCar.checkStopped(self)
	if (math.abs(self.speed) < 0.5) and (self.throttle == 0) then
		self.velWorld = {0,0}
		self.acc = {0,0}
		self.speed = 0
		self.gear = 0
		self.angularTorque = 0
		--self.yawRate = 0
	end
end

-- called when no drive nor reverse key is pressed
function classCar.freeRolling(self)
	self.throttle = self.throttle - 1
	if self.throttle < 0 then
		self.throttle = 0
	end
	self.velWorld = vec2.scale(self.velWorld, 0.99)
	self.speed = vec2.length(self.velWorld)
	self:checkStopped()
end

-- called when no left/right steering key is pressed
function classCar.steerStraight(self)
	if self.steerAngle == 0 then
		return
	end
	local delta = self.frameSteerAngle * self.speed * 0.001 -- i don't know max speed..
	if self.steerAngle < 0 then
		local angle = self.steerAngle + delta
		self.steerAngle = math.min(angle, 0)
	else	-- self.steerAngle>0
		local angle = self.steerAngle - delta
		self.steerAngle = math.max(0, angle)
	end
end


function classCar.doPhysics(self)

	self.speed = self.throttle * 20 --self.throttleForce
	local speedPF = self.speed * self.frametime
	
	-- the slip factors for front and rear wheels
	local slipFactorFront = 1.0
	local slipFactorBack = 1.0
	local a = self.heading
	local headingVector = {math.cos(a),-math.sin(a)}
	a = self.heading + self.steerAngle
	local steerVector = {math.cos(a),-math.sin(a)}
	if self.speed ~= 0 then
		-- The rear wheels slip factor:
		slipFactorBack = vec2.dot(self.velUnit, headingVector) -- dot = cosine of angle heading/vel
		-- dot is 0 when the slip is at max
		-- dot is 1 (or -1) when there is no slip
-- this is always 1.0 with the minimalistic code..for the rear wheels
		-- The front wheels slip:
		slipFactorFront = vec2.dot(self.velUnit, steerVector)
et.G_Say(0, et.SAY_ALL, "slip: f=".. slipFactorFront .."  b=".. slipFactorBack)
	end

--	local spin = 
--	self.angVelCar = 

--	local circleRadius = self.wheelBase / math.sin(self.steerAngle)
	local circleRadius = 168.0 / math.sin(self.steerAngle)
	self.angVelDriver = speedPF / circleRadius	-- in radians per frame
	local d = self.angVelDriver --* (slipFactorBack - slipFactorFront)
	self.yaw = self.yaw + d
	self.heading = self.yaw

	-- 100% grip
	self.velUnit = {math.cos(self.yaw), -math.sin(self.yaw)}
	self.vel = vec2.scale(self.velUnit, speedPF)
	self.pos = vec2.add(self.pos, self.vel)
--[[
	-- slip'n'slide grip
	--local grip = (100 - self.throttle) * 0.01 -- linear
	local grip = self.throttle * 0.01 -- exponential
	grip = 1.0 - grip*grip --exp
	local v = vec2.scale(self.vel, 1.0-grip)
	local steeringVec = {math.cos(self.yaw), -math.sin(self.yaw)}
	steeringVec = vec2.scale(steeringVec, grip)
	v = vec2.add(v, steeringVec)
	v = vec2.scale(vec2.normalize(v), speedPF)
	self.vel = v
	self.velUnit = vec2.normalize(self.vel)
	self.pos = vec2.add(self.pos, self.vel)
--]]
	
	
--[[
	self.vel = vec2.rotate(self.velWorld, -self.heading)
--	local s = math.sin(self.heading)
--	local c = math.cos(self.heading)
--	-- Get velocity in local car coordinates
--	self.vel[1] = c * self.velWorld[1] + s * self.velWorld[2]
--	self.vel[2] = c * self.velWorld[2] - s * self.velWorld[1]

	-- Weight on axles based on centre of gravity and weight shift due to forward/reverse acceleration
	local w = self.weightTransfer * self.acc[1] * self.CGheight / self.wheelBase
	local axleWeightFront = self.mass * (self.weightRatioFront * self.gravity - w)
	local axleWeightBack = self.mass * (self.weightRatioBack * self.gravity + w)
--et.G_Say(0, et.SAY_ALL, "axleweight: f=".. axleWeightFront .."  b=".. axleWeightBack)
	-- velocity of the wheels as result of the yaw rate of the car body.
	-- v = yawrate * r, where r is distance from axle to CG and yawRate (angular velocity) in rad/s.
	self.yawSpeedFront = self.CGtoAxleFront * self.yawRate
	self.yawSpeedBack = -self.CGtoAxleBack * self.yawRate
--self.yawSpeed = self.wheelBase * 0.5 * self.yawRate
--local circleRadius = self.wheelBase / math.sin(self.steerAngle)
--local angularVelocity = self.speed * self.frametime / circleRadius	-- in radians per frame
--et.G_Say(0, et.SAY_ALL, "yawrate: f=".. self.yawSpeedFront .."  b=".. self.yawSpeedBack)

	-- Calculate slip angles for front and rear wheels (a.k.a. alpha)
--	self.slipAngleFront = math.atan(self.vel[2] + self.yawSpeedFront, math.abs(self.vel[1])) - classCar.sign(self.vel[1]) * self.steerAngle
--	self.slipAngleBack = math.atan(self.vel[2] + self.yawSpeedBack, math.abs(self.vel[1]))
self.slipAngleFront = math.atan(self.vel[2] + self.yawSpeedFront, self.vel[1]) - self.steerAngle
self.slipAngleBack = math.atan(self.vel[2] + self.yawSpeedBack, self.vel[1])
--self.slipAngleFront = math.atan(self.velWorld[2] + self.yawSpeedFront, self.velWorld[1]) - self.steerAngle
--self.slipAngleBack = math.atan(self.velWorld[2] + self.yawSpeedBack, self.velWorld[1])


--local rotAngle = math.atan(self.yawSpeed, self.vel[1])
--local sideslip = math.atan(self.vel[2], self.vel[1])
--self.slipAngleFront = sideslip + rotAngle - self.steerAngle
--self.slipAngleBack = sideslip - rotAngle
--et.G_Say(0, et.SAY_ALL, "slipangle: f=".. self.slipAngleFront .."  b=".. self.slipAngleBack)

	self.tyreGripFront = self.tyreGrip
	self.tyreGripBack = self.tyreGrip -- * (1.0 - self.ebrake * (1.0 - self.tyreGripLock)) -- reduce rear grip when braking

	self.frictionFront = classCar.clamp(-self.cornerStiffnessFront * self.slipAngleFront, -self.tyreGripFront, self.tyreGripFront) * axleWeightFront
	self.frictionBack = classCar.clamp(-self.cornerStiffnessBack * self.slipAngleBack, -self.tyreGripBack, self.tyreGripBack) * axleWeightBack
et.G_Say(0, et.SAY_ALL, "friction: f=".. self.frictionFront .."  b=".. self.frictionBack)

	-- Get amount of brake/throttle from our inputs
	local brakeValue = 0 --math.min(self.brake * self.brakeForce + self.ebrake * self.ebrakeForce, self.brakeForce)
	local throttleValue = self.throttle * self.throttleForce
	-- traction force in local car coordinates
	self.traction[1] = throttleValue -- - brakeValue * classCar.sign(self.vel[1])
	self.traction[2] = 0
--et.G_Say(0, et.SAY_ALL, "traction: f=".. self.traction[1] .."  b=".. self.traction[2])

	--self.drag[1] = -self.rollResist * self.vel[1] - self.airResist * self.vel[1] * math.abs(self.vel[1])
	--self.drag[2] = -self.rollResist * self.vel[2] - self.airResist * self.vel[2] * math.abs(self.vel[2])
self.drag[1] = -self.rollResist * self.vel[1] - self.airResist * self.vel[1] * math.abs(self.vel[1])
self.drag[2] = -self.rollResist * self.vel[2] - self.airResist * self.vel[2] * math.abs(self.vel[2])

	-- total force in car local coordinates
	self.force[1] = self.drag[1] + self.traction[1] + math.sin(self.steerAngle) * self.frictionFront
	self.force[2] = self.drag[2] + math.cos(self.steerAngle) * self.frictionBack
--self.force[2] = self.drag[2] + self.traction[2] + self.frictionFront + self.frictionBack

	-- acceleration along car axes (local coords)
	self.acc[1] = self.force[1] / self.mass -- forward/reverse accel
	self.acc[2] = self.force[2] / self.mass -- sideways accel

	-- acceleration in world coordinates
	self.accWorld = vec2.rotate(self.acc, self.heading)
--	self.accWorld[1] = c * self.acc[1] - s * self.acc[2]
--	self.accWorld[2] = s * self.acc[1] + c * self.acc[2]

	-- update velocity (world coords)
	self.velWorld[1] = self.velWorld[1] + self.accWorld[1] * self.frametime
	self.velWorld[2] = self.velWorld[2] + self.accWorld[2] * self.frametime
	self.speed = vec2.length(self.velWorld)

	-- calculate rotational forces
--	self.angularTorque = (self.frictionFront + self.traction[2]) * self.CGtoAxleFront - self.frictionBack * self.CGtoAxleBack
self.angularTorque = self.frictionFront * self.CGtoAxleFront - self.frictionBack * self.CGtoAxleBack

	self.angularAcc = self.angularTorque / self.inertia 
	self.yawRate = self.yawRate + self.angularAcc * self.frametime
	self.heading = self.heading + self.yawRate * self.frametime

self:checkStopped()

	-- update position
	self.pos[1] = self.pos[1] + self.velWorld[1] * self.frametime
	self.pos[2] = self.pos[2] + self.velWorld[2] * self.frametime
	
--et.G_Say(0, et.SAY_ALL, "speed=".. self.speed .."  throttle=".. self.throttle .."  torque=".. self.angularTorque .."  yawRate=".. self.yawRate)
--et.G_Say(0, et.SAY_ALL, "torque=".. self.torque .." ang.acc=".. self.angular_acc .." ang.vel=".. self.angular_vel .." angle=".. self.angle)
--]]



--[[
	self.vel = vec2.rotate(self.velWorld, -self.heading)
	
	self.yawSpeed = self.wheelBase * 0.5 * self.angularVelocity
	local rotAngle = math.atan(self.yawSpeed, self.vel[1])
	local sideslip = math.atan(self.vel[2], self.vel[1])
	local slipanglefront = sideslip + rotAngle - self.steerAngle
	local slipanglerear = sideslip - rotAngle
--et.G_Say(0, et.SAY_ALL, "slip: f=".. slipanglefront .."  b="..slipanglerear .."  d=".. slipanglefront-slipanglerear)
	
	local weight = self.mass * 9.8 * 0.5
	
	local flatf = {0, -self.cornerStiffnessFront * slipanglefront}
	flatf[2] = classCar.clamp(flatf[2], -self.tyreGrip, self.tyreGrip)
	flatf[2] = flatf[2] * weight
	local flatr = {0, -self.cornerStiffnessBack * slipanglerear}
	flatr[2] = classCar.clamp(flatr[2], -self.tyreGrip, self.tyreGrip)
	flatr[2] = flatr[2] * weight
	
	local ftraction = {self.throttleForce * self.throttle, 0}
	
--	local force = {ftraction[1] + math.sin(self.steerAngle) * flatf[1] + flatr[1] + resistance[1], ftraction[2] + math.cos(self.steerAngle) * flatf[2] + flatr[2] + resistance[2]}
local force = {ftraction[1], flatf[2] + flatr[2]}
	
--	local torque = self.CGtoAxleFront * flatf[2] - self.CGtoAxleBack * flatr[2]
local torque = flatf[2] - flatr[2]
et.G_Say(0, et.SAY_ALL, "torque=".. torque)
	
	self.acc[1] = force[1] / self.mass
	self.acc[2] = force[2] / self.mass
	
	self.angularAcc = torque / self.inertia
	
	self.accWorld = vec2.rotate(self.acc, self.heading)
	
	self.velWorld[1] = self.velWorld[1] + self.accWorld[1] * self.frametime
	self.velWorld[2] = self.velWorld[2] + self.accWorld[2] * self.frametime
self.speed = vec2.length(self.velWorld)	
	self.pos[1] = self.pos[1] + self.velWorld[1] * self.frametime
	self.pos[2] = self.pos[2] + -self.velWorld[2] * self.frametime --  -y
	
--	self.angularVelocity = self.angularVelocity + self.angularAcc * self.frametime
local circleRadius = self.wheelBase / math.sin(self.steerAngle)
self.angularVelocity = self.speed * self.frametime / circleRadius	-- in radians per frame

	self.heading = self.heading + self.angularVelocity * self.frametime
--]]


--[[
	self.heading			-- angle the car is facing (rad)
	self.steerAngle			-- angle of the wheels (rad)
	self.velocity			-- vector of direction and speed of motion
	angVelDriver 			-- from steering and throttle (rad/s)
	self.angularVelocity	-- from velocity and torque
	slip:
	dot velocity/backwheels		= unitvector(velocity)/unitvector(heading)
	dot velocity/frontwheels	= unitvector(velocity)/unitvector(heading+steerAngle)
--]]
	
end

return classCar