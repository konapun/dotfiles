-- keymappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local g = vim.g

-- general
g.mapleader = ' '
g.maplocalleader = '\\'
vim.api.nvim_set_keymap('n', '<C-n>', ':nohl<CR>', {noremap = true, silent = true})
