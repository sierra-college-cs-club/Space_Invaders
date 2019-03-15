-- The laser cannon can move in the X direction with a fixed Y position.
-- Handle health / movement / laser firing.

-- define body rectangle
local lasercanon_body = display.newRect(display.contentCenterX, display.contentHeight + 20, 40, 20) 
physics.addBody(lasercannon_body, "Kinematic")
local speed = 10


local function move(direction)
	if direction == "left" then
		lasercannon_body: setLinearVelocity(-speed, 0)
	else if direction == "right" then
		lasercannon_body: setLinearVelocity(speed, 0)
	else
		lasercannon_body: setLinearVelocity(0, 0)
	end



-- lasercannon: addEventListener("touch", lasercannonmove)

-- create physics body with the rectangle. see: https://docs.coronalabs.com/api/library/physics/addBody.html
    -- Body Type: https://docs.coronalabs.com/api/type/Body/bodyType.html - Kinematic

-- implement a generalized movement function.
    -- should be able to be called from multiple event contexts.
    -- Linear Velocity: https://docs.coronalabs.com/api/type/Body/setLinearVelocity.html

local buttons = require('buttons')
-- attach the movement function to it's corresponding button in this api.
	-- Buttons.left_arrow
	-- Buttons.right_arrow
	-- Buttons.shoot
	-- attach a 'touch' listener to each of these buttons.
