-- show the absolute line numbers and the relative line numbers
	vim.opt.nu = true
	vim.opt.relativenumber = true
-- show the absolute line numbers and the relative line numbers

-- tab changes
    vim.opt.expandtab = true      -- Use spaces instead of tabs
    vim.opt.tabstop = 4           -- Number of spaces that a <Tab> in the file counts for
    vim.opt.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent
    vim.opt.softtabstop = 4       -- Number of spaces that a <Tab> counts for while performing editing operations
-- tab changes

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

-- fold options
    vim.o.foldenable = true
    vim.o.foldmethod = 'indent'
    vim.o.foldlevel = 99
    vim.o.foldcolumn = '1'
-- fold options

-- signcolumn?
    vim.wo.signcolumn = yes
-- signcolumn?

-- set cursorline
    vim.o.cursorline = true
-- set cursorline
