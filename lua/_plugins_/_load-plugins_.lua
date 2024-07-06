local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('nvim-tree/nvim-web-devicons')
Plug('nvim-tree/nvim-tree.lua') 
Plug('nvimdev/dashboard-nvim')
Plug('norcalli/nvim-colorizer.lua')
Plug('nvim-lualine/lualine.nvim')
Plug('windwp/nvim-autopairs')
vim.call('plug#end')
-- enable more colors
	vim.opt.termguicolors = true
-- enable more colors

require("nvim-tree").setup()
require("colorizer").setup()

require("_plugins_._lualine-config_")
require("_plugins_._autopairs-config_")
require("_plugins_._nvim-tree-config_")
require("_plugins_._dashboard-config_")

-- 	-- disable netrw at the very start of your init.lua
-- 	vim.g.loaded_netrw = 1
-- 	vim.g.loaded_netrwPlugin = 1
-- 
-- 	-- maps the F2 key to toggle the nvim tree plugin
-- 	vim.cmd("colorscheme cyberdream")
-- 	vim.o.cursorline = true

