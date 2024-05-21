local wezterm = require "wezterm"

local act = wezterm.action

local M = {}

-- https://www.baidu.com
function M.apply_to_config(config)
  config.mouse_bindings = {
    -- Change the default click behavior so that it only selects
    -- text and doesn't open hyperlinks
    {
      event = { Up = { streak = 1, button = "Left" } },
      mods = "NONE",
      action = act.CompleteSelection "ClipboardAndPrimarySelection",
    },
    {
      event = { Down = { streak = 1, button = "Right" } },
      mods = "NONE",
      action = act { PasteFrom = "Clipboard" },
    },
    -- and make CTRL-Click open hyperlinks
    {
      event = { Up = { streak = 1, button = "Left" } },
      mods = "CTRL",
      action = act.OpenLinkAtMouseCursor,
    },
    {
      event = { Down = { streak = 3, button = "Left" } },
      action = wezterm.action.SelectTextAtMouseCursor "SemanticZone",
      mods = "NONE",
    },
  }
end

return M
