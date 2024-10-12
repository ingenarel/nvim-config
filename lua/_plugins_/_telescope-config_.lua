require("telescope").setup{
    defaults = {
        scroll_strategy="limit",
        layout_strategy = "flex",
        winblend = 15,
        wrap_results = true,
        dynamic_preview_title = true,
        preview = {
            treesitter = true,
        },
        file_ignore_patterns = {
            "%.exe", "%.bin", "%.lnk",
            "%.png", "%.jpg", "%.jpeg", "%.webp", "%.svg",
            "%.mp4", "%.webm", "%.mkv",
            "%.mp3", "%.ogg", "%.flac", "%.wav", "%.opus",
            "%.ttf", "%.otf",
            "%.kdbx",
            "%.pdf", "%.epub",
        },
    },
    pickers = {
        live_grep = {
            layout_strategy = "vertical",
            path_display = {"smart"},
            layout_config = {
                height = {padding = 2},
                width = {padding = 2},
            },
        },
        find_files = {
            layout_config = {
                height = {padding = 2},
                width = {padding = 3},
            },
        },
        diagnostics = {
            layout_strategy = "center",
            path_display = {"smart"},
            layout_config = {
                width = {padding = 1},
            },
        },
        quickfix = {
            layout_strategy = "center",
            path_display = {"tail"},
            layout_config = {
                width = {padding = 1},
            },
        },
        buffers = {
            layout_strategy = "vertical",
            path_display = {"tail"},
        },
        grep_string = {
            layout_strategy = "vertical",
            path_display = {"smart"},
            layout_config = {
                height = {padding = 2},
                width = {padding = 2},
            },
        },
    },
    extensions = {
        -- undo = {
        --     layout_strategy = "center"
        -- },
        noice = {
            layout_strategy = "center"
        }
    }
}
-- todo: fix noice not loading config for telescope.
require("telescope").load_extension("undo")
require("telescope").load_extension("noice")
