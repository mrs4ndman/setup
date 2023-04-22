-- ThePrimeagen's lsp config, to be expanded. All credits go to him and his setup :)

local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Space>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { }
})

-- lsp.on_attach(function(client,bufnr)
--	local opts = {buffer = bufnr, remap = false}
--
--	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
--	vim.keyamp.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--	vim.keyamp.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--	vim.keyamp.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--	vim.keyamp.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--	vim.keyamp.set("n", "d]", function() vim.diagnostic.goto_prev() end, opts)
--	vim.keyamp.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--	vim.keyamp.set("n", "K", function() vim.lsp.buf.hover() end, opts)
--	vim.keyamp.set("n", "K", function() vim.lsp.buf.hover() end, opts)
-- end)

lsp.setup()

