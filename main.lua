local Laser = require('laser')
local physics = require('physics')
local alien_cluster = require('alien-cluster')

--Screen location shortcuts.
screen = {}
screen.width = display.actualContentWidth
screen.height = display.actualContentHeight
screen.xMin = display.screenOriginX
screen.yMin = display.screenOriginY
screen.xMax = screen.xMin + screen.width
screen.yMax = screen.yMin + screen.height
screen.xCenter = (screen.xMin + screen.xMax) / 2
screen.yCenter = (screen.yMin + screen.yMax) / 2

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