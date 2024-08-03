vim.api.nvim_set_keymap("n", "<Space>", "<Nop>", {noremap=true})
vim.g.mapleader=" "

vim.api.nvim_set_keymap("n", ":", ";", {noremap=true})
vim.api.nvim_set_keymap("n", ";", ":", {noremap=true})

vim.api.nvim_set_keymap("n", "<leader>D",           ":Dashboard<CR>", {noremap=true})
-- Telescope
    vim.api.nvim_set_keymap("n", "<leader>tf",          ":Telescope find_files<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>tof",         ":Telescope oldfiles<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>ts",          ":Telescope live_grep<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>tb",           ":Telescope buffers<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>T",           ":Telescope<CR>", {noremap=true})
-- Telescope
vim.api.nvim_set_keymap("n", "<leader>f",           ":FloatermNew --width=0.95 --height=1.0 --title=YAZI --titleposition=center --opener=edit yazi<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>g",           ":FloatermNew --width=0.9 --height=0.9 --title=LAZYGIT --titleposition=center lazygit<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader><leader>t",   ":FloatermNew --width=1.0 --height=0.9 --title=TERMINAL --titleposition=center<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>d",           ":lua require('dapui').toggle()<CR>", {noremap=true})

function ChangeDirectoryToCurrentAndShow()
    vim.cmd("cd %:h")
    vim.cmd("pwd")
end
vim.api.nvim_set_keymap("n", "<leader>cd", ":lua ChangeDirectoryToCurrentAndShow()<CR>", {noremap=true})


function SaveAndSource()
    vim.cmd("w")
    vim.cmd("source%")
end
vim.api.nvim_set_keymap("n", "<leader>R", ":lua SaveAndSource()<CR>", {noremap=true})

function UPDATEALLSHIT()
    vim.cmd("PlugUpgrade")
    vim.cmd("PlugClean")
    vim.cmd("PlugUpdate")
    vim.cmd("Mason")
    vim.cmd("MasonUpdate")
end
vim.api.nvim_set_keymap("n", "<F5>", ":lua UPDATEALLSHIT()<CR>", {noremap=true})

vim.api.nvim_set_keymap("n", "<leader>w", ":lua require('nvim-window').pick()<CR>", {noremap=true})
