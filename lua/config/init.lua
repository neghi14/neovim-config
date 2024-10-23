-- Import Keymaps

require("config.keymaps")

-- Disable unused language providers

vim.cmd("let g:loaded_perl_provider= 0")
vim.cmd("let g:loaded_python3_provider= 0")

-- Set tab width

vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")

-- Display relative numbers

vim.cmd("set number")
vim.cmd("set rnu")

-- Set list Char
vim.opt.list = true
vim.opt.listchars = { tab = ">> ", trail = "." }

-- Enable nerd font
vim.g.have_nerd_font = true
