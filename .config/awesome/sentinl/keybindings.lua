--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful 		= require("awful")
local beautiful     = require("beautiful")
local gears 		= require("gears")
local hotkeys_popup	= require("awful.hotkeys_popup").widget
-------------------------------------------------------------------------------------------------------------------
local volume  = require('sentinl.wibar.widgets.pactl-widget.volume')
-------------------------------------------------------------------------------------------------------------------
awful.keyboard.append_global_keybindings
({
	-- awesome controls
	awful.key({ modkey,           }, "s", hotkeys_popup.show_help,
		{description="show help", group="awesome"}),
	awful.key({ modkey, "Control" }, "r", awesome.restart,
		{description = "reload awesome", group = "awesome"}),
	awful.key({ modkey, "Shift"   }, "q", awesome.quit,
        {description = "quit awesome", group = "awesome"}),
------------------------------------------------------------------------------------------------------------------
	-- client controls
	awful.key({ modkey,           }, "Tab",     awful.tag.viewnext,
		{description = "view next tag", group = "tag-nav"}),
	awful.key({ modkey,           }, "Right",   awful.tag.viewnext,
		{description = "view next tag", group = "tag-nav"}),
	awful.key({ modkey,    "Shift"}, "Tab",     awful.tag.viewprev,
		{description = "view previous tag", group = "tag-nav"}),
	awful.key({ modkey,           }, "Left",    awful.tag.viewprev,
		{description = "view previous tag", group = "tag-nav"}),
		awful.key({ modkey,           }, "j", function () awful.client.focus.byidx(1) end,
		{description = "focus next by index", group = "client"}),
	awful.key({ modkey,           }, "k", function () awful.client.focus.byidx(-1) end,
		{description = "focus previous by index", group = "client"}),
	awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end,
              {description = "swap with next client by index", group = "client"}),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end,
              {description = "swap with previous client by index", group = "client"}),
    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)          end,
              {description = "increase master width factor", group = "client"}),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)          end,
              {description = "decrease master width factor", group = "client"}),
    awful.key({ modkey,           }, "space", function () awful.layout.inc( 1)                end,
              {description = "select next", group = "layout"}),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(-1)                end,
              {description = "select previous", group = "layout"}),


	awful.key({ modkey, "Control" }, "d", function ()
		if #awful.screen.focused().clients > 0 then
			for _, c in ipairs(mouse.screen.selected_tag:clients()) do
				c.minimized = true
			end
		else
			for _, c in ipairs(mouse.screen.selected_tag:clients()) do
				c.minimized = false
			end
		end
	end,
	{description = "(un)minimize all clients", group = "client"}),
------------------------------------------------------------------------------------------------------------------
	-- tag controls
	awful.key({ modkey,  "Control"}, "n",
		function ()
			if #root.tags() < 9 then
				awful.tag.add("", {
					screen = awful.screen.focused(),
					layout = awful.layout.layouts[1] }):view_only()
			end
		end,
		{description = "add tag", group = "tag-nav"}),
	awful.key({ modkey,  "Control"}, "x",
		function ()
			if #root.tags() > 1 then
				awful.screen.focused().selected_tag:delete()
			end
		end,
		{description = "remove tag", group = "tag-nav"}),
------------------------------------------------------------------------------------------------------------------
	-- Standard programs
	awful.key({ modkey,           }, "Return", function ()
		awful.spawn(terminal)
	end, {description = "open a terminal", group = "launcher"}),
	awful.key({ modkey,           }, "b", function ()
		awful.spawn(browser)
	end, {description = "launch browser", group = "launcher"}),
	awful.key({ modkey,           }, "e", function ()
		awful.spawn(filemanager)
	end, {description = "launch filemanager", group = "launcher"}),
    awful.key({ modkey, "Control" }, "e", function ()
		awful.spawn("sudo thunar")
	end, {description = "launch filemanager as sudo", group = "launcher"}),
	awful.key({ modkey,           }, "d", function ()
		awful.spawn("discord")
	end, {description = "launch discord", group = "launcher"}),
    awful.key({ modkey,           }, "o", function ()
		awful.spawn("obsidian")
	end, {description = "launch obsidian", group = "launcher"}),
------------------------------------------------------------------------------------------------------------------
	-- commands
    awful.key({ modkey,  "Shift"}, "s", function ()
		awful.spawn("sct 3000")
	end, {description = "activate night light", group = "commands"}),
     awful.key({ modkey,  "Control"}, "s", function ()
		awful.spawn("sct")
	end, {description = "deactivate night light", group = "commands"}),

------------------------------------------------------------------------------------------------------------------
	-- rofi
	awful.key({ modkey },            "r",     function ()
		awful.spawn("rofi -show run")
    end, 	  {description = "rofi run", group = "rofi"}),
	awful.key({ modkey },            "Escape",     function ()
        awful.spawn("rofi -show power-menu -modi power-menu:~/.local/bin/rofi-power-menu")
    end, 	  {description = "rofi powermenu", group = "rofi"}),
	awful.key({ modkey },            "t",     function ()
		awful.spawn("rofi-todo -f todo")
	end, {description = "rofi todo", group = "rofi"}),
------------------------------------------------------------------------------------------------------------------
	-- screenshot
	awful.key({ modkey, "Control" }, "p",     function ()
		awful.spawn("scrot -s -o -f print.png -e 'xclip -selection clipboard -t image/png -i $f'")
	end, 	  {description = "screenshot selection", group = "screenshot"}),
	awful.key({ modkey,           }, "p",     function ()
		awful.spawn("scrot -o -f print.png -e 'xclip -selection clipboard -t image/png -i $f'")
	end, 	  {description = "screenshot entire screen", group = "screenshot"}),
------------------------------------------------------------------------------------------------------------------
	-- media
	awful.key({ modkey }, "Up",     function () volume:inc(5)
	end, {description = "volume down", group = "volume"}),
	awful.key({ modkey }, "Down",     function () volume:dec(5)
	end, {description = "volume up", group = "volume"}),
	awful.key({ modkey, "Control" }, "m",     function () volume:toggle()
	end, {description = "toggle volume", group = "volume"})
	})
------------------------------------------------------------------------------------------------------------------
-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
	awful.keyboard.append_global_keybindings
	({
		-- View tag only.
		awful.key({ modkey }, "#" .. i + 9,
			function ()
				local screen = awful.screen.focused()
				local tag = screen.tags[i]
				if tag then
					tag:view_only()
				end
			end,
			{description = "view tag #"..i, group = "tag"}),
		-- Move client to tag.
		awful.key({ modkey, "Shift" }, "#" .. i + 9,
			function ()
				if client.focus then
					local tag = client.focus.screen.tags[i]
					if tag then
						client.focus:move_to_tag(tag)
					end
				end
			end,
			{description = "move focused client to tag #"..i, group = "tag"})
	})
end
------------------------------------------------------------------------------------------------------------------
client.connect_signal("request::default_mousebindings", function()
    awful.mouse.append_client_mousebindings({
		awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
		awful.button({ modkey }, 1, awful.mouse.client.move),
		awful.button({ modkey }, 3, awful.mouse.client.resize)
    })
end)
-----------------------------------------------------------------------------------------------------------------------
client.connect_signal("request::default_keybindings", function()
	awful.keyboard.append_client_keybindings
	({
		awful.key({ modkey }, "x", function (c) c:kill() end,
        	{description = "close", group = "client"}),
		awful.key({ modkey }, "n",
			function (c)
				-- The client currently has the input focus, so it cannot be
				-- minimized, since minimized clients can't have the focus.
				c.minimized = true
			end ,
			{description = "minimize", group = "client"}),
		awful.key({ modkey }, "m",
			function (c)
				c.maximized = not c.maximized
				c:raise()
			end ,
			{description = "(un)maximize", group = "client"}),

		awful.key({ modkey }, "f", awful.client.floating.toggle,
			{description = "toggle floating", group = "client"}),
		awful.key({ modkey, 'Control' }, 't', function (c) awful.titlebar.toggle(c) 			 end,
        	{description = "toggle title bar", group = "client"}),
		awful.key({ modkey, "Control" }, "f",
		function (c)
			c.fullscreen = not c.fullscreen
			c:raise()
		end,
			{description = "toggle fullscreen", group = "client"}),
	})
end)
------------------------------------------------------------------------------------------------------------------
-- Create a launcher widget and a main menu
mymainmenu = require("sentinl.menu")(s)
-------------------------------------------------------------------------------------------------------------------
-- Mouse bindings
awful.mouse.append_global_mousebindings({
    awful.button({ }, 3, function () mymainmenu:toggle() end),
})
------------------------------------------------------------------------------------------------------------------
