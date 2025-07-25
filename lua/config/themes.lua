
local themes = {
    nord = {
        'shaunsingh/nord.nvim'
    },
    cyberdream = {
        'scottmckendry/cyberdream.nvim'
    },
    tokyonight = {
        'folke/tokyonight.nvim'
    },
    onedark = {
        'navarasu/onedark.nvim'
    },
    tokyodark = {
        'tiagovla/tokyodark.nvim'
    },
    eldritch = {
        'eldritch-theme/eldritch.nvim'
    },
    bluloco = {
        'uloco/bluloco.nvim'
    },
    nightfox = {
        'EdenEast/nightfox.nvim'
    },
    techbase = {
        "mcauley-penney/techbase.nvim",
        config = function()
            vim.cmd.colorscheme("techbase")
        end,
        priority = 1000
        },
}

return themes
