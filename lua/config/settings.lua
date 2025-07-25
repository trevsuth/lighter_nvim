local M = {}

function M.setup()
    -- 4 sapce tab
    vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
    vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
    vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
    vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting

    -- line numbers
    vim.opt.nu = true
    vim.opt.relativenumber = true

    -- scroll options
    vim.opt.scrolloff = 8
    vim.opt.signcolumn = "yes"

    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

    vim.opt.wrap = false -- disable line wrap

    vim.opt.termguicolors = true
    require("bufferline").setup{}

    --vim.cmd.colorscheme("techbase")
end

return M
