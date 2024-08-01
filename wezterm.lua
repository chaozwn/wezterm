local wezterm = require "wezterm" --[[@as Wezterm]]
local config = wezterm.config_builder()

require("links").setup(config)
require("keys").setup(config)

config.quit_when_all_windows_are_closed = true
config.animation_fps = 60
config.max_fps = 120
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

-- Colorscheme
config.color_scheme_dirs = { wezterm.home_dir .. "/tokyonight" }
config.color_scheme = "tokyonight_moon"

config.colors = {
  indexed = { [241] = "#65bcff" },
}

config.window_decorations = "RESIZE"

-- Fonts
config.font_size = 18
config.line_height = 1.0
config.font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Regular" })
config.font_rules = {
  {
    italic = true,
    font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Bold", italic = true }),
  },
}
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }
config.adjust_window_size_when_changing_font_size = true
config.native_macos_fullscreen_mode = true

config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

config.enable_tab_bar = false
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Cursor
config.default_cursor_style = "BlinkingBar"
config.force_reverse_video_cursor = true
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.show_new_tab_button_in_tab_bar = false

-- Command Palette
config.command_palette_font_size = 13
config.command_palette_bg_color = "#394b70"
config.command_palette_fg_color = "#828bb8"

config.term = "xterm-256color"

config.window_close_confirmation = "NeverPrompt"

return config
