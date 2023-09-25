--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local wibox = require("wibox")
-------------------------------------------------------------------------------------------------------------------
local calendar_widget = require("sentinl.wibar.widgets.calendar-widget.calendar")
-------------------------------------------------------------------------------------------------------------------
-- Create a textclock widget
mytextdate = wibox.widget.textclock("%A, %b %d %Y", 60)
-------------------------------------------------------------------------------------------------------------------
local date_widget = function(s)
	local my_date = {
		{
			{
				{
					{
						{
							{
								text = " ",
								widget = wibox.widget.textbox,
							},
							right = 1,
							bottom = 2,
							widget = wibox.container.margin,
						},
						fg     = "#b4befe",
						widget = wibox.container.background
					},
					{
						{
							widget = mytextdate,
						},
						fg     = "#b4befe",
						widget = wibox.container.background
					},
					layout  = wibox.layout.fixed.horizontal
				},
				bottom = 2,
				color  = "#b4befe",
				widget = wibox.container.margin
			},
			left = 4,
			right = 4,
			widget = wibox.container.margin
		},
		bg     = "#30303e",
		widget = wibox.container.background
	}
	return my_date
end
-------------------------------------------------------------------------------------------------------------------
local cw = calendar_widget({
    placement = 'top_right',
    start_sunday = true,
    radius = 6,
-- with customized next/previous (see table above)
    previous_month_button = 1,
    next_month_button = 3,
})
-------------------------------------------------------------------------------------------------------------------
mytextdate:connect_signal("button::press",
    function(_, _, _, button)
        if button == 1 then cw.toggle() end
    end)
-------------------------------------------------------------------------------------------------------------------
return date_widget
-------------------------------------------------------------------------------------------------------------------
