return {
    -- "tpope/vim-vinegar"
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        view_options= {
            show_hidden = true,
            is_hidden_file = function(name)
                return vim.startswith(name, '.')
            end,
            is_always_hidden = function(_) return false end,
        },
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
}
