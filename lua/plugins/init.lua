return {
    require("plugins.autopairs"),
    require("plugins.harpoon"),
    require("plugins.telescope"),
    require("plugins.whichkey"),
    require("plugins.treesitter"),
    require("plugins.undotree"),
    require("plugins.quickscope"),
    require("plugins.vimfugitive"),
    require("plugins.lsp"),
    require("plugins.colors"),
    require("plugins.snippets"),
    require("plugins.keybindings").setup(),
    require("plugins.settings").setup(),
    require("plugins.trouble"),
    require("plugins.venvselector"),
    require("plugins.lualine"),
}
