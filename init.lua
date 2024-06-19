-- show the absolute line numbers and the relative line numbers
	vim.opt.nu = true
	vim.opt.relativenumber = true
	vim.o.statuscolumn = "%s %l %r "
-- show the absolute line numbers and the relative line numbers



-- autosaves the file
	vim.cmd([[
	  autocmd FocusLost,InsertLeave * :w
	]])
-- autosaves the file



--uses the system clipboard
	vim.o.clipboard = "unnamedplus"
--uses the system clipboard



--autoreads the file so if a background change happens nvim detects it
	vim.o.autoread = true
--autoreads the file so if a background change happens nvim detects it



--loads the theme
	-- Clear all existing highlights
	vim.cmd('highlight clear')
	
	-- Reset syntax if enabled
	if vim.fn.exists("syntax_on") then
	    vim.cmd('syntax reset')
	end
	
	-- Set background to dark and colorscheme to "cyberpunk"
	vim.o.background = "dark"
	vim.g.colors_name = "cyberpunk"
	
	-- Function to define highlights
	local function HighlightFor(group, fg, bg, gui)
	    local command = string.format('highlight %s guifg=%s guibg=%s gui=%s', group, fg, bg, gui)
	    vim.cmd(command)
	end
	
	vim.cmd('highlight Normal guibg=none')
	vim.cmd('highlight NonText guibg=none')
	
	-- General highlights
	HighlightFor("Visual",      "NONE",    "#563466", "NONE")
	HighlightFor("ColorColumn", "NONE",    "#182333", "NONE")
	HighlightFor("LineNr",      "#FF0055", "NONE",    "NONE")
	HighlightFor("SignColumn",  "#00FFC8", "NONE",    "NONE")
	
	HighlightFor("DiffAdd",    "NONE", "#00ff84", "NONE")
	HighlightFor("DiffDelete", "NONE", "#ff1745", "NONE")
	HighlightFor("DiffText",   "NONE", "#00ff84", "NONE")
	HighlightFor("DiffChange", "NONE", "NONE",    "NONE")
	
	HighlightFor("VertSplit", "#FF0055", "#101116", "NONE")
	
	HighlightFor("IncSearch",  "NONE", "#283593", "NONE")
	HighlightFor("Search",     "NONE", "#283593", "NONE")
	HighlightFor("Substitute", "NONE", "#283593", "NONE")
	
	HighlightFor("MatchParen", "#FF0055", "#00FFC8", "NONE")
	HighlightFor("Whitespace", "#2B3E5A", "NONE",    "NONE")
	
	HighlightFor("WildMenu",  "#00FFC8", "NONE", "bold")
	HighlightFor("Directory", "#00FFC8", "NONE", "NONE")
	HighlightFor("Title",     "#c592ff", "NONE", "NONE")
	
	-- Cursor highlights
	HighlightFor("Cursor",       "#00FFC8", "NONE",    "NONE")
	HighlightFor("CursorLineNr", "#140007", "#00FFC8", "NONE")
	
	if vim.g.cyberpunk_cursorline == "black" then
	    HighlightFor("CursorLine",   "NONE", "#000000", "NONE")
	else
	    HighlightFor("CursorLine",   "#140007", "#FF0055", "NONE")
	end
	
	HighlightFor("CursorColumn", "NONE",    "NONE",    "NONE")
	
	-- Code highlights
	HighlightFor("Comment",      "#6766b3", "NONE", "NONE")
	HighlightFor("String",       "#76C1FF", "NONE", "NONE")
	HighlightFor("Number",       "#fffc58", "NONE", "NONE")
	HighlightFor("Float",        "#fffc58", "NONE", "NONE")
	HighlightFor("Boolean",      "#fffc58", "NONE", "NONE")
	HighlightFor("Character",    "#fffc58", "NONE", "NONE")
	
	HighlightFor("Conditional",  "#76C1FF", "NONE", "NONE")
	HighlightFor("Repeat",       "#76C1FF", "NONE", "NONE")
	HighlightFor("Label",        "#76C1FF", "NONE", "NONE")
	HighlightFor("Exception",    "#76C1FF", "NONE", "NONE")
	HighlightFor("Operator",     "#76C1FF", "NONE", "NONE")
	HighlightFor("Keyword",      "#76C1FF", "NONE", "NONE")
	HighlightFor("StorageClass", "#d57bff", "NONE", "NONE")
	HighlightFor("Statement",    "#76C1FF", "NONE", "NONE")
	
	HighlightFor("Function",     "#d57bff", "NONE", "NONE")
	HighlightFor("Identifier",   "#EEFFFF", "NONE", "NONE")
	
	HighlightFor("PreProc",      "#00FF9C", "NONE", "NONE")
	
	HighlightFor("Type",         "#00FF9C", "NONE", "NONE")
	HighlightFor("Structure",    "#00FF9C", "NONE", "NONE")
	HighlightFor("Typedef",      "#00FF9C", "NONE", "NONE")
	
	HighlightFor("Underlined",   "NONE",    "NONE", "NONE")
	HighlightFor("Todo",         "#00FF9C", "#372963", "italic")
	HighlightFor("Error",        "#ff3270", "NONE",   "undercurl")
	HighlightFor("WarningMsg",   "#009550", "NONE",   "NONE")
	HighlightFor("Special",      "#00FF9C", "NONE",   "italic")
	HighlightFor("Tag",          "#00FF9C", "NONE",   "undercurl")
	
	-- Pmenu highlights
	HighlightFor("Pmenu",      "#ff0055", "#140007", "NONE")
	HighlightFor("PmenuSel",   "#140007", "#ff0055", "NONE")
	HighlightFor("PmenuSbar",  "NONE",    "#ff0055", "NONE")
	HighlightFor("PmenuThumb", "NONE",    "NONE",    "NONE")
	
	-- Status line highlights
	HighlightFor("StatusLine",   "#ff0055", "#1d000a", "bold")
	HighlightFor("StatusLineNC", "#ff0055", "#000000", "NONE")
	
	-- Tab page highlights
	HighlightFor("TabLine",     "#FF4081", "NONE", "NONE")
	HighlightFor("TabLineFill", "NONE",    "NONE", "NONE")
	HighlightFor("TabLineSel",  "#FF4081", "NONE", "bold")
	
	-- Fold highlights
	HighlightFor("Folded",     "#00FFC8", "NONE", "italic")
	HighlightFor("FoldColumn", "#00FFC8", "NONE", "NONE")
--loads the theme

-- Set ignorecase option
	vim.o.ignorecase = true	
-- Set ignorecase option

-- uses the vim-plug plugin to load the nvim tree plugin, the webdevicons plugin,
-- autopairs plugin
	local vim = vim
	local Plug = vim.fn['plug#']
	
	vim.call('plug#begin')
	Plug('nvim-tree/nvim-web-devicons')
	Plug('nvim-tree/nvim-tree.lua')
	Plug('windwp/nvim-autopairs')
	vim.call('plug#end')
	
	-- disable netrw at the very start of your init.lua
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	
	-- optionally enable 24-bit colour
	vim.opt.termguicolors = true
	
	-- empty setup using defaults
	require("nvim-tree").setup()
	
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
	require('nvim-autopairs').setup({
	    disable_in_visualblock = _G.disable_in_visualblock,
	})
	
	-- Map F3 key to toggle the setting
	vim.api.nvim_set_keymap('n', '<F3>', ':lua toggle_autopairs_visualblock()<CR>', { noremap = true, silent = true })

	-- maps the F2 key to toggle the nvim tree plugin
	vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- uses the vim-plug plugin to load the nvim tree plugin, the webdevicons plugin,
-- autopairs plugin


-- loads lazy plugin to load the vim dashboard plugin
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not (vim.uv or vim.loop).fs_stat(lazypath) then
	  vim.fn.system({
	    "git",
	    "clone",
	    "--filter=blob:none",
	    "https://github.com/folke/lazy.nvim.git",
	    "--branch=stable", -- latest stable release
	    lazypath,
	  })
	end
	vim.opt.rtp:prepend(lazypath)
	
	
	require("lazy").setup(
	{
	  'nvimdev/dashboard-nvim',
	  event = 'VimEnter',
	  config = function()
	    require('dashboard').setup{
		    theme='hyper',
		    config = {
	    		header = {
  				('                              ##                              '),
  				('                            ##+##                             '),
  				('     #######################+----##   ######################  '),
  				('    ##-...................#+------+###-...................-#  '),
  				('    ##-...................#+--------+#+...................-#  '),
  				('     ###..............+###+-----------###-.............+####  '),
  				('        ##..............+#+-------------#+.............##     '),
  				('          ##-.............+#+-----------#+.............##     '),
  				('        #  ###-.............+#+---------#+.............##     '),
  				('        ########-.............+#+-------#+.............##     '),
  				('        #--##--+##..............-#+-----#+.............##     '),
  				('        #-..-##---##..............-#+---#+.............##     '),
  				('     ####-....-##+-+##-.............-#+-#+.............##     '),
  				('   ###+-#-......-##+-+##..............-##+.............###    '),
  				(' ###+---#-.........+#+-+##-.............--.............#++##  '),
  				('##+-----#-...........+#--+#+...........................#+--###'),
  				(' ##+----#-.............#+---##.........................#++##  '),
  				('   ###+-#-.............#+----+#+.......................###    '),
  				('     ####-.............#+------+##.....................##     '),
  				('       ##-.............#+--------+##...................##     '),
  				('        #-.............#+----------+#+.................##     '),
  				('        #-.............#+------------+#+-..............##     '),
  				('        #-.............#+--------------+#+.............##     '),
  				('        #-.............#+----------------+##...........##     '),
  				('    ##+..................-#+-------------####+.........##     '),
  				('    ##-...................#+----------+###   ##+.......##     '),
  				('     ##------------------+#+--------+###       ###+++++##     '),
  				('      ####################+-------+###            ####        '),
  				('                          ##-----###                          '),
  				('                            ##+##                             '),
  				('                              ##                              '),
	    		},
		},
	}
	  end,
	  dependencies = { {'nvim-tree/nvim-web-devicons'}}
	}
	)
-- loads lazy plugin to load the vim dashboard plugin
                                                                                                    
                                                                                                   
