-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Dracula'
config.font = wezterm.font 'SFMono Nerd Font'
config.font_size = 18.0
config.line_height = 1.2

-- and finally, return the configuration to wezterm
return config
