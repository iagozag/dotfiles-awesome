--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local wibox = require("wibox")
-------------------------------------------------------------------------------------------------------------------
-- Create a textclock widget
mytextclock = wibox.widget.textclock("%H:%M", 60)
-------------------------------------------------------------------------------------------------------------------
local clock_widget = function(s)
	local my_clock = {
		{
			{
				{
		            {
						{
							{
								text = " ",
								widget = wibox.widget.textbox,
							},
							right = -1,
							bottom = 2,
							widget = wibox.container.margin,
						},
						fg     = "#98c379",
						widget = wibox.container.background
					},
					{
						{
						    widget = mytextclock,
						},
						fg     = "#98c379",
						widget = wibox.container.background
		            },
		            layout = wibox.layout.fixed.horizontal
				},
				bottom = 2,
				color  = "#98c379",
				widget = wibox.container.margin
			},
			right  = 4,
			left   = 4,
			widget = wibox.container.margin,
		},
		bg     = "#30303e",
		widget = wibox.container.background
	}
	return my_clock
end
-------------------------------------------------------------------------------------------------------------------
return clock_widget
-------------------------------------------------------------------------------------------------------------------
