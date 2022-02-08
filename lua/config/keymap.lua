local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
keymap("", "<Space>", "<Nop>", opts)

-- Modes:
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- window navigation
keymap("n", "<C-j>", "<C-w><C-j>", opts)
keymap("n", "<C-k>", "<C-w><C-k>", opts)
keymap("n", "<C-l>", "<C-w><C-l>", opts)
keymap("n", "<C-h>", "<C-w><C-h>", opts)

-- resizing window
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- tagbar
keymap("n", "T", ":SymbolsOutline<CR>", opts)

-- file explorer
keymap("n", "<C-e>", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)

-- navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<leader>x", ":bdelete!<CR>", opts)

-- indent
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- git
keymap("n", "<C-g>", "<cmd>lua _TOGGLE_LAZYGIT()<CR>", opts)

-- trouble
keymap("n", "<C-t>", "<cmd>TroubleToggle<CR>", opts)
