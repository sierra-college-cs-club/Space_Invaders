local Laser = require('laser')
local physics = require('physics')

-- game loop here

-- Keep track of scores, synchronize all game actions, handle any extra
-- non-component specific game logic.

-- Try to keep this file minimum, while handling relevent logic within their
-- respective files.

physics.start()

function testLaser(e)
    if e.phase == 'began' then
        local laser = Laser:new(e.x, e.y, 'up')
        laser:fire(physics)
    end
end

Runtime:addEventListener('touch', testLaser)