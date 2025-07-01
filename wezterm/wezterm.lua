local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font '0xproto Nerd Font'
config.font_size = 14
config.line_height = 1.2
config.color_scheme = 'Wryan'
config.colors = {
    background = "#1c1c1c"
}
config.enable_tab_bar = false

config.keys = {
    {
        key = 'f',
        mods = 'SHIFT|CTRL',
        action = wezterm.action.ToggleFullScreen
    }
}

return config
