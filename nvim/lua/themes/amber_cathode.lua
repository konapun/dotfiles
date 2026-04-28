---@type Base46Table
local M = {}

M.base_30 = {
  white          = "#ffcc00", -- Brightest glow
  black          = "#080604", -- Deep charcoal (avoiding pure #000000 for depth)
  darker_black   = "#050403",
  black2         = "#120e09",
  one_bg         = "#1a140b", -- 10% lighter
  one_bg2        = "#211a0e",
  one_bg3        = "#281f11",
  grey           = "#4a3621", -- Muted brown-grey for subtle UI
  grey_fg        = "#5c4329",
  grey_fg2       = "#6e5031",
  light_grey     = "#8c663e",
  red            = "#ff5f00", -- High intensity amber-red
  baby_pink      = "#ce9178",
  pink           = "#e29e81",
  line           = "#2b1d0e", -- 15% lighter than black
  green          = "#ffb000", -- Standard Amber
  vibrant_green  = "#ffcc00",
  nord_blue      = "#9a7d4a", -- Desaturated gold
  blue           = "#ffb000",
  seablue        = "#ff8c00",
  yellow         = "#ffb000",
  sun            = "#ffcc00",
  purple         = "#e29e81",
  dark_purple    = "#b16228",
  teal           = "#ff8c00",
  orange         = "#ff8c00",
  cyan           = "#ffb000",
  statusline_bg  = "#120e09",
  lightbg        = "#1a140b",
  pmenu_bg       = "#120e09",
  folder_bg      = "#ffb000",
}

M.base_16 = {
  base00 = "#080604", -- Background
  base01 = "#120e09", -- Lighter Background
  base02 = "#1a140b", -- Selection Background
  base03 = "#4a3621", -- Comments
  base04 = "#6e5031", -- Dark Foreground
  base05 = "#ffb000", -- Main Foreground (The Glow)
  base06 = "#ffcc00", -- Light Foreground
  base07 = "#ffe680", -- Lightest Foreground
  base08 = "#ff5f00", -- Variables
  base09 = "#ff8c00", -- Integers/Constants
  base0A = "#ffb000", -- Classes
  base0B = "#ffb000", -- Strings (Staying monochrome for the vibe)
  base0C = "#ffb000", -- Support
  base0E = "#ffcc00", -- Keywords
  base0D = "#ffb000", -- Functions
  base0F = "#ff5f00", -- Deprecated
}

M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#5c4329", -- Dimmed amber (lower voltage look)
      italic = true,
    },
    CursorLine = {
      bg = "#120e09",
    },
    Visual = {
      bg = "#3d2b16", -- High contrast selection
      fg = "#ffcc00",
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#ffb000" },
    ["@keyword"]  = { fg = "#ffcc00", bold = true },
    ["@string"]   = { fg = "#ff8c00" }, -- Slight shift for readability
    ["@comment"]  = { fg = "#5c4329", italic = true },
  },
}

M.type = "dark"

-- Allow override from chadrc
M = require("base46").override_theme(M, "amber_cathode")

return M
