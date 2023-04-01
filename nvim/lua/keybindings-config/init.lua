vim.g.mapleader = " "
local map = vim.api.nvim_set_keymap
-- Toggle between tabs
map("n", "<C-h>", "<C-w>h", { noremap = true, silent = false })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = false })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = false })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = false })

-- BufferLine
map("n", "<C-n>", ":BufferLineCycleNext<cr>", { noremap = true, silent = true })
map("n", "<C-p>", ":BufferLineCyclePrev<cr>", { noremap = true, silent = true })

-- Indenting
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })
