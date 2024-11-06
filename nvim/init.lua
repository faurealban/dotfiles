vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
    {
        "NvChad/NvChad",
        lazy = false,
        branch = "v2.5",
        import = "nvchad.plugins",
        config = function()
            require "options"
        end,
    },

    { import = "plugins" },
}, lazy_config)

-- load theme
--dofile(vim.g.base46_cache .. "defaults")
--dofile(vim.g.base46_cache .. "statusline")
require("base46").load_all_highlights()

require "nvchad.autocmds"

vim.schedule(function()
    require "mappings"
end)

-- peek
require("peek").setup {
    auto_load = true,
    close_on_bdelete = true,
    syntax = true,
    theme = "dark",
    update_on_change = true,
    app = { "librewolf", "-new-window" },
    filetype = { "markdown" },
    throttle_at = 200000,
    throttle_time = "auto",
}

-- open nvim-tree at startup
require("nvim-tree.api").tree.open()
