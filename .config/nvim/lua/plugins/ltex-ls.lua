return {
  {
    "vigoux/ltex-ls.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    opts = {
      on_attach = on_attach,
      capabilities = capabilities,
      use_spellfile = false,
      filetypes = { "latex", "tex", "bib", "markdown", "gitcommit", "text" },
      settings = {
        ltex = {
          mason = false, -- Prevent Mason from managing `ltex-ls`
          language = auto,
          enabled = { "tex", "latex", "markdown", "text", "bib" }, -- Supported filetypes
          diagnosticSeverity = "information",
          sentenceCacheSize = 2000,
          additionalRules = {
            enablePickyRules = true,
            motherTongue = "de",
          },
          disabledRules = {},
          dictionary = (function()
            -- For dictionary, search for files in the runtime to have
            -- and include them as externals the format for them is
            -- dict/{LANG}.txt
            --
            -- Also add dict/default.txt to all of them
            local files = {}
            for _, file in ipairs(vim.api.nvim_get_runtime_file("dict/*", true)) do
              local lang = vim.fn.fnamemodify(file, ":t:r")
              local fullpath = vim.fs.normalize(file, ":p")
              files[lang] = { ":" .. fullpath }
            end

            if files.default then
              for lang, _ in pairs(files) do
                if lang ~= "default" then
                  vim.list_extend(files[lang], files.default)
                end
              end
              files.default = nil
            end
            return files
          end)(),
        },
      },
    },
  },
}
