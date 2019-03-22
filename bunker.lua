-- Stationary & partially blocks player / alien attacks.
-- Slowly (and visually) destroyed with every hit.

local Bunker = {}

function Bunker:new(x,y)
	setmetatable(Bunker, self)
	self.__index = self
	
	self.object = display.newRoundedRect( x, y, 40, 40, 5 )
	return self
end

return Bunker