-- Stationary & partially blocks player / alien attacks.
-- Slowly (and visually) destroyed with every hit.
local createBunker = {}

function createBunker:new(bunkNo, y)
	-- body
	local bunkers = {} 
	for i = 1, bunkNo do
		bunkers[i] = display.newRect(i*(screen.width/(bunkNo+1)), y, 10, 10 )
	end
	return bunkers
end

return createBunker