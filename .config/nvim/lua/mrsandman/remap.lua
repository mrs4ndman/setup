
-- Mapleader as Space
vim.g.mapleader = " "

-- Netrw start / Change to ranger
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Quitting and saving exit
vim.keymap.set("n", "<C-q>", ":q!<CR>")
vim.keymap.set("n", "<C-w>", ":wq<CR>")

-- Moving around text on visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- Appending line below to current line ("lil J")
vim.keymap.set("n", "J", "mzJ'z")

-- Half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeping my cursor in the middle when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever,  replace current selection with paste buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- How to escape Vim Visual mode: keybind edition:
vim.keymap.set("i", "<C-c>", "<Esc>")

-- No-do
vim.keymap.set("n", "Q", "<nop>")
-- Sessionizer (to be configured)
-- vim.keymap.set("n", "C-f", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Substitutor for current word:
vim.keymap.set("n", "<leader>s",[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Set files to be executable:
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source current config file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

