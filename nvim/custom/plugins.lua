local overrides = require("custom.configs.overrides")
-------------------------------------------------------------------------------------------------------------------
---@type NvPluginSpec[]
local plugins = {
	-- Custom plugins
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- utils
	{
		"konapun/base46-rt",
	},

	-- plugins
	{
		"stevearc/conform.nvim",
		--  for users those who want auto-save conform + lazyloading!
		-- event = "BufWritePre"
		config = function()
			require("custom.configs.conform")
		end,
	},
	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			{
				"zbirenbaum/copilot-cmp",
				config = function()
					require("copilot_cmp").setup()
				end,
			},
		},
		ops = overrides.cmp,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "InsertEnter",
	},

	{
		"utilyre/barbecue.nvim",
		event = "BufRead",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			show_dirname = true,
			show_basename = true,
			show_modified = false,
		},
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	-- Install a plugin
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	-- To make a plugin not be loaded
	-- {
	--   "NvChad/nvim-colorizer.lua",
	--   enabled = false
	-- },

	-- Custom plugins

	{
		"ggandor/leap.nvim",
		event = "BufEnter",
		dependencies = {
			"tpope/vim-repeat",
		},
		config = function()
			require("leap").add_default_mappings()
		end,
	},

	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	},

	{
		"jinh0/eyeliner.nvim",
		event = "InsertEnter",
		config = function()
			require("eyeliner").setup({
				-- show highlights only after keypress
				highlight_on_key = true,

				-- dim all other characters if set to true (recommended!)
				dim = true,

				-- set the maximum number of characters eyeliner.nvim will check from
				-- your current cursor position; this is useful if you are dealing with
				-- large files: see https://github.com/jinh0/eyeliner.nvim/issues/41
				max_length = 9999,
			})
		end,
	},

	-- AI tools
	{
		"ravitemer/mcphub.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
		config = function()
			require("mcphub").setup()
		end,
	},

	{
		"yetone/avante.nvim",
		-- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
		-- ⚠️ must add this setting! ! !
		build = vim.fn.has("win32") ~= 0
				and "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
			or "make BUILD_FROM_SOURCE=true",
		event = "VeryLazy",
		version = false, -- Never set this value to "*"! Never!
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			--- The below dependencies are optional,
			"nvim-telescope/telescope.nvim",
			"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
			"folke/snacks.nvim", -- for input provider snacks
			"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
			"zbirenbaum/copilot.lua", -- for providers='copilot'
			{
				-- support for image pasting
				"HakonHarnes/img-clip.nvim",
				event = "VeryLazy",
				opts = {
					-- recommended settings
					default = {
						embed_image_as_base64 = false,
						prompt_for_file_name = false,
						drag_and_drop = {
							insert_mode = true,
						},
						-- required for Windows users
						use_absolute_path = true,
					},
				},
			},
			{
				-- Make sure to set this up properly if you have lazy=true
				"MeanderingProgrammer/render-markdown.nvim",
				opts = {
					file_types = { "markdown", "Avante" },
				},
				ft = { "markdown", "Avante" },
			},
		},
		config = function()
			require("avante").setup({
				-- Agent configuration
				mode = "agentic",
				auto_suggestions_provider = nil,
				provider = "copilot",
				providers = {
					copilot = {
						endpoint = "https://api.githubcopilot.com",
						model = "gpt-4o-2024-11-20",
						proxy = nil, -- [protocol://]host[:port] Use this proxy
						allow_insecure = false, -- Allow insecure server connections
						timeout = 30000, -- Timeout in milliseconds
						context_window = 64000, -- Number of tokens to send to the model for context
						extra_request_body = {
							temperature = 0.75,
							max_tokens = 20480,
						},
					},
				},
				-- Use snacks.nvim as input provider
				input = {
					provider = "snacks", -- "native" | "dressing" | "snacks"
					provider_opts = {
						title = "Avante Input",
						icon = " ",
						placeholder = "Enter your API key...",
					},
				},
				file_selector = {
					provider = "telescope",
				},
				selector = {
					provider = "telescope",
				},
				-- system_prompt as function ensures LLM always has latest MCP server state
				-- This is evaluated for every message, even in existing chats
				system_prompt = function()
					local hub = require("mcphub").get_hub_instance()
					return hub and hub:get_active_servers_prompt() or ""
				end,
				-- Using function prevents requiring mcphub before it's loaded
				custom_tools = function()
					return {
						require("mcphub.extensions.avante").mcp_tool(),
					}
				end,
			})
		end,
	},

	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = true,
					auto_trigger = true,
				},
			})
		end,
	},

	-- TODO: remove this in favor of avante
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		event = "InsertEnter",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		config = function()
			require("CopilotChat").setup()
		end,
	},

	{
		"mfussenegger/nvim-dap",
		event = "VeryLazy",
	},

	{
		"kdheepak/lazygit.nvim",
		cmd = {
			"LazyGit",
			"LazyGitConfig",
			"LazyGitCurrentFile",
			"LazyGitFilter",
			"LazyGitFilterCurrentFile",
		},
		dependencies = {
			"nvim-lua/plenary.nvim", -- optional for floating window border decoration
		},
		-- setting the keybinding for LazyGit with 'keys' is recommended in
		-- order to load the plugin when the command is run for the first time
		keys = {
			{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
		},
	},

	{
		"pwntester/octo.nvim",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("octo").setup()
		end,
	},

	{
		-- TODO: lazy loading with commands
		"stevearc/overseer.nvim",
		event = "VeryLazy",
		config = function()
			require("overseer").setup()
		end,
	},

	{
		"andythigpen/nvim-coverage",
		event = "BufRead",
		config = function()
			require("coverage").setup()
		end,
	},

	{
		"hedyhli/outline.nvim",
		event = "BufRead",
		config = function()
			require("outline").setup()
		end,
	},

	{
		"ldelossa/litee.nvim",
		event = "VeryLazy",
		opts = {
			notify = { enabled = false },
			panel = {
				orientation = "right",
			},
		},
		config = function(_, opts)
			require("litee.lib").setup(opts)
		end,
	},
	{
		"ldelossa/litee-calltree.nvim",
		dependencies = "ldelossa/litee.nvim",
		event = "VeryLazy",
		opts = {
			on_open = "panel",
			map_resize_keys = false,
		},
		config = function(_, opts)
			require("litee.calltree").setup(opts)
		end,
	},

	{
		"chentoast/marks.nvim",
		event = "BufRead",
		config = function()
			require("marks").setup()
		end,
	},

	{
		"konapun/codewindow.nvim",
		event = "VeryLazy",
		branch = "fix-editor-height",
		config = function()
			require("codewindow").setup({
				relative = "editor",
				minimap_width = 10,
				window_border = "solid",
			})
		end,
	},

	{
		"JellyApple102/flote.nvim",
		event = "VeryLazy",
		config = function()
			require("flote").setup({
				window_border = "single",
				window_style = "",
			})
		end,
	},

	{
		"miversen33/sunglasses.nvim",
		event = "UIEnter",
		config = function()
			require("sunglasses").setup({
				filter_type = "SHADE",
				filter_percent = 0.35,
			})
		end,
	},

	{
		"folke/todo-comments.nvim",
		event = "UIEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- use default settings
		},
	},

	{
		"folke/zen-mode.nvim",
		event = "UIEnter",
		dependencies = { "folke/twilight.nvim" },
		opts = {
			window = {
				backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
				-- height and width can be:
				-- * an absolute number of cells when > 1
				-- * a percentage of the width / height of the editor when <= 1
				-- * a function that returns the width or the height
				width = 80, -- width of the Zen window
				height = 1, -- height of the Zen window
				options = {
					signcolumn = "no", -- disable signcolumn
					number = false, -- disable number column
					relativenumber = false, -- disable relative numbers
					cursorline = false, -- disable cursorline
					cursorcolumn = false, -- disable cursor column
					foldcolumn = "0", -- disable fold column
					list = false, -- disable whitespace characters
				},
			},
		},
	},
}

return plugins
