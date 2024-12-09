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

require("lazy").setup({
    spec = {
        {
            {"nvim-tree/nvim-web-devicons"}, -- nerd fonts glyph plugin
            {"nvimdev/dashboard-nvim"}, -- dashboard
            {"norcalli/nvim-colorizer.lua"}, -- for showing colors
            {"MarcosTypeAP/color-picker.nvim"}, -- colorpicker
            {"nvim-lualine/lualine.nvim"}, --  the statusline below
            {"windwp/nvim-autopairs"}, -- for pairing
                -- todo: find an alternative for nvim-autopairs{{{
                -- because i just need an autopairer, and this has many options that i don't use, so bloat imo }}}
                {"nvim-lua/plenary.nvim"}, -- a dependency for some plugins
                {"nvim-telescope/telescope.nvim"}, -- pickers and stuff
                {"lukas-reineke/indent-blankline.nvim"}, -- for showing indent lines.
                {"lewis6991/gitsigns.nvim"}, -- git signs and stuff 
                -- todo: find an alternative for gitsigns{{{
                -- gitsigns is too bloated for my current config, i just need the signs for now }}}
            -- language helps
            {"williamboman/mason.nvim"}, -- mason, the lsp, dap, linter, and formatter manager
            {"WhoIsSethDaniel/mason-tool-installer.nvim"}, -- auto installer
                -- dap
                {"mfussenegger/nvim-dap"}, -- nvim debug adapter protocol
                {"nvim-neotest/nvim-nio"}, -- needed for dap ui
                {"rcarriga/nvim-dap-ui"}, -- ui for the nvim dap, need to configure it.
                {"mfussenegger/nvim-dap-python"}, -- dap configs for python
                -- dap
                {"ms-jpq/coq_nvim", branch = "coq"}, -- coq, the autocompletion plugin
                {"neovim/nvim-lspconfig"}, -- config for lsp
                {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
            -- language helps
            {"voldikss/vim-floaterm"}, -- floaterm, the floating terminal emulator in neovim
            {"nvim-focus/focus.nvim"}, -- for autoresizing split buffers
            {"https://gitlab.com/yorickpeterse/nvim-window.git"}, -- to quickly switch split buffers.
                -- TODO: fork this repo and make the code a bit better.{{{
                -- don't know lua that much, but lsp pointed out that it's using deprecated functions, and there's a function that's unused.
                -- it's a single file. not that big too. shouldn't be that hard to make it a bit better ig.}}}
                {"folke/which-key.nvim"}, -- for keybindings help
                {"debugloop/telescope-undo.nvim"}, -- telescope undo plugin
                {"MunifTanjim/nui.nvim"}, -- dependency for some plugins.
                {"ingenarel/nvim-pairMan"}, -- my plugin for pair stuff
                {"smoka7/hop.nvim"}, -- for hopping
                {"m4xshen/hardtime.nvim"}, -- forces you to be efficient with your vim motions as much as it can. i think this is the only time i like being forced.
                {"ThePrimeagen/vim-be-good"}, -- uwu prime dadddyyyyyyyyyyyyyyyyyyyyyy
		{"ingenarel/randomtips-nvim"}
        }
    }
})

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
