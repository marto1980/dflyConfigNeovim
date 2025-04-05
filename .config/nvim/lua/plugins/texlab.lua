return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          -- Disable Mason for texlab by not including it in the servers list
          mason = false,
          cmd = { "/usr/local/bin/texlab" }, -- Use the correct texlab binary path here
          settings = {
            texlab = {
              build = {
                executable = "pdflatex", -- Build with pdflatex
                args = { "-interaction=nonstopmode", "-synctex=1", "%f" },
                onSave = true, -- Auto-build on save
                forwardSearchAfter = true,
              },
              forwardSearch = {
                executable = "xreader", -- Set up forward search with xreader
                args = { "%p" },
              },
            },
          },
        },
      },
    },
  },
}
