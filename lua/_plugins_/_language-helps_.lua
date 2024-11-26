require("mason").setup()

-- lsp {{{1
require("mason-lspconfig").setup{
    ensure_installed = {
    "pyright", -- Python lsp
    "clangd", -- C lsp
    "lua_ls", --lua lsp
    "bashls", --bash lsp
    }
}

local lspconfig = require("lspconfig")
lspconfig.pyright.setup{
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

lspconfig.lua_ls.setup{
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            diagnostics = {
                globals = {"vim"},
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

lspconfig.clangd.setup{}

lspconfig.bashls.setup{
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
        }
    }
}
-- lsp }}}1

-- dap {{{1
require("mason-nvim-dap").setup{
    ensure_installed = {
        "codelldb"
    }
}

require("dap-python").setup("python")
-- require("dap-lldb").setup("C:\\Users\\Saad_Abdullah\\AppData\\Local\\nvim-data\\mason\\bin\\codelldb.cmd")

-- todo: fucking fix dapcodelldb
-- require("dap-lldb").setup()

local dap = require("dap")

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "C:\\Users\\Saad_Abdullah\\AppData\\Local\\nvim-data\\mason\\bin\\codelldb.cmd",
        args = {"--port", "${port}"},
        detached = false
    }
}

dap.configurations.c = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function ()
            -- return vim.fn.input("Path to exec", "f", "file")
            return vim.fn.input("Path to exec", vim.fn.getcwd(), "file")
        end,
        cwd = "${workspaceFolder}",
        -- stopAtEntry = false,
        stopOnEntry = false,
        -- runInTerminal = false
    }
}

-- dap }}}1

-- treesitter {{{1
require("nvim-treesitter.configs").setup{
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
        enable = true,
    }
}
-- treesitter }}}1

-- coq {{{1
vim.g.coq_settings = {
	auto_start = "shut-up",
    keymap = {
        eval_snips = "<leader>cs",
        recommended = false,
        jump_to_mark = "<M-h>"
    },
    display = {
        preview = {
            resolve_timeout = 1
        },
        mark_applied_notify = false
    }
}
-- coq }}}1
