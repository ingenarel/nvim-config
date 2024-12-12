require("mason").setup()

require("mason-tool-installer").setup {
    ensure_installed = {
        --lsp
        "pyright",
        "clangd",
        "lua-language-server",
        "bash-language-server",
        --lsp
        --dap
        "codelldb",
        "debugpy",
        --dap
        --formatter
        "black",
        "stylua",
        "clang-format"
        --formatter
    },
}

-- lsp {{{1

local lspconfig = require("lspconfig")
lspconfig.pyright.setup {
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "default",
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                logLevel = "error",
            },
        },
    },
}

lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        },
    },
}

-- TODO: make a good clangd setup from the config
-- current i'm putting a config.yaml file in my clangd config dir.
-- ```yaml
-- CompileFlags:
--   Add: [-Wall, -Wextra]
-- ```

lspconfig.clangd.setup {}

lspconfig.bashls.setup {
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)",
        },
    },
}
-- lsp }}}1

-- dap {{{1

require("dap-python").setup(vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python")

local dap = require("dap")

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = vim.fn.stdpath("data") .. "/mason/codelldb",
        args = { "--port", "${port}" },
        detached = false,
    },
}

dap.configurations.c = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to exec", vim.fn.getcwd(), "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}

-- dap }}}1

-- treesitter {{{1
require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "c",
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        "python",
        "bash",
        "powershell",
        "json",
        "json5",
        "yaml",
        "toml",
        "cmake",
        "csv",
        "css",
        "regex",
    },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
    },
}
-- treesitter }}}1
