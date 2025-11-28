-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Dracula'
config.font = wezterm.font 'SFMono Nerd Font'
config.font_size = 18.0
config.line_height = 1.2
config.quit_when_all_windows_are_closed = false

config.keys = {
	-- Support Shift+Enter in Claude Code
	{
		key = "Enter",
		mods = "SHIFT",
		action = wezterm.action {
			SendString="\x1b\r"
		},
	},
	-- Create new horizontal split pane
	{
		key = 'd',
		mods = 'CMD',
		action = wezterm.action.SplitHorizontal {
			domain = 'CurrentPaneDomain'
		},
	},
	-- Create new vertical split pane
	{
		key = 'D',
		mods = 'CMD|SHIFT',
		action = wezterm.action.SplitVertical {
			domain = 'CurrentPaneDomain'
		},
	},
	-- Select next pane
	{
		key = '[',
		mods = 'CMD',
		action = wezterm.action.ActivatePaneDirection 'Next',
	},
	-- Select previous pane
	{
		key = ']',
		mods = 'CMD',
		action = wezterm.action.ActivatePaneDirection 'Prev',
	},
	-- Close current pane with confirm
	{
		key = 'w',
		mods = 'CMD',
		action = wezterm.action.CloseCurrentPane {
			confirm = true
		},
	},
}

-- and finally, return the configuration to wezterm
return config
