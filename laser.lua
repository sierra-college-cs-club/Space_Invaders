-- Lasers can move in the Y direction, though it's X is constant.
-- Store amount of damage.
-- Should be destroyed after being off screen.

Laser = {}
Laser.SPEED = 600

-- Dividing 600000 with the laser speed provides a nice ratio for scaling the lifespan of an individual laser.
Laser.DELETION_TIMER = 600000 / Laser.SPEED

-- @return A new Laser object.
function Laser:new(x, y, dir)
    assert(dir == 'up' or dir == 'down', 'Lasers can only be fired up or down.')
    l = {x=x, y=y, dir=dir}
    setmetatable(l, self)
    self.__index = self
    return l
end

function Laser:fire()
    -- Define body
    local body = display.newRect(self.x, self.y, 5, 30)
    physics.addBody(body)
    body:setFillColor(255, 0, 0)
    body.gravityScale = 0
    body:setLinearVelocity(0, self.dir == 'up' and -self.SPEED or self.SPEED)
    timer.performWithDelay(self.DELETION_TIMER, function() return self:delete() end)

    -- Attach body meta
    body.isLaser = true
    self.body = body
    self.removed = false
    -- circular reference, allows the custom Laser object to be referenced directly from any Corona context (such as events).
    body.laserMeta = self
end

-- Removes the laser from the physics & graphics context
function Laser:delete()
    if not self.removed then
        self.body:removeSelf()
        self.removed = true
    end
end

-- Handles laser collision with other physics bodies.
local function onLaserCollision(event)
    if event.object1.isLaser then
        event.object1.laserMeta:delete()
    end

    if event.object2.isLaser then
        event.object2.laserMeta:delete()
    end
end

Runtime:addEventListener('preCollision', onLaserCollision)

return Laser