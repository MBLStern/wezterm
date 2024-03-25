local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
wezterm.on('gui-startup', function(window)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local gui_window = window:gui_window();
  gui_window:perform_action(wezterm.action.ToggleFullScreen, pane)
end)
config.hide_tab_bar_if_only_one_tab = true

config.window_background_opacity = 0.85

config.audible_bell = "Disabled"




-- For example, changing the color scheme:
config.color_scheme = 'Catppuccin Mocha'
config.colors = {
    background = 'black',
    cursor_bg = 'lightgray'
}

-- and finally, return the configuration to wezterm
return config
