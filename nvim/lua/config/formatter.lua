require('formatter').setup({
  logging = false,
  filetype = {
    javascript = {
      function()
        return {
          exe = 'prettier',
          args = {'--stdin-filepath', vim.api.nvim_buf_get_name(0), '--single-quote'},
          stdin = true
        }
      end
    },
    json = {
      function()
        return {
          exe = 'fixjson',
          stdin = true
        }
      end
    },
    lua = {
      function()
        return {
          exe = 'luafmt',
          args = {'--indent-count', 2, '--stdin'},
          stdin = true
        }
      end
    },
    clojure = {
      function()
        return {
          exe = 'clj-kondo',
          stdin = true
        }
      end
    }
  }
})
