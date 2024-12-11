-- leader map {{{1
    CK_SetKeymap_n("<Space>", "<Nop>")
    vim.g.mapleader=" "
-- leader map }}}1

local vo =  vim.opt

-- tab changes
    vo.expandtab = true      -- Use spaces instead of tabs
    vo.tabstop = 4           -- Number of spaces that a <Tab> in the file counts for
    vo.shiftwidth = 4        -- Number of spaces to use for each step of (auto)indent
    vo.softtabstop = 4       -- Number of spaces that a <Tab> counts for while performing editing operations
-- tab changes

vo.clipboard = "unnamedplus" --uses the system clipboard

vo.scrolloff = 39 -- keep the scroll in the middle.

vo.ignorecase = true	-- Set ignorecase option

vo.foldmethod = "marker"
vo.foldcolumn = "auto"
vo.signcolumn = "auto"
-- TODO: find out a way to make autocomplete semi transparent without setting winblend to 1
-- vo.winblend = 1

vo.cursorline = true -- set cursorline
vo.cursorcolumn = true
vo.textwidth = 120

vim.api.nvim_create_autocmd(
    "BufEnter",
    {
        callback = function()
            if vim.opt_local.commentstring ~= "" then
                -- todo: this doesn't fucking work after i've split the same buffer.
                vim.cmd("match Todo =\\c"..vim.split(vim.opt_local.commentstring._value, " ")[1].." *[@nodoc]* *todo.*=")
            end
        end
    }
)

vim.api.nvim_create_autocmd(
    "FileType",
    {
        callback = function()
            local currentFileType = vim.opt_local.filetype._value
            if vim.list_contains(IGNORE_FILETYPES_ALL_FOR_CONFIG(), currentFileType) then
                vim.opt_local.textwidth = 0
                vim.opt_local.foldmethod = "manual"
            -- else
            --     vim.o.fileformat = "unix"
            end
            if currentFileType == "help" then
                vim.opt_local.colorcolumn = ""
            end
        end
    }
)

-- TODO: open an issue about either making this an actual thing, or removing this from the help page.
-- vim.api.nvim_create_autocmd(
--     "UserGettingBored",
--     {
--         callback = function (_)
--             print("oi")
--         end
--     }
-- )

if vo.shell._value == "cmd.exe" then
    vim.g.floaterm_shell = "%SystemRoot%\\System32\\cmd.exe /k %userprofile%\\.cmdrc.cmd"
end

vo.colorcolumn = "+0,-20,-40"
vo.laststatus = 3

vim.lsp.log_level = vim.lsp.log_levels.ERROR
vim.lsp.set_log_level("ERROR")
vo.mouse = ""
vo.fileformats = "unix,dos"
-- vo.matchpairs = "(:),{:},[:],<:>"
vo.matchpairs = "(:),{:},[:]"
