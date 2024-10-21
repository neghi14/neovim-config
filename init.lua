vim.cmd("let g:loaded_perl_provider= 0")
vim.cmd("let g:loaded_python3_provider= 0")
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
		})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")


