local lang = require("custom.configs.lang")

-- return the keys of the config table as treesitter values
local function getLanguages(config)
  local keys = {}
  for key, _ in pairs(config) do
    table.insert(keys, key)
  end
  return keys
end
return {
  provide = function()
    return getLanguages(lang)
  end
}
