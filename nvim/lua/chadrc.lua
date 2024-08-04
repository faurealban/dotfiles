local min_bw = {
    base_30 = {
        white = "#dddddd",
        black = "#242423",
        darker_black = "#191918",
        black2 = "#191918",
        -- one_bg = "#faca16",
        -- one_bg2 = "#faca16",
        one_bg3 = "#121211",
        grey = "#646463",
        grey_fg = "#888887",
        -- grey_fg2 = "#faca16",
        light_grey = "#888887",
        line = "#545453",
        statusline_bg = "#191918",
        lightbg = "#323231",
    },

    base_16 = {
        base00 = "#242423",
        base02 = "#343433",
        base03 = "#888887",
    },
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
