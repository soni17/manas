-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- initial geometry for new windows:
config.initial_cols = 95
config.initial_rows = 26

-- changing the font
config.font_size = 12

-- cursor
config.default_cursor_style = 'SteadyUnderline'

-- background opacity
config.window_background_opacity = 0.92

-- scrollbar
config.enable_scroll_bar = true
config.scrollback_lines = 10000

-- colors
config.color_scheme = 'One Half Black (Gogh)'
config.bold_brightens_ansi_colors = 'BrightOnly'
config.colors = {
  foreground = 'lightgrey',
  scrollbar_thumb = 'grey',
  cursor_bg = 'white',
  cursor_border = 'white'
}

config.mouse_bindings = {
  {
    event = { Up = { streak = 1, button = 'Left' } },
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
}

config.hide_tab_bar_if_only_one_tab = true

-- Finally, return the configuration to wezterm:
return config
