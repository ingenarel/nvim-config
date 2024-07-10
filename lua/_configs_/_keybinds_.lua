vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F3>', ':Telescope find_files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F15>', ':Telescope<CR>', {noremap = true}) -- shift f3 is <F15>
vim.api.nvim_set_keymap('n', '<F4>', ':LazyGit<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F25>', ':help<CR>', {noremap = true}) -- ctrl f1 is <F25>
vim.api.nvim_set_keymap('n', '<F1>', ':Dashboard<CR>', {noremap = true})

