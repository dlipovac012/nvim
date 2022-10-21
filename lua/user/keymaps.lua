local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
-- keymap("", "<Alt>", "<Nop>", opts)
-- vim.g.mapleader = "<Alt>"
-- vim.g.maplocalleader = "<Alt>"


-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"
--
-- Normal --

-- Window Split
keymap("n", "<leader>d", "<C-w>v", opts)
keymap("n", "<leader>D", "<C-w>s", opts)
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--[[ keymap("n", "<leader>e", ":Lex 30<cr>", opts) ]]

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<C-w>", ":BufferLinePickClose<CR>", opts)

-- Window Resize
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertial resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertial resize +2<cr>", opts)

-- Visual --
-- Move text up and down
keymap("v", "<O-j>", ":m .+1<cr>==", opts)
keymap("v", "<O-k>", ":m .-2<cr>==", opts)

keymap("v", "p", "_dP", opts)

-- Telescope
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files()<cr>", opts)
keymap("n", "<C-f>", "<cmd>Telescope live_grep<cr>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)
