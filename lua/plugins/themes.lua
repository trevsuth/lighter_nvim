local themes = require("config.themes")

local theme_plugins = {}
for _, spec in pairs(themes) do
  table.insert(theme_plugins, spec)
end

return theme_plugins
