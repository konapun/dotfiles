local lang = require("custom.configs.lang")

-- return a mapping of language servers or the alias of the language server to additional settings for the server, if any
local function getLanguageServers(config)
  local languageServerMap = {}

  for _, v in pairs(config) do
    local serverName = ""
    if type(v.language_server) == "string" then
      serverName = v.language_server
    elseif type(v.language_server) == "table" then
      serverName = v.language_server.alias
    end

    -- Add to languageServers if not seen before
    if serverName ~= "" and not languageServerMap[serverName] then
      languageServerMap[serverName] = v.language_server.settings or {}
    end
  end

  return languageServerMap
end
return {
  provide = function()
    return getLanguageServers(lang)
  end
}
