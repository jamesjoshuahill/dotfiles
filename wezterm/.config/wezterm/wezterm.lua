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
  {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b\r"}},
}

-- and finally, return the configuration to wezterm
return config
