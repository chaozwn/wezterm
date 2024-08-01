local wezterm = require "wezterm" --[[@as Wezterm]]
local config = wezterm.config_builder()

require("links").setup(config)
require("keys").setup(config)

config.enable_wayland = true
config.webgpu_power_preference = "HighPerformance"

config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Colorscheme
config.color_scheme_dirs = { wezterm.home_dir .. "/tokyonight" }
config.color_scheme = "tokyonight_moon"

wezterm.add_to_config_reload_watch_list(config.color_scheme_dirs[1] .. config.color_scheme .. ".toml")

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
config.bold_brightens_ansi_colors = true

-- Cursor
config.default_cursor_style = "BlinkingBar"
config.force_reverse_video_cursor = true
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

config.scrollback_lines = 10000

-- Command Palette
config.command_palette_font_size = 13
config.command_palette_bg_color = "#394b70"
config.command_palette_fg_color = "#828bb8"

config.quit_when_all_windows_are_closed = true
config.term = "xterm-256color"
config.animation_fps = 60
config.max_fps = 120
config.adjust_window_size_when_changing_font_size = true

config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false

config.enable_tab_bar = false
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
-- config.window_background_opacity = 0.90
-- config.macos_window_background_blur = 20

config.window_close_confirmation = "NeverPrompt"

return config
