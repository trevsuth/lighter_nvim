return{
    "ggandor/leap.nvim",
    dependencies = { "tpope/vim-repeat" }, -- for dot-repeat support
    opts = {},                              -- optional custom opts
    config = function(_, opts)
        local leap = require("leap")
        -- apply any opts you want, e.g. leap.opts.highlight_unlabeled_phase_one = true
        for k, v in pairs(opts) do
            leap.opts[k] = v
        end
        leap.add_default_mappings()          -- sets up s/S/gs mappings
    end,
}
