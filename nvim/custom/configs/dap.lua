local dap_provider = require("custom.configs.providers.dap")
local dap = require("dap")

local configs = dap_provider.provide()
for lang, config in pairs(configs) do
  dap.adapters[lang] = config.adapter
	dap.configurations[lang] = config.configuration
end
