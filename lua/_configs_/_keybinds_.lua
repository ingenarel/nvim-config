vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true})
vim.g.mapleader=" "

vim.api.nvim_set_keymap('n', '<leader>d', ':Dashboard<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>f', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>tf', ':Telescope find_files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>T', ':Telescope<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>g', ':LazyGit<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader><leader>', ':terminal<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true})
