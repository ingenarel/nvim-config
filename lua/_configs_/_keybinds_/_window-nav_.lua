vim.keymap.set( -- Change split {{{
    "n",
    "<M-w>",
    function()
        vim.opt.laststatus = 2
        require('nvim-window').pick()
        vim.opt.laststatus = 3
    end,
    {desc="Change split"}
) -- }}}

CK_SetKeymap_n("<leader>wf", "<C-w>|<C-w>_", "Max out split")

---@nodoc CK_ChangeWindowAndShowHelp() {{{
---@nodoc docs {{{
---### for splitting the help window.
---if not on help windo, just opens help
---@param grepvalue boolean if true, do a grep search see |helpgrep| for more info, ignores case
---autoopens Telescope's quickfix after opening the help file
---@param splitdirection ("v"|"s") v for splitting in the x direction, s for y direction
---@nodoc }}}
function CK_ChangeWindowAndShowHelp(grepvalue, splitdirection)
    local current_file = vim.bo.filetype

    local helpName = "Help"
    if grepvalue then
        helpName = "Help Grep"
    end

    local callHelp = vim.fn.input(helpName, "", "help")
    if callHelp == "" then
        return 0
    end

    if current_file == "help" then
        if grepvalue == true then
            CK_SimKeys("<C-w>"..splitdirection.."<C-w>w:helpg "..callHelp.."\\c<CR>:Telescope quickfix<CR>", "n")
        else
            CK_SimKeys("<C-w>"..splitdirection.."<C-w>w:help "..callHelp.."<CR>", "n")
        end
    else
        if grepvalue == true then
            CK_SimKeys(":helpg "..callHelp.."\\c<CR>:Telescope quickfix<CR>", "n")
        else
            CK_SimKeys(":help "..callHelp.."<CR>", "n")
        end
    end
end -- }}}

-- splits{{{
    local yazi = "<C-w>w:FloatermNew --width=0.95 --height=1.0 --title=YAZI --titleposition=center --opener=edit yazi<CR>"
    -- x direction
        CK_SetKeymap_n("<leader>wxx", "<C-w>v<C-w>w", "⫸ ")
        CK_SetKeymap_n("<leader>wxf", "<C-w>v<C-w>w:Telescope find_files<CR>", "⫸ files")
        CK_SetKeymap_n("<leader>wxF","<C-w>v"..yazi, "⫸ yazi")
        CK_SetKeymap_n("<leader>wxo", "<C-w>v<C-w>w:Telescope oldfiles<CR>", "⫸ oldfiles")
        CK_SetKeymap_n("<leader>wxG", "<C-w>v<C-w>w:Telescope git_files<CR>", "⫸ gitfiles")
        CK_SetKeymap_n("<leader>wxg", "<C-w>v<C-w>w:Telescope live_grep<CR>", "⫸ grep")
        CK_SetKeymap_n("<leader>wxs", "<C-w>v<C-w>w:Telescope grep_string<CR>", "⫸ search current string")
        CK_SetKeymap_n("<leader>wx]", "<C-w>v<C-w>w<C-]>", "⫸ opens up the tagfile/definition")
        -- vim.keymap.set("n", "<leader>wxh", function () CK_ChangeWindowAndShowHelp(false, 'v') end, {desc="⫸ help"})
        vim.keymap.set("n", "<leader>wxh", function () CK_ChangeWindowAndShowHelp(false, 'v') end, {desc="⫸ help"})
        vim.keymap.set("n", "<leader>wxH", function () CK_ChangeWindowAndShowHelp(true, 'v') end, {desc="⫸ help grep"})
    -- x direction
    -- y direction
        CK_SetKeymap_n("<leader>wyy", "<C-w>s<C-w>w", "ↆ ")
        CK_SetKeymap_n("<leader>wyf", "<C-w>s<C-w>w:Telescope find_files<CR>", "ↆ files")
        CK_SetKeymap_n("<leader>wyF","<C-w>s"..yazi, "ↆ yazi")
        CK_SetKeymap_n("<leader>wyo", "<C-w>s<C-w>w:Telescope oldfiles<CR>", "ↆ oldfiles")
        CK_SetKeymap_n("<leader>wyG", "<C-w>s<C-w>w:Telescope git_files<CR>", "ↆ gitfiles")
        CK_SetKeymap_n("<leader>wyg", "<C-w>s<C-w>w:Telescope live_grep<CR>", "ↆ grep")
        CK_SetKeymap_n("<leader>wys", "<C-w>s<C-w>w:Telescope grep_string<CR>", "ↆ search current string")
        CK_SetKeymap_n("<leader>wy]", "<C-w>s<C-w>w<C-]>", "ↆ opens up the tagfile/definition")
        vim.keymap.set("n", "<leader>wyh", function () CK_ChangeWindowAndShowHelp(false, 's') end, {desc="ↆ help"})
        vim.keymap.set("n", "<leader>wyH", function () CK_ChangeWindowAndShowHelp(true, 's') end, {desc="ↆ help grep"})
    -- y direction
-- splits}}}

CK_Submap("<leader>ws=", "<C-w>+", "<leader>ws", {desc="Height++"})
CK_Submap("<leader>ws-", "<C-w>-", "<leader>ws", {desc="Height--"})
CK_Submap("<leader>ws.", "<C-w>>", "<leader>ws", {desc="Width++"})
CK_Submap("<leader>ws,", "<C-w><", "<leader>ws", {desc="Width--"})
CK_Submap("<leader>wss=", "<C-w>+<C-w>>", "<leader>wss", {desc="Size++"})
CK_Submap("<leader>wss-", "<C-w>-<C-w><", "<leader>wss", {desc="Size--"})