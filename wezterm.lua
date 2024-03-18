local wezterm = require "wezterm"

local config = {
  default_prog = { "/bin/zsh", "-l" },
  quit_when_all_windows_are_closed = true,

  color_scheme = "Solarized Dark Higher Contrast",
  font_size = 18,
  line_height = 1.0,
  font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Regular" }),
  font_rules = {
    {
      italic = true,
      font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Bold", italic = true }),
    },
  },
  harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
  adjust_window_size_when_changing_font_size = true,
  native_macos_fullscreen_mode = true,
  keys = {
    { key = "F4", action = "ToggleFullScreen" },
    -- { key = "F5",        action = "ReloadConfiguration" },
    { key = "+", mods = "CTRL", action = "IncreaseFontSize" },
    { key = "-", mods = "CTRL", action = "DecreaseFontSize" },
    { key = "Backspace", mods = "CTRL", action = "ResetFontSize" },
    { key = "'", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;39~" },
    { key = "(", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;40~" },
    { key = ")", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;41~" },
    { key = ",", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;44~" },
    { key = ".", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;46~" },
    { key = ";", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;59~" },
    { key = "/", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;47~" },
    { key = "~", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;126~" },
    { key = "`", mods = "CTRL", action = wezterm.action.SendString "\x1b[27;5;96~" },
  },
  send_composed_key_when_left_alt_is_pressed = false,
  send_composed_key_when_right_alt_is_pressed = false,

  enable_tab_bar = false,
  enable_scroll_bar = false,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
  show_new_tab_button_in_tab_bar = false,

  -- window_background_opacity = 0.8,
  -- macos_window_background_blur = 20,
  window_close_confirmation = "NeverPrompt",

  -- text_background_opacity = 0.9,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  hyperlink_rules = wezterm.default_hyperlink_rules(),
}

require("mousebinds").apply_to_config(config)

return config
