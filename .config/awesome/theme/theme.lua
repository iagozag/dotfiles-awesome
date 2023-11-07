--By sentinL1 https://github.com/iagozag/dotfiles
-------------------------------------------------------------------------------------------------------------------
local theme_assets = require("beautiful.theme_assets")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local awful = require("awful")
local gears = require("gears")
local gcolor = require("gears.color")
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()
-------------------------------------------------------------------------------------------------------------------
local theme         = {}
theme.location      = "~/.config/awesome/theme/"
theme.universalsize = 18
-------------------------------------------------------------------------------------------------------------------
theme.font_name  = "Roboto Mono Nerd Font"
theme.font_size  = theme.universalsize / 2
theme.icon_theme = "Papirus-Dark"

theme.wallpaper  = "/home/.config/awesome/theme/wallpaper.png"

theme.useless_gap       = dpi(3)
theme.gap_single_client = true
-------------------------------------------------------------------------------------------------------------------
theme.font = theme.font_name .. tostring(theme.font_size)
-------------------------------------------------------------------------------------------------------------------
theme.bg_normal     = "#1e2030"
-------------------------------------------------------------------------------------------------------------------
theme.bg_accent1    = "#2a303b"
theme.bg_accent2    = "#436091"
theme.bg_accent3    = "#232935"
-------------------------------------------------------------------------------------------------------------------
theme.transparent   = "#00000000"
-------------------------------------------------------------------------------------------------------------------
theme.bg_urgent     = "#1e2030"
theme.bg_systray    = "#30303e"
-------------------------------------------------------------------------------------------------------------------
theme.fg_normal     = "#7f849c"
theme.fg_focus      = "#fab387"
theme.fg_urgent     = "#f38ba8"
theme.fg_minimize   = "#ffffff"
-------------------------------------------------------------------------------------------------------------------
theme.border_width  = dpi(2)
theme.border_normal = "#31519b"
theme.border_focus  = "#5f6677"
theme.border_marked = "#91231c"
-------------------------------------------------------------------------------------------------------------------
theme.spacing 					= theme.universalsize / 6
-------------------------------------------------------------------------------------------------------------------
theme.tasklist_plain_task_name  = true
-------------------------------------------------------------------------------------------------------------------
theme.systray_icon_spacing 		= theme.spacing
-------------------------------------------------------------------------------------------------------------------
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height       = dpi(15)
theme.menu_width        = dpi(100)
-------------------------------------------------------------------------------------------------------------------
theme.notification_bg 			= theme.bg_accent1
theme.notification_max_width 	= theme.universalsize * 20
theme.notification_max_height 	= theme.universalsize * 40
theme.notification_icon_size 	= theme.universalsize * 5
theme.notification_width		= theme.notification_max_width
theme.notification_opacity 		= 0.80
theme.notification_font 		= theme.font
-------------------------------------------------------------------------------------------------------------------
theme.titlebar_close_button_normal = themes_path .. "default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path .. "default/titlebar/close_focus.png"
-------------------------------------------------------------------------------------------------------------------
theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"
-------------------------------------------------------------------------------------------------------------------
theme.titlebar_ontop_button_normal_inactive = themes_path .. "default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active   = themes_path .. "default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active    = themes_path .. "default/titlebar/ontop_focus_active.png"
-------------------------------------------------------------------------------------------------------------------
theme.titlebar_sticky_button_normal_inactive = themes_path .. "default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active   = themes_path .. "default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active    = themes_path .. "default/titlebar/sticky_focus_active.png"
-------------------------------------------------------------------------------------------------------------------
theme.titlebar_floating_button_normal_inactive = themes_path .. "default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active   = themes_path .. "default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active    = themes_path .. "default/titlebar/floating_focus_active.png"
-------------------------------------------------------------------------------------------------------------------
theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "default/titlebar/maximized_focus_active.png"
-------------------------------------------------------------------------------------------------------------------
-- You can use your own layout icons like this:
theme.layout_fairh      = theme.location.."layout_icons/fairhw.png"
theme.layout_fairv      = theme.location.."layout_icons/fairvw.png"
theme.layout_floating   = theme.location.."layout_icons/floatingw.png"
theme.layout_magnifier  = theme.location.."layout_icons/magnifierw.png"
theme.layout_max        = theme.location.."layout_icons/maxw.png"
theme.layout_fullscreen = theme.location.."layout_icons/fullscreenw.png"
theme.layout_tilebottom = theme.location.."layout_icons/tilebottomw.png"
theme.layout_tileleft   = theme.location.."layout_icons/tileleftw.png"
theme.layout_tile       = theme.location.."layout_icons/tilew.png"
theme.layout_tiletop    = theme.location.."layout_icons/tiletopw.png"
theme.layout_spiral     = theme.location.."layout_icons/spiralw.png"
theme.layout_dwindle    = theme.location.."layout_icons/dwindlew.png"
theme.layout_cornernw   = theme.location.."layout_icons/cornernww.png"
theme.layout_cornerne   = theme.location.."layout_icons/cornernew.png"
theme.layout_cornersw   = theme.location.."layout_icons/cornersww.png"
theme.layout_cornerse   = theme.location.."layout_icons/cornersew.png"
-------------------------------------------------------------------------------------------------------------------
theme.awesome_icon      = theme.location.."layout_icons/awesome.png"
-------------------------------------------------------------------------------------------------------------------
return theme
-------------------------------------------------------------------------------------------------------------------
