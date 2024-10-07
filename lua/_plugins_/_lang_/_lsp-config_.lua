require("mason-lspconfig").setup {
    ensure_installed = {
    "pyright", -- Python lsp
    "clangd", -- C lsp
    "lua_ls", --lua lsp
    "bashls", --bash lsp
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
    lspconfig.clangd.setup{}
    lspconfig.bashls.setup{}


