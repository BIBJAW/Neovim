require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

-- Masong Lsp config

require("mason-lspconfig").setup({
	ensure_installed = {
		"rust_analyzer",
		"lua_ls",
		"cssls",
		"marksman",
	},
})

-- Setup LSP config
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- pyright
lspconfig.pyright.setup({
	capabilities = capabilities,
})
-- tsserver
lspconfig.tsserver.setup({
	capabilities = capabilities,
})
-- rust_analyzer
lspconfig.rust_analyzer.setup({
	capabilities = capabilities,
	-- Server-specific settings. See `:help lspconfig-setup`
	settings = {
		["rust-analyzer"] = {},
	},
})

-- html
lspconfig.html.setup({
	capabilities = capabilities,
})

-- Lua LS
lspconfig.lua_ls.setup({
	capabilities = capabilities,
})

-- CSS LS
lspconfig.cssls.setup({
	capabilities = capabilities,
})
