local min_bw = {
    base_30 = {
        white = "#dddddd",
        black = "#242423",
        darker_black = "#191918",
        black2 = "#191918",
        one_bg = "#121211",
        -- one_bg2 = "#faca16",
        one_bg3 = "#121211",
        grey = "#646463",
        grey_fg = "#888887",
        -- grey_fg2 = "#faca16",
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

    type = "dark",
}

local min_wb = {
    base_30 = {
        white = "#242423",
        black = "#dddddd",
        darker_black = "#e3e3e3",
        black2 = "#e3e3e3",
        one_bg = "#eeeeee",
        -- one_bg2 = "#faca16",
        one_bg3 = "#eeeeee",
        grey = "#acacac",
        grey_fg = "#888888",
        -- grey_fg2 = "#faca16",
        light_grey = "#888888",
        line = "#bcbcbc",
        statusline_bg = "#e3e3e3",
        lightbg = "#bdbdbd",
        pmenu_bg = "#5e5f65",
        folder_bg = "#4078f2",
        red = "#d84a3d",
        baby_pink = "#f07178",
        pink = "#ff75a0",
        green = "#50a14f",
        vibrant_green = "#7eca9c",
        nord_blue = "#428bab",
        blue = "#4078f2",
        yellow = "#c18401",
        sun = "#dea95f",
        purple = "#a28dcd",
        dark_purple = "#8e79b9",
        teal = "#519aba",
        orange = "#ff6a00",
        cyan = "#0b8ec6",
    },

    base_16 = {
        base00 = "#dddddd",
        base01 = "#f4f4f4",
        base02 = "#b6b6b6",
        base03 = "#888888",
        base04 = "#d7d7d8",
        base05 = "#383a42",
        base06 = "#202227",
        base07 = "#090a0b",
        base08 = "#d84a3d",
        base09 = "#d75f00",
        base0A = "#c18401",
        base0B = "#50a14f",
        base0C = "#0070a8",
        base0D = "#4078f2",
        base0E = "#a626a4",
        base0F = "#986801",
    },

    type = "light",
}

---@type ChadrcConfig
local M = {}

local theme = min_bw

M.base46 = {
    theme = "onedark",

    changed_themes = {
        all = {
            base_16 = theme.base_16,
            base_30 = theme.base_30,
        },
    },
}

M.ui = {
    tabufline = {
        order = { "treeOffset", "buffers", "tabs" },
    },

    statusline = {
        order = { "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp" },
    },
}

return M
