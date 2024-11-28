-- todo: follow the unix philosophy for the plugins.{{{
-- a lot of plugins here has stuff that i don't use, so it's bloat for me. so i need to find alternatives for them.}}}
local vim = vim -- plugin loading start {{{
local Plug = vim.fn['plug#']
vim.g.plug_threads = 10
vim.call('plug#begin')
-- TODO: install the plugin that makes the terminal open the file in the current nvim instance.{{{
-- when currently trying to start nvim in a nvim terminal, a new instance of nvim open up inside of it, need to somehow
-- make it appear in the current instance of nvim;}}}
Plug("nvim-tree/nvim-web-devicons") -- nerd fonts glyph plugin
Plug("nvimdev/dashboard-nvim") -- dashboard
Plug("norcalli/nvim-colorizer.lua") -- for showing colors
Plug("MarcosTypeAP/color-picker.nvim") -- colorpicker
Plug("nvim-lualine/lualine.nvim") --  the statusline below
Plug("windwp/nvim-autopairs") -- for pairing
    -- todo: find an alternative for nvim-autopairs{{{
    -- because i just need an autopairer, and this has many options that i don't use, so bloat imo }}}
Plug("nvim-lua/plenary.nvim") -- a dependency for some plugins
Plug("nvim-telescope/telescope.nvim") -- pickers and stuff
Plug("lukas-reineke/indent-blankline.nvim") -- for showing indent lines.
Plug("lewis6991/gitsigns.nvim") -- git signs and stuff 
    -- todo: find an alternative for gitsigns{{{
    -- gitsigns is too bloated for my current config, i just need the signs for now }}}
-- language helps
    -- lsp
        Plug("neovim/nvim-lspconfig") -- config for lsp
        Plug("williamboman/mason-lspconfig.nvim") -- lspconfig but with mason
        Plug("williamboman/mason.nvim") -- mason, the lsp, dap, linter, and formatter manager
    -- lsp
    -- dap
        Plug("mfussenegger/nvim-dap") -- nvim debug adapter protocol
        Plug("nvim-neotest/nvim-nio") -- needed for dap ui
        Plug("rcarriga/nvim-dap-ui") -- ui for the nvim dap, need to configure it.
        Plug("jay-babu/mason-nvim-dap.nvim") -- nvim dap and mason bridge
        Plug("mfussenegger/nvim-dap-python") -- dap configs for python
    -- dap
    -- coq
        Plug("ms-jpq/coq_nvim", {["branch"]="coq"}) -- coq, the autocompletion plugin
    -- coq
    -- treesitter
        Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
    -- treesitter
-- language helps
Plug("voldikss/vim-floaterm") -- floaterm, the floating terminal emulator in neovim
Plug("nvim-focus/focus.nvim") -- for autoresizing split buffers
Plug("https://gitlab.com/yorickpeterse/nvim-window.git") -- to quickly switch split buffers.
    -- TODO: fork this repo and make the code a bit better.{{{
    -- don't know lua that much, but lsp pointed out that it's using deprecated functions, and there's a function that's unused.
    -- it's a single file. not that big too. shouldn't be that hard to make it a bit better ig.}}}
Plug("folke/which-key.nvim") -- for keybindings help
Plug("debugloop/telescope-undo.nvim") -- telescope undo plugin
Plug("MunifTanjim/nui.nvim") -- dependency for some plugins.
Plug("ingenarel/nvim-pairMan") -- my plugin for pair stuff
    -- todo: need to actually push it to github. cz this only currently exists locally.
Plug("smoka7/hop.nvim") -- for hopping
Plug("m4xshen/hardtime.nvim") -- forces you to be efficient with your vim motions as much as it can. i think this is the only time i like being forced.
Plug("ThePrimeagen/vim-be-good") -- uwu prime dadddyyyyyyyyyyyyyyyyyyyyyy
vim.call("plug#end") -- plugin loading ends }}}1

vim.opt.termguicolors = true -- enable more colors

require("ibl").setup{ -- indent line config {{{1
    exclude={
        filetypes={
            "dashboard"
        }
    },
} -- }}}1

require("dapui").setup()
require("gitsigns").setup()

require("lualine").setup{ -- {{{1
    options = {
        disabled_filetypes = {"dashboard"}
    },
    sections = {
        lualine_z = {
            "location",
            "selectioncount",
        }
    }
} --}}}1

require("which-key").setup{ -- {{{1
    preset = "helix",
    no_overlap = true,
    -- layout = {width={max=120}}
    -- win = {width={max=999}}
} -- }}}1

require("hop").setup{keys = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"}
require("hardtime").setup()

require("_plugins_._telescope-config_")
require("_plugins_._dashboard-config_")
require("_plugins_._language-helps_") -- config that has my lsp, dap and autocompletion config
require("_plugins_._color-help-config_")
require("_plugins_._focus-config_")
require("_plugins_._autopairs-config_")
