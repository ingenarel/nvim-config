local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug("nvim-tree/nvim-web-devicons") -- a dependency for some plugins
Plug("nvim-tree/nvim-tree.lua") -- file browser
Plug("nvimdev/dashboard-nvim") -- dashboard
Plug("norcalli/nvim-colorizer.lua") -- for showing colors
Plug("nvim-lualine/lualine.nvim") --  the statusline below
Plug("windwp/nvim-autopairs") -- for pairing
Plug("nvim-lua/plenary.nvim") -- a dependency for some plugins
Plug("nvim-telescope/telescope.nvim") -- fzf on crack
Plug("lukas-reineke/indent-blankline.nvim") -- for showing indent lines.
-- lsp and autocompletion shit
    Plug("neovim/nvim-lspconfig")
    Plug("williamboman/mason-lspconfig.nvim")
    Plug("williamboman/mason.nvim")

    Plug("ms-jpq/coq_nvim", {["branch"]="coq"})
    Plug("ms-jpq/coq.artifacts", {["branch"]="artifacts"})
-- lsp and autocompletion shit
Plug("kdheepak/lazygit.nvim") -- git integreation
vim.call("plug#end")

vim.opt.termguicolors = true -- enable more colors

require("nvim-tree").setup()
require("colorizer").setup()
require("telescope").setup()

require("_plugins_._lualine-config_")
require("_plugins_._autopairs-config_")
require("_plugins_._nvim-tree-config_")
require("_plugins_._dashboard-config_")
require("_plugins_._language-servers-config_")
require("_plugins_._indent-line-config_")

