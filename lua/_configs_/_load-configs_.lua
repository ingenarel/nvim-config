local vc =  vim.opt
-- show the absolute line numbers and the relative line numbers
	vc.number = true
	vc.relativenumber = true
-- show the absolute line numbers and the relative line numbers

-- tab changes
    vc.expandtab = true      -- Use spaces instead of tabs
    vc.tabstop = 4           -- Number of spaces that a <Tab> in the file counts for
    vc.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent
    vc.softtabstop = 4       -- Number of spaces that a <Tab> counts for while performing editing operations
-- tab changes

vc.clipboard = "unnamedplus" --uses the system clipboard

vc.scrolloff = 33 -- keep the scroll in the middle.

vc.autoread = true --autoreads the file so if a background change happens nvim detects it

vc.ignorecase = true	-- Set ignorecase option

-- fold options
    vc.foldenable = true
    vc.foldlevel = 99
    vc.foldmethod = "indent"
    -- vim.o.foldcolumn = '1'
    -- vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- fold options

vc.cursorline = true -- set cursorline
vc.cursorcolumn = true
vc.colorcolumn = "80,100,120"

vc.laststatus = 3

vc.mouse = ""
