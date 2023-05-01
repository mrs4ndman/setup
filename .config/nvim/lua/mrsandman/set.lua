-- Cursor config
vim.opt.guicursor = ""

-- NVIM terminal config
--
-- Set default terminal mode to insert & remove line numbers in terminal buffers
vim.cmd("autocmd! TermOpen * startinsert")
vim.cmd([[
augroup Terminal
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
]])

-- Ensure we land on normal mode after terminal
vim.cmd([[
    augroup LeavingTerminal
    autocmd! 
    autocmd TermLeave <silent> <Esc>
    augroup end
]])

-- Remove padding in terminal
vim.cmd('autocmd TermOpen * setlocal signcolumn=no')

-- Sidebar & tab config
-- Numbers config
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab config
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


-- General config
-- Clipboard
vim.cmd('set clipboard+=unnamedplus')

-- Keep the sign column open
vim.cmd('set signcolumn=yes')

-- Highlight bracket pairs
vim.cmd('set showmatch')

-- Don't show status in cmdline
vim.cmd('set noshowmode')

-- No text wrapping
vim.opt.wrap = false

-- Vim indenting
vim.opt.smartindent = true

-- Search tweaks, highlighting and included search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Terminal colors
vim.opt.termguicolors = true

-- Type-writer mode = ON xD
vim.opt.scrolloff = 8

-- Update time
vim.opt.updatetime = 50

-- Set nvim timeout
vim.opt.timeoutlen = 2000

-- Color columns
vim.opt.colorcolumn = "90"

-- Undotree & NVIM integration config:
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true
vim.o.undodir = '/home/mrsandman/.cache/nvim/undodir'

-- NVIM Notify plugin
vim.notify = require("notify")

-- RNVIMR CONFIG
vim.g.rnvimr_ex_enable = 0
vim.g.rnvimr_enable_bw = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_bw_enable = 1
vim.g.rnvimr_bw_restore_screen_on_close = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_pick_create = 0

vim.g.rnvimr_enable_treesitter = 1

-- Provider disabling config
vim.g.loaded_perl_provider = 0

