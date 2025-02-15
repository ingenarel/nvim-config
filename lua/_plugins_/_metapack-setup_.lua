return {
    "ingenarel/metapack.nvim",
    dependencies = {
        {
            "williamboman/mason.nvim",
            config = true,
        },
    },
    config = function()
        require("metapack").ensure_installed {
            --lsp
            "pyright",
            "clangd",
            "lua-language-server",
            "bash-language-server",
            "termux-language-server",
            "ltex-ls",
            "yaml-language-server",
            --lsp
            --dap
            "codelldb",
            "debugpy",
            "bash-debug-adapter",
            --dap
            --formatter
            "black",
            "stylua",
            "clang-format",
            "beautysh",
            --formatter
        }
    end,
}
