-- Handle the movement of aliens as a whole.
-- Speed increase should be organized here as well as their positions/
-- descent patterns.

alien_cluster={}

local alienSource=require('alien')
local alien1={}
function startAliens()
	alien1=alienSource:new(104,104)
	--alien1:fire()
end

return alien_cluster