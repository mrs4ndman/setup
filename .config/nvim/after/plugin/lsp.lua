-- ThePrimeagen's lsp config, to be expanded. All credits go to him and his setup :)
-- Startup:
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
})

-- Fix Undefined global 'vim':
lsp.nvim_workspace()


-- LSP Main Keybinds for selecting completions:
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})


-- Change here the left sidebar LSP icon config for:
lsp.set_preferences({
	sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

-- Buffer LSP tools

 lsp.on_attach(function(client,bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "d]", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
 end)

lsp.setup()
