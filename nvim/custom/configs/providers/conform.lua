local lang = require("custom.configs.lang")

-- return a list of language servers or the alias of the language server
local function getFormattersByLanguage(config)
  local formattersByLanguage = {}

  for language, details in pairs(config) do
    if details.formatters then
      formattersByLanguage[language] = details.formatters
    end
  end

  return formattersByLanguage
end
return {
  provide = function()
    return getFormattersByLanguage(lang)
  end
}
