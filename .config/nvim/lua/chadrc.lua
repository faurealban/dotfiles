local folder_color = "#ddcc00"

local M = {}

M.ui = {
    theme = "theme",

    hl_override = {
        NvimTreeIndentMarker = { fg = "#282827" },
        NvimTreeNormal = { fg = "#cccccc" },
        NvimTreeNormalNC = { fg = "#cccccc" },
        NvimTreeOpenedFolderName = { fg = folder_color },
        NvimTreeEmptyFolderName = { fg = folder_color },
        NvimTreeFolderName = { fg = folder_color },
        NvimTreeFolderIcon = { fg = folder_color },
        NvimTreeFolderArrowOpen = { fg = folder_color },
        NvimTreeFolderArrowClosed = { fg = folder_color },
    },

    tabufline = {
        enabled = true,
        lazyload = true,
        order = {
            "treeOffset",
            "buffers",
            "tabs",
        },
    },

    statusline = {
        theme = "minimal",
        separator_style = "block",
    },

    cheatsheet = { theme = "grid" },

    nvdash = {
        load_on_startup = true,
        header = {
            "                             ████                               ",
            "                             ████                               ",
            "                             ████                               ",
            "                             ████                               ",
            "                             ████                               ",
            "           ██████            ████            ██████             ",
            "           ██████████                    ██████████             ",
            "             ████████████████████████████████████               ",
            "                                                                ",
            "                ██        █████ ████        ██                  ",
            "                          █████ ████                            ",
            "                ██        █████ ████        ██                  ",
            "                          █████ ████                            ",
            "             ██    ██     █████ ████     ██    ██               ",
            "                          █████ ████                            ",
            "          ██          ██  █████ ████  ██          ██            ",
            "          ██████████████  █████ ████  ██████████████            ",
            "            ██████████    █████ ████    ██████████              ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          █████ ████                            ",
            "                          ██████████                            ",
        },

        buttons = {
            { "  Find File", "Spc f f", "Telescope find_files" },
            { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
            { "  Bookmarks", "Spc m a", "Telescope marks" },
            { "  Mappings", "Spc c h", "NvCheatsheet" },
        },
    },
}

return M
