local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap


-- Remap leader key to <Space>
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maploaclleader = " "


-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)