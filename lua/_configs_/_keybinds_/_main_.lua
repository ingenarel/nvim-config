local wk = require("which-key")

-- remapppings {{{1
    vim.keymap.set({"n", "v", "o"}, ";", ":")
    vim.keymap.set({"n", "v", "o"}, ":", ";")
-- remapppings }}}1

-- alt mappings {{{
    -- map right alt to <ESC>. on windows, i use powertoys.
    -- todo: need to use these mappings more often.
    local function alt_keymap(keymap, action)
        vim.keymap.set({"n", "v", "o", "i", "c", "t"}, keymap, action)
    end

    -- <M-h> is mapped to coq_settings.keymap.jump_to_mark
    alt_keymap("<M-]>", "<C-]>")
    alt_keymap("<M-d>", "<C-d>")
    alt_keymap("<M-i>", "<C-i>")
    alt_keymap("<M-l>", "<C-l>:ColorizerReloadAllBuffers<CR>")
    alt_keymap("<M-n>", "<C-n>")
    alt_keymap("<M-p>", "<C-p>")
    alt_keymap("<M-q>", "<C-q>")
    alt_keymap("<M-r>", "<C-r>")
    alt_keymap("<M-u>", "<C-u>")
    vim.keymap.set("i", "<M-w>", "<C-w>")
    vim.keymap.set("n", "<M-/>", function() vim.cmd("HopAnywhereAC") end)
    vim.keymap.set("n", "<M-?>", function() vim.cmd("HopAnywhereBC") end)
    vim.keymap.set("n", "<M-f>", function() vim.cmd("HopChar1AC") end)
    vim.keymap.set("n", "<M-F>", function() vim.cmd("HopChar1BC") end)
    vim.keymap.set("n", "<M-j>", function() vim.cmd("HopLineAC") end)
    vim.keymap.set("n", "<M-k>", function() vim.cmd("HopLineBC") end)
-- alt mappings }}}

vim.keymap.set( -- saves and sources the file {{{
    "n", "<leader>R",
    function()
        vim.cmd(
            [[
                w
                source%
            ]]
        )
    end,
    {desc="Saves and sources the file"}
) -- }}}

vim.keymap.set( -- Changes directory and shows the current dir {{{1
    "n", "<leader>cd",
    function()
        vim.cmd(
            [[
                cd %:h
                pwd
            ]]
        )
    end,
    {desc="Changes directory and shows the current dir"}
) -- }}}1

vim.keymap.set( -- updater {{{1
    "n",
    "<F5>",
    function()
        vim.cmd(
            [[
                MasonUpdate
                PlugUpgrade
                PlugClean
                PlugUpdate
                Mason
                FloatermNew --width=0.4 --height=0.3 --title=Python_Updates --titleposition=center --position=bottomright pip3 install debugpy black -U
            ]]
        )
    end,
    {desc="tries to update everything"}
) -- }}}1

vim.keymap.set( -- formatter {{{1
    "n",
    "<leader><m-f>", -- TODO: instead of doing a custom formatter keybind, change gq for formatters
    function()
        local current_filetype = vim.bo.filetype
        vim.cmd("w")
        if current_filetype == "python" then
            vim.cmd("!black %")
        else
            vim.notify("Filetype hasn't been implemented yet", "WARN")
        end
    end,
    {desc="Tries to run a formatter"}
) -- }}}1

vim.keymap.set( -- runner {{{1
    "n",
    "<leader>r",
    function()
        local current_filetype = vim.bo.filetype

        local function floating_terminal(title, stuff)
            vim.cmd(
                "FloatermNew --width=1.0 --height=0.95 --title="..
                title..
                " --titleposition=center --autoclose=0 "..
                stuff
            )
        end

        vim.cmd("w")

        local file_with_extension = vim.fn.expand('%')
        local file_without_extension = vim.fn.fnamemodify(file_with_extension, ':r')

        local function execute_with(title, program)
            floating_terminal(title, program.." "..file_with_extension..'"')
        end

        if current_filetype == "python" then
            execute_with(current_filetype, current_filetype)

        elseif current_filetype == "sh" then
            execute_with("bash", "bash ")

        elseif current_filetype == "c" then
            -- if using windows, make sure you set your CC variable
            -- i set it to `gcc -Wall -Wextra`
            floating_terminal(
                current_filetype,
                'make "'..
                    file_without_extension..
                    '" && "'..
                    '"'..
                    file_without_extension..
                '"'
            )

        elseif current_filetype == "lua" then
            execute_with(current_filetype, current_filetype)

        elseif current_filetype == "dosbatch" then
            floating_terminal("batch", "cmd /c % && exit")

        elseif current_filetype == "ps1" then
            execute_with("powershell", "powershell -File ")

        elseif current_filetype == "html" then -- change it to your browser, make sure the browser is on the path
            vim.cmd('!librewolf "'..file_with_extension..'"')

        else
            vim.notify("Filetype hasn't been implemented yet", "WARN")
        end
    end,
    {desc="Try to run current file"}
) -- }}}1

-- focus mode (hides most stuff) {{{1
CV_IsFocusModeOn = false
vim.keymap.set(
    "n", "<F6>",
    function()
        local vol = vim.opt_local

        if CV_IsFocusModeOn == false then
            CV_IsFocusModeOn = true
            vol.foldcolumn = "0"
            vol.colorcolumn = ""
            vol.number = false
            vol.relativenumber = false
            vol.signcolumn = "no"
            vol.cursorcolumn = false
            vol.cursorline = false
            vol.laststatus = 0
            require("ibl").update{enabled=false}
            -- vim.diagnostic.config{virtual_text=false}
            -- this is probably fucking crashing clangd
        elseif CV_IsFocusModeOn == true then
            CV_IsFocusModeOn = false
            vol.foldcolumn = "auto"
            vol.colorcolumn = "+0,-20,-40"
            vol.number = true
            vol.relativenumber = true
            vol.signcolumn = "auto"
            vol.cursorcolumn = true
            vol.cursorline = true
            vol.laststatus = 3
            require("ibl").update{enabled=true}
            -- vim.diagnostic.config{virtual_text=true}
        end

    end
) -- }}}1

-- Telescope {{{1
    vim.keymap.set("n", "<leader>o", function() require("telescope.builtin").oldfiles() end, {desc="Oldfiles"})
    vim.keymap.set("n", "<leader>tg",  function() require("telescope.builtin").live_grep() end, {desc="Live Grep"})
    vim.keymap.set("n", "<leader>tb",  function() require("telescope.builtin").buffers() end, {desc="Buffer list"})
    vim.keymap.set(
        "n", "<leader>tt",
        function() require("telescope.builtin").treesitter() end,
        {desc="Treesitter Telescope"}
    )
    vim.keymap.set("n", "<leader>T",   function() require("telescope.builtin").builtin() end, {desc="Telescope"})
    vim.keymap.set(
        "n",
        "<leader>u",
        function()
            require("telescope").extensions.undo.undo() end,
            {desc="Undo Tree"}
        )
    vim.keymap.set(
        "n", "<leader>ts",
        function() require("telescope.builtin").grep_string() end,
        {desc="Search for a string"}
    )
    vim.keymap.set("n", "<leader>q", function() require("telescope.builtin").quickfix() end, {desc="Quickfix"})
    vim.keymap.set("n", "<leader>td", function() require("telescope.builtin").diagnostics() end, {desc="Diagnostics"})
-- Telescope }}}1

-- File managing {{{1
    vim.keymap.set("n", "<leader>f",  function() require("telescope.builtin").find_files() end, {desc="find files"})
    CK_SetKeymap_n(
        "<leader>F",
        ":FloatermNew --width=0.95 --height=1.0 --title=YAZI --titleposition=center --opener=edit yazi<CR>",
        "Yazi"
    )
    vim.keymap.set(
        "n", "<leader>gf",
        function() require("telescope.builtin").git_files() end,
        {desc="find files+gitfiles"}
    )
-- File managing }}}1

-- terminal {{{1
    CK_SetKeymap_n(
        "<leader><leader>t",
        ":FloatermNew --width=1.0 --height=0.9 --title=TERMINAL --titleposition=center<CR>",
        "Terminal"
    )

    ---### executes a command with floaterm.
    ---@param autoclosevalue 0|1 see |floaterm_autoclose|
    ---this can also be used to use another shell such as bash, zsh, cmd, powershell, etc
    function CK_FloatermExecuteCommand(autoclosevalue)

        if autoclosevalue == 1 or autoclosevalue == 0 then

        else
            vim.notify("autoclose value can either be 0 or 1", "ERROR")
            return nil
        end

        local command = vim.fn.input("Command")

        if command == "" then
            return nil
        end

        vim.cmd(
            "FloatermNew --width=1.0 --height=0.9 --title=Custom_Execution --titleposition=center --autoclose="..
                autoclosevalue..
                " "..
            command
        )

    end
    vim.keymap.set(
        "n", "<leader><leader>e",
        function () CK_FloatermExecuteCommand(1) end,
        {desc="Execute command and tries to close the terminal"}
    )
    vim.keymap.set(
        "n", "<leader><leader>E",
        function () CK_FloatermExecuteCommand(0) end,
        {desc="Execute command and keeps the terminal open"}
    )
-- terminal }}}1

-- color-picker {{{1
    local color_picker = require("color-picker")
    local function CK_set_color_picker_keymaps(base_key, mode) -- this function and the remapping was generated by chatgpt
        local sizes = { 20, 30, 40, 50, 60, 70, 80, 90, 100 }
        vim.keymap.set("n", base_key.."r", color_picker[mode])
        for i, size in ipairs(sizes) do
            vim.keymap.set("n", base_key..(i+1), function()
                color_picker[mode]({height=size, width=size * 2})
            end)
        end
    end
    CK_set_color_picker_keymaps("<leader>cpr", "replace")
    CK_set_color_picker_keymaps("<leader>cpi", "insert")
    CK_SetKeymap_n("<leader>cpRh", ":ColorPickerReformat hex<CR>") -- color picker reformat hex
    CK_SetKeymap_n("<leader>cpRr", ":ColorPickerReformat rgb<CR>") -- color picker reformat rgb
    CK_SetKeymap_n("<leader>cpRa", ":ColorPickerReformat rgba<CR>") -- color picker reformat rgba
-- color-picker }}}1

-- dap {{{1
    vim.keymap.set("n", "<leader>dd", function () require('dapui').toggle() end, {desc="Dap ui toggle"})
    CK_SetKeymap_n("<leader>db", ":DapToggleBreakpoint<CR>", "Breakpoint toggle")
    CK_SetKeymap_n("<leader>d<CR><CR>", ":DapContinue<CR>", "DapContinue")
    CK_Submap("<leader>dl", ":DapStepOver<CR>", "<leader>", {desc="DapStepOver", wait=100})
    CK_Submap("<leader>dj", ":DapStepInto<CR>", "<leaderd", {desc="DapStepInto", wait=100})
    CK_Submap("<leader>dh", ":DapStepOut<CR>", "<leader>d", {desc="DapStepOut", wait=100})
    -- kms("<Leader>dr", function() require("dap").repl.open() end)
    -- kms("<Leader>dl", function() require("dap").run_last() end)
-- dap }}}1

require("pairMan").setup{keymap="<leader>p"}
wk.add{
    {"<leader>pha", proxy="<leader>pah"},
    {"<leader>phi", proxy="<leader>pih"}
}

CK_SetKeymap_n("<leader>D", ":Dashboard<CR>", "Dashboard")
CK_SetKeymap_n("<leader>l", ":set wrap!<CR>", "Toggles line wrap")
CK_SetKeymap_n("<leader><m-t>", ":InspectTree<CR>", "Inspect Treesitter tree")

require("_configs_._keybinds_._git_")
require("_configs_._keybinds_._window-nav_")
