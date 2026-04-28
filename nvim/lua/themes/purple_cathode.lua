---@type Base46Table
local M = {}

M.base_30 = {
  white          = "#f5e6ff", -- Peak phosphor glow
  black          = "#0a050f", -- Deep obsidian purple
  darker_black   = "#07030a",
  black2         = "#130b1d",
  one_bg         = "#1c1129", -- 10% lighter
  one_bg2        = "#251735",
  one_bg3        = "#2e1d41",
  grey           = "#4e3366", -- Muted violet-grey
  grey_fg        = "#664488",
  grey_fg2       = "#7e55aa",
  light_grey     = "#a677cc",
  red            = "#ff0066", -- Hot pink-red for errors
  baby_pink      = "#df80ff",
  pink           = "#efb3ff",
  line           = "#231533", -- 15% lighter than black
  green          = "#bf00ff", -- Electric Violet
  vibrant_green  = "#df80ff",
  nord_blue      = "#9d4dff", 
  blue           = "#bf00ff",
  seablue        = "#a200ff",
  yellow         = "#ff00ff", -- Magenta highlight
  sun            = "#ff66ff",
  purple         = "#bf00ff",
  dark_purple    = "#7a00cc",
  teal           = "#df80ff",
  orange         = "#ff00ff",
  cyan           = "#df80ff",
  statusline_bg  = "#130b1d",
  lightbg        = "#1c1129",
  pmenu_bg       = "#130b1d",
  folder_bg      = "#bf00ff",
}

M.base_16 = {
  base00 = "#0a050f", -- Background
  base01 = "#130b1d", -- Lighter Background
  base02 = "#1c1129", -- Selection Background
  base03 = "#4e3366", -- Comments
  base04 = "#7e55aa", -- Dark Foreground
  base05 = "#bf00ff", -- Main Glow
  base06 = "#df80ff", -- Light Foreground
  base07 = "#f5e6ff", -- Lightest Foreground
  base08 = "#ff00ff", -- Variables (Magenta)
  base09 = "#df80ff", -- Integers/Constants
  base0A = "#bf00ff", -- Classes
  base0B = "#efb3ff", -- Strings
  base0C = "#bf00ff", -- Support
  base0E = "#df80ff", -- Keywords
  base0D = "#bf00ff", -- Functions
  base0F = "#ff0066", -- Deprecated
}

M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#4e3366", -- Dimmed violet
      italic = true,
    },
    CursorLine = {
      bg = "#130b1d",
    },
    Visual = {
      bg = "#351a4d", -- High intensity selection
      fg = "#f5e6ff",
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#bf00ff" },
    ["@keyword"]  = { fg = "#df80ff", bold = true },
    ["@string"]   = { fg = "#ff66ff" }, -- Pink shift
    ["@comment"]  = { fg = "#4e3366", italic = true },
  },
}

M.type = "dark"

-- Allow override from chadrc
M = require("base46").override_theme(M, "violet_cathode")

return M
