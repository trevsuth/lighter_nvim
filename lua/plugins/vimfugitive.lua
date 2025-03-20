return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set('n', '<leader>gg', vim.cmd.Git, { desc = 'Git status' })
        vim.keymap.set('n', '<leader>gp', vim.cmd.Git('pull'), { desc = 'Git pull' })
        vim.keymap.set('n', '<leader>gP', vim.cmd.Git('push'), { desc = 'Git push' })
        vim.keymap.set('n', '<leader>ga', vim.cmd.Git('add .'), { desc = 'Git add .' })
    end

}
