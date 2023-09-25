--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local theme = require("beautiful")
local gears = require("gears")
local wibox = require("wibox")
-------------------------------------------------------------------------------------------------------------------
local get_systray = function()
    local systray = wibox.widget
	{
		{
			{
				wibox.widget.systray(),
				bottom  = 2,
				color = "#cececf",
				widget  = wibox.container.margin
			},
			left   = 8,
			right  = 2,
			top    = 3,
			widget = wibox.container.margin
		},
		shape = function(cr, width, heigth)
		    gears.shape.partially_rounded_rect(cr, width, heigth, true, false, false, true, 8)
		end,
		bg = "#30303e",
		widget = wibox.container.background
	}
    return systray
end
-------------------------------------------------------------------------------------------------------------------
return get_systray
-------------------------------------------------------------------------------------------------------------------
