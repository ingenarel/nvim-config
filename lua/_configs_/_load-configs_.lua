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

vim.o.wrap = false -- disable line wrap

vim.o.clipboard = "unnamedplus" --uses the system clipboard

vim.o.scrolloff = 31 -- keep the scroll in the middle.

vim.o.autoread = true --autoreads the file so if a background change happens nvim detects it

vim.o.ignorecase = true	-- Set ignorecase option

-- fold options
    vim.o.foldenable = true
    vim.o.foldmethod = 'indent'
    vim.o.foldlevel = 99
    -- vim.o.foldcolumn = '1'
    -- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- fold options

vim.wo.signcolumn = yes -- signcolumn?

vim.o.cursorline = true -- set cursorline
