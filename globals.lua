-- globals.lua
-- all globals should be in this table
local g = {}

-- Screen location shortcuts.
g.screen = {}
g.screen.width = display.actualContentWidth
g.screen.height = display.actualContentHeight
g.screen.xMin = display.screenOriginX
g.screen.yMin = display.screenOriginY
g.screen.xMax = g.screen.xMin + g.screen.width
g.screen.yMax = g.screen.yMin + g.screen.height
g.screen.xCenter = (g.screen.xMin + g.screen.xMax) / 2
g.screen.yCenter = (g.screen.yMin + g.screen.yMax) / 2

return g