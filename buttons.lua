local widget = require('widget')

-- Buttons displays buttons to the screen that when pressed perform some action.

-- Define padding between the button and the screen wall dimension.
local Buttons = {
	yPadding = 10,
	xPadding = 10
}



-- Define left arrow button
Buttons.left_arrow = widget.newButton(
    {
        width = 50,
        height = 50,
        defaultFile = "assets/left_arrow.png",
    }
)

Buttons.left_arrow.y = screen.yMax - Buttons.left_arrow.height / 2 - Buttons.yPadding
Buttons.left_arrow.x = Buttons.xPadding + Buttons.left_arrow.width / 2



-- Define right arrow button
Buttons.right_arrow = widget.newButton(
    {
        width = 50,
        height = 50,
        defaultFile = "assets/right_arrow.png",
    }
)

Buttons.right_arrow.y = screen.yMax - Buttons.right_arrow.height / 2 - Buttons.yPadding
Buttons.right_arrow.x = Buttons.right_arrow.width * 2



-- Define fire button
Buttons.shoot = widget.newButton(
    {
        width = 50,
        height = 50,
        defaultFile = "assets/shoot.png",
    }
)

Buttons.shoot.y = screen.yMax - Buttons.shoot.height / 2 - Buttons.yPadding
Buttons.shoot.x = screen.xMax - Buttons.shoot.width / 2 - Buttons.xPadding


return Buttons;