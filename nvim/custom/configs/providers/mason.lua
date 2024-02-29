local lang = require("custom.configs.lang")

local function getKeys(tbl)
  local keys = {}
  for key, _ in pairs(tbl) do
    table.insert(keys, key)
  end
  return keys
end

local function getPackages(config)
  local uniqueValues = {}

  for _, details in pairs(config) do
    -- Language Servers
    if type(details.language_server) == "string" then
      uniqueValues[details.language_server] = true
    elseif type(details.language_server) == "table" then
      uniqueValues[details.language_server.name] = true
    end

    -- Formatters
    if details.formatters then
      for _, formatter in ipairs(details.formatters) do
        uniqueValues[formatter] = true
      end
    end

    -- Tools
    if details.tools then
      for _, tool in ipairs(details.tools) do
        uniqueValues[tool] = true
      end
    end
  end

  return getKeys(uniqueValues)
end
return {
  provide = function()
    return getPackages(lang)
  end
}
