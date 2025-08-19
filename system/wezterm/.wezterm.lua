-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- initial geometry for new windows:
config.initial_cols = 103
config.initial_rows = 30

-- changing the font
config.font = wezterm.font 'Ubuntu Mono'
config.font_size = 13

-- cursor
config.default_cursor_style = 'SteadyUnderline'

-- background opacity
config.window_background_opacity = 0.87

-- scrollbar
config.enable_scroll_bar = true
config.scrollback_lines = 10000

-- colors
config.color_scheme = 'Gnometerm (terminal.sexy)'
config.bold_brightens_ansi_colors = 'BrightOnly'
config.colors = {
  foreground = 'lightgrey',
  scrollbar_thumb = 'grey',
  cursor_bg = 'white',
  cursor_border = 'white'
}

-- Finally, return the configuration to wezterm:
return config
