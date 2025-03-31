local themes = require("config.themes")

local M = {}

function M.set(theme_name)
  theme_name = theme_name or "nord"  -- default theme
  if not themes[theme_name] then
    vim.notify("Theme '" .. theme_name .. "' not found!")
    return
  end

  -- Set the colorscheme. Ensure that the corresponding plugin is loaded.
  vim.cmd("colorscheme " .. theme_name)

  -- Set additional highlight options if needed.
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- Optionally, create an autocommand to reapply highlights on ColorScheme change.
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end,
})

return M
