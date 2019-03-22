-- The laser cannon can move in the X direction with a fixed Y position.
-- Handle health / movement / laser firing.

-- constants
local SPEED = 7
local Dir = ""
-- define body rectangle
local body = display.newRect(display.contentCenterX, display.contentHeight + 20, 40, 20) 

-- create physics body with the rectangle. see: https://docs.coronalabs.com/api/library/physics/addBody.html
    -- Body Type: https://docs.coronalabs.com/api/type/Body/bodyType.html - Kinematic
--physics.addBody(body, "kinematic")

-- Generalized movement function.
    -- Able to be called from multiple event contexts.
    -- Linear Velocity: https://docs.coronalabs.com/api/type/Body/setLinearVelocity.html
-- @param direction Movement direction, 'left', 'right', or nil (stop).


local function move(direction)
	Dir = direction
		--body:setLinearVelocity(0, 0)
end

local function updateMovement()
	if Dir == "left" then
		body.x=body.x-SPEED
	elseif Dir == "right" then
		body.x=body.x+SPEED
	end
end


local function moveLeft(event)
	if event.phase == "began" then	
		move("left")
	elseif event.phase == "ended" then
		move("")
	end
end

local function moveRight(event)
	if event.phase =="began" then
		move("right")
	elseif event.phase == "ended" then
		move("")
	end

end

local buttons = require('buttons')
buttons.left_arrow:addEventListener( "touch", moveLeft )
buttons.right_arrow:addEventListener( "touch", moveRight )
Runtime:addEventListener("enterFrame", updateMovement)


-- attach the movement function to it's corresponding button in this api.
	-- Buttons.left_arrow - move('left')
	-- Buttons.right_arrow - move('right')
	-- Buttons.shoot - Laser:new()
	-- attach a 'touch' listener to each of these buttons.
