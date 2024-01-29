local wezterm = require("wezterm")

local config = {
  allow_square_glyphs_to_overflow_width = "Never",
  hide_mouse_cursor_when_typing = true,
  quit_when_all_windows_are_closed = true,

  color_scheme = "Catppuccin Mocha",

  harfbuzz_features = { "calt", "dlig", "clig=1", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" },
  font_size = 18,
  line_height = 1.0,
  font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Regular" }),
  font_rules = {
    {
      italic = true,
      font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Regular", italic = true }),
    },
  },
  adjust_window_size_when_changing_font_size = true,
  native_macos_fullscreen_mode = true,
  warn_about_missing_glyphs = false,
  keys = {
    { key = "F4",        action = "ToggleFullScreen" },
    { key = "F5",        action = "ReloadConfiguration" },
    { key = "+",         mods = "CTRL",                 action = "IncreaseFontSize" },
    { key = "_",         mods = "CTRL",                 action = "DecreaseFontSize" },
    { key = "Backspace", mods = "CTRL",                 action = "ResetFontSize" },
    { key = "'",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;39~") },
    { key = "(",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;40~") },
    { key = ")",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;41~") },
    { key = ",",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;44~") },
    { key = "+",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;43~") },
    { key = "-",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;45~") },
    { key = ".",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;46~") },
    { key = ";",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;59~") },
    { key = "=",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;61~") },
    { key = "/",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;47~") },
    { key = "~",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;126~") },
    { key = "`",         mods = "CTRL",                 action = wezterm.action.SendString("\x1b[27;5;96~") },
  },
  send_composed_key_when_left_alt_is_pressed = false,
  send_composed_key_when_right_alt_is_pressed = false,

  enable_tab_bar = false,
  enable_scroll_bar = false,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
  show_new_tab_button_in_tab_bar = false,

  window_background_opacity = 0.9,
  macos_window_background_blur = 70,
  window_close_confirmation = "NeverPrompt",

  text_background_opacity = 0.9,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  term = "xterm-256color",
  hyperlink_rules = {
    -- Matches: a URL in parens: (URL)
    {
      regex = "\\((\\w+://\\S+)\\)",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in brackets: [URL]
    {
      regex = "\\[(\\w+://\\S+)\\]",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in curly braces: {URL}
    {
      regex = "\\{(\\w+://\\S+)\\}",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in angle brackets: <URL>
    {
      regex = "<(\\w+://\\S+)>",
      format = "$1",
      highlight = 1,
    },
    -- Then handle URLs not wrapped in brackets
    {
      regex = "\\b\\w+://\\S+[)/a-zA-Z0-9-]+",
      format = "$0",
    },
    -- implicit mailto link
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },
  },
}

return config
