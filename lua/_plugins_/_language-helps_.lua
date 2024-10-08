require("mason").setup()

require("_plugins_._lang_._lsp-config_")
require("_plugins_._lang_._dap-config_")
require'nvim-treesitter.configs'.setup{
      ensure_installed = {
        "c",
        "lua", "luadoc",
        "vim", "vimdoc", 
        "query", 
        "markdown", "markdown_inline",
        "python",
        "bash",
        "powershell",
        "json", "json5", "yaml", "toml",
        "cmake",
        "csv",
        "css",
        "regex",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
        enabled = true,
    }
}

vim.g.coq_settings = {
	auto_start = "shut-up"
}
