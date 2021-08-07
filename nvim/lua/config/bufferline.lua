local theme = require('theme') -- TODO: allow this to be configured in setup{} once this becomes its own plugin
local palette = theme.palette

require('bufferline').setup({
  options = {
    show_buffer_close_icons = false,
    show_close_icon = false,
    custom_areas = {
      right = function()
        local result = {}
        local error = vim.lsp.diagnostic.get_count(0, [[Error]])
        local warning = vim.lsp.diagnostic.get_count(0, [[Warning]])
        local info = vim.lsp.diagnostic.get_count(0, [[Information]])
        local hint = vim.lsp.diagnostic.get_count(0, [[Hint]])

        if error ~= 0 then
          table.insert(result, {text = "   " .. error, guifg = palette.red})
        end

        if warning ~= 0 then
          table.insert(result, {text = "  " .. warning, guifg = palette.yellow})
        end

        if hint ~= 0 then
          table.insert(result, {text = "  " .. hint, guifg = palette.green})
        end

        if info ~= 0 then
          table.insert(result, {text = "  " .. info, guifg = palette.blue})
        end
        return result
      end,
    }
  }
})

