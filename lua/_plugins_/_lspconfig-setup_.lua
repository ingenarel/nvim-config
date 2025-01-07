return {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = {
        { "ms-jpq/coq_nvim", branch = "coq" },
    },
    init = function()
        vim.g.coq_settings = {
            auto_start = "shut-up",
            keymap = {
                eval_snips = "<leader>cs",
                recommended = false,
                jump_to_mark = "<M-h>",
            },
            display = {
                preview = {
                    resolve_timeout = 1,
                },
                mark_applied_notify = false,
            },
        }
    end,
    config = function()
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

        lspconfig.ltex.setup {
            settings = {
                ltex = {
                    language = "en-GB",
                },
            },
        }

        lspconfig.yamlls.setup {}
    end,
}
