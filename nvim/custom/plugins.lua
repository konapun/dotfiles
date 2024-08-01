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
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
		-- enabled = false,
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
		event = "VeryLazy",
		config = function()
			require("eyeliner").setup({
				-- show highlights only after keypress
				highlight_on_key = true,

				-- dim all other characters if set to true (recommended!)
				dim = false,

				-- set the maximum number of characters eyeliner.nvim will check from
				-- your current cursor position; this is useful if you are dealing with
				-- large files: see https://github.com/jinh0/eyeliner.nvim/issues/41
				max_length = 9999,
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
