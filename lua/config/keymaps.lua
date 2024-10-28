-- General keymaps

vim.g.mapleader = " "

-- Tabs keymaps

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", {})
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", {})
vim.keymap.set("n", "<leader>tz", ":tabprevious<CR>", {})
vim.keymap.set("n", "<leader>tx", ":tabnext<CR>", {})

-- Neofetch keymaps
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", {})

-- Terminal Keymaps

vim.keymap.set("n", "<leader>term", ":terminal<CR>", {})
vim.keymap.set("t", "<leader>x", "<C-\\><C-n>", {})
