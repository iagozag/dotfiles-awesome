--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful = require("awful")
local theme = require("beautiful")
local wibox = require("wibox")
local hotkeys_popup = require("awful.hotkeys_popup")
-------------------------------------------------------------------------------------------------------------------
local get_menu = function(s)
-------------------------------------------------------------------------------------------------------------------
	myawesomemenu = {
	   { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
	   { "manual", terminal .. " -e man awesome" },
	   { "edit config", editor .. " " .. awesome.conffile },
	   { "restart", awesome.restart },
	   { "quit", function() awesome.quit() end },
	}

	local mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, theme.awesome_icon },
		                                { "open terminal", terminal }
		                              }
		                    })
	return mymainmenu
-------------------------------------------------------------------------------------------------------------------
end
-------------------------------------------------------------------------------------------------------------------
return get_menu
