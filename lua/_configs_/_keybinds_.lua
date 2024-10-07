local akms = vim.api.nvim_set_keymap
local kms = vim.keymap.set
-- leader map
    akms("n", "<Space>", "<Nop>", {noremap=true, silent=true})
    vim.g.mapleader=" "
-- leader map

function CUSTOM_KEYBIND_SaveAndSource()
    vim.cmd("w")
    vim.cmd("source%")
end
akms("n", "<leader>R", ":lua CUSTOM_KEYBIND_SaveAndSource()<CR>", {noremap=true, silent=true})

function CUSTOM_KEYBIND_ChangeDirectoryToCurrentAndShow()
    vim.cmd("cd %:h")
    vim.cmd("pwd")
end
akms("n", "<leader>cd", ":lua CUSTOM_KEYBIND_ChangeDirectoryToCurrentAndShow()<CR>", {noremap=true, silent=true})

function CUSTOM_KEYBIND_UPDATEALLSHIT()
    vim.cmd("PlugUpgrade") -- upgrades plug
    vim.cmd("PlugClean") -- delets plugin that's not being used
    vim.cmd("PlugUpdate") -- updates plugins
    vim.cmd("Mason") -- opens up mason
    vim.cmd("MasonUpdate") -- updates mason's registries
    vim.cmd("TSUpdate") -- updates mason's registries
end
akms("n", "<F5>", ":lua CUSTOM_KEYBIND_UPDATEALLSHIT()<CR>", {noremap=true, silent=true})

--remappping
    akms("n", ":", ";", {noremap=true})
    akms("n", ";", ":", {noremap=true})
--remappping

-- Telescope
    akms("n", "<leader>tf",  ":Telescope find_files<CR>", {noremap=true, silent=true})
    akms("n", "<leader>tof", ":Telescope oldfiles<CR>", {noremap=true, silent=true})
    akms("n", "<leader>ts",  ":Telescope live_grep<CR>", {noremap=true, silent=true})
    akms("n", "<leader>tb",  ":Telescope buffers<CR>", {noremap=true, silent=true})
    akms("n", "<leader>T",   ":Telescope<CR>", {noremap=true, silent=true})
-- Telescope
-- terminal
    akms("n", "<leader>f",         ":FloatermNew --width=0.95 --height=1.0 --title=YAZI --titleposition=center --opener=edit yazi<CR>", {noremap=true, silent=true})
    akms("n", "<leader><leader>t", ":FloatermNew --width=1.0 --height=0.9 --title=TERMINAL --titleposition=center<CR>", {noremap=true, silent=true})
-- terminal
-- git
    akms("n", "<leader>gg",         ":FloatermNew --width=0.9 --height=0.9 --title=LAZYGIT --titleposition=center lazygit<CR>", {noremap=true, silent=true})
    akms("n", "<leader>gf",         ":Telescope git_files<CR>", {noremap=true, silent=true})
    akms("n", "<leader>gb",         ":Telescope git_branches<CR>", {noremap=true, silent=true})
    akms("n", "<leader>gc",         ":Telescope git_commits<CR>", {noremap=true, silent=true})
    akms("n", "<leader>gs",         ":Telescope git_status<CR>", {noremap=true, silent=true})
-- git
-- parenthesis
    akms("n", "<leader>px", "mx%x`xx", {noremap=true, silent=true}) -- remove parenthesis
    akms("n", "<leader>p(", "mx%r(`xr)", {noremap=true, silent=true}) -- change parenthesis to ()
    akms("n", "<leader>p)", "mx%r(`xr)", {noremap=true, silent=true}) -- change parenthesis to ()
    akms("n", "<leader>p[", "mx%r]`xr[", {noremap=true, silent=true}) -- change parenthesis to []
    akms("n", "<leader>p]", "mx%r[`xr]", {noremap=true, silent=true}) -- change parenthesis to []
    akms("n", "<leader>p{", "mx%r}`xr{", {noremap=true, silent=true}) -- change parenthesis to {}
    akms("n", "<leader>p}", "mx%r{`xr}", {noremap=true, silent=true}) -- change parenthesis to {}
-- parenthesis

-- color-picker
    -- replace
        kms("n", "<leader>cprr", require("color-picker").replace) -- color picker replace normal
        kms("n", "<leader>cpr2", function() require("color-picker").replace{height=20, width=40} end) -- color picker replace 2 size
        kms("n", "<leader>cpr3", function() require("color-picker").replace{height=30, width=60} end) -- color picker replace 3 size
        kms("n", "<leader>cpr4", function() require("color-picker").replace{height=40, width=80} end) -- color picker replace 4 size
        kms("n", "<leader>cpr5", function() require("color-picker").replace{height=50, width=100} end) -- color picker replace 5 size
        kms("n", "<leader>cpr6", function() require("color-picker").replace{height=60, width=120} end) -- color picker replace 6 size
        kms("n", "<leader>cpr7", function() require("color-picker").replace{height=70, width=140} end) -- color picker replace 7 size
        kms("n", "<leader>cpr8", function() require("color-picker").replace{height=80, width=160} end) -- color picker replace 8 size
        kms("n", "<leader>cpr9", function() require("color-picker").replace{height=90, width=180} end) -- color picker replace 9 size
        kms("n", "<leader>cpr0", function() require("color-picker").replace{height=100, width=200} end) -- color picker replace 10 size
    -- replace
    -- insert
        kms("n", "<leader>cpir", require("color-picker").insert) -- color picker insert normal
        kms("n", "<leader>cpi2", function() require("color-picker").insert{height=20, width=40} end) -- color picker insert 2 size
        kms("n", "<leader>cpi3", function() require("color-picker").insert{height=30, width=60} end) -- color picker insert 3 size
        kms("n", "<leader>cpi4", function() require("color-picker").insert{height=40, width=80} end) -- color picker insert 4 size
        kms("n", "<leader>cpi5", function() require("color-picker").insert{height=50, width=100} end) -- color picker insert 5 size
        kms("n", "<leader>cpi6", function() require("color-picker").insert{height=60, width=120} end) -- color picker insert 6 size
        kms("n", "<leader>cpi7", function() require("color-picker").insert{height=70, width=140} end) -- color picker insert 7 size
        kms("n", "<leader>cpi8", function() require("color-picker").insert{height=80, width=160} end) -- color picker insert 8 size
        kms("n", "<leader>cpi9", function() require("color-picker").insert{height=90, width=180} end) -- color picker insert 9 size
        kms("n", "<leader>cpi0", function() require("color-picker").insert{height=100, width=200} end) -- color picker insert 10 size
    -- insert
    akms("n", "<leader>cpRh", ":ColorPickerReformat hex<CR>", {noremap=true, silent=true}) -- color picker reformat hex
    akms("n", "<leader>cpRr", ":ColorPickerReformat rgb<CR>", {noremap=true, silent=true}) -- color picker reformat rgb
    akms("n", "<leader>cpRa", ":ColorPickerReformat rgba<CR>", {noremap=true, silent=true}) -- color picker reformat rgba
-- color-picker

-- dap
    akms("n", "<leader>dd",  ":lua require('dapui').toggle()<CR>", {noremap=true, silent=true}) -- debug thing ui toggle
    kms("n", "<Leader>db", function() require("dap").toggle_breakpoint() end)
    kms("n", "<C-Right>", function() require("dap").continue() end)
    kms("n", "<C-Up>", function() require("dap").step_over() end)
    kms("n", "<C-Down>", function() require("dap").step_into() end)
    kms("n", "<C-Left>", function() require("dap").step_out() end)
    -- kms("n", "<Leader>dr", function() require("dap").repl.open() end)
    -- kms("n", "<Leader>dl", function() require("dap").run_last() end)
-- dap

akms("n", "<leader>D",  ":Dashboard<CR>", {noremap=true, silent=true}) -- opens the dashboard
akms("n", "<leader>lw", ":set wrap!<CR>", {noremap=true, silent=true}) -- wrap on off (just for that window)
akms("n", "<leader>w",  ":lua require('nvim-window').pick()<CR>", {noremap=true, silent=true}) -- pick a window fast
akms("n", "<leader>u",  ":lua require('telescope').extensions.undo.undo()<CR>", {noremap=true, silent=true}) -- Telescope undo tree

