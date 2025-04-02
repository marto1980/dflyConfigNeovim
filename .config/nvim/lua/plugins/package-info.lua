return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  lazy = false,
  colors = {
    up_to_date = "#3C4048", -- Text color for up to date dependency virtual text
    outdated = "#d19a66", -- Text color for outdated dependency virtual text
    invalid = "#ee4b2b", -- Text color for invalid dependency virtual text
  },
  icons = {
    enable = true, -- Whether to display icons
    style = {
      up_to_date = "|  ", -- Icon for up to date dependencies
      outdated = "|  ", -- Icon for outdated dependencies
      invalid = "|  ", -- Icon for invalid dependencies
    },
  },
  opts = { autostart = true }, -- Whether to autostart when `package.json` is opened
  hide_up_to_date = false, -- It hides up to date versions when displaying virtual text
  hide_unstable_versions = false, -- It hides unstable versions from version list e.g next-11.1.3-canary3
  keys = {
    {
      "<leader>vs",
      function()
        require("package-info").show()
      end,
      noremap = true,
      silent = true,
      desc = "Show versions",
    },
    {
      "<leader>vc",
      function()
        require("package-info").hide()
      end,
      noremap = true,
      silent = true,
      desc = "Hide versions",
    },
    {
      "<leader>vt",
      function()
        require("package-info").toggle()
      end,
      noremap = true,
      silent = true,
      desc = "Toggle versions visibility",
    },
    {
      "<leader>vu",
      function()
        require("package-info").update()
      end,
      noremap = true,
      silent = true,
      desc = "Update package",
    },
    {
      "<leader>vi",
      function()
        require("package-info").install()
      end,
      noremap = true,
      silent = true,
      desc = "Install package",
    },
    {
      "<leader>vp",
      function()
        require("package-info").change_version()
      end,
      noremap = true,
      silent = true,
      desc = "Change version",
    },
  },
}
