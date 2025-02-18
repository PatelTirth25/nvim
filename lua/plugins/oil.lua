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
        },
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        lazy = false,
        delete_to_trash = true
    },
}
