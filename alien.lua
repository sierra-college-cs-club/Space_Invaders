-- Descend towards the player with an ever-increasing rate

-- Alien is part of a cluster of aliens, movement organization should be 
-- handled in the 'alien-cluster.lua' file.

-- Fires a laser downwards towards the player.

local alien = {}


function alien.setup(x,y)

	alien=display.newRoundedRect( x, y, 100, 100, 10 )







end

function alien.move(x,y)

	alien.x, alien.y = alien.x+x, alien.y+y
end




return alien