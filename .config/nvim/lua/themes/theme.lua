local M = {}

M.type = "dark"

M.base_16 = {
    base00 = "#121211",
    base01 = "#242423",
    base02 = "#242423",
    base03 = "#242423",
    base04 = "#dddddd",
    base05 = "#00eeee",
    base06 = "#121211",
    base07 = "#dddddd",
    base08 = "#00eeee",
    base09 = "#bbbbbb",
    base0A = "#00aaff",
    base0B = "#0bda51",
    base0C = "#00ffaa",
    base0D = "#eebb00",
    base0E = "#ff5555",
    base0F = "#bbbbbb",
}

M.base_30 = {
    white = "#cccccc",

    black = "#121211",
    darker_black = "#121211",
    black2 = "#1e1e1d",

    one_bg = "#282827",
    one_bg2 = "#242423",
    one_bg3 = "#282827",

    grey = "#444444",
    grey_fg = "#555555",
    grey_fg2 = "#666666",

    line = "#242423",

    light_grey = "#888888",
    red = "#ff5555",
    baby_pink = "#ff69b4",
    pink = "#ffc0cb",
    green = "#0bda51",
    vibrant_green = "#0aeb40",
    nord_blue = "#5e81ac",
    blue = "#007fff",
    seablue = "#006994",
    yellow = "#ffd700",
    sun = "#faca16",
    purple = "#8804ce",
    dark_purple = "#7700bd",
    teal = "#008080",
    orange = "#ff7f00",
    cyan = "#53d1df",

    statusline_bg = "#191918",
    lightbg = "#2b2b2a",
    pmenu_bg = "#faca16",
    folder_bg = "#202019",
}

M = require("base46").override_theme(M, "orosia")

return M
