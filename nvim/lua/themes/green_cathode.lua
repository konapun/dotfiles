---@type Base46Table
local M = {}

M.base_30 = {
  white          = "#ccffcc", -- High-voltage peak
  black          = "#040805", -- Deep obsidian green
  darker_black   = "#020503",
  black2         = "#0d140e",
  one_bg         = "#141f15", -- 10% lighter
  one_bg2        = "#1b2a1c",
  one_bg3        = "#223523",
  grey           = "#2a4a2e", -- Muted forest for subtle UI
  grey_fg        = "#3d6b42",
  grey_fg2       = "#4f8c55",
  light_grey     = "#6bb372",
  red            = "#ff3333", -- Keeping errors red for safety
  baby_pink      = "#88cc88",
  pink           = "#99ee99",
  line           = "#1c2e1e", -- 15% lighter than black
  green          = "#33ff33", -- The "Classic P1" Green
  vibrant_green  = "#55ff55",
  nord_blue      = "#44cc44", 
  blue           = "#33ff33",
  seablue        = "#22dd22",
  yellow         = "#bbfb00", -- Slight yellow tint for variety
  sun            = "#ccff00",
  purple         = "#88cc88",
  dark_purple    = "#228822",
  teal           = "#33ff33",
  orange         = "#44ff44",
  cyan           = "#33ff33",
  statusline_bg  = "#0d140e",
  lightbg        = "#141f15",
  pmenu_bg       = "#0d140e",
  folder_bg      = "#33ff33",
}

M.base_16 = {
  base00 = "#040805", -- Background
  base01 = "#0d140e", -- Lighter Background
  base02 = "#141f15", -- Selection Background
  base03 = "#2a4a2e", -- Comments
  base04 = "#4f8c55", -- Dark Foreground
  base05 = "#33ff33", -- Main Glow
  base06 = "#55ff55", -- Light Foreground
  base07 = "#ccffcc", -- Lightest Foreground
  base08 = "#33ff33", -- Variables
  base09 = "#bbfb00", -- Integers/Constants
  base0A = "#33ff33", -- Classes
  base0B = "#44ff44", -- Strings
  base0C = "#33ff33", -- Support
  base0E = "#55ff55", -- Keywords
  base0D = "#33ff33", -- Functions
  base0F = "#33ff33", -- Deprecated
}

M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#2a4a2e", -- Dimmed green
      italic = true,
    },
    CursorLine = {
      bg = "#0d140e",
    },
    Visual = {
      bg = "#1b4020", -- High intensity selection
      fg = "#ccffcc",
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#33ff33" },
    ["@keyword"]  = { fg = "#55ff55", bold = true },
    ["@string"]   = { fg = "#bbfb00" }, -- Slight yellow-green shift
    ["@comment"]  = { fg = "#2a4a2e", italic = true },
  },
}

M.type = "dark"

-- Allow override from chadrc
M = require("base46").override_theme(M, "green_cathode")

return M
