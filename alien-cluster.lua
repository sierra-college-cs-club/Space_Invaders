-- Handle the movement of aliens as a whole.
-- Speed increase should be organized here as well as their positions/
-- descent patterns.

local glo = require('globals')
local screen = glo.screen

local Alien=require('alien')

local Cluster = {}

function Cluster:new(clusterSize, columns)
	setmetatable(Cluster, self)
	self.__index = self
	local cluster = {}
	for i = 1, clusterSize do
		if i == 1 then
			cluster[i] = Alien:new(screen.xMin + 30, screen.yMin + 100)
		elseif i % columns == 1 then
			cluster[i] = Alien:new(screen.xMin + 30, cluster[i - 1].object.y + 30)
		else
			cluster[i] = Alien:new(cluster[i - 1].object.x + 30, cluster[i - 1].object.y)
		end
	end
	return cluster
end

--[[function Cluster:NewShot()
	local x = math.random( #cluster*20 )
	if x< #cluster then
		cluster[x]:fire()
	end

end

--Runtime:addEventListener( "enterFrame", Cluster:NewShot )
]]--

return Cluster


