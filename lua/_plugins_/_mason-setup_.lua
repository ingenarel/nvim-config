return {
    {
        "williamboman/mason.nvim",
        config = true,
        dependencies = {
            "WhoIsSethDaniel/mason-tool-installer.nvim",
            config = {
                ensure_installed = {
                    --lsp
                    "pyright",
                    "clangd",
                    "lua-language-server",
                    "bash-language-server",
                    "ltex-ls",
                    --lsp
                    --dap
                    "codelldb",
                    "debugpy",
                    --dap
                    --formatter
                    "black",
                    "stylua",
                    "clang-format",
                    --formatter
                },
            },
        },
    },
}
