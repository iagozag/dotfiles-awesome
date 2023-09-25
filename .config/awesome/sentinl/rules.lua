--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local awful     = require("awful")
local ruled     = require("ruled")
-------------------------------------------------------------------------------------------------------------------
-- Rules to apply to new clients.
ruled.client.connect_signal("request::rules", function()
-------------------------------------------------------------------------------------------------------------------
-- All clients will match this rule.
	ruled.client.append_rule {
		id         = "global",
		rule       = { },
		properties = {
		    focus     = awful.client.focus.filter,
		    raise     = true,
		    screen    = awful.screen.preferred,
		    placement = awful.placement.no_overlap+awful.placement.no_offscreen
		}
	}
-------------------------------------------------------------------------------------------------------------------
-- Add titlebars to normal clients and dialogs
	ruled.client.append_rule {
		id         = "titlebars",
		rule_any   = { type = { "normal", "dialog" } },
		properties = { titlebars_enabled = true      }
	}
-------------------------------------------------------------------------------------------------------------------
-- Set Discord to always map on the tag named "3" on screen 1.
    ruled.client.append_rule {
        rule       = { class = "discord"     },
        properties = { screen = 1, tag = "5" }
    }
end)
-------------------------------------------------------------------------------------------------------------------
ruled.notification.connect_signal('request::rules', function()
-- All notifications will match this rule.
ruled.notification.append_rule {
    rule       = { },
    properties = {
        screen           = awful.screen.preferred,
        implicit_timeout = 5,
    }
}
end)
-------------------------------------------------------------------------------------------------------------------
