-- General keymaps

vim.g.mapleader = " "

-- Tabs keymaps

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", {})
vim.keymap.set("n", "<leader>tz", ":tabprevious<CR>", {})
vim.keymap.set("n", "<leader>tx", ":tabnext<CR>", {})

-- Neofetch keymaps

vim.keymap.set("n", "<leader>z", ":Neotree filesystem reveal left<CR>", {})
vim.keymap.set("n", "<leader>x", ":Neotree filesystem close<CR>", {})
