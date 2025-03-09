-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.env.PERL5LIB = os.getenv("HOME") .. "/perl5/lib/perl5"
vim.env.PERL5OPT = "-Mlocal::lib"

-- Add '/usr/bin' to the beginning of the PATH
vim.env.PATH = '/usr/bin:' .. vim.env.PATH

