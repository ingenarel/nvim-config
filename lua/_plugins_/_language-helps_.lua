require("mason").setup()

require("mason-lspconfig").setup {
    ensure_installed = {
    "pyright", -- Python
    "clangd", -- C
    "lua_ls", --lua
    "bashls", --bash
    }
}

local lspconfig = require("lspconfig")
    lspconfig.pyright.setup{}
    lspconfig.lua_ls.setup {
        settings = {
            Lua = {
                workspace = {
                    library = vim.api.nvim_get_runtime_file("", true)
                }
            }
        }
    }
    -- lspconfig.lua_ls.setup{}
    lspconfig.clangd.setup{}
    lspconfig.bashls.setup{}

vim.g.coq_settings = {
	auto_start = "shut-up"
}
