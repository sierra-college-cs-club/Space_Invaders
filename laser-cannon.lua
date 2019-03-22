-- The laser cannon can move in the X direction with a fixed Y position.
-- Handle health / movement / laser firing.

-- constants
local SPEED = 10

-- define body rectangle
local body = display.newRect(display.contentCenterX, display.contentHeight + 20, 40, 20) 

-- create physics body with the rectangle. see: https://docs.coronalabs.com/api/library/physics/addBody.html
    -- Body Type: https://docs.coronalabs.com/api/type/Body/bodyType.html - Kinematic
physics.addBody(body, "kinematic")

-- Generalized movement function.
    -- Able to be called from multiple event contexts.
    -- Linear Velocity: https://docs.coronalabs.com/api/type/Body/setLinearVelocity.html
-- @param direction Movement direction, 'left', 'right', or nil (stop).
local function move(direction)
	if direction == "left" then
		body:setLinearVelocity(-SPEED, 0)
	elseif direction == "right" then
		body:setLinearVelocity(SPEED, 0)
	else
		body:setLinearVelocity(0, 0)
	end
end


local buttons = require('buttons')
-- attach the movement function to it's corresponding button in this api.
	-- Buttons.left_arrow - move('left')
	-- Buttons.right_arrow - move('right')
	-- Buttons.shoot - Laser:new()
	-- attach a 'touch' listener to each of these buttons.
