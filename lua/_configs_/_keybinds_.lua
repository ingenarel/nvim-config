vim.api.nvim_set_keymap("n", "<Space>", "<Nop>", {noremap=true})
vim.g.mapleader=" "

vim.api.nvim_set_keymap("n", ":", ";", {noremap=true})
vim.api.nvim_set_keymap("n", ";", ":", {noremap=true})

vim.api.nvim_set_keymap("n", "<leader>d", ":Dashboard<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>f", ":FloatermNew --width=0.95 --height=1.0 --name='YAZI' --opener=edit yazi<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>tf", ":Telescope find_files<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>ts", ":Telescope live_grep<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>T", ":Telescope<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader>g", ":FloatermNew --width=0.9 --height=0.9 --name='LAZYGIT' lazygit<CR>", {noremap=true})
vim.api.nvim_set_keymap("n", "<leader><leader>t", ":FloatermNew --width=1.0 --height=1.0 <CR>", {noremap=true})


function SaveAndSource()
    vim.cmd("w")
    vim.cmd("source%")
end
vim.api.nvim_set_keymap("n", "<leader>R", ":lua SaveAndSource()<CR>", {noremap=true})
