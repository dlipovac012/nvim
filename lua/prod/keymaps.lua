local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap


-- Remap leader key to <Space>
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maploaclleader = " "

-- NORMAL --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)

-- Window Split
keymap("n", "<leader>d", "<C-w>v", opts)
keymap("n", "<leader>D", "<C-w>s", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<C-w>", ":BufferLinePickClose<CR>", opts)

-- Window Resize
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertial resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertial resize +2<cr>", opts)

