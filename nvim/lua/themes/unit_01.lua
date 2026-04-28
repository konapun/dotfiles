---@type Base46Table
local M = {}

M.base_30 = {
  white          = "#e0e0e0", 
  black          = "#0d0214", -- Deepest dark purple (The Entry Plug void)
  darker_black   = "#08010d",
  black2         = "#160521",
  one_bg         = "#1e082b", -- 10% lighter than black
  one_bg2        = "#260b36",
  one_bg3        = "#2e0e41",
  grey           = "#4c3459", -- Muted armor purple
  grey_fg        = "#6a4b7d",
  grey_fg2       = "#855ea0",
  light_grey     = "#a074c4",
  red            = "#ff0033", -- Core/Emergency Red
  baby_pink      = "#ff80ed",
  pink           = "#ff66cc",
  line           = "#2b0a3d", -- 15% lighter than black
  green          = "#b5ff00", -- Neon Green Glow
  vibrant_green  = "#ccff00",
  nord_blue      = "#7029a3", -- Primary Purple
  blue           = "#a020f0",
  seablue        = "#8b00ff",
  yellow         = "#ffcc00", -- Tactical Orange-Yellow
  sun            = "#ffdb19",
  purple         = "#a020f0",
  dark_purple    = "#7029a3",
  teal           = "#00ffcc",
  orange         = "#ff6600", -- Armor Accents
  cyan           = "#b5ff00",
  statusline_bg  = "#160521",
  lightbg        = "#1e082b",
  pmenu_bg       = "#160521",
  folder_bg      = "#a020f0",
}

M.base_16 = {
  base00 = "#0d0214", -- Background
  base01 = "#160521", -- Lighter Background
  base02 = "#1e082b", -- Selection Background
  base03 = "#4c3459", -- Comments
  base04 = "#855ea0", -- Dark Foreground
  base05 = "#a020f0", -- Main Purple Armor
  base06 = "#e0e0e0", -- Light Foreground
  base07 = "#ffffff", -- Lightest Foreground
  base08 = "#ff6600", -- Variables (Orange)
  base09 = "#b5ff00", -- Integers (Neon Green)
  base0A = "#ffcc00", -- Classes
  base0B = "#b5ff00", -- Strings
  base0C = "#a020f0", -- Support
  base0E = "#ccff00", -- Keywords
  base0D = "#a020f0", -- Functions
  base0F = "#ff0033", -- Emergency/Deprecated
}

M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#6a4b7d",
      italic = true,
    },
    CursorLine = {
      bg = "#160521",
    },
    Visual = {
      bg = "#3a1052",
      fg = "#b5ff00", -- Selection glows neon green
    },
    PmenuSel = {
      bg = "#b5ff00",
      fg = "#0d0214",
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#ff6600" }, -- Orange variables
    ["@keyword"]  = { fg = "#b5ff00", bold = true }, -- Green keywords
    ["@string"]   = { fg = "#ccff00" },
    ["@comment"]  = { fg = "#6a4b7d", italic = true },
  },
}

M.type = "dark"

-- Allow override from chadrc
M = require("base46").override_theme(M, "unit_01")

return M
