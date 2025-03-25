local M = {}

function M.setup()
	vim.keymap.set("n", "<leader>Tsv", "<cmd>vsp term://<CR>", { desc = "Open vertical terminal split" })
	vim.keymap.set("n", "<leader>Tsh", "<cmd>sp term://<CR>",  { desc = "Open horizontal terminal split" })
	vim.keymap.set("n", "L", "vg_",    { desc = "Select to end of line" })
	vim.keymap.set('n', '<leader>pa', 'ggVGp',         { desc = "select all and paste" })
	vim.keymap.set('n', '<leader>sa', 'ggVG',          { desc = "select all" })
	vim.keymap.set("n", "<leader>gp", "`[v`]", { desc = "select pasted text" })
	vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "scroll up and center" })
	vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "scroll down and center" })
	vim.keymap.set("n", "n", "nzzzv",       { desc = "keep cursor centered" })
	vim.keymap.set("n", "N", "Nzzzv",       { desc = "keep cursor centered" })
	vim.keymap.set({ "n", "v" }, "<leader>gbf", "<cmd>GBrowse<cr>", { desc = "Git browse current file in browser" })
	vim.keymap.set("n", "<leader>gbc", function()
		vim.cmd "GBrowse!"
	end,                                                       { desc = "Copy URL to current file" })
	vim.keymap.set("v", "<leader>gbl", "<cmd>GBrowse!<CR>",         { desc = "Git browse current file and selected line in browser" })
	vim.keymap.set("n", "gd", "<cmd>Gvdiffsplit<CR>",              { desc = "Git diff current file" })
	vim.keymap.set("n", "<BS>", "^", { desc = "Move to first non-blank character" })
	vim.keymap.set("n", "<leader>mj", "<cmd>m .+1<CR>==",     { desc = "Move line down" })
	vim.keymap.set("n", "<leader>mk", "<cmd>m .-2<CR>==",     { desc = "Move line up" })
	vim.keymap.set("v", "<leader>mj", "<cmd>m '>+1<CR>gv=gv", { desc = "Move Line Down in Visual Mode" })
	vim.keymap.set("v", "<leader>mk", "<cmd>m '<-2<CR>gv=gv", { desc = "Move Line Up in Visual Mode" })
	vim.keymap.set('n', '<leader>ss', '<cmd>s/\\v',                             { desc = "search and replace on line" })
	vim.keymap.set('n', '<leader>SS', '<cmd>%s/\\v',                            { desc = "search and replace in file" })
	vim.keymap.set('v', '<leader><C-s>', '<cmd>s/\\%V',                 { desc = "Search only in visual selection using %V atom" })
	vim.keymap.set('v', '<leader><C-r>', '"hy:%s/\\v<C-r>h//g<left><left>', { desc = "change selection" })
	vim.keymap.set("i", "<c-p>", function()
		require("telescope.builtin").registers()
	end, { remap = true, silent = false, desc = " and paste register in insert mode", })
	vim.keymap.set("n", "<leader>yf", "<cmd>%y<cr>", { desc = "yank current file to the clipboard buffer" })
	vim.keymap.set('n', '<leader>df', '<cmd>%d_<cr>', { desc = 'delete file content to black hole register' })
	vim.keymap.set("n", "<leader>w", "<cmd>w<CR>",    { desc = "Quick save" })
	vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<cr>", { desc = "make file executable" })
	vim.keymap.set(
		"n",
		"<leader>cpf",
		'<cmd>let @+ = expand("%:p")<cr>:lua print("Copied path to: " .. vim.fn.expand("%:p"))<cr>',
		{ desc = "Copy current file name and path", silent = false }
	)
	vim.keymap.set("n", "<leader>rx", vim.cmd.Rexplore, {desc = "Return to netrw"})
end

return M
