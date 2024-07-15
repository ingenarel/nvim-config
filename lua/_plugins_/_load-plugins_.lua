local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug("nvim-tree/nvim-web-devicons") -- a dependency for some plugins
Plug("nvimdev/dashboard-nvim") -- dashboard
Plug("norcalli/nvim-colorizer.lua") -- for showing colors
Plug("nvim-lualine/lualine.nvim") --  the statusline below
Plug("windwp/nvim-autopairs") -- for pairing
Plug("nvim-lua/plenary.nvim") -- a dependency for some plugins
Plug("nvim-telescope/telescope.nvim") -- fzf on crack
Plug("lukas-reineke/indent-blankline.nvim") -- for showing indent lines.
-- lsp, and autocompletion shit
    -- lsp
        Plug("neovim/nvim-lspconfig")
        Plug("williamboman/mason-lspconfig.nvim")
        Plug("williamboman/mason.nvim")
    -- lsp
    -- dap
        Plug("mfussenegger/nvim-dap")
        Plug("nvim-neotest/nvim-nio")
        Plug("rcarriga/nvim-dap-ui")
    -- dap
    -- coq
        Plug("ms-jpq/coq_nvim", {["branch"]="coq"})
        Plug("ms-jpq/coq.artifacts", {["branch"]="artifacts"})
    -- coq
-- lsp, and autocompletion shit
Plug("voldikss/vim-floaterm")
Plug("wakatime/vim-wakatime")
Plug("nvim-focus/focus.nvim")
vim.call("plug#end")

vim.opt.termguicolors = true -- enable more colors

require("telescope").setup()
require("focus").setup()
require("dapui").setup()

require("_plugins_._lualine-config_")
require("_plugins_._autopairs-config_")
require("_plugins_._dashboard-config_")
require("_plugins_._language-helps_")
require("_plugins_._indent-line-config_")
require("_plugins_._colorizer-config_")

