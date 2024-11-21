-- General keymaps

vim.g.mapleader = " "

-- buffers keymaps
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", {})
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", {})
vim.keymap.set("n", "<leader>bf", ":bfirst<CR>", {})
vim.keymap.set("n", "<leader>bl", ":blast<CR>", {})

-- Lazy keymaps
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", {})
