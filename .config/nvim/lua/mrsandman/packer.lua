-- Mr Sandman's .lua config for NVIM (NOT FINISHED) PACKER.lua

vim.cmd [[packadd packer.nvim]] -- the doom begins

return require('packer').startup(function(use)
  -- Packer can manage itself
use 'wbthomason/packer.nvim' -- c'mon, do your thing

-- MAIN PLUGIN CONFIG
-- INCLUDES LSP BASE CONFIG, TMUX CONFIG, AUTOPAIRS, 
--
-- 1.- Telescope config

use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1', -- good ole telescope
    requires = {
        'nvim-lua/popup.nvim',
        'nvim-lua/plenary.nvim',
    }
}


-- 2.- Load Telescope extensions
use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

use 'cljoly/telescope-repo.nvim' --telescope extension #1, the others are inside telescope.lua


-- 3.- Theme plugin config
use({ 'rose-pine/neovim', -- cool light dark colors
as = 'rose-pine',
config = function()
    vim.cmd('colorscheme rose-pine')
end
})

-- Plugin loader optimization:
use 'lewis6991/impatient.nvim' -- speed go brr

-- 4.- Treesitter modules
use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) -- colors go brr
use 'nvim-treesitter/playground' -- hehe

-- 5.- External integration: Git, tmux, ranger & fzf, also remembers where I was in the buffer
use 'christoomey/vim-tmux-navigator' -- tmux integration
use 'tmux-plugins/vim-tmux' -- tmux integration x2

use 'junegunn/fzf' -- Fuzzy searching integration
use 'lewis6991/gitsigns.nvim' -- Git signs on the gutter

use 'tpope/vim-fugitive' -- Git integration
use 'tpope/vim-commentary' -- Powerful commenting, thanks to tpope

use 'farmergreg/vim-lastplace' -- Remembers where i left off the buffer
use 'kevinhwang91/rnvimr' -- Terminal file manager integration

-- use {"akinsho/toggleterm.nvim", tag = '*', config = function()
--     require("toggleterm").setup()
-- end}

-- 6.- ThePrimeagen plugins (Blazingly Fast)
use 'ThePrimeagen/vim-be-good' -- Vim & Neovim keybind training
use 'ThePrimeagen/harpoon' -- Reeling those files in
use 'mbbill/undotree' -- What was that thing I did 10 days ago? Leader + U


-- 7.- UI customization
-- Status / buffer lines
use 'nvim-lualine/lualine.nvim' -- Best statusline for nvim in Lua
use ({
    'willothy/nvim-cokeline', -- Addicted to this stuff
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require('cokeline').setup()
    end
})

-- Notifications and CSS color show
use 'rcarriga/nvim-notify' -- Cool plugin notis
use 'lcheylus/overlength.nvim'
use 'ap/vim-css-color' -- Frontend stuff


-- Dashboard on startup config
--
use {
    'glepnir/dashboard-nvim', -- Startup screen for nvim
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
    'abecodes/tabout.nvim', -- Trying to get this to work, idk what's wrong with it XD
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
    'VonHeikemen/lsp-zero.nvim', -- Big boi LSP
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
use "folke/zen-mode.nvim" -- Pure concentration


-- 11.- Trouble: Diagnostics and status tool:

use ({
    "folke/trouble.nvim", -- woops
    config = function()
        require("trouble").setup {
            icons = false,
            -- your configuration comes here
            -- or leave it empty to use the default settings
        }
    end
})


-- 1X.- Devicons for rnvimr & telescope 
use 'ryanoasis/vim-devicons'
use 'nvim-tree/nvim-web-devicons'



end)
-- eof --
