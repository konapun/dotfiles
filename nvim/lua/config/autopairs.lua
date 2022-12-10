local autopairs = require('nvim-autopairs')
autopairs.setup()

autopairs.get_rule("'")[1].not_filetypes = { "clojure", "scheme", "lisp" }
autopairs.get_rule("`")[1].not_filetypes = { "clojure", "scheme", "lisp" }
