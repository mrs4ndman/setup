
-- Mapleader as Space
vim.g.mapleader = " "

-- Netrw start / Change to ranger
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Quitting and saving exit
vim.keymap.set("n", "<C-q>", ":q!<CR>")
vim.keymap.set("n", "<C-w>", ":wq<CR>")
