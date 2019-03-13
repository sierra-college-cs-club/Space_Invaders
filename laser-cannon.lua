-- The laser cannon can move in the X direction with a fixed Y position.
-- Handle health / movement / laser firing.

-- define body rectangle
local lasercanon_body = display.newRect(display.contentCenterX, display.contentHeight + 20, 40, 20)

-- create physics body with the rectangle. see: https://docs.coronalabs.com/api/library/physics/addBody.html
    -- Body Type: https://docs.coronalabs.com/api/type/Body/bodyType.html - Kinematic
    -- Linear Velocity: https://docs.coronalabs.com/api/type/Body/setLinearVelocity.html

-- implement input event listener.
    -- Touch: https://docs.coronalabs.com/api/event/touch/index.html
    -- Keyboard: https://docs.coronalabs.com/api/event/key/index.html
    -- Accelerometer: https://docs.coronalabs.com/api/event/accelerometer/index.html ** Advanced **

-- implement a generalized movement function.
    -- should be able to be called from multiple event contexts.