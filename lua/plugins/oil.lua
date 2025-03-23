return {
    {
        "stevearc/oil.nvim",
        opts = {
            view_options = {
                show_hidden = true, -- Show dotfiles
            },
            win_options = {
                number = false,         -- Disable line numbers
                relativenumber = false, -- Disable relative line numbers
            },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
                ["<C-j>"] = false,
                ["<C-k>"] = false,
            },
            delete_to_trash = true,
        },
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
    },
}

