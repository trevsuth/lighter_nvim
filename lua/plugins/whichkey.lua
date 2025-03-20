return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- configuration options for which-key (if any)
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
