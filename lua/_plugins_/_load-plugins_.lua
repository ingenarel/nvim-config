local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug("nvim-tree/nvim-web-devicons")
Plug("nvim-tree/nvim-tree.lua") 
Plug("nvimdev/dashboard-nvim")
Plug("norcalli/nvim-colorizer.lua")
Plug("nvim-lualine/lualine.nvim")
Plug("windwp/nvim-autopairs")
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")
Plug("lukas-reineke/indent-blankline.nvim")
Plug("neovim/nvim-lspconfig")
Plug("williamboman/mason-lspconfig.nvim")
Plug("williamboman/mason.nvim")
vim.call("plug#end")

-- enable more colors
	vim.opt.termguicolors = true
-- enable more colors

require("nvim-tree").setup()
require("colorizer").setup()
require("telescope").setup()

require("_plugins_._lualine-config_")
require("_plugins_._autopairs-config_")
require("_plugins_._nvim-tree-config_")
require("_plugins_._dashboard-config_")
require("_plugins_._mason-config_")
require("_plugins_._indent-line-config_")

