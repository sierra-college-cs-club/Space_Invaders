-- Descend towards the player with an ever-increasing rate

-- Alien is part of a cluster of aliens, movement organization should be 
-- handled in the 'alien-cluster.lua' file.

-- Fires a laser downwards towards the player.

local Alien = {}
local Laser = require('laser')
local physics = require('physics')

function Alien:new(x,y)
	setmetatable(Alien, self)
	self.__index = self
	
	self.object = display.newRoundedRect( x, y, 20, 20, 5 )
	return self
end

function Alien:move(x,y)

	self.alien.x, self.alien.y = self.alien.x+x, self.alien.y+y
end

function Alien:fire()
	local laser = Laser:new(100, 100, 'up')
    laser:fire(physics)

end




return Alien