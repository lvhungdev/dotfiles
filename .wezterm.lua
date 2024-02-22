local wezterm = require('wezterm')

local config = wezterm.config_builder()

config.default_prog = { 'powershell.exe' }

config.font = wezterm.font('JetBrains Mono')
config.font_size = 10.0
config.line_height = 1.1

config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.enable_scroll_bar = false

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.window_close_confirmation = 'NeverPrompt'

config.keys = {
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = 'ShowLauncher',
  },
  {
    key = 'F11',
    action = 'ToggleFullScreen',
  }
}

return config
