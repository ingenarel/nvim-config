vim.api.nvim_set_keymap('n', '<F2>', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F3>', ':Telescope find_files<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<F15>', ':Telescope<CR>', {noremap = true}) -- shift f3 is f15
vim.api.nvim_set_keymap('n', '<F4>', ':LazyGit<CR>', {noremap = true})

