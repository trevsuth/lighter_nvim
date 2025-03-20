return {
    'ThePrimeagen/harpoon',
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        vim.keymap.set("n", "<leader>a", mark.add_file, { desc = 'Add Harpoon Mark' })
        vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu, { desc = 'Toggle Harpoon Quick Menu' })
        vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end, { desc = 'Jump to Harpoon File 1' })
        vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end, { desc = 'Jump to Harpoon File 2' })
        vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end, { desc = 'Jump to Harpoon File 3' })
        vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end, { desc = 'Jump to Harpoon File 4' })
    end
}
