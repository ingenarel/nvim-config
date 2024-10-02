-- leader map
    vim.api.nvim_set_keymap("n", "<Space>", "<Nop>", {noremap=true})
    vim.g.mapleader=" "
-- leader map

function SaveAndSource()
    vim.cmd("w")
    vim.cmd("source%")
end
vim.api.nvim_set_keymap("n", "<leader>R", ":lua SaveAndSource()<CR>", {noremap=true})

function ChangeDirectoryToCurrentAndShow()
    vim.cmd("cd %:h")
    vim.cmd("pwd")
end
vim.api.nvim_set_keymap("n", "<leader>cd", ":lua ChangeDirectoryToCurrentAndShow()<CR>", {noremap=true})

function UPDATEALLSHIT()
    vim.cmd("PlugUpgrade")
    vim.cmd("PlugClean")
    vim.cmd("PlugUpdate")
    vim.cmd("Mason")
    vim.cmd("MasonUpdate")
    vim.cmd("FloatermNew --width=0.5 --height=0.5 --title=Debugpy_Update --titleposition=center pip3 install debugpy -U")
end
vim.api.nvim_set_keymap("n", "<F5>", ":lua UPDATEALLSHIT()<CR>", {noremap=true})

--remappping
    vim.api.nvim_set_keymap("n", ":", ";", {noremap=true})
    vim.api.nvim_set_keymap("n", ";", ":", {noremap=true})
--remappping

-- Telescope
    vim.api.nvim_set_keymap("n", "<leader>tf",  ":Telescope find_files<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>tof", ":Telescope oldfiles<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>ts",  ":Telescope live_grep<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>tb",  ":Telescope buffers<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>T",   ":Telescope<CR>", {noremap=true})
-- Telescope
-- terminal
    vim.api.nvim_set_keymap("n", "<leader>f",         ":FloatermNew --width=0.95 --height=1.0 --title=YAZI --titleposition=center --opener=edit yazi<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader><leader>t", ":FloatermNew --width=1.0 --height=0.9 --title=TERMINAL --titleposition=center<CR>", {noremap=true})
-- terminal
-- git
    vim.api.nvim_set_keymap("n", "<leader>gg",         ":FloatermNew --width=0.9 --height=0.9 --title=LAZYGIT --titleposition=center lazygit<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>gf",         ":Telescope git_files<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>gb",         ":Telescope git_branches<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>gc",         ":Telescope git_commits<CR>", {noremap=true})
    vim.api.nvim_set_keymap("n", "<leader>gs",         ":Telescope git_status<CR>", {noremap=true})
-- git
-- parenthesis
    vim.api.nvim_set_keymap("n", "<leader>px", "mx%x`xx", {noremap=true}) -- remove parenthesis
    vim.api.nvim_set_keymap("n", "<leader>p(", "mx%r)`xr(", {noremap=true}) -- change parenthesis to ()
    vim.api.nvim_set_keymap("n", "<leader>p)", "mx%r(`xr)", {noremap=true}) -- change parenthesis to ()
    vim.api.nvim_set_keymap("n", "<leader>p[", "mx%r]`xr[", {noremap=true}) -- change parenthesis to []
    vim.api.nvim_set_keymap("n", "<leader>p]", "mx%r[`xr]", {noremap=true}) -- change parenthesis to []
    vim.api.nvim_set_keymap("n", "<leader>p{", "mx%r}`xr{", {noremap=true}) -- change parenthesis to {}
    vim.api.nvim_set_keymap("n", "<leader>p}", "mx%r{`xr}", {noremap=true}) -- change parenthesis to {}
-- parenthesis

-- color-picker
    -- replace
        vim.keymap.set("n", "<leader>cprr", require('color-picker').replace) -- color picker replace normal
        vim.keymap.set("n", "<leader>cpr2", function() require('color-picker').replace{height=20, width=40} end) -- color picker replace 2 size
        vim.keymap.set("n", "<leader>cpr3", function() require('color-picker').replace{height=30, width=60} end) -- color picker replace 3 size
        vim.keymap.set("n", "<leader>cpr4", function() require('color-picker').replace{height=40, width=80} end) -- color picker replace 4 size
        vim.keymap.set("n", "<leader>cpr5", function() require('color-picker').replace{height=50, width=100} end) -- color picker replace 5 size
        vim.keymap.set("n", "<leader>cpr6", function() require('color-picker').replace{height=60, width=120} end) -- color picker replace 6 size
        vim.keymap.set("n", "<leader>cpr7", function() require('color-picker').replace{height=70, width=140} end) -- color picker replace 7 size
        vim.keymap.set("n", "<leader>cpr8", function() require('color-picker').replace{height=80, width=160} end) -- color picker replace 8 size
        vim.keymap.set("n", "<leader>cpr9", function() require('color-picker').replace{height=90, width=180} end) -- color picker replace 9 size
        vim.keymap.set("n", "<leader>cpr0", function() require('color-picker').replace{height=100, width=200} end) -- color picker replace 10 size
    -- replace
    -- insert
        vim.keymap.set("n", "<leader>cpir", require('color-picker').insert) -- color picker insert normal
        vim.keymap.set("n", "<leader>cpi2", function() require('color-picker').insert{height=20, width=40} end) -- color picker insert 2 size
        vim.keymap.set("n", "<leader>cpi3", function() require('color-picker').insert{height=30, width=60} end) -- color picker insert 3 size
        vim.keymap.set("n", "<leader>cpi4", function() require('color-picker').insert{height=40, width=80} end) -- color picker insert 4 size
        vim.keymap.set("n", "<leader>cpi5", function() require('color-picker').insert{height=50, width=100} end) -- color picker insert 5 size
        vim.keymap.set("n", "<leader>cpi6", function() require('color-picker').insert{height=60, width=120} end) -- color picker insert 6 size
        vim.keymap.set("n", "<leader>cpi7", function() require('color-picker').insert{height=70, width=140} end) -- color picker insert 7 size
        vim.keymap.set("n", "<leader>cpi8", function() require('color-picker').insert{height=80, width=160} end) -- color picker insert 8 size
        vim.keymap.set("n", "<leader>cpi9", function() require('color-picker').insert{height=90, width=180} end) -- color picker insert 9 size
        vim.keymap.set("n", "<leader>cpi0", function() require('color-picker').insert{height=100, width=200} end) -- color picker insert 10 size
    -- insert
    vim.api.nvim_set_keymap("n", "<leader>cpRh", ":ColorPickerReformat hex<CR>", {noremap=true}) -- color picker reformat hex
    vim.api.nvim_set_keymap("n", "<leader>cpRr", ":ColorPickerReformat rgb<CR>", {noremap=true}) -- color picker reformat rgb
    vim.api.nvim_set_keymap("n", "<leader>cpRa", ":ColorPickerReformat rgba<CR>", {noremap=true}) -- color picker reformat rgba
-- color-picker

vim.api.nvim_set_keymap("n", "<leader>D",  ":Dashboard<CR>", {noremap=true}) -- opens the dashboard
vim.api.nvim_set_keymap("n", "<leader>d",  ":lua require('dapui').toggle()<CR>", {noremap=true}) -- debug thing ui toggle
vim.api.nvim_set_keymap("n", "<leader>lw", ":set wrap!<CR>", {noremap=true}) -- wrap on off (just for that window)
vim.api.nvim_set_keymap("n", "<leader>w",  ":lua require('nvim-window').pick()<CR>", {noremap=true}) -- pick a window fast
vim.api.nvim_set_keymap("n", "<leader>u",  ":lua require('telescope').extensions.undo.undo()<CR>", {noremap=true}) -- Telescope undo tree

