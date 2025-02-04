-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'AdventureTime'
config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 10
config.default_cursor_style = "BlinkingBlock"	-- or "BlinkingBar" "BlinkingUnderline"
config.enable_tab_bar = false
config.window_background_opacity = 0.95
config.initial_cols = 167
config.initial_rows = 47
config.leader = { key = "a", mods = "CTRL" }

config.keys = {
    {
        key = "x",
        mods = "ALT",
        action = wezterm.action_callback(function(win, pane)
        -- Split into 1/3 on the right
        pane:split { direction = "Right", size = 0.333, }
        end),
    },
        -- vim direction keybindings for activating panel
    {
        key = 'j', -- or DownArrow
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Down'),
    },
    {
        key = 'k', -- or UpArrow
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Up'),
    },
    {
        key = 'h', -- or LeftArrow
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Left'),
    },
    {
        key = 'l', -- or RightArrow
        mods = 'LEADER',
        action = wezterm.action.ActivatePaneDirection('Right'),
    },
}

return config
