-- local debugpyPythonPath, codelldbPath;
-- if vim.fn.has("win32") == 0 then
    -- debugpyPythonPath = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python";
    -- codelldbPath = vim.fn.expand("~/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb");
-- else
    -- debugpyPythonPath = "%LOCALAPPDATA%\\nvim-data\\mason\\packages\\debugpy\\venv\\bin\\python.exe";
    -- codelldbPath = "C:\\Users\\Saad_Abdullah\\AppData\\Local\\nvim-data\\mason\\bin\\codelldb.cmd";
    -- debugpyPythonPath = vim.fn.expand("~/Appdata/Local/nvim-data/mason/packages/debugpy/venv/bin/python.exe");
    -- codelldbPath = vim.fn.expand("~/AppData/Local/nvim-data/mason/bin/codelldb.cmd");
-- end

require("mason").setup()

require("mason-tool-installer").setup{
    ensure_installed = {
        "pyright",
        "clangd",
        "lua-language-server",
        "bash-language-server",
        "codelldb",
        "debugpy",
        "black",
    }
}

-- lsp {{{1

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

require("dap-python").setup(vim.fn.stdpath("data").."/mason/packages/debugpy/venv/bin/python")

local dap = require("dap")

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = vim.fn.stdpath("data").."/mason/packages/codelldb/extension/adapter/codelldb",
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
            return vim.fn.input("Path to exec", vim.fn.getcwd(), "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
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
