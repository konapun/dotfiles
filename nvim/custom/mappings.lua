---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- ["<Esc>"] = { ":cclose <CR>", "close quickfix panel" },
    ["<leader>ww"] = { "<cmd> set wrap! <CR>", "toggle word wrapping" },
    ["<leader>nn"] = { "<cmd> set nu! <CR>", "toggle line number" },
    ["<leader>nt"] = { "<cmd> tabnew <CR>", "new tab" },
    ["<leader>nb"] = { "<cmd> enew <CR>", "new buffer" },
  },
}

M.copilot = {
  i = {
    ["<C-\\>"] = { "<cmd>Copilot suggestion accept_line<CR>", "accept suggestion" },
  },
  n = {
    ["<C-\\>"] = { "<cmd>Copilot panel open<CR>", "open panel" },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols <CR>", "find symbols (document)" },
    ["<leader>fS"] = { "<cmd> Telescope lsp_workspace_symbols <CR>", "find symbols (workspace)" },
    ["<leader>fd"] = { "<cmd> Telescope diagnostics bufnr=0 <CR>", "find diagnostics (current buffer)" },
    ["<leader>fD"] = { "<cmd> Telescope diagnostics <CR>", "find diagnostics (all)" },
    ["<leader>fj"] = { "<cmd> Telescope jumplist <CR>", "find jumplist" },
    ["<leader>fr"] = { "<cmd> Telescope resume <CR>", "find resume" },
  },
}

return M
