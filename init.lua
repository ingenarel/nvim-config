-- show the absolute line numbers and the relative line numbers
	vim.opt.nu = true
	vim.opt.relativenumber = true
	vim.o.statuscolumn = "%s %l %r "
-- show the absolute line numbers and the relative line numbers

-- tab changes
    vim.opt.expandtab = true      -- Use spaces instead of tabs
    vim.opt.tabstop = 4           -- Number of spaces that a <Tab> in the file counts for
    vim.opt.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent
    vim.opt.softtabstop = 4       -- Number of spaces that a <Tab> counts for while performing editing operations
-- tab changes

-- autosaves the file
	vim.cmd([[
	  autocmd InsertLeave * :w!
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

--change the current directory to the current file that's being edited
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      callback = function()
        if vim.bo.filetype ~= 'netrw' then
          vim.cmd('lcd %:p:h')
        end
      end,
    })
--change the current directory to the current file that's being edited

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
	Plug('scottmckendry/cyberdream.nvim')
	Plug('nvimdev/dashboard-nvim')
	Plug('norcalli/nvim-colorizer.lua')
	Plug('nvim-lualine/lualine.nvim')
   	Plug('windwp/nvim-autopairs')
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

	-- maps the F2 key to toggle the nvim tree plugin
	vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
	vim.cmd("colorscheme cyberdream")
	vim.o.cursorline = true
	require('lualine').setup(
		{
			options = { theme = 'molokai' }
		}
	)    
    require("nvim-autopairs").setup(
    	{
            disable_in_visualblock = true
        }
    )
    local Rule = require('nvim-autopairs.rule')
    local npairs = require('nvim-autopairs')
    npairs.add_rule(
        Rule("<", ">")
    )
-- uses the vim-plug plugin to load the nvim tree plugin, the webdevicons plugin,
-- autopairs plugin, cyberdream, dashboard, and the colorizer plugin
