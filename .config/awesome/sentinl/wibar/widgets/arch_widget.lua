--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful = require("awful")
local theme	= require("beautiful")
local wibox = require("wibox")
-------------------------------------------------------------------------------------------------------------------
-- Create a launcher widget and a main menu
mymainmenu = require("sentinl.menu")(s)
-------------------------------------------------------------------------------------------------------------------
local arch_widget = function()
	local arch_logo = {
		buttons = {
            awful.button({ }, 1, function () mymainmenu:toggle() end),
        },
		{
			{
				text = "  ",
				font = "JetBrainsMono Nerd Font 15",
				widget = wibox.widget.textbox,
			},
			left   = 0,
			right  = 5,
			top    = 2,
			bottom = 2,
			widget = wibox.container.margin
		},
		bg     = "#292a2f",
		fg     = "#fab387",
		widget = wibox.container.background
	}
	return arch_logo
end
-------------------------------------------------------------------------------------------------------------------
return arch_widget
-------------------------------------------------------------------------------------------------------------------