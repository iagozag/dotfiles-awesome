--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful = require("awful")
local gears = require("gears")
local theme	= require("beautiful")
local wibox = require("wibox")
-------------------------------------------------------------------------------------------------------------------
local get_wibar = function(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a arch logo widget	
	s.arch_widget = require("sentinl.wibar.widgets.arch_widget")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a taglist widget
	s.mytaglist   = require("sentinl.wibar.widgets.my_taglist")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a tasklist widget
	s.mytasklist  = require("sentinl.wibar.widgets.my_tasklist")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a layoutbox widget
	s.layoutbox   = require("sentinl.wibar.widgets.layoutbox")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a volume widget
	s.volume      = require('sentinl.wibar.widgets.pactl-widget.volume')
-------------------------------------------------------------------------------------------------------------------
	-- Create a systray widget
	s.systray     = require("sentinl.wibar.widgets.systray")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a textclock widget
	s.my_clock    = require("sentinl.wibar.widgets.clock")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create a textclock widget
	s.my_date    = require("sentinl.wibar.widgets.date")(s)
-------------------------------------------------------------------------------------------------------------------
	-- Create the wibox
	s.mywibox     = awful.wibar({ position = "top", border_width = 0, bg = "#1e1e2e", border_color = theme.transparent,
	 							  shape = gears.shape.rounded_rect, height = 26, screen = s })
-------------------------------------------------------------------------------------------------------------------
	-- Add widgets to the wibox
	s.mywibox:setup {
		{
			{
				layout = wibox.layout.align.horizontal,
				{ -- Left widgets
					layout = wibox.layout.fixed.horizontal,
					s.arch_widget,
					--mylauncher,
					{
					s.mytaglist,
			        bg = "#30303e",
					shape = function(cr, width, heigth)
						gears.shape.partially_rounded_rect(cr, width, heigth, false, true, true, false, 8)
					end,
			        widget = wibox.container.background
					}
				},
				{ -- Middle widgets
					layout = wibox.layout.fixed.horizontal,
					s.mytasklist,
				},
				{ -- Right widgets
					layout = wibox.layout.fixed.horizontal,
					s.systray,
					{
						s.volume,
						bg = "#30303e",
						widget = wibox.container.background
					},
					s.my_date,
					s.my_clock,
					s.layoutbox,
				}
			},
			left   = 2,
			right  = 2,
			top    = 0,
			bottom = 2,
			color = theme.transparent,
			widget = wibox.container.margin,
		},
		shape = gears.shape.rounded_rect,
		widget = wibox.container.background
	}
-------------------------------------------------------------------------------------------------------------------
end
-------------------------------------------------------------------------------------------------------------------
return get_wibar
-------------------------------------------------------------------------------------------------------------------
