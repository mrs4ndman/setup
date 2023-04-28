-- Mr Sandman's .lua config for NVIM (NOT FINISHED) PACKER.lua

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

-- MAIN PLUGIN CONFIG
-- INCLUDES LSP BASE CONFIG, TMUX CONFIG, AUTOPAIRS, 
--
-- 1.- Telescope config

use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
    }
}


-- 2.- Load Telescope extensions
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

use 'cljoly/telescope-repo.nvim'


-- 3.- Theme plugin config
use({ 'rose-pine/neovim',
as = 'rose-pine',
config = function()
    vim.cmd('colorscheme rose-pine')
end
})

-- Plugin loader optimization:
use 'lewis6991/impatient.nvim'

-- 4.- Treesitter modules
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('nvim-treesitter/playground')

-- 5.- External integration: Git, tmux, ranger & fzf, also remembers where I was in the buffer
use ('christoomey/vim-tmux-navigator')
use ('tmux-plugins/vim-tmux')
use ('junegunn/fzf')
use ('tpope/vim-fugitive')
use ('tpope/vim-commentary')
-- Git signs on the gutter
use ('lewis6991/gitsigns.nvim')
use ('farmergreg/vim-lastplace')
use ('kevinhwang91/rnvimr')


-- 6.- ThePrimeagen plugins (Blazingly Fast)
use ('ThePrimeagen/vim-be-good')
use ('ThePrimeagen/harpoon')
use ('mbbill/undotree')

-- 7.- UI customization
use {'vim-airline/vim-airline', requires = { 'vim-airline/vim-airline-themes' } }
use ({
    'willothy/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require('cokeline').setup()
    end
})
use ('ap/vim-css-color')
-- Dashboard config

use {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            -- config
        }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
}


-- 8.- Autopairs & tabout for tabbing out of said pairs
use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}

-- Lua config for tabout
use {
    'abecodes/tabout.nvim',
    config = function()
        require('tabout').setup {
            tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
            backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
            act_as_tab = true, -- shift content if tab out is not possible
            act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
            default_tab = '<C-t>', -- shift default action (only at the beginning of a line, otherwise <TAB> is used)
            default_shift_tab = '<C-d>', -- reverse shift default action,
            enable_backwards = true, -- well ...
            completion = true, -- if the tabkey is used in a completion pum
            tabouts = {
                {open = "'", close = "'"},
                {open = '"', close = '"'},
                {open = '`', close = '`'},
                {open = '(', close = ')'},
                {open = '[', close = ']'},
                {open = '{', close = '}'}
            },
            ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
            exclude = {} -- tabout will ignore these filetypes
        }
    end,
    wants = {'nvim-treesitter'}, -- or require if not used so far
    after = {'nvim-cmp'} -- if a completion plugin is using tabs load it before
}

-- 9.- LSP Configuration
use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
            pcall(vim.cmd, 'MasonUpdate')
        end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
}
}


-- 10.- Zen mode with Space + zz / zZ
use("folke/zen-mode.nvim")


-- 11.- Trouble: Diagnostics and status tool:

use({
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup {
            icons = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
        }
    end
})


-- 1X.- Devicons for rnvimr & telescope 
use ('ryanoasis/vim-devicons')
use 'nvim-tree/nvim-web-devicons'



end)
-- eof --
