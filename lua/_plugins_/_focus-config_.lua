require("focus").setup{
    enable = true, -- Enable module
    commands = true, -- Create Focus commands
    autoresize = {
        enable = true, -- Enable or disable auto-resizing of splits
        minwidth = 10, -- Force minimum width for the unfocused window
        minheight = 10, -- Force minimum height for the unfocused window
        height_quickfix = 10, -- Set the height of quickfix panel
    },
    split = {
        bufnew = true, -- Create blank buffer for new split windows
        tmux = false, -- Create tmux splits instead of neovim splits
    },
}
local ignore_filetypes = { "dapui_watches", "dapui_stacks", "dapui_breakpoints", "dapui_scope", "dapui_console", "dap-repl"}
-- local ignore_buftypes = {"nofile", "prompt", "popup"}

local augroup =
    vim.api.nvim_create_augroup("FocusDisable", { clear = true })

-- vim.api.nvim_create_autocmd("WinEnter", {
--     group = augroup,
--     callback = function(_)
--         if vim.tbl_contains(ignore_buftypes, vim.bo.buftype)
--         then
--             vim.w.focus_disable = true
--         else
--             vim.w.focus_disable = false
--         end
--     end,
--     desc = "Disable focus autoresize for BufType",
-- })

vim.api.nvim_create_autocmd("FileType", {
    group = augroup,
    callback = function(_)
        if vim.tbl_contains(ignore_filetypes, vim.bo.filetype) then
            vim.b.focus_disable = true
        else
            vim.b.focus_disable = false
        end
    end,
    desc = "Disable focus autoresize for FileType",
})
