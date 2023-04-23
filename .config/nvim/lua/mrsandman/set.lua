-- Cursor config
vim.opt.guicursor = ""

-- Set default terminal mode to insert & remove line numbers in terminal buffers
vim.cmd("autocmd! TermOpen * startinsert")
vim.cmd([[
augroup Terminal
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END
]])

-- Numbers config
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab config
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

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

-- NVIM AIRLINE CONF
-- Enable airline
vim.g.airline_enabled = 1

vim.g.airline_highlighting_cache = 1
vim.g.airline_powerline_fonts = 1

-- Use a specific theme
vim.g.airline_theme = 'minimalist'

-- rnvimr config
vim.g.rnvimr_ex_enable = 1
vim.g.rnvimr_enable_bw = 1
vim.g.rnvimr_enable_picker = 1
vim.g.rnvimr_bw_enable = 1
vim.g.rnvimr_bw_restore_screen_on_close = 1
vim.g.rnvimr_draw_border = 1
vim.g.rnvimr_pick_enable = 1
vim.g.rnvimr_pick_create = 0



