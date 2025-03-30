local M = {}

M.sort_visual_lines = function()
  -- Calculate the start and end line numbers (0-indexed for API functions)
  local start_line = vim.fn.line("'<") - 1
  local end_line = vim.fn.line("'>")
  -- Get the lines from the current buffer in the visual selection
  local lines = vim.api.nvim_buf_get_lines(0, start_line, end_line, false)
  -- Sort the lines alphabetically (case-insensitive)
  table.sort(lines, function(a, b)
    return a:lower() < b:lower()
  end)
  -- Replace the lines in the buffer with the sorted lines
  vim.api.nvim_buf_set_lines(0, start_line, end_line, false, lines)
end

return M
