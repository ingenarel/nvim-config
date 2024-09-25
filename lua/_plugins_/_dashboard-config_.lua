require("dashboard").setup{
    theme = 'hyper',
    config = {
        header ={},
        footer = {},
        mru = {limit=25},
        packages = { enable = false},
        project = { enable = true, limit = 10},
        shortcut = {
            {
                icon = "󰈞 ",
                desc = "Find",
                action = "Telescope find_files",
                key = "f"
            },
            {
                icon = " ",
                desc = "Grep",
                action = "Telescope live_grep",
                key = "g"
            },
            {
                icon = "󱋢 ",
                desc = "Old Files",
                action = "Telescope oldfiles",
                key = "o"
            },
            {
                icon = "󰭎 ",
                desc = "Telescope",
                action = "Telescope",
                key = "t"
            },
        },
    },
}
