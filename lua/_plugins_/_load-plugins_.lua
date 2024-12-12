vim.opt.termguicolors = true -- enable more colors

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup{
    spec = {
        {

            {"nvimdev/dashboard-nvim", -- {{{
                event = "VimEnter",
                dependencies = {"nvim-tree/nvim-web-devicons", {"ingenarel/randomtips-nvim"}},
                config = function()
                    require("_plugins_._dashboard-config_")
                end
            }, --}}}

            {"norcalli/nvim-colorizer.lua", -- {{{
                config = function()
                    require("colorizer").setup{
                        DEFAULT_OPTIONS = {
                            RGB      = true;
                            RRGGBB   = true;
                            names    = true;
                            RRGGBBAA = true;
                            rgb_fn   = true;
                            hsl_fn   = true;
                            css      = true;
                            css_fn   = true;
                        },
                        "*"
                    }
                end
            }, -- }}}

            {"MarcosTypeAP/color-picker.nvim", config = function() require("_plugins_._color-help-config_") end}, -- colorpicker

            {"nvim-lualine/lualine.nvim",-- {{{
                dependencies = {"nvim-tree/nvim-web-devicons"},
                config = function() 
                    require("lualine").setup{
                        options = {
                            disabled_filetypes = {"dashboard"}
                        },
                        sections = {
                            lualine_z = {
                                "location",
                                "selectioncount",
                            }
                        }
                    }
                end
            },-- }}}

            {"windwp/nvim-autopairs", event = "InsertEnter"}, -- for pairing
                -- todo: find an alternative for nvim-autopairs{{{
                -- because i just need an autopairer, and this has many options that i don't use, so bloat imo }}}

            {"nvim-telescope/telescope.nvim",-- {{{
                dependencies = {"nvim-lua/plenary.nvim", "debugloop/telescope-undo.nvim", {"nvim-telescope/telescope-fzf-native.nvim", build = "make"}},
                config = require("_plugins_._telescope-config_")
            },-- }}}

            {"lukas-reineke/indent-blankline.nvim",
                config = function() require("ibl").setup{exclude = {filetypes = {"dashboard"}}} end
            },
            {"lewis6991/gitsigns.nvim", config = true },
                -- todo: find an alternative for gitsigns{{{
                -- gitsigns is too bloated for my current config, i just need the signs for now }}}
            {"williamboman/mason.nvim"},
            {"WhoIsSethDaniel/mason-tool-installer.nvim"},
            {"mfussenegger/nvim-dap"}, -- nvim debug adapter protocol
            {"rcarriga/nvim-dap-ui", dependencies = {"nvim-neotest/nvim-nio"}, config = true},
            {"mfussenegger/nvim-dap-python"},
            {"neovim/nvim-lspconfig",-- {{{
                lazy = false,
                dependencies = {
                    { "ms-jpq/coq_nvim", branch = "coq" }
                },
                init = function()
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
                end
            },-- }}}
            {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
            {"voldikss/vim-floaterm"}, -- floaterm, the floating terminal emulator in neovim
            {"nvim-focus/focus.nvim"}, -- for autoresizing split buffers
            {"https://gitlab.com/yorickpeterse/nvim-window.git"}, -- to quickly switch split buffers.
                -- TODO: fork this repo and make the code a bit better.{{{
                -- don't know lua that much, but lsp pointed out that it's using deprecated functions, and there's a function that's unused.
                -- it's a single file. not that big too. shouldn't be that hard to make it a bit better ig.}}}
            {"folke/which-key.nvim", event = "VeryLazy"}, -- for keybindings help
            -- {"debugloop/telescope-undo.nvim"}, -- telescope undo plugin
            -- {"MunifTanjim/nui.nvim"}, -- dependency for some plugins.
            {"ingenarel/nvim-pairMan"}, -- my plugin for pair stuff
            {"smoka7/hop.nvim", version="*"}, -- for hopping
            {"m4xshen/hardtime.nvim", dependencies = { "MunifTanjim/nui.nvim" }}, -- forces you to be efficient with your vim motions as much as it can. i think this is the only time i like being forced.
        }
    }
}

require("which-key").setup{ -- {{{1
    preset = "helix",
    no_overlap = true,
} -- }}}1

require("hop").setup{keys = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"}
require("hardtime").setup()

require("_plugins_._language-helps_") -- config that has my lsp, dap and autocompletion config
require("_plugins_._focus-config_")
require("_plugins_._autopairs-config_")
