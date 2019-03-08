-- Descend towards the player with an ever-increasing rate

-- Alien is part of a cluster of aliens, movement organization should be 
-- handled in the 'alien-cluster.lua' file.

-- Fires a laser downwards towards the player.

local Alien = {}

function Alien:new(x,y)
	alien=display.newRoundedRect( x, y, 100, 100, 10 )
	setmetatable(l, self)
	self.__index = self
end

function Alien:move(x,y)
	alien.x, alien.y = alien.x+x, alien.y+y
end

return Alien