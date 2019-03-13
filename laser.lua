-- Lasers can move in the Y direction, though it's X is constant.
-- Store amount of damage.
-- Should be destroyed after being off screen.

Laser = {}
Laser.SPEED = 600
Laser.DELETION_TIMER = 600000 / Laser.SPEED -- 600000 works with any 'SPEED' value.

-- @return A new Laser object.
function Laser:new(x, y, dir)
    assert(dir == 'up' or dir == 'down', 'Lasers can only be fired up or down.')
    l = {x=x, y=y, dir=dir}
    setmetatable(l, self)
    self.__index = self
    return l
end

-- @param physics The physics context for Corona
function Laser:fire(physics)
    local body = display.newRect(self.x, self.y, 5, 30)
    body:setFillColor(255, 0, 0)
    physics.addBody(body, 'kinematic')
    body.gravityScale = 0
    body.isBullet = true
    body:setLinearVelocity(0, self.dir == 'up' and -self.SPEED or self.SPEED)
    self.body = body
    timer.performWithDelay(self.DELETION_TIMER, function() return self:delete() end)
end

-- Removes the laser from the physics & graphics context
function Laser:delete()
    self.body:removeSelf()
end

return Laser