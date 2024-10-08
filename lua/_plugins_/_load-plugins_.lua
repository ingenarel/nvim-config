local vim = vim
local Plug = vim.fn['plug#']
vim.g.plug_threads = 10
vim.g.plug_retries = 999
vim.g.plug_timeout = 999
vim.call('plug#begin')
Plug("nvim-tree/nvim-web-devicons") -- a dependency for some plugins
Plug("nvimdev/dashboard-nvim") -- dashboard
Plug("norcalli/nvim-colorizer.lua") -- for showing colors
Plug("MarcosTypeAP/color-picker.nvim") -- colorpicker
Plug("nvim-lualine/lualine.nvim") --  the statusline below
Plug("windwp/nvim-autopairs") -- for pairing
Plug("nvim-lua/plenary.nvim") -- a dependency for some plugins
Plug("nvim-telescope/telescope.nvim") -- fzf on crack
Plug("lukas-reineke/indent-blankline.nvim") -- for showing indent lines.
Plug("lewis6991/gitsigns.nvim") -- git signs and stuff
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
        Plug("julianolf/nvim-dap-lldb") -- dap configs for codelldb
    -- dap
    -- coq
        Plug("ms-jpq/coq_nvim", {["branch"]="coq"}) -- coq, the autocompletion plugin
        Plug("ms-jpq/coq.artifacts", {["branch"]="artifacts"}) -- coq snippets
    -- coq
    -- treeslitter
        Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
    -- treeslitter
-- language helps
Plug("voldikss/vim-floaterm") -- floaterm, the floating terminal emulator in neovim
Plug("nvim-focus/focus.nvim") -- for autoresizing split buffers
Plug("https://gitlab.com/yorickpeterse/nvim-window.git") -- to quickly switch split buffers
Plug("folke/which-key.nvim") -- for keybindings help
Plug("debugloop/telescope-undo.nvim") -- telescope undo plugin
Plug("MunifTanjim/nui.nvim") -- dependency for noice
Plug("rcarriga/nvim-notify") -- dependency for noice
Plug("folke/noice.nvim") -- noice ui
vim.call("plug#end")

vim.opt.termguicolors = true -- enable more colors

require("telescope").setup()
require("dapui").setup()
require("gitsigns").setup()
require("noice").setup()


require('lualine').setup{
    options = { theme = 'molokai' }
}
require("nvim-autopairs").setup{
    disable_in_visualblock = true,
}
require("ibl").setup{ -- indent line config
    exclude = {
        filetypes = {
            "dashboard"
        }
    }
}
require("notify").setup{
    background_colour="#000000"
}


require("_plugins_._dashboard-config_")
require("_plugins_._language-helps_") -- config that has my lsp, dap and autocompletion config
require("_plugins_._color-help-config_")
require("_plugins_._focus-config_")
