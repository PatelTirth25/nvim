-- Tab space to 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true

-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Set no wrap
vim.opt.wrap = false

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
-- Save undo history

-- To change behavior of d,c,p,D
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("n", "c", '"_c', { noremap = true })
vim.api.nvim_set_keymap("v", "c", '"_c', { noremap = true })
vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true })
vim.api.nvim_set_keymap("v", "p", '"_dP', { noremap = true })

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
