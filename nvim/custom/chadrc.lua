local bridge = require("bridge").ui

---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = bridge.theme.current,
  theme_toggle = { bridge.theme.dark, bridge.theme.light},

  hl_override = highlights.override,
  hl_add = highlights.add,

  statusline = {
    separator_style = bridge.statusline.separator_style
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
