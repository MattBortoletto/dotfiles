local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.quit_when_all_windows_are_closed = false
config.check_for_updates = true
config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = "tokyonight_night"
config.font = wezterm.font("JetBrains Mono")
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

return config
