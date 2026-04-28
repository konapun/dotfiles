require("avante").setup({
	-- Agent configuration
	mode = "agentic",
	auto_suggestions_provider = nil,
	provider = os.getenv("LLM_PROVIDER"),
	providers = {
		claude = {
			endpoint = "https://api.anthropic.com",
			model = "claude-sonnet-4-20250514",
			timeout = 30000, -- Timeout in milliseconds
			extra_request_body = {
				temperature = 0.75,
				max_tokens = 20480,
			},
		},
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
		lmstudio = {
			__inherited_from = "openai",
			api_key_name = "",
			endpoint = os.getenv("LLM_LOCAL_BASE_URL"),
			model = os.getenv("LLM_LOCAL_MODEL"),
		},
	},
	acp_providers = {
		["gemini-cli"] = {
			command = "gemini",
			args = { "--experimental-acp" },
			env = {
				NODE_NO_WARNINGS = "1",
				GEMINI_API_KEY = os.getenv("GOOGLE_API_KEY"),
			},
		},
		["claude-code"] = {
			command = "npx",
			args = { "@zed-industries/claude-code-acp" },
			env = {
				NODE_NO_WARNINGS = "1",
				ANTHROPIC_API_KEY = os.getenv("ANTHROPIC_API_KEY"),
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
