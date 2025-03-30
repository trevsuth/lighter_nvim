return {

    ------------------------------------------------------------
    -- Coding
    ------------------------------------------------------------
    require("plugins.autopairs"),
    require("plugins.snippets"),
    require("plugins.venvselector"),

    ------------------------------------------------------------
    -- Navigation
    ------------------------------------------------------------
    require("plugins.harpoon"),
    require("plugins.quickscope"),
    require("plugins.telescope"),

    ------------------------------------------------------------
    -- UI
    ------------------------------------------------------------
    require("plugins.lualine"),
    require("plugins.treesitter"),
    require("plugins.trouble"),
    require("plugins.undotree"),
    require("plugins.whichkey"),

    ------------------------------------------------------------
    -- Git
    ------------------------------------------------------------
    require("plugins.vimfugitive"),

    ------------------------------------------------------------
    -- LSP
    ------------------------------------------------------------
    require("plugins.lsp"),
    require("plugins.colors"),
}
