--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful 	= require("awful")
local theme	    = require("beautiful")
local wibox 	= require("wibox")
-------------------------------------------------------------------------------------------------------------------
local get_layoutbox = function(s)
-------------------------------------------------------------------------------------------------------------------
	local layoutbox = wibox.widget
	{
		{	{
				{
					awful.widget.layoutbox(s),
					bottom 	= 3,
					widget	= wibox.container.margin
				},
				bottom 	= 2,
				color = "#fab387",
				widget	= wibox.container.margin
			},
			top 	= theme.universalsize / 9,
			left	= theme.universalsize / 6,
			right	= theme.universalsize / 9,
			widget	= wibox.container.margin
		},
		bg = "#30303e",
		widget	= wibox.container.background
	}
	layoutbox:buttons
	({
		awful.button({ }, 1, function () awful.layout.inc( 1) end),
		awful.button({ }, 3, function () awful.layout.inc(-1) end),
		awful.button({ }, 4, function () awful.layout.inc( 1) end),
		awful.button({ }, 5, function () awful.layout.inc(-1) end),
	})
	return layoutbox
end
-------------------------------------------------------------------------------------------------------------------
return get_layoutbox
-------------------------------------------------------------------------------------------------------------------
