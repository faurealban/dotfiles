return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        opts = require "configs.conform",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "html",
                "css",
            },
        },
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
        lazy = false,
    },
    {
        "nvim-tree/nvim-tree.lua",
        config = {
            filters = {
                dotfiles = false,
            },
        },
    },
    {
        "jakewvincent/mkdnflow.nvim",
        config = function()
            require("mkdnflow").setup {}
        end,
        lazy = false,
    },
}
