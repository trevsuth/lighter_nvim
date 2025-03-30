local M = {}

function M.setup()
    ------------------------------------------------------------
    -- Terminal Splits
    ------------------------------------------------------------
    vim.keymap.set("n", "<leader>Tsv", "<cmd>vsp term://<CR>", { desc = "Open vertical terminal split" })
    vim.keymap.set("n", "<leader>Tsh", "<cmd>sp term://<CR>",  { desc = "Open horizontal terminal split" })

    ------------------------------------------------------------
    -- Selection Operations
    ------------------------------------------------------------
    vim.keymap.set("n", "L", "vg_", { desc = "Select to end of line" })
    vim.keymap.set('n', '<leader>pa', 'ggVGp', { desc = "Select all and paste" })
    vim.keymap.set('n', '<leader>sa', 'ggVG', { desc = "Select all" })
    vim.keymap.set("n", "<leader>gp", "`[v`]", { desc = "Select pasted text" })

    ------------------------------------------------------------
    -- Scrolling and Cursor Centering
    ------------------------------------------------------------
    vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
    vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
    vim.keymap.set("n", "n", "nzzzv", { desc = "Keep cursor centered on next search result" })
    vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep cursor centered on previous search result" })

    ------------------------------------------------------------
    -- Git Operations
    ------------------------------------------------------------
    vim.keymap.set({ "n", "v" }, "<leader>gbf", "<cmd>GBrowse<cr>", { desc = "Git browse current file in browser" })
    vim.keymap.set("n", "<leader>gbc", function() vim.cmd "GBrowse!" end, { desc = "Copy URL to current file" })
    vim.keymap.set("v", "<leader>gbl", "<cmd>GBrowse!<CR>", { desc = "Git browse current file and selected line in browser" })
    vim.keymap.set("n", "gd", "<cmd>Gvdiffsplit<CR>", { desc = "Git diff current file" })

    ------------------------------------------------------------
    -- Editing and Movement
    ------------------------------------------------------------
    vim.keymap.set("n", "<BS>", "^", { desc = "Move to first non-blank character" })
    vim.keymap.set("n", "<leader>mj", "<cmd>m .+1<CR>==", { desc = "Move line down" })
    vim.keymap.set("n", "<leader>mk", "<cmd>m .-2<CR>==", { desc = "Move line up" })
    vim.keymap.set("v", "<leader>mj", "<cmd>m '>+1<CR>gv=gv", { desc = "Move line down in visual mode" })
    vim.keymap.set("v", "<leader>mk", "<cmd>m '<-2<CR>gv=gv", { desc = "Move line up in visual mode" })

    ------------------------------------------------------------
    -- Search, Sort, and Replace
    ------------------------------------------------------------
    vim.keymap.set('n', '<leader>ss', '<cmd>s/\\v', { desc = "Search and replace on current line" })
    vim.keymap.set('n', '<leader>SS', '<cmd>%s/\\v', { desc = "Search and replace in file" })
    vim.keymap.set('v', '<leader><C-s>', '<cmd>s/\\%V', { desc = "Search only in visual selection using %V atom" })
    vim.keymap.set('v', '<leader><C-r>', '"hy:%s/\\v<C-r>h//g<left><left>', { desc = "Change selection" })
    vim.keymap.set('v', '<leader>sl', function ()
        require("utils.sort_visual_lines").sort_visual_lines()
    end, { desc = "Sort Highlighted Lines" })

    ------------------------------------------------------------
    -- Telescope and Registers
    ------------------------------------------------------------
    vim.keymap.set("i", "<c-p>", function()
        require("telescope.builtin").registers()
    end, { remap = true, silent = false, desc = "Show and paste registers in insert mode" })

    ------------------------------------------------------------
    -- File Management and Miscellaneous
    ------------------------------------------------------------
    vim.keymap.set("n", "<leader>yf", "<cmd>%y<cr>", { desc = "Yank current file to clipboard" })
    vim.keymap.set('n', '<leader>df', '<cmd>%d_<cr>', { desc = "Delete file content to black hole register" })
    vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Quick save" })
    vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<cr>", { desc = "Make file executable" })
    vim.keymap.set("n", "<leader>cpf", '<cmd>let @+ = expand("%:p")<cr>:lua print("Copied path to: " .. vim.fn.expand("%:p"))<cr>', { desc = "Copy current file name and path", silent = false })
    vim.keymap.set("n", "<leader>ld", function()
        local current_dir = vim.fn.expand("%:p:h")
        require("plugins.utils.dump_lua_directory").dump_lua_directory(current_dir)
    end, { desc = "Dump current file's directory to file" })
end

return M
