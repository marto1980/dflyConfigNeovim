return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.qol.todo_items"] = {
        config = {
          create_todo_items = true,
          create_todo_parents = true,
          order = {
            { "undone", " " },
            { "done", "x" },
            { "needs_input", "?" },
            { "urgent", "!" },
            { "recurring", "+" },
            { "pending", "-" },
            { "on_hold", "=" },
            { "cancelled", "_" },
          },
        },
      },
    },
  },
  keys = {
    {
      "<leader>Rn",
      function()
        vim.cmd("tabnew")
        vim.cmd("Neorg workspace notes")
      end,
      desc = "Neorg notes",
    },
    {
      "<leader>Rc",
      function()
        -- Use <Plug> binding for todo cycle
        vim.api.nvim_feedkeys(
          vim.api.nvim_replace_termcodes("<Plug>(neorg.qol.todo-items.todo.task-cycle)", true, false, true),
          "n",
          false
        )
      end,
      desc = "Cycle TODO state",
      mode = "n",
      ft = "norg",
    },
  },
  config = function(_, opts)
    require("neorg").setup(opts)
    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
