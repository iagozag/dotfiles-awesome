--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful = require("awful")
local theme	= require("beautiful")
local gears = require("gears")
local wibox = require("wibox")
-------------------------------------------------------------------------------------------------------------------
local get_tasklist = function(s)
-------------------------------------------------------------------------------------------------------------------
local tasklist_buttons = gears.table.join
	(
		awful.button({ }, 1, function (c)
		    -- Without this, the following
		    -- :isvisible() makes no sense
		    c.minimized = false
		    if not c:isvisible() and c.first_tag then
		        c.first_tag:view_only()
		    end
		    -- This will also un-minimize
		    -- the client, if needed
		    client.focus = c
		    c:raise()
		end),
		awful.button({ }, 3, function (c)
		    c:kill()
		end)
	)
	local mytasklist = {
		{
			awful.widget.tasklist {
				screen          = s,
				filter          = awful.widget.tasklist.filter.currenttags,
				buttons 		= tasklist_buttons,
				style           = {
					shape = gears.shape.rounded_bar,
				},
				layout          = {
					spacing = 10,
					layout  = wibox.layout.fixed.horizontal
				},
-------------------------------------------------------------------------------------------------------------------
			widget_template = 
				{
					{
						{
							{
								id     = "text_role",
								widget = wibox.widget.textbox,
							},
							left   = 6,
							right  = 6,
							top    = 0,
							bottom = 0,
							widget = wibox.container.margin
						},
						bg     = "#343444",
						shape = function(cr, width, heigth)
							gears.shape.rounded_rect(cr, width, heigth, 4)
						end,
						widget = wibox.container.background,
					},
					left   = 0,
					right  = -4,
					top    = 3,
					bottom = 3,
					widget = wibox.container.margin,
				},
			},
			bg = theme.transparent,
			widget = wibox.container.background,
		},
		left  = theme.universalsize / 2,
		right = theme.universalsize / 2,
		widget = wibox.container.margin
	}
	return mytasklist
-------------------------------------------------------------------------------------------------------------------
end
-------------------------------------------------------------------------------------------------------------------
return get_tasklist
-------------------------------------------------------------------------------------------------------------------
