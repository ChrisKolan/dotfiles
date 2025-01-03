-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 10
config.default_cursor_style = "BlinkingBlock"	-- or "BlinkingBar" "BlinkingUnderline"
config.enable_tab_bar = false
config.window_background_opacity = 0.95

-- and finally, return the configuration to wezterm
return config
