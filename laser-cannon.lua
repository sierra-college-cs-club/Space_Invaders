-- The laser cannon can move in the X direction with a fixed Y position.
-- Handle health / movement / laser firing.
local Laser = require('laser')
local glo = require('globals')
local screen = glo.screen

-- constants
local SPEED = 7
local dir = ""

-- define body rectangle
local body = display.newRect(screen.xCenter, display.contentHeight + 20, 40, 20)

local function move(direction)
	dir = direction
end

local function updateMovement()
	if dir == "left" and body.x > body.width / 2 then
		body.x=body.x-SPEED
	elseif dir == "right" and body.x < screen.width - body.width / 2 then
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

 function shootUp(event)
 	if event.phase == 'began' then
		local l = Laser:new(body.x, body.y - body.height, "up")
		l:fire()
	end
end
--shootUp()
function keyPress(event)
	print (event.phase)
	if event.phase == "down" then
	
		move(event.keyName)
	elseif event.phase == "up" then
		move("")
	end
end

-- attach the movement function to it's corresponding button in the 'buttons' api.
local buttons = require("buttons")
buttons.left_arrow:addEventListener("touch", moveLeft)
buttons.right_arrow:addEventListener("touch", moveRight)
Runtime:addEventListener("key", keyPress)
Runtime:addEventListener("enterFrame", updateMovement)

-- TODO:
	
	-- Add keyboard functionality to make testing/playing on a computer easier.

