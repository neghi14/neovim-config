vim.cmd("set tabstop=2")
vim.cmd("let g:loaded_perl_provider= 0")
vim.cmd("let g:loaded_python3_provider= 0")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
				vim.fn.system({
								"git",
								"clone",
								"--filter=blob:none",
								"https://github.com/folke/lazy.nvim.git",
								"--branch=stable",
								lazypath,
				})
end
vim.opt.rtp:prepend(lazypath)

local plugins= {
				{"catppuccin/nvim", name = "catppuccin", priority = 1000},
}
local opts= {}

require("lazy").setup(plugins, opts)
require("catppuccin").setup()

vim.cmd.colorscheme "catppuccin"
