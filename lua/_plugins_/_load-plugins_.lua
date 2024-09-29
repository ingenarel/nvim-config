local vim = vim
local Plug = vim.fn['plug#']
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
-- lsp, and autocompletion shit
    -- lsp
        Plug("neovim/nvim-lspconfig") -- config for lsp
        Plug("williamboman/mason-lspconfig.nvim") -- lspconfig but with mason
        Plug("williamboman/mason.nvim") -- mason, the lsp, dap, linter, and formatter manager
    -- lsp
    -- dap
        Plug("mfussenegger/nvim-dap") -- nvim debug adapter protocol
        Plug("nvim-neotest/nvim-nio") -- needed for dap ui
        Plug("rcarriga/nvim-dap-ui") -- ui for the nvim dap, need to configure it.
        Plug("mfussenegger/nvim-dap-python") -- dap configs for python
    -- dap
    -- coq
        Plug("ms-jpq/coq_nvim", {["branch"]="coq"}) -- coq, the autocompletion plugin
        Plug("ms-jpq/coq.artifacts", {["branch"]="artifacts"}) -- coq snippets
    -- coq
-- lsp, and autocompletion shit
Plug("voldikss/vim-floaterm") -- floaterm, the floating terminal emulator in neovim
Plug("nvim-focus/focus.nvim") -- for autoresizing split buffers
Plug("https://gitlab.com/yorickpeterse/nvim-window.git") -- to quickly switch split buffers
Plug("folke/which-key.nvim") -- for keybindings help
Plug("debugloop/telescope-undo.nvim") -- telescope undo plugin
vim.call("plug#end")

vim.opt.termguicolors = true -- enable more colors

require("telescope").setup()
require("dapui").setup()

require("_plugins_._lualine-config_")
require("_plugins_._autopairs-config_")
require("_plugins_._dashboard-config_")
require("_plugins_._language-helps_") -- config that has my lsp, dap and autocompletion config
require("_plugins_._indent-line-config_")
require("_plugins_._color-help-config_")
require("_plugins_._focus-config_")
