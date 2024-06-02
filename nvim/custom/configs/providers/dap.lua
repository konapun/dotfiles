local lang = require("custom.configs.lang")

local function getDapConfig(config)
  -- TODO
end
return {
  provide = function()
    return getDapConfig(lang)
  end
}
