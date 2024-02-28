local lang = require("custom.configs.lang")

-- return a list of language servers or the alias of the language server
local function getLanguageServers(config)
  local languageServers = {}
  local seen = {} -- Table to track seen language servers

  for _, v in pairs(config) do
    local serverName = ""
    if type(v.language_server) == "string" then
      serverName = v.language_server
    elseif type(v.language_server) == "table" then
      serverName = v.language_server.alias
    end

    -- Add to languageServers if not seen before
    if serverName ~= "" and not seen[serverName] then
      table.insert(languageServers, serverName)
      seen[serverName] = true
    end
  end

  return languageServers
end
return {
  provide = function()
    return getLanguageServers(lang)
  end
}
