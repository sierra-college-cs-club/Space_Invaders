-- Enable physics for all packages.
local physics = require('physics')
physics.start()

-- Define modules after screen declaration & physics begin.
local Laser = require('laser')
local alien_cluster = require('alien-cluster')
local laser_cannon = require('laser-cannon')

-- game loop here

-- Keep track of scores, synchronize all game actions, handle any extra
-- non-component specific game logic.

-- Try to keep this file minimum, while handling relevent logic within their
-- respective files.

local myCluster = alien_cluster:new(20, 8)
-- startAliens() 

local function testLaser(e)
    if e.phase == 'began' then
        local laser = Laser:new(e.x, e.y, 'up')
        laser:fire()
    end
end

Runtime:addEventListener('touch', shootUp)