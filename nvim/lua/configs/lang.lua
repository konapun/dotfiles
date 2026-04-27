-- Language configuration
-- Centralized location for treesitter, lspconfig, Mason, and conform
-- keys are treesitter language names (will be installed if they are not already)
-- - language_server: the language server to use and ensure is installed via Mason
-- - formatters: the formatters to use and ensure are installed and configure for conform
-- - tools: tools to ensure are installed for mason but otherwise not configured
local config = {
	-- core
	comment = {},
	vim = {},
	lua = {
		language_server = {
			name = "lua-language-server",
			alias = "lua_ls",
			settings = { -- extra settings that will be passed to lspconfig
				Lua = {
					hint = {
						enable = true,
						arrayIndex = "Disable",
					},
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		},
		formatters = { "stylua" },
	},

	-- sources
	c = {
		language_server = "clangd",
		formatters = { "clang-format" },
	},
	cpp = {
		language_server = "clangd",
		formatters = { "clang-format" },
	},
	go = {
		language_server = {
			name = "gopls",
			settings = {
				gopls = {
					["ui.inlayhint.hints"] = {
						assignVariableTypes = true,
						compositeLiteralFields = true,
						compositeLiteralTypes = true,
						constantValues = true,
						functionTypeParameters = true,
						parameterNames = true,
						rangeVariableTypes = true,
					},
				},
			},
		},
		formatters = { "gofmt", "goimports" },
		tools = { "gomodifytags", "go-debug-adapter", "impl" },
		debug = {
			dap = {
				adapter = {
					-- TODO:
				},
				configuration = {
					-- TODO:
				},
			},
		},
	},
	python = {
		language_server = "pyright",
		formatters = { "isort", "black" },
	},
	racket = {},
	bash = {
		language_server = {
			name = "bash-language-server",
			alias = "bashls",
		},
		formatters = { "beautysh", "shellcheck" },
	},

	-- web
	javascript = {
		language_server = {
			name = "typescript-language-server",
			alias = "ts_ls",
			settings = {
				init_options = {
					preferences = {
						includeInlayParameterNameHints = "all",
					},
				},
			},
		},
		formatters = { "prettier" },
	},
	typescript = {
		language_server = {
			name = "typescript-language-server",
			alias = "ts_ls",
		},
		formatters = { "prettier" },
	},
	tsx = {},
	jsdoc = {},
	json = {
		language_server = {
			name = "json-lsp",
			alias = "jsonls",
		},
		formatters = { "fixjson", "prettier" },
	},
	jsonc = {},
	graphql = {},
	html = {
		language_server = {
			name = "html-lsp",
			alias = "html",
		},
		formatters = { "prettier" },
	},
	css = {
		language_server = {
			name = "css-lsp",
			alias = "cssls",
		},
		formatters = { "prettier" },
	},

	-- markup
	markdown = {
		language_server = "marksman",
		formatters = { "prettier" },
	},
	markdown_inline = {},
	terraform = {
		language_server = {
			name = "terraform-ls",
			alias = "terraform_lsp",
		},
		-- formatters = { "terraform_fmt" }
	},
	yaml = {
		language_server = {
			name = "yaml-language-server",
			alias = "yamlls",
		},
		formatters = { "prettier" },
	},
}

return config
