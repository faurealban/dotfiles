---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "onedark",
    transparency = true,

    changed_themes = {
        all = {
            base_16 = {
                base00 = "#242423",
                base01 = "#353b45",
                base02 = "#343433",
                base03 = "#888887",
                base04 = "#565c64",
                base05 = "#abb2bf",
                base06 = "#b6bdca",
                base07 = "#c8ccd4",
                base08 = "#e06c75",
                base09 = "#d19a66",
                base0A = "#e5c07b",
                base0B = "#98c379",
                base0C = "#56b6c2",
                base0D = "#61afef",
                base0E = "#c678dd",
                base0F = "#be5046",
            },
            base_30 = {
                white = "#dddddd",
                black = "#242423",
                darker_black = "#191918",
                black2 = "#191918",
                one_bg = "#121211",
                one_bg2 = "#61afef",
                one_bg3 = "#121211",
                grey = "#646463",
                grey_fg = "#888887",
                grey_fg2 = "#faca16",
                light_grey = "#888887",
                line = "#545453",
                statusline_bg = "#191918",
                lightbg = "#323231",
                pmenu_bg = "#61afef",
                folder_bg = "#61afef",
                red = "#e06c75",
                baby_pink = "#de8c92",
                pink = "#ff75a0",
                green = "#98c379",
                vibrant_green = "#7eca9c",
                nord_blue = "#81a1c1",
                blue = "#61afef",
                yellow = "#e7c787",
                sun = "#ebcb8b",
                purple = "#de98fd",
                dark_purple = "#c882e7",
                teal = "#519aba",
                orange = "#fca2aa",
                cyan = "#a3b8ef",
            },
        },
    },
}

M.ui = {
    tabufline = {
        enabled = true,
        lazyload = false,
        order = { "treeOffset", "buffers", "tabs" },
    },

    statusline = {
        order = { "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp" },
    },
}

return M
