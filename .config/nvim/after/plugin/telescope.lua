local telescope = require 'telescope'
local builtin = require('telescope.builtin')
local telescope_builtin = require 'telescope.builtin'
local telescope_actions = require 'telescope.actions'
vim.keymap.set('n', '<leader>pt', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

telescope.setup {
    defaults = {
        sort_mru = true,
        sorting_strategy = 'ascending',
        layout_config = {
            prompt_position = 'top'
        },
        borderchars = {
            prompt = border_chars_none,
            results = border_chars_none,
            preview = border_chars_none
        },
        border = true,
        prompt_prefix = '   ',
        hl_result_eol = true,
        results_title = "",
        winblend = 0,
        wrap_results = true
    }
}

