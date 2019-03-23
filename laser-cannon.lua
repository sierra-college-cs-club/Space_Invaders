-- The laser cannon can move in the X direction with a fixed Y position.
-- Handle health / movement / laser firing.

-- constants
local SPEED = 7
local dir = ""

-- define body rectangle
local body = display.newRect(screen.xCenter, display.contentHeight + 20, 40, 20)

local function move(direction)
	dir = direction
end

local function updateMovement()
	if dir == "left" then
		body.x=body.x-SPEED
	elseif dir == "right" then
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

-- attach the movement function to it's corresponding button in the 'buttons' api.
local buttons = require("buttons")
buttons.left_arrow:addEventListener("touch", moveLeft)
buttons.right_arrow:addEventListener("touch", moveRight)
Runtime:addEventListener("enterFrame", updateMovement)

-- TODO:
	-- Consider screen wrapping.
		-- balancing pros/cons/concerns?

	-- Add laser firing functionality.

	-- Move cannon body above buttons
		-- Consider using the 'buttons' api to query it's height.
		-- Hint: Use buttons.yPadding & buttons.<button_body>.height.