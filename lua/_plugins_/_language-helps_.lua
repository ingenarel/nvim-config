require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
    "pyright"
    },
}

vim.g.coq_settings = {
	auto_start = "shut-up"
}

