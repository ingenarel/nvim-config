-- show the absolute line numbers and the relative line numbers
	vim.opt.nu = true
	vim.opt.relativenumber = true
	vim.o.statuscolumn = "%s %l %r "
-- show the absolute line numbers and the relative line numbers

-- autosaves the file
	vim.cmd([[
	  autocmd FocusLost,InsertLeave * :w!
	]])
-- autosaves the file

-- disable line wrap
	vim.o.wrap = false
-- disable line wrap

--uses the system clipboard
	vim.o.clipboard = "unnamedplus"
--uses the system clipboard

-- keep the scroll in the middle.
	vim.o.scrolloff = 31
-- keep the scroll in the middle.

--autoreads the file so if a background change happens nvim detects it
	vim.o.autoread = true
--autoreads the file so if a background change happens nvim detects it



-- Set ignorecase option
	vim.o.ignorecase = true	
-- Set ignorecase option

-- uses the vim-plug plugin to load the nvim tree plugin, the webdevicons plugin,
-- autopairs plugin, cyberdream, dashboard, and the colorizer plugin
	local vim = vim
	local Plug = vim.fn['plug#']
	
	vim.call('plug#begin')
	Plug('nvim-tree/nvim-web-devicons')
	Plug('nvim-tree/nvim-tree.lua')
	Plug('windwp/nvim-autopairs')
	Plug('scottmckendry/cyberdream.nvim')
	Plug('nvimdev/dashboard-nvim')
	Plug('norcalli/nvim-colorizer.lua')
	Plug('nvim-lualine/lualine.nvim')
	vim.call('plug#end')
	
	-- disable netrw at the very start of your init.lua
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	
	-- optionally enable 24-bit colour
	vim.opt.termguicolors = true
	
	-- empty setup using defaults
	require("nvim-tree").setup()
	require("cyberdream").setup({
		transparent = true,
		italic_comments = true
	})
	require("dashboard").setup()
	require("colorizer").setup()
	
	-- Store the current state
	_G.disable_in_visualblock = true
	
	-- Function to toggle the setting
	_G.toggle_autopairs_visualblock = function()
	    _G.disable_in_visualblock = not _G.disable_in_visualblock
	    require('nvim-autopairs').setup({
	        disable_in_visualblock = _G.disable_in_visualblock,
	    })
	    print("Autopairs Visualblock disabled:", _G.disable_in_visualblock)
	end
	
	-- Initial setup for nvim-autopairs
	require('nvim-autopairs').setup()
	
	-- Map F3 key to toggle the setting
	vim.api.nvim_set_keymap('n', '<F3>', ':lua toggle_autopairs_visualblock()<CR>', { noremap = true, silent = true })

	-- maps the F2 key to toggle the nvim tree plugin
	vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
	vim.cmd("colorscheme cyberdream")
	vim.o.cursorline = true
	require('lualine').setup(
		{
			options = { theme = 'molokai' }
		}
	)
-- uses the vim-plug plugin to load the nvim tree plugin, the webdevicons plugin,
-- autopairs plugin, cyberdream, dashboard, and the colorizer plugin
