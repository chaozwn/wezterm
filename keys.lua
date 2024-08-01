local wezterm = require "wezterm" --[[@as Wezterm]]

local M = {}

---@param config Config
function M.setup(config)

  config.disable_default_key_bindings = false

  config.keys = {
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
    { key = "X", mods = "CTRL|SHIFT", action = wezterm.action.ActivateCopyMode },
    {
      key = "Enter",
      mods = "SHIFT",
      action = wezterm.action.SendString "\x1b[13;2u",
    },
  }
end

return M
