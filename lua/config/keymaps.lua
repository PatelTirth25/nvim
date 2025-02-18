local key = vim.keymap.set

-- To remove highlight from search
key("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keymap for comment
key("v", "<leader>/", "<Plug>(comment_toggle_linewise_visual)", {})

-- Oil Nvim
key("n", "-", "<CMD>Oil<CR>")

-- To move entire lines up and down
key("v", "J", ":m '>+1<CR>gv=gv")
key("v", "K", ":m '<-2<CR>gv=gv")

-- Html folds
key("n", "<leader>z", "zfat")

-- undo tree
key("n", "<leader>u", vim.cmd.UndotreeToggle)

-- fugitive git
key("n", "<leader>g", vim.cmd.Git)

-- Diagnostic keymaps
key("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
key("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
key("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })

--  See `:help wincmd` for a list of all window commands
key("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
key("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
key("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
key("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })


-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})


-- To correct 'o' and 'O'
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    command = "setlocal formatoptions-=cro",
})

-- Quick Fix
key("n", "<leader>q", function()
    local is_open = false
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        if vim.api.nvim_win_get_config(win).relative == "" then
            local buf = vim.api.nvim_win_get_buf(win)
            if vim.bo[buf].buftype == "quickfix" then
                is_open = true
                break
            end
        end
    end
    if is_open then
        vim.cmd("cclose")
    else
        vim.cmd("copen")
    end
end, { desc = "Toggle Quickfix List" })
key("n", "]q", "<cmd>cnext<CR>")
key("n", "[q", "<cmd>cprev<CR>")
