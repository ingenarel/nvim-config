local function nsk_n(keymap, action)
    vim.api.nvim_set_keymap("n", keymap, action, {noremap=true, silent=true})
end

local kms = vim.keymap.set
local cmd = vim.cmd
-- leader map
    nsk_n("<Space>", "<Nop>")
    vim.g.mapleader=" "
-- leader map

function CUSTOM_KEYBIND_SaveAndSource()
    cmd("w")
    cmd("source%")
end
nsk_n("<leader>R", ":lua CUSTOM_KEYBIND_SaveAndSource()<CR>")

function CUSTOM_KEYBIND_ChangeDirectoryToCurrentAndShow()
    cmd("cd %:h")
    cmd("pwd")
end
nsk_n("<leader>cd", ":lua CUSTOM_KEYBIND_ChangeDirectoryToCurrentAndShow()<CR>")

function CUSTOM_KEYBIND_UPDATEALLSHIT()
    cmd("MasonUpdate") -- updates mason's registries
    cmd("PlugUpgrade") -- upgrades plug
    cmd("PlugClean") -- delets plugin that's not being used
    cmd("PlugUpdate") -- updates plugins
    cmd("Mason") -- opens up mason
    -- cmd("FloatermNew --width=0.4 --height=0.3 --title=Python_Updates --titleposition=center --position=bottomright pip3 install debugpy black -U") -- install debugpy and black if not installed, if it is, try to update it
    cmd("!pip3 install debugpy black -U")
end
nsk_n("<F5>", ":lua CUSTOM_KEYBIND_UPDATEALLSHIT()<CR>")

--remappping
    vim.api.nvim_set_keymap("n", ";", ":", {noremap=true})
    vim.api.nvim_set_keymap("n", ":", ";", {noremap=true})
--remappping

-- Telescope
    nsk_n("<leader>f",  ":Telescope find_files<CR>")
    nsk_n("<leader>tof", ":Telescope oldfiles<CR>")
    nsk_n("<leader>ts",  ":Telescope live_grep<CR>")
    nsk_n("<leader>tb",  ":Telescope buffers<CR>")
    nsk_n("<leader>tt",  ":Telescope treesitter<CR>")
    nsk_n("<leader>T",   ":Telescope<CR>")
    nsk_n("<leader>u",  ":lua require('telescope').extensions.undo.undo()<CR>") -- Telescope undo tree
-- Telescope
-- terminal
    nsk_n("<leader><C-f>", ":FloatermNew --width=0.95 --height=1.0 --title=YAZI --titleposition=center --opener=edit yazi<CR>")
    nsk_n("<leader><leader>t", ":FloatermNew --width=1.0 --height=0.9 --title=TERMINAL --titleposition=center<CR>")
-- terminal
-- git
    nsk_n("<leader><C-g>", ":FloatermNew --width=0.9 --height=0.9 --title=LAZYGIT --titleposition=center lazygit<CR>")
    -- Telescope
        nsk_n("<leader>ggf", ":Telescope git_files<CR>")
        nsk_n("<leader>gb", ":Telescope git_branches<CR>")
        nsk_n("<leader>ggc", ":Telescope git_commits<CR>")
        nsk_n("<leader>gs", ":Telescope git_status<CR>")
    -- Telescope
    -- git wrapper
        nsk_n("<leader>ga", ":!git add %")
        nsk_n("<leader>gr", ":!git reset %")
        nsk_n("<leader>gb", ":!git branch<CR>")
        function CUSTOM_KEYBIND_GitWrapperCommit()
            cmd("!git add %")
            local commit_msg = vim.fn.input("Commit msg => ")
            cmd("!git commit -m " .. '"' .. commit_msg .. '"')
        end
        nsk_n("<leader>gc", ":lua CUSTOM_KEYBIND_GitWrapperCommit()<CR>")
        nsk_n("<leader>gS", ":lua CUSTOM_KEYBIND_GitWrapperSwitch()<CR>")
    -- git wrapper
-- git
-- parenthesis
    nsk_n("<leader>px", "mx%x`xx") -- remove parenthesis
    nsk_n("<leader>p(", "mx%r)`xr(") -- change parenthesis to ()
    nsk_n("<leader>p)", "mx%r(`xr)") -- change parenthesis to ()
    nsk_n("<leader>p[", "mx%r]`xr[") -- change parenthesis to []
    nsk_n("<leader>p]", "mx%r[`xr]") -- change parenthesis to []
    nsk_n("<leader>p{", "mx%r}`xr{") -- change parenthesis to {}
    nsk_n("<leader>p}", "mx%r{`xr}") -- change parenthesis to {}
-- parenthesis

-- color-picker
    -- chatgpt generated starts
    local color_picker = require("color-picker")
    local function set_color_picker_keymaps(base_key, mode)
        local sizes = { 20, 30, 40, 50, 60, 70, 80, 90, 100 }
        vim.keymap.set("n", base_key .. "r", color_picker[mode]) -- Normal size
        for i, size in ipairs(sizes) do
            vim.keymap.set("n", base_key .. (i+1), function()
                color_picker[mode]({height=size, width=size * 2})
            end)
        end
    end
    set_color_picker_keymaps("<leader>cpr", "replace")
    set_color_picker_keymaps("<leader>cpi", "insert")
    -- chatgpt generated ends
    nsk_n("<leader>cpRh", ":ColorPickerReformat hex<CR>") -- color picker reformat hex
    nsk_n("<leader>cpRr", ":ColorPickerReformat rgb<CR>") -- color picker reformat rgb
    nsk_n("<leader>cpRa", ":ColorPickerReformat rgba<CR>") -- color picker reformat rgba
-- color-picker

-- dap
    nsk_n("<leader>dd",  ":lua require('dapui').toggle()<CR>") -- debug thing ui toggle
    kms("n", "<Leader>db", function() require("dap").toggle_breakpoint() end)
    kms("n", "<C-Right>", function() require("dap").continue() end)
    kms("n", "<C-Up>", function() require("dap").step_over() end)
    kms("n", "<C-Down>", function() require("dap").step_into() end)
    kms("n", "<C-Left>", function() require("dap").step_out() end)
    -- kms("n", "<Leader>dr", function() require("dap").repl.open() end)
    -- kms("n", "<Leader>dl", function() require("dap").run_last() end)
-- dap

function CUSTOM_KEYBIND_UseFormatter()
    local current_filetype = vim.bo.filetype
    if current_filetype == "python" then
        cmd("w")
        cmd("!black %")
    else
        print("Filetype not supported")
    end
end
nsk_n("<leader><leader>f", ":lua CUSTOM_KEYBIND_UseFormatter()<CR>")

function CUSTOM_KEYBIND_RunFile()
    local current_filetype = vim.bo.filetype
    local function floating_terminal(title, stuff)
        cmd("FloatermNew --width=1.0 --height=0.95 --title=" .. title .. " --titleposition=center --autoclose=0 " .. stuff)
    end
    if current_filetype == "python" then
        cmd("w")
        floating_terminal(current_filetype, "python %")
    elseif current_filetype == "sh" then
        cmd("w")
        floating_terminal("bash", "bash %")
    elseif current_filetype == "c" then
        local file_without_extension = vim.fn.fnamemodify(vim.fn.expand('%'), ':r')
        cmd("w")
        floating_terminal(current_filetype, "make " .. file_without_extension .. " && " .. file_without_extension)
    elseif current_filetype == "lua" then
        cmd("w")
        floating_terminal(current_filetype, "lua %")
    elseif current_filetype == "dosbatch" then
        cmd("w")
        floating_terminal("batch", "cmd /c % && exit")
    elseif current_filetype == "ps1" then
        cmd("w")
        floating_terminal("powershell", "powershell -File %")
    else
        print("Filetype not supported")
    end
end
nsk_n("<leader>r", ":lua CUSTOM_KEYBIND_RunFile()<CR>")

function CUSTOM_KEYBIND_ShowStatuslineWhileChangingWindow()
    local ignore_filetypes = {
        "dapui_watches", "dapui_stacks", "dapui_breakpoints",
        "dapui_scope", "dapui_console", "dap-repl"
    }
    local function should_show_status() -- chatgpt written function cz the old one was still showing statusline
        for _, win_id in ipairs(vim.api.nvim_list_wins()) do
            local buf_id = vim.api.nvim_win_get_buf(win_id)
            local filetype = vim.bo[buf_id].filetype
            if vim.tbl_contains(ignore_filetypes, filetype) then
                return false
            end
        end
        return true
    end
    if should_show_status() then
        vim.opt.laststatus = 2
    else
        vim.opt.laststatus = 3
    end
    require('nvim-window').pick()
    vim.opt.laststatus = 3
end
nsk_n("<leader>w", ":lua CUSTOM_KEYBIND_ShowStatuslineWhileChangingWindow()<CR>")

nsk_n("<leader>w",  ":lua CUSTOM_KEYBIND_ShowStatuslineWhileChangingWindow()<CR>") -- pick a window fast

nsk_n("<leader>D",  ":Dashboard<CR>") -- opens the dashboard
nsk_n("<leader>lw", ":set wrap!<CR>") -- wrap on off (just for that window)
