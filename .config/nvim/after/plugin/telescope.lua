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
        prompt_position = 'top',
        layout_strategy = 'horizontal',
        sorting_strategy = 'ascending',
        use_less = false,
      -- find_command = {'fd', '--hidden', '--no-ignore', '--type', 'f'}
    }
}

