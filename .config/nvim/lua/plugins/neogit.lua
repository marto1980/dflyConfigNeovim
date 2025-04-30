return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim", -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua", -- optional
    "echasnovski/mini.pick", -- optional
  },
  opts = {
    kind = "floating",
  },
  cmd = "Neogit", -- optional: lazy-load on :Neogit
  keys = {
    {
      "<leader>Nn",
      function()
        require("neogit").open()
      end,
      desc = "Open Neogit",
    },
  },
}
