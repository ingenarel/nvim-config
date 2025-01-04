return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            c = { "clang-format" },
            bash = { "beautysh" },
            csh = { "beautysh" },
            ksh = { "beautysh" },
            zsh = { "beautysh" },
            sh = { "beautysh" },
        },
        format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
    },
}
